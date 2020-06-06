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
	<23.944527, 34.782341, 34.995686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244539, 35.044548, 35.030903>,  <24.424547, 35.201870, 35.052032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244539, 35.044548, 35.030903>,  <23.944527, 34.782341, 34.995686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244539, 35.044548, 35.030903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502996, -0.651762, 0.567629,
		0.429471, -0.381456, -0.818564,
		0.750034, 0.655514, 0.088042,
		24.469549, 35.241203, 35.057316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567825, 34.485153, 34.748604>,  <23.944527, 34.782341, 34.995686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567825, 34.485153, 34.748604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568810, 34.721928, 35.070995>,  <24.569401, 34.863995, 35.264431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568810, 34.721928, 35.070995>,  <24.567825, 34.485153, 34.748604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568810, 34.721928, 35.070995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291191, -0.771479, 0.565710,
		0.956662, 0.233302, -0.174266,
		0.002462, 0.591938, 0.805979,
		24.569548, 34.899509, 35.312790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222897, 34.091545, 34.852890>,  <24.567825, 34.485153, 34.748604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222897, 34.091545, 34.852890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522486, 34.351963, 34.902180>,  <25.702240, 34.508213, 34.931751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522486, 34.351963, 34.902180>,  <25.222897, 34.091545, 34.852890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522486, 34.351963, 34.902180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509002, -0.446260, -0.736050,
		-0.424210, 0.614002, -0.665618,
		0.748974, 0.651041, 0.123220,
		25.747177, 34.547276, 34.939144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420294, 34.263084, 34.099945>,  <25.222897, 34.091545, 34.852890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420294, 34.263084, 34.099945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711639, 34.344879, 34.361530>,  <25.886446, 34.393955, 34.518482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711639, 34.344879, 34.361530>,  <25.420294, 34.263084, 34.099945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711639, 34.344879, 34.361530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650072, -0.507864, -0.565226,
		0.216545, 0.836815, -0.502840,
		0.728364, 0.204485, 0.653966,
		25.930149, 34.406223, 34.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064585, 34.589520, 33.741295>,  <25.420294, 34.263084, 34.099945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064585, 34.589520, 33.741295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180712, 34.414917, 34.081924>,  <26.250387, 34.310158, 34.286301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180712, 34.414917, 34.081924>,  <26.064585, 34.589520, 33.741295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180712, 34.414917, 34.081924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626083, -0.586363, -0.514002,
		0.723697, 0.682380, 0.103057,
		0.290316, -0.436504, 0.851575,
		26.267807, 34.283966, 34.337399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777567, 34.560585, 33.912006>,  <26.064585, 34.589520, 33.741295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777567, 34.560585, 33.912006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616875, 34.227394, 34.064198>,  <26.520458, 34.027481, 34.155510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616875, 34.227394, 34.064198>,  <26.777567, 34.560585, 33.912006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616875, 34.227394, 34.064198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754446, -0.536544, -0.378064,
		0.519060, 0.135167, 0.843983,
		-0.401732, -0.832977, 0.380474,
		26.496355, 33.977501, 34.178341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397137, 34.255619, 34.067738>,  <26.777567, 34.560585, 33.912006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397137, 34.255619, 34.067738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140030, 33.949406, 34.079163>,  <26.985765, 33.765678, 34.086018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140030, 33.949406, 34.079163>,  <27.397137, 34.255619, 34.067738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140030, 33.949406, 34.079163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732234, -0.624912, -0.270773,
		0.225136, -0.153127, 0.962219,
		-0.642765, -0.765531, 0.028565,
		26.947201, 33.719746, 34.087730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586744, 33.647823, 34.603909>,  <27.397137, 34.255619, 34.067738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586744, 33.647823, 34.603909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366619, 33.524216, 34.293640>,  <27.234545, 33.450050, 34.107479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366619, 33.524216, 34.293640>,  <27.586744, 33.647823, 34.603909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366619, 33.524216, 34.293640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685891, -0.697073, -0.208907,
		-0.476142, -0.646989, 0.595563,
		-0.550311, -0.309022, -0.775669,
		27.201527, 33.431511, 34.060940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630434, 32.961498, 34.567924>,  <27.586744, 33.647823, 34.603909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630434, 32.961498, 34.567924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531698, 33.085098, 34.200535>,  <27.472456, 33.159256, 33.980103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531698, 33.085098, 34.200535>,  <27.630434, 32.961498, 34.567924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531698, 33.085098, 34.200535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829395, -0.422815, -0.365146,
		-0.501172, -0.851909, -0.151914,
		-0.246840, 0.308998, -0.918472,
		27.457645, 33.177799, 33.924992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741426, 32.377560, 34.155376>,  <27.630434, 32.961498, 34.567924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741426, 32.377560, 34.155376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734732, 32.666737, 33.879093>,  <27.730715, 32.840244, 33.713326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734732, 32.666737, 33.879093>,  <27.741426, 32.377560, 34.155376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734732, 32.666737, 33.879093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830738, -0.374369, -0.411973,
		-0.556411, -0.580690, -0.594311,
		-0.016737, 0.722943, -0.690705,
		27.729710, 32.883621, 33.671883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610266, 32.086681, 33.380638>,  <27.741426, 32.377560, 34.155376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610266, 32.086681, 33.380638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797129, 32.438091, 33.340721>,  <27.909246, 32.648937, 33.316772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797129, 32.438091, 33.340721>,  <27.610266, 32.086681, 33.380638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797129, 32.438091, 33.340721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650574, -0.417966, -0.634081,
		-0.598764, 0.231295, -0.766801,
		0.467156, 0.878526, -0.099788,
		27.937275, 32.701649, 33.310783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036901, 31.382563, 33.316669>,  <27.610266, 32.086681, 33.380638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036901, 31.382563, 33.316669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298647, 31.136076, 33.141361>,  <28.455694, 30.988184, 33.036175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298647, 31.136076, 33.141361>,  <28.036901, 31.382563, 33.316669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298647, 31.136076, 33.141361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614870, 0.770969, -0.165959,
		0.440160, -0.160881, 0.883389,
		0.654366, -0.616218, -0.438270,
		28.494957, 30.951210, 33.009880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751442, 31.430315, 33.648525>,  <28.036901, 31.382563, 33.316669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751442, 31.430315, 33.648525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795794, 31.346640, 33.259899>,  <28.822405, 31.296434, 33.026722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.795794, 31.346640, 33.259899>,  <28.751442, 31.430315, 33.648525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795794, 31.346640, 33.259899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614078, 0.783072, -0.098523,
		0.781418, -0.585694, 0.215286,
		0.110880, -0.209190, -0.971568,
		28.829058, 31.283882, 32.968430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875732, 31.943394, 33.064716>,  <28.751442, 31.430315, 33.648525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875732, 31.943394, 33.064716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949528, 32.257751, 32.828636>,  <28.993805, 32.446365, 32.686989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949528, 32.257751, 32.828636>,  <28.875732, 31.943394, 33.064716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949528, 32.257751, 32.828636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817855, 0.455778, 0.351254,
		0.545048, 0.417896, 0.726832,
		0.184486, 0.785894, -0.590199,
		29.004873, 32.493519, 32.651577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020756, 32.710762, 33.575932>,  <28.875732, 31.943394, 33.064716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020756, 32.710762, 33.575932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845791, 32.723770, 33.216461>,  <28.740812, 32.731575, 33.000778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845791, 32.723770, 33.216461>,  <29.020756, 32.710762, 33.575932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845791, 32.723770, 33.216461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747618, 0.542206, 0.383510,
		0.499737, 0.839616, -0.212856,
		-0.437413, 0.032520, -0.898673,
		28.714567, 32.733524, 32.946861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988567, 33.388550, 33.282257>,  <29.020756, 32.710762, 33.575932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988567, 33.388550, 33.282257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676283, 33.169525, 33.161819>,  <28.488913, 33.038109, 33.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676283, 33.169525, 33.161819>,  <28.988567, 33.388550, 33.282257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676283, 33.169525, 33.161819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613483, 0.579969, 0.535980,
		-0.118858, 0.603164, -0.788711,
		-0.780712, -0.547567, -0.301097,
		28.442070, 33.005257, 33.071491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399132, 33.921638, 33.205273>,  <28.988567, 33.388550, 33.282257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399132, 33.921638, 33.205273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261295, 33.546616, 33.224178>,  <28.178593, 33.321602, 33.235519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261295, 33.546616, 33.224178>,  <28.399132, 33.921638, 33.205273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261295, 33.546616, 33.224178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765142, 0.309677, 0.564497,
		-0.543887, 0.158360, -0.824081,
		-0.344593, -0.937562, 0.047261,
		28.157917, 33.265347, 33.238358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700621, 33.868362, 32.840446>,  <28.399132, 33.921638, 33.205273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700621, 33.868362, 32.840446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715452, 33.564518, 33.100174>,  <27.724352, 33.382210, 33.256012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715452, 33.564518, 33.100174>,  <27.700621, 33.868362, 32.840446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715452, 33.564518, 33.100174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831880, 0.336570, 0.441244,
		-0.553715, -0.556518, -0.619425,
		0.037080, -0.759611, 0.649320,
		27.726576, 33.336636, 33.294971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083727, 33.607277, 32.789585>,  <27.700621, 33.868362, 32.840446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083727, 33.607277, 32.789585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206263, 33.454151, 33.138206>,  <27.279783, 33.362274, 33.347382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206263, 33.454151, 33.138206>,  <27.083727, 33.607277, 32.789585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206263, 33.454151, 33.138206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859118, 0.283127, 0.426327,
		-0.409966, -0.879369, -0.242151,
		0.306339, -0.382816, 0.871555,
		27.298164, 33.339306, 33.399673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658150, 33.057953, 32.919949>,  <27.083727, 33.607277, 32.789585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658150, 33.057953, 32.919949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815733, 33.200844, 33.258694>,  <26.910284, 33.286579, 33.461941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815733, 33.200844, 33.258694>,  <26.658150, 33.057953, 32.919949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815733, 33.200844, 33.258694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916483, 0.082826, 0.391406,
		0.069661, -0.930353, 0.359986,
		0.393962, 0.357187, 0.846883,
		26.933920, 33.308014, 33.512753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620909, 32.735226, 33.639870>,  <26.658150, 33.057953, 32.919949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620909, 32.735226, 33.639870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804462, 32.923935, 33.941029>,  <26.914595, 33.037159, 34.121723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804462, 32.923935, 33.941029>,  <26.620909, 32.735226, 33.639870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804462, 32.923935, 33.941029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733648, 0.679187, 0.021568,
		-0.501186, -0.562262, 0.657780,
		0.458883, 0.471769, 0.752901,
		26.942127, 33.065464, 34.166901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072386, 32.757374, 34.164410>,  <26.620909, 32.735226, 33.639870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072386, 32.757374, 34.164410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348862, 33.043732, 34.203899>,  <26.514748, 33.215546, 34.227592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348862, 33.043732, 34.203899>,  <26.072386, 32.757374, 34.164410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348862, 33.043732, 34.203899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720237, 0.671193, 0.175382,
		0.059294, -0.192326, 0.979538,
		0.691190, 0.715899, 0.098722,
		26.556219, 33.258503, 34.233517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044991, 33.006477, 34.843891>,  <26.072386, 32.757374, 34.164410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044991, 33.006477, 34.843891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189035, 33.295536, 34.607891>,  <26.275463, 33.468971, 34.466290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189035, 33.295536, 34.607891>,  <26.044991, 33.006477, 34.843891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189035, 33.295536, 34.607891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553046, 0.674687, 0.488812,
		0.751305, 0.150273, 0.642618,
		0.360111, 0.722645, -0.590004,
		26.297070, 33.512329, 34.430889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290283, 33.530075, 35.254635>,  <26.044991, 33.006477, 34.843891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290283, 33.530075, 35.254635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204391, 33.711166, 34.908470>,  <26.152857, 33.819820, 34.700771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204391, 33.711166, 34.908470>,  <26.290283, 33.530075, 35.254635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204391, 33.711166, 34.908470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578925, 0.654633, 0.486108,
		0.786598, 0.605389, 0.121523,
		-0.214732, 0.452724, -0.865408,
		26.139973, 33.846985, 34.648849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865395, 33.921375, 35.444618>,  <26.290283, 33.530075, 35.254635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865395, 33.921375, 35.444618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694736, 34.045708, 35.104889>,  <26.592342, 34.120308, 34.901051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694736, 34.045708, 35.104889>,  <26.865395, 33.921375, 35.444618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694736, 34.045708, 35.104889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482146, 0.716347, 0.504363,
		0.765187, 0.624682, -0.155757,
		-0.426643, 0.310834, -0.849328,
		26.566744, 34.138958, 34.850090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944258, 34.665939, 35.314739>,  <26.865395, 33.921375, 35.444618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944258, 34.665939, 35.314739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620085, 34.584000, 35.095200>,  <26.425581, 34.534836, 34.963474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620085, 34.584000, 35.095200>,  <26.944258, 34.665939, 35.314739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620085, 34.584000, 35.095200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428636, 0.845972, 0.317180,
		0.399341, 0.492311, -0.773406,
		-0.810431, -0.204846, -0.548853,
		26.376955, 34.522545, 34.930542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829771, 35.253941, 34.955845>,  <26.944258, 34.665939, 35.314739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829771, 35.253941, 34.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479536, 35.062176, 34.979553>,  <26.269396, 34.947117, 34.993778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479536, 35.062176, 34.979553>,  <26.829771, 35.253941, 34.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479536, 35.062176, 34.979553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468894, 0.872985, 0.134297,
		-0.116128, 0.089796, -0.989167,
		-0.875587, -0.479410, 0.059273,
		26.216860, 34.918354, 34.997334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183527, 35.689503, 35.424919>,  <26.829771, 35.253941, 34.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183527, 35.689503, 35.424919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447489, 35.421146, 35.289612>,  <27.605865, 35.260132, 35.208427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447489, 35.421146, 35.289612>,  <27.183527, 35.689503, 35.424919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447489, 35.421146, 35.289612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118529, 0.351623, -0.928607,
		0.741941, 0.652887, 0.152517,
		0.659905, -0.670894, -0.338270,
		27.645460, 35.219879, 35.188129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647533, 36.384594, 35.514580>,  <27.183527, 35.689503, 35.424919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647533, 36.384594, 35.514580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010458, 36.288631, 35.376461>,  <28.228212, 36.231056, 35.293591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010458, 36.288631, 35.376461>,  <27.647533, 36.384594, 35.514580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010458, 36.288631, 35.376461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387972, 0.161165, 0.907471,
		-0.162056, -0.957326, 0.239303,
		0.907312, -0.239903, -0.345298,
		28.282652, 36.216660, 35.272873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037767, 35.794594, 35.822525>,  <27.647533, 36.384594, 35.514580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037767, 35.794594, 35.822525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356857, 36.014515, 35.723454>,  <28.548311, 36.146469, 35.664009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356857, 36.014515, 35.723454>,  <28.037767, 35.794594, 35.822525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356857, 36.014515, 35.723454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095838, 0.289913, 0.952242,
		0.595355, -0.783366, 0.178579,
		0.797727, 0.549807, -0.247678,
		28.596176, 36.179459, 35.649151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601076, 35.501366, 36.130615>,  <28.037767, 35.794594, 35.822525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601076, 35.501366, 36.130615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704893, 35.887653, 36.132519>,  <28.767183, 36.119427, 36.133659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704893, 35.887653, 36.132519>,  <28.601076, 35.501366, 36.130615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704893, 35.887653, 36.132519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249366, 0.062258, 0.966406,
		0.932982, -0.252008, 0.256977,
		0.259541, 0.965721, 0.004757,
		28.782755, 36.177368, 36.133945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756548, 35.554768, 36.798416>,  <28.601076, 35.501366, 36.130615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756548, 35.554768, 36.798416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780790, 35.935947, 36.679607>,  <28.795336, 36.164654, 36.608322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780790, 35.935947, 36.679607>,  <28.756548, 35.554768, 36.798416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780790, 35.935947, 36.679607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154086, 0.302935, 0.940472,
		0.986197, -0.011232, 0.165196,
		0.060607, 0.952945, -0.297023,
		28.798973, 36.221832, 36.590500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375988, 35.841793, 36.976963>,  <28.756548, 35.554768, 36.798416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375988, 35.841793, 36.976963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136024, 36.158905, 36.933857>,  <28.992046, 36.349171, 36.907993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136024, 36.158905, 36.933857>,  <29.375988, 35.841793, 36.976963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136024, 36.158905, 36.933857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025715, 0.153734, 0.987778,
		0.799653, 0.589808, -0.112613,
		-0.599911, 0.792776, -0.107767,
		28.956051, 36.396736, 36.901527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670160, 36.373840, 37.356762>,  <29.375988, 35.841793, 36.976963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670160, 36.373840, 37.356762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287678, 36.487301, 37.327877>,  <29.058189, 36.555378, 37.310547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287678, 36.487301, 37.327877>,  <29.670160, 36.373840, 37.356762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287678, 36.487301, 37.327877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004750, 0.231644, 0.972789,
		0.292660, 0.930529, -0.220152,
		-0.956205, 0.283651, -0.072213,
		29.000816, 36.572395, 37.306213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655552, 37.097824, 37.419121>,  <29.670160, 36.373840, 37.356762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655552, 37.097824, 37.419121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318516, 36.932148, 37.556812>,  <29.116295, 36.832745, 37.639427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318516, 36.932148, 37.556812>,  <29.655552, 37.097824, 37.419121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318516, 36.932148, 37.556812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211357, 0.333580, 0.918723,
		-0.495351, 0.846861, -0.193530,
		-0.842589, -0.414187, 0.344229,
		29.065739, 36.807892, 37.660080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463779, 37.600147, 37.807529>,  <29.655552, 37.097824, 37.419121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463779, 37.600147, 37.807529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296236, 37.248856, 37.899849>,  <29.195711, 37.038078, 37.955238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296236, 37.248856, 37.899849>,  <29.463779, 37.600147, 37.807529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296236, 37.248856, 37.899849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411811, 0.042807, 0.910263,
		-0.809302, 0.476314, 0.343736,
		-0.418857, -0.878233, 0.230795,
		29.170578, 36.985386, 37.969086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733578, 37.768475, 37.886272>,  <29.463779, 37.600147, 37.807529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733578, 37.768475, 37.886272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504944, 37.442554, 37.847519>,  <28.367764, 37.247002, 37.824268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504944, 37.442554, 37.847519>,  <28.733578, 37.768475, 37.886272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504944, 37.442554, 37.847519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020230, -0.132029, 0.991039,
		-0.820293, 0.564504, 0.091950,
		-0.571586, -0.814803, -0.096883,
		28.333467, 37.198112, 37.818455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013700, 37.685856, 38.370453>,  <28.733578, 37.768475, 37.886272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013700, 37.685856, 38.370453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159592, 37.322266, 38.289711>,  <28.247126, 37.104111, 38.241268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159592, 37.322266, 38.289711>,  <28.013700, 37.685856, 38.370453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159592, 37.322266, 38.289711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111366, -0.257814, 0.959755,
		-0.924431, -0.327568, -0.195260,
		0.364726, -0.908973, -0.201852,
		28.269009, 37.049572, 38.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545702, 37.203495, 38.657665>,  <28.013700, 37.685856, 38.370453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545702, 37.203495, 38.657665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854212, 36.959198, 38.585976>,  <28.039318, 36.812618, 38.542961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854212, 36.959198, 38.585976>,  <27.545702, 37.203495, 38.657665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854212, 36.959198, 38.585976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042890, -0.330808, 0.942723,
		-0.635055, -0.719412, -0.281339,
		0.771275, -0.610748, -0.179226,
		28.085594, 36.775974, 38.532207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638811, 37.432636, 39.342911>,  <27.545702, 37.203495, 38.657665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638811, 37.432636, 39.342911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322859, 37.349678, 39.573761>,  <27.133287, 37.299904, 39.712273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322859, 37.349678, 39.573761>,  <27.638811, 37.432636, 39.342911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322859, 37.349678, 39.573761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546991, -0.663767, 0.510112,
		0.277285, 0.718611, 0.637739,
		-0.789882, -0.207392, 0.577126,
		27.085894, 37.287460, 39.746899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126118, 36.925983, 39.650265>,  <27.638811, 37.432636, 39.342911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126118, 36.925983, 39.650265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237598, 36.544907, 39.698765>,  <28.304487, 36.316261, 39.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237598, 36.544907, 39.698765>,  <28.126118, 36.925983, 39.650265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237598, 36.544907, 39.698765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155959, -0.079675, -0.984545,
		0.947629, 0.293306, 0.126376,
		0.278704, -0.952693, 0.121246,
		28.321209, 36.259098, 39.735138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749992, 36.861515, 39.366894>,  <28.126118, 36.925983, 39.650265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749992, 36.861515, 39.366894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556910, 36.512558, 39.336090>,  <28.441059, 36.303185, 39.317608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556910, 36.512558, 39.336090>,  <28.749992, 36.861515, 39.366894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556910, 36.512558, 39.336090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025530, 0.073878, -0.996940,
		0.875409, -0.483197, -0.013390,
		-0.482708, -0.872389, -0.077009,
		28.412098, 36.250843, 39.312988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146301, 36.423508, 39.001053>,  <28.749992, 36.861515, 39.366894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146301, 36.423508, 39.001053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763113, 36.356728, 38.907738>,  <28.533201, 36.316658, 38.851749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763113, 36.356728, 38.907738>,  <29.146301, 36.423508, 39.001053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763113, 36.356728, 38.907738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203749, 0.176506, -0.962981,
		0.201951, -0.970037, -0.135070,
		-0.957968, -0.166954, -0.233290,
		28.475723, 36.306644, 38.837749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044550, 35.933620, 38.372921>,  <29.146301, 36.423508, 39.001053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044550, 35.933620, 38.372921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746180, 36.196754, 38.414577>,  <28.567158, 36.354633, 38.439571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746180, 36.196754, 38.414577>,  <29.044550, 35.933620, 38.372921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746180, 36.196754, 38.414577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115412, 0.281667, -0.952546,
		-0.655951, -0.698511, -0.286025,
		-0.745928, 0.657834, 0.104144,
		28.522402, 36.394104, 38.445820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695900, 35.851509, 37.857399>,  <29.044550, 35.933620, 38.372921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695900, 35.851509, 37.857399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595692, 36.224480, 37.961571>,  <28.535566, 36.448261, 38.024075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595692, 36.224480, 37.961571>,  <28.695900, 35.851509, 37.857399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595692, 36.224480, 37.961571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061256, 0.283732, -0.956945,
		-0.966171, -0.223783, -0.128198,
		-0.250522, 0.932426, 0.260426,
		28.520535, 36.504208, 38.039700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936871, 36.151180, 37.533241>,  <28.695900, 35.851509, 37.857399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936871, 36.151180, 37.533241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227945, 36.416874, 37.601673>,  <28.402590, 36.576290, 37.642731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227945, 36.416874, 37.601673>,  <27.936871, 36.151180, 37.533241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227945, 36.416874, 37.601673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019317, 0.229470, -0.973124,
		-0.685638, 0.711434, 0.154151,
		0.727686, 0.664233, 0.171076,
		28.446251, 36.616142, 37.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762516, 36.807373, 37.115551>,  <27.936871, 36.151180, 37.533241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762516, 36.807373, 37.115551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151016, 36.745815, 37.188202>,  <28.384117, 36.708881, 37.231792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151016, 36.745815, 37.188202>,  <27.762516, 36.807373, 37.115551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151016, 36.745815, 37.188202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177154, -0.042424, -0.983268,
		0.159024, 0.987176, -0.013941,
		0.971251, -0.153894, 0.181629,
		28.442392, 36.699646, 37.242691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167860, 37.357723, 36.781746>,  <27.762516, 36.807373, 37.115551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167860, 37.357723, 36.781746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425714, 37.055187, 36.826283>,  <28.580427, 36.873665, 36.853004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425714, 37.055187, 36.826283>,  <28.167860, 37.357723, 36.781746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425714, 37.055187, 36.826283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246154, 0.067460, -0.966880,
		0.723778, 0.650692, 0.229663,
		0.644634, -0.756339, 0.111344,
		28.619104, 36.828285, 36.859684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707666, 37.529297, 36.319500>,  <28.167860, 37.357723, 36.781746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707666, 37.529297, 36.319500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743338, 37.138000, 36.394428>,  <28.764740, 36.903221, 36.439384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743338, 37.138000, 36.394428>,  <28.707666, 37.529297, 36.319500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743338, 37.138000, 36.394428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330972, -0.148274, -0.931919,
		0.939417, 0.145102, 0.310549,
		0.089177, -0.978243, 0.187316,
		28.770090, 36.844528, 36.450623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299398, 37.347828, 35.980190>,  <28.707666, 37.529297, 36.319500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299398, 37.347828, 35.980190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117266, 36.996864, 36.040611>,  <29.007986, 36.786285, 36.076866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.117266, 36.996864, 36.040611>,  <29.299398, 37.347828, 35.980190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117266, 36.996864, 36.040611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309568, -0.315103, -0.897150,
		0.834770, -0.361740, 0.415096,
		-0.455333, -0.877413, 0.151056,
		28.980665, 36.733639, 36.085930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799158, 36.822773, 35.749104>,  <29.299398, 37.347828, 35.980190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799158, 36.822773, 35.749104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436760, 36.658592, 35.707722>,  <29.219320, 36.560085, 35.682892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436760, 36.658592, 35.707722>,  <29.799158, 36.822773, 35.749104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436760, 36.658592, 35.707722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253991, -0.331631, -0.908575,
		0.338618, -0.849441, 0.404707,
		-0.905995, -0.410452, -0.103454,
		29.164961, 36.535458, 35.676685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945648, 36.225704, 35.436050>,  <29.799158, 36.822773, 35.749104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945648, 36.225704, 35.436050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568121, 36.331467, 35.356762>,  <29.341604, 36.394924, 35.309189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568121, 36.331467, 35.356762>,  <29.945648, 36.225704, 35.436050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568121, 36.331467, 35.356762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141361, -0.219133, -0.965400,
		-0.298699, -0.939185, 0.169444,
		-0.943820, 0.264411, -0.198219,
		29.284975, 36.410789, 35.297295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541819, 35.614017, 35.102203>,  <29.945648, 36.225704, 35.436050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541819, 35.614017, 35.102203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357412, 35.953571, 34.998768>,  <29.246769, 36.157303, 34.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357412, 35.953571, 34.998768>,  <29.541819, 35.614017, 35.102203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357412, 35.953571, 34.998768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092795, -0.243688, -0.965404,
		-0.882527, -0.469062, 0.033572,
		-0.461015, 0.848880, -0.258588,
		29.219109, 36.208237, 34.921192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216152, 35.268688, 34.788609>,  <29.541819, 35.614017, 35.102203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216152, 35.268688, 34.788609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923738, 35.157085, 34.539532>,  <29.748289, 35.090126, 34.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923738, 35.157085, 34.539532>,  <30.216152, 35.268688, 34.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923738, 35.157085, 34.539532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539492, -0.795083, -0.277115,
		-0.417773, -0.538517, 0.731755,
		-0.731037, -0.279005, -0.622689,
		29.704428, 35.073383, 34.352726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496740, 34.590366, 34.720924>,  <30.216152, 35.268688, 34.788609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496740, 34.590366, 34.720924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711998, 34.254784, 34.688545>,  <30.841152, 34.053432, 34.669117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711998, 34.254784, 34.688545>,  <30.496740, 34.590366, 34.720924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711998, 34.254784, 34.688545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250180, 0.067285, 0.965859,
		-0.804866, -0.540024, 0.246099,
		0.538145, -0.838956, -0.080947,
		30.873442, 34.003098, 34.664261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384928, 34.113049, 35.327934>,  <30.496740, 34.590366, 34.720924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384928, 34.113049, 35.327934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721960, 33.939869, 35.199802>,  <30.924179, 33.835960, 35.122921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721960, 33.939869, 35.199802>,  <30.384928, 34.113049, 35.327934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721960, 33.939869, 35.199802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324018, -0.067596, 0.943633,
		-0.430198, -0.898880, 0.083328,
		0.842581, -0.432949, -0.320333,
		30.974735, 33.809986, 35.103703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440325, 33.507282, 35.674652>,  <30.384928, 34.113049, 35.327934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440325, 33.507282, 35.674652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807144, 33.590065, 35.538303>,  <31.027235, 33.639732, 35.456493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807144, 33.590065, 35.538303>,  <30.440325, 33.507282, 35.674652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807144, 33.590065, 35.538303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349624, -0.006146, 0.936870,
		0.191795, -0.978331, -0.077993,
		0.917048, 0.206955, -0.340869,
		31.082258, 33.652153, 35.436043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968357, 32.980167, 35.991528>,  <30.440325, 33.507282, 35.674652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968357, 32.980167, 35.991528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078810, 33.347641, 35.878548>,  <31.145082, 33.568123, 35.810760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078810, 33.347641, 35.878548>,  <30.968357, 32.980167, 35.991528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078810, 33.347641, 35.878548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366640, 0.170963, 0.914520,
		0.888440, -0.356085, -0.289617,
		0.276133, 0.918681, -0.282445,
		31.161650, 33.623245, 35.793816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765636, 33.054886, 35.939205>,  <30.968357, 32.980167, 35.991528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765636, 33.054886, 35.939205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526320, 33.360386, 36.036148>,  <31.382729, 33.543686, 36.094315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526320, 33.360386, 36.036148>,  <31.765636, 33.054886, 35.939205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526320, 33.360386, 36.036148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436941, 0.057431, 0.897655,
		0.671662, 0.642956, -0.368072,
		-0.598292, 0.763746, 0.242360,
		31.346832, 33.589508, 36.108856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234924, 33.490688, 36.250397>,  <31.765636, 33.054886, 35.939205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234924, 33.490688, 36.250397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860542, 33.567215, 36.368645>,  <31.635914, 33.613132, 36.439594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860542, 33.567215, 36.368645>,  <32.234924, 33.490688, 36.250397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860542, 33.567215, 36.368645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322720, 0.130214, 0.937495,
		0.140866, 0.972852, -0.183617,
		-0.935953, 0.191318, 0.295616,
		31.579756, 33.624611, 36.457329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281284, 34.311089, 36.482174>,  <32.234924, 33.490688, 36.250397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281284, 34.311089, 36.482174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609840, 34.343227, 36.708042>,  <32.806976, 34.362511, 36.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609840, 34.343227, 36.708042>,  <32.281284, 34.311089, 36.482174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609840, 34.343227, 36.708042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318871, -0.756159, 0.571441,
		0.472898, -0.649436, -0.595483,
		0.821394, 0.080351, 0.564673,
		32.856258, 34.367332, 36.877445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740580, 34.549992, 36.042122>,  <32.281284, 34.311089, 36.482174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740580, 34.549992, 36.042122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763227, 34.152222, 36.006557>,  <31.776817, 33.913559, 35.985218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763227, 34.152222, 36.006557>,  <31.740580, 34.549992, 36.042122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763227, 34.152222, 36.006557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391767, 0.059781, -0.918120,
		0.918321, 0.086817, -0.386200,
		0.056621, -0.994429, -0.088910,
		31.780214, 33.853893, 35.979885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032547, 34.481380, 35.477657>,  <31.740580, 34.549992, 36.042122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032547, 34.481380, 35.477657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863525, 34.125751, 35.548077>,  <31.762114, 33.912373, 35.590328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863525, 34.125751, 35.548077>,  <32.032547, 34.481380, 35.477657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863525, 34.125751, 35.548077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288080, -0.052417, -0.956171,
		0.859337, -0.454746, -0.233976,
		-0.422551, -0.889077, 0.176048,
		31.736759, 33.859028, 35.600891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314796, 34.039574, 35.024002>,  <32.032547, 34.481380, 35.477657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314796, 34.039574, 35.024002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950878, 33.918983, 35.138107>,  <31.732527, 33.846630, 35.206570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950878, 33.918983, 35.138107>,  <32.314796, 34.039574, 35.024002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950878, 33.918983, 35.138107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286912, -0.039816, -0.957129,
		0.299912, -0.952641, -0.050273,
		-0.909799, -0.301478, 0.285265,
		31.677938, 33.828541, 35.223686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094444, 33.570866, 34.570198>,  <32.314796, 34.039574, 35.024002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094444, 33.570866, 34.570198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751007, 33.645649, 34.761139>,  <31.544945, 33.690521, 34.875702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751007, 33.645649, 34.761139>,  <32.094444, 33.570866, 34.570198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751007, 33.645649, 34.761139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503882, -0.136178, -0.852971,
		-0.094470, -0.972882, 0.211129,
		-0.858591, 0.186964, 0.477353,
		31.493429, 33.701736, 34.904346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641411, 33.009163, 34.366047>,  <32.094444, 33.570866, 34.570198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641411, 33.009163, 34.366047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447260, 33.344494, 34.465336>,  <31.330769, 33.545692, 34.524910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447260, 33.344494, 34.465336>,  <31.641411, 33.009163, 34.366047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447260, 33.344494, 34.465336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445138, 0.007406, -0.895431,
		-0.752503, -0.545117, 0.369577,
		-0.485377, 0.838327, 0.248225,
		31.301647, 33.595993, 34.539803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960283, 32.981201, 34.040035>,  <31.641411, 33.009163, 34.366047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960283, 32.981201, 34.040035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079178, 33.362053, 34.068584>,  <31.150515, 33.590565, 34.085712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079178, 33.362053, 34.068584>,  <30.960283, 32.981201, 34.040035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079178, 33.362053, 34.068584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242150, 0.147479, -0.958965,
		-0.923588, 0.267756, 0.274395,
		0.297236, 0.952133, 0.071372,
		31.168348, 33.647694, 34.089996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501678, 33.435726, 33.595055>,  <30.960283, 32.981201, 34.040035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501678, 33.435726, 33.595055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814035, 33.681183, 33.641781>,  <31.001450, 33.828457, 33.669815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814035, 33.681183, 33.641781>,  <30.501678, 33.435726, 33.595055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814035, 33.681183, 33.641781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218662, 0.443696, -0.869092,
		-0.585143, 0.653125, 0.480661,
		0.780893, 0.613646, 0.116812,
		31.048304, 33.865276, 33.676823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275375, 34.117481, 33.238316>,  <30.501678, 33.435726, 33.595055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275375, 34.117481, 33.238316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670458, 34.173519, 33.266060>,  <30.907507, 34.207142, 33.282707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670458, 34.173519, 33.266060>,  <30.275375, 34.117481, 33.238316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670458, 34.173519, 33.266060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007153, 0.483723, -0.875192,
		-0.156165, 0.863935, 0.478778,
		0.987705, 0.140099, 0.069361,
		30.966770, 34.215549, 33.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347576, 34.824947, 33.160580>,  <30.275375, 34.117481, 33.238316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347576, 34.824947, 33.160580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690401, 34.648418, 33.054241>,  <30.896095, 34.542500, 32.990437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690401, 34.648418, 33.054241>,  <30.347576, 34.824947, 33.160580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690401, 34.648418, 33.054241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081887, 0.626125, -0.775410,
		0.508665, 0.642804, 0.572767,
		0.857061, -0.441327, -0.265851,
		30.947519, 34.516022, 32.974487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959486, 35.380726, 33.057274>,  <30.347576, 34.824947, 33.160580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959486, 35.380726, 33.057274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063278, 35.043816, 32.868279>,  <31.125553, 34.841671, 32.754879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063278, 35.043816, 32.868279>,  <30.959486, 35.380726, 33.057274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063278, 35.043816, 32.868279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031959, 0.496469, -0.867466,
		0.965219, 0.209990, 0.155743,
		0.259480, -0.842272, -0.472491,
		31.141123, 34.791134, 32.726532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587805, 35.510021, 32.727951>,  <30.959486, 35.380726, 33.057274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587805, 35.510021, 32.727951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428118, 35.215801, 32.509010>,  <31.332306, 35.039268, 32.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428118, 35.215801, 32.509010>,  <31.587805, 35.510021, 32.727951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428118, 35.215801, 32.509010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347356, 0.431148, -0.832740,
		0.848510, -0.522569, 0.083376,
		-0.399217, -0.735549, -0.547351,
		31.308353, 34.995136, 32.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935411, 35.557148, 32.093666>,  <31.587805, 35.510021, 32.727951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935411, 35.557148, 32.093666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619377, 35.331192, 31.998446>,  <31.429756, 35.195618, 31.941315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619377, 35.331192, 31.998446>,  <31.935411, 35.557148, 32.093666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619377, 35.331192, 31.998446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025637, 0.418444, -0.907881,
		0.612462, -0.711200, -0.345088,
		-0.790084, -0.564889, -0.238048,
		31.382351, 35.161724, 31.927031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075336, 35.166531, 31.558582>,  <31.935411, 35.557148, 32.093666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075336, 35.166531, 31.558582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676884, 35.201553, 31.561714>,  <31.437813, 35.222565, 31.563593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676884, 35.201553, 31.561714>,  <32.075336, 35.166531, 31.558582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676884, 35.201553, 31.561714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028238, 0.403056, -0.914740,
		-0.083246, -0.910978, -0.403968,
		-0.996129, 0.087555, 0.007828,
		31.378044, 35.227821, 31.564062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857763, 34.826305, 30.889313>,  <32.075336, 35.166531, 31.558582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857763, 34.826305, 30.889313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531776, 35.036476, 30.987091>,  <31.336184, 35.162579, 31.045757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531776, 35.036476, 30.987091>,  <31.857763, 34.826305, 30.889313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531776, 35.036476, 30.987091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101454, 0.285939, -0.952862,
		-0.570555, -0.801353, -0.179724,
		-0.814969, 0.525427, 0.244445,
		31.287287, 35.194103, 31.060425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523710, 34.867393, 30.271887>,  <31.857763, 34.826305, 30.889313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523710, 34.867393, 30.271887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308266, 35.138309, 30.472357>,  <31.178999, 35.300858, 30.592638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308266, 35.138309, 30.472357>,  <31.523710, 34.867393, 30.271887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308266, 35.138309, 30.472357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241156, 0.446020, -0.861922,
		-0.807304, -0.585104, -0.076900,
		-0.538613, 0.677289, 0.501175,
		31.146683, 35.341496, 30.622709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748995, 34.933155, 30.012156>,  <31.523710, 34.867393, 30.271887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748995, 34.933155, 30.012156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860260, 35.276592, 30.184410>,  <30.927019, 35.482655, 30.287762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860260, 35.276592, 30.184410>,  <30.748995, 34.933155, 30.012156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860260, 35.276592, 30.184410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197159, 0.489819, -0.849238,
		-0.940081, 0.151324, 0.305529,
		0.278165, 0.858591, 0.430635,
		30.943710, 35.534168, 30.313601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148134, 35.261879, 29.822559>,  <30.748995, 34.933155, 30.012156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148134, 35.261879, 29.822559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429199, 35.526051, 29.928465>,  <30.597837, 35.684555, 29.992008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429199, 35.526051, 29.928465>,  <30.148134, 35.261879, 29.822559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429199, 35.526051, 29.928465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152210, 0.503016, -0.850769,
		-0.695054, 0.557502, 0.453973,
		0.702660, 0.660429, 0.264766,
		30.639997, 35.724178, 30.007895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967646, 35.869331, 29.478945>,  <30.148134, 35.261879, 29.822559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967646, 35.869331, 29.478945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354162, 35.933941, 29.559139>,  <30.586071, 35.972706, 29.607256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354162, 35.933941, 29.559139>,  <29.967646, 35.869331, 29.478945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354162, 35.933941, 29.559139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065358, 0.599322, -0.797835,
		-0.249023, 0.784044, 0.568562,
		0.966290, 0.161520, 0.200488,
		30.644049, 35.982395, 29.619286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063700, 36.545422, 29.533361>,  <29.967646, 35.869331, 29.478945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063700, 36.545422, 29.533361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438616, 36.433304, 29.450497>,  <30.663567, 36.366032, 29.400778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438616, 36.433304, 29.450497>,  <30.063700, 36.545422, 29.533361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438616, 36.433304, 29.450497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007651, 0.610771, -0.791771,
		0.348461, 0.740536, 0.574615,
		0.937292, -0.280297, -0.207164,
		30.719803, 36.349216, 29.388348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437763, 37.087708, 29.493916>,  <30.063700, 36.545422, 29.533361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437763, 37.087708, 29.493916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687269, 36.844112, 29.297937>,  <30.836973, 36.697956, 29.180351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687269, 36.844112, 29.297937>,  <30.437763, 37.087708, 29.493916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687269, 36.844112, 29.297937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166788, 0.716112, -0.677765,
		0.763608, 0.341050, 0.548259,
		0.623767, -0.608990, -0.489945,
		30.874399, 36.661415, 29.150953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086287, 37.393150, 29.388605>,  <30.437763, 37.087708, 29.493916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086287, 37.393150, 29.388605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061718, 37.102272, 29.115133>,  <31.046978, 36.927746, 28.951050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061718, 37.102272, 29.115133>,  <31.086287, 37.393150, 29.388605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061718, 37.102272, 29.115133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109166, 0.675970, -0.728798,
		0.992124, -0.119398, 0.037867,
		-0.061421, -0.727192, -0.683680,
		31.043291, 36.884113, 28.910028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556540, 37.622417, 28.910185>,  <31.086287, 37.393150, 29.388605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556540, 37.622417, 28.910185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341751, 37.354553, 28.704964>,  <31.212879, 37.193836, 28.581831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341751, 37.354553, 28.704964>,  <31.556540, 37.622417, 28.910185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341751, 37.354553, 28.704964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072773, 0.569132, -0.819020,
		0.840457, -0.477125, -0.256873,
		-0.536969, -0.669658, -0.513053,
		31.180660, 37.153656, 28.551048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900677, 37.462708, 28.199585>,  <31.556540, 37.622417, 28.910185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900677, 37.462708, 28.199585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507256, 37.392853, 28.181139>,  <31.271202, 37.350941, 28.170073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507256, 37.392853, 28.181139>,  <31.900677, 37.462708, 28.199585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507256, 37.392853, 28.181139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063317, 0.572457, -0.817487,
		0.169163, -0.801121, -0.574099,
		-0.983552, -0.174639, -0.046114,
		31.212191, 37.340462, 28.167305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900581, 37.343468, 27.510599>,  <31.900677, 37.462708, 28.199585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900581, 37.343468, 27.510599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516035, 37.386471, 27.611963>,  <31.285307, 37.412273, 27.672783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516035, 37.386471, 27.611963>,  <31.900581, 37.343468, 27.510599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516035, 37.386471, 27.611963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181254, 0.445630, -0.876676,
		-0.207178, -0.888738, -0.408927,
		-0.961366, 0.107508, 0.253412,
		31.227625, 37.418724, 27.687986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541201, 37.164333, 26.911123>,  <31.900581, 37.343468, 27.510599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541201, 37.164333, 26.911123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268908, 37.374428, 27.115372>,  <31.105532, 37.500484, 27.237921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268908, 37.374428, 27.115372>,  <31.541201, 37.164333, 26.911123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268908, 37.374428, 27.115372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142780, 0.588558, -0.795747,
		-0.718483, -0.614597, -0.325657,
		-0.680732, 0.525234, 0.510621,
		31.064688, 37.531998, 27.268559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088140, 37.098080, 26.471634>,  <31.541201, 37.164333, 26.911123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088140, 37.098080, 26.471634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948496, 37.395496, 26.699764>,  <30.864708, 37.573944, 26.836641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948496, 37.395496, 26.699764>,  <31.088140, 37.098080, 26.471634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948496, 37.395496, 26.699764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200006, 0.535471, -0.820529,
		-0.915487, -0.400526, -0.038228,
		-0.349114, 0.743538, 0.570325,
		30.843761, 37.618557, 26.870861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397738, 37.202366, 26.181454>,  <31.088140, 37.098080, 26.471634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397738, 37.202366, 26.181454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519550, 37.524178, 26.385410>,  <30.592638, 37.717266, 26.507784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519550, 37.524178, 26.385410>,  <30.397738, 37.202366, 26.181454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519550, 37.524178, 26.385410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257038, 0.584869, -0.769324,
		-0.917165, 0.103223, 0.384907,
		0.304532, 0.804533, 0.509889,
		30.610910, 37.765537, 26.538378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890085, 37.568382, 26.095909>,  <30.397738, 37.202366, 26.181454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890085, 37.568382, 26.095909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164234, 37.836060, 26.210762>,  <30.328724, 37.996666, 26.279675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164234, 37.836060, 26.210762>,  <29.890085, 37.568382, 26.095909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164234, 37.836060, 26.210762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237352, 0.578068, -0.780706,
		-0.688425, 0.466922, 0.555026,
		0.685372, 0.669194, 0.287132,
		30.369846, 38.036819, 26.296902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536966, 38.176472, 26.144234>,  <29.890085, 37.568382, 26.095909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536966, 38.176472, 26.144234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924931, 38.235676, 26.066910>,  <30.157709, 38.271198, 26.020515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924931, 38.235676, 26.066910>,  <29.536966, 38.176472, 26.144234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924931, 38.235676, 26.066910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242961, 0.537483, -0.807516,
		-0.015618, 0.830184, 0.557270,
		0.969910, 0.148006, -0.193308,
		30.215904, 38.280079, 26.008917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570089, 38.737106, 25.658644>,  <29.536966, 38.176472, 26.144234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570089, 38.737106, 25.658644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954206, 38.629356, 25.629597>,  <30.184677, 38.564709, 25.612167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954206, 38.629356, 25.629597>,  <29.570089, 38.737106, 25.658644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954206, 38.629356, 25.629597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037515, 0.382607, -0.923149,
		0.276456, 0.883771, 0.377521,
		0.960294, -0.269372, -0.072619,
		30.242294, 38.548546, 25.607811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887756, 39.375996, 25.566465>,  <29.570089, 38.737106, 25.658644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887756, 39.375996, 25.566465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121660, 39.079185, 25.435343>,  <30.262003, 38.901100, 25.356670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121660, 39.079185, 25.435343>,  <29.887756, 39.375996, 25.566465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121660, 39.079185, 25.435343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265664, 0.556984, -0.786887,
		0.766471, 0.373054, 0.522831,
		0.584760, -0.742024, -0.327805,
		30.297089, 38.856579, 25.337002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564354, 39.652500, 25.458788>,  <29.887756, 39.375996, 25.566465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564354, 39.652500, 25.458788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524338, 39.327206, 25.229479>,  <30.500328, 39.132030, 25.091892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524338, 39.327206, 25.229479>,  <30.564354, 39.652500, 25.458788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524338, 39.327206, 25.229479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261944, 0.534314, -0.803675,
		0.959884, -0.230564, 0.159570,
		-0.100038, -0.813234, -0.573274,
		30.494326, 39.083237, 25.057497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132668, 39.659618, 25.043835>,  <30.564354, 39.652500, 25.458788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132668, 39.659618, 25.043835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907909, 39.396069, 24.843773>,  <30.773054, 39.237938, 24.723736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907909, 39.396069, 24.843773>,  <31.132668, 39.659618, 25.043835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907909, 39.396069, 24.843773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356931, 0.352335, -0.865136,
		0.746240, -0.664637, 0.037198,
		-0.561895, -0.658876, -0.500156,
		30.739340, 39.198406, 24.693726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555790, 39.347404, 24.598541>,  <31.132668, 39.659618, 25.043835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555790, 39.347404, 24.598541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184006, 39.317421, 24.454050>,  <30.960936, 39.299431, 24.367355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184006, 39.317421, 24.454050>,  <31.555790, 39.347404, 24.598541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184006, 39.317421, 24.454050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284692, 0.476998, -0.831519,
		0.234636, -0.875702, -0.422010,
		-0.929461, -0.074961, -0.361225,
		30.905169, 39.294933, 24.345682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460529, 38.931198, 24.052217>,  <31.555790, 39.347404, 24.598541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460529, 38.931198, 24.052217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192160, 39.226429, 24.023668>,  <31.031137, 39.403568, 24.006538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192160, 39.226429, 24.023668>,  <31.460529, 38.931198, 24.052217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192160, 39.226429, 24.023668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516502, 0.396095, -0.759167,
		-0.532057, -0.546209, -0.646971,
		-0.670925, 0.738082, -0.071373,
		30.990883, 39.447853, 24.002256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396212, 39.132763, 23.303932>,  <31.460529, 38.931198, 24.052217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396212, 39.132763, 23.303932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273548, 39.452644, 23.510403>,  <31.199949, 39.644573, 23.634285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273548, 39.452644, 23.510403>,  <31.396212, 39.132763, 23.303932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273548, 39.452644, 23.510403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468214, 0.598896, -0.649691,
		-0.828694, 0.042446, -0.558089,
		-0.306660, 0.799701, 0.516176,
		31.181549, 39.692554, 23.665255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022905, 39.598225, 22.776047>,  <31.396212, 39.132763, 23.303932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022905, 39.598225, 22.776047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145178, 39.809746, 23.092762>,  <31.218542, 39.936657, 23.282791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145178, 39.809746, 23.092762>,  <31.022905, 39.598225, 22.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145178, 39.809746, 23.092762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443484, 0.656802, -0.609863,
		-0.842543, 0.537570, -0.033741,
		0.305683, 0.528800, 0.791788,
		31.236883, 39.968388, 23.330299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822561, 40.272564, 22.582779>,  <31.022905, 39.598225, 22.776047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822561, 40.272564, 22.582779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098310, 40.306499, 22.870548>,  <31.263760, 40.326862, 23.043209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098310, 40.306499, 22.870548>,  <30.822561, 40.272564, 22.582779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098310, 40.306499, 22.870548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422841, 0.759252, -0.494714,
		-0.588193, 0.645244, 0.487534,
		0.689372, 0.084838, 0.719422,
		31.305122, 40.331951, 23.086374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847128, 40.964626, 22.809982>,  <30.822561, 40.272564, 22.582779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847128, 40.964626, 22.809982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210939, 40.826958, 22.903193>,  <31.429226, 40.744354, 22.959118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210939, 40.826958, 22.903193>,  <30.847128, 40.964626, 22.809982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210939, 40.826958, 22.903193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412133, 0.819478, -0.398249,
		-0.053892, 0.458257, 0.887184,
		0.909528, -0.344175, 0.233026,
		31.483797, 40.723705, 22.973101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160028, 41.569687, 23.035015>,  <30.847128, 40.964626, 22.809982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160028, 41.569687, 23.035015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457565, 41.308456, 22.978178>,  <31.636087, 41.151718, 22.944075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457565, 41.308456, 22.978178>,  <31.160028, 41.569687, 23.035015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457565, 41.308456, 22.978178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608838, 0.749815, -0.259025,
		0.275708, 0.106162, 0.955361,
		0.743842, -0.653076, -0.142094,
		31.680717, 41.112534, 22.935549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610579, 41.787983, 23.505581>,  <31.160028, 41.569687, 23.035015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610579, 41.787983, 23.505581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785412, 41.610287, 23.192760>,  <31.890312, 41.503670, 23.005068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785412, 41.610287, 23.192760>,  <31.610579, 41.787983, 23.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785412, 41.610287, 23.192760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526635, 0.831274, -0.177873,
		0.729118, -0.334110, 0.597292,
		0.437084, -0.444245, -0.782051,
		31.916536, 41.477013, 22.958145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324055, 41.901619, 23.573002>,  <31.610579, 41.787983, 23.505581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324055, 41.901619, 23.573002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293240, 41.791725, 23.189631>,  <32.274750, 41.725788, 22.959608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293240, 41.791725, 23.189631>,  <32.324055, 41.901619, 23.573002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293240, 41.791725, 23.189631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554440, 0.787138, -0.270203,
		0.828650, -0.552208, 0.091682,
		-0.077042, -0.274735, -0.958428,
		32.270126, 41.709305, 22.902102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986420, 41.784969, 23.435604>,  <32.324055, 41.901619, 23.573002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986420, 41.784969, 23.435604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770134, 41.851189, 23.105703>,  <32.640362, 41.890923, 22.907763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770134, 41.851189, 23.105703>,  <32.986420, 41.784969, 23.435604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770134, 41.851189, 23.105703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426598, 0.898982, -0.099230,
		0.725009, -0.405493, -0.556720,
		-0.540719, 0.165553, -0.824752,
		32.607918, 41.900856, 22.858278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376221, 42.104450, 22.987274>,  <32.986420, 41.784969, 23.435604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376221, 42.104450, 22.987274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012768, 42.187050, 22.842091>,  <32.794697, 42.236610, 22.754980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012768, 42.187050, 22.842091>,  <33.376221, 42.104450, 22.987274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012768, 42.187050, 22.842091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292445, 0.935114, -0.200095,
		0.298088, -0.287958, -0.910068,
		-0.908636, 0.206499, -0.362958,
		32.740177, 42.249001, 22.733204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517540, 42.274792, 22.253237>,  <33.376221, 42.104450, 22.987274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517540, 42.274792, 22.253237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152061, 42.407089, 22.347691>,  <32.932774, 42.486469, 22.404364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152061, 42.407089, 22.347691>,  <33.517540, 42.274792, 22.253237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152061, 42.407089, 22.347691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245853, 0.912537, -0.326853,
		-0.323588, -0.240591, -0.915099,
		-0.913700, 0.330746, 0.236136,
		32.877953, 42.506313, 22.418531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259216, 42.559170, 21.567125>,  <33.517540, 42.274792, 22.253237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259216, 42.559170, 21.567125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097584, 42.736942, 21.886923>,  <33.000603, 42.843605, 22.078802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097584, 42.736942, 21.886923>,  <33.259216, 42.559170, 21.567125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097584, 42.736942, 21.886923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284632, 0.891733, -0.351848,
		-0.869310, 0.085386, -0.486836,
		-0.404085, 0.444434, 0.799496,
		32.976357, 42.870274, 22.126772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792412, 43.006592, 21.264668>,  <33.259216, 42.559170, 21.567125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792412, 43.006592, 21.264668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901508, 43.142376, 21.624750>,  <32.966969, 43.223846, 21.840799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901508, 43.142376, 21.624750>,  <32.792412, 43.006592, 21.264668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901508, 43.142376, 21.624750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218754, 0.889293, -0.401627,
		-0.936887, 0.306466, 0.168292,
		0.272746, 0.339464, 0.900208,
		32.983334, 43.244217, 21.894812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541592, 43.670853, 21.249216>,  <32.792412, 43.006592, 21.264668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541592, 43.670853, 21.249216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763916, 43.678699, 21.581646>,  <32.897312, 43.683407, 21.781103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763916, 43.678699, 21.581646>,  <32.541592, 43.670853, 21.249216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763916, 43.678699, 21.581646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205435, 0.965472, -0.160187,
		-0.805524, 0.259766, 0.532591,
		0.555813, 0.019622, 0.831076,
		32.930660, 43.684586, 21.830969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487537, 44.237183, 21.526619>,  <32.541592, 43.670853, 21.249216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487537, 44.237183, 21.526619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830399, 44.145267, 21.711002>,  <33.036118, 44.090118, 21.821632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830399, 44.145267, 21.711002>,  <32.487537, 44.237183, 21.526619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830399, 44.145267, 21.711002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273721, 0.961349, -0.029749,
		-0.436305, 0.151674, 0.886923,
		0.857155, -0.229790, 0.460958,
		33.087543, 44.076332, 21.849289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860542, 44.486305, 22.150740>,  <32.487537, 44.237183, 21.526619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860542, 44.486305, 22.150740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750580, 44.796452, 22.378155>,  <32.684601, 44.982540, 22.514605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750580, 44.796452, 22.378155>,  <32.860542, 44.486305, 22.150740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750580, 44.796452, 22.378155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513170, 0.381726, -0.768727,
		-0.813070, -0.503084, 0.292956,
		-0.274905, 0.775366, 0.568537,
		32.668110, 45.029060, 22.548716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146454, 44.536453, 22.160492>,  <32.860542, 44.486305, 22.150740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146454, 44.536453, 22.160492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245556, 44.914913, 22.243834>,  <32.305016, 45.141991, 22.293839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245556, 44.914913, 22.243834>,  <32.146454, 44.536453, 22.160492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245556, 44.914913, 22.243834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661371, 0.322323, -0.677271,
		-0.707960, 0.029997, 0.705616,
		0.247752, 0.946154, 0.208352,
		32.319881, 45.198761, 22.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529028, 44.853962, 22.231274>,  <32.146454, 44.536453, 22.160492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529028, 44.853962, 22.231274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809273, 45.128891, 22.154617>,  <31.977419, 45.293850, 22.108624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809273, 45.128891, 22.154617>,  <31.529028, 44.853962, 22.231274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809273, 45.128891, 22.154617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534910, 0.328167, -0.778574,
		-0.472244, 0.647989, 0.597575,
		0.700612, 0.687326, -0.191641,
		32.019455, 45.335087, 22.097126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141520, 45.592346, 22.265190>,  <31.529028, 44.853962, 22.231274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141520, 45.592346, 22.265190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491724, 45.606361, 22.072420>,  <31.701847, 45.614773, 21.956758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491724, 45.606361, 22.072420>,  <31.141520, 45.592346, 22.265190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491724, 45.606361, 22.072420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456978, 0.384116, -0.802263,
		0.157001, 0.922620, 0.352312,
		0.875512, 0.035043, -0.481924,
		31.754377, 45.616875, 21.927843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129028, 46.202480, 21.924038>,  <31.141520, 45.592346, 22.265190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129028, 46.202480, 21.924038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394138, 45.977108, 21.726748>,  <31.553205, 45.841885, 21.608374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394138, 45.977108, 21.726748>,  <31.129028, 46.202480, 21.924038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394138, 45.977108, 21.726748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323567, 0.378518, -0.867196,
		0.675301, 0.734348, 0.068564,
		0.662777, -0.563433, -0.493224,
		31.592972, 45.808079, 21.578781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674923, 46.574650, 21.519573>,  <31.129028, 46.202480, 21.924038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674923, 46.574650, 21.519573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594240, 46.216072, 21.361732>,  <31.545830, 46.000927, 21.267029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594240, 46.216072, 21.361732>,  <31.674923, 46.574650, 21.519573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594240, 46.216072, 21.361732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057134, 0.391426, -0.918434,
		0.977778, -0.207800, -0.027736,
		-0.201708, -0.896440, -0.394600,
		31.533728, 45.947140, 21.243353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203030, 46.436886, 20.929682>,  <31.674923, 46.574650, 21.519573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203030, 46.436886, 20.929682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915840, 46.160629, 20.894978>,  <31.743526, 45.994877, 20.874155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915840, 46.160629, 20.894978>,  <32.203030, 46.436886, 20.929682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915840, 46.160629, 20.894978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037385, 0.086204, -0.995576,
		0.695062, -0.718044, -0.036073,
		-0.717977, -0.690639, -0.086761,
		31.700447, 45.953438, 20.868950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773540, 46.019875, 21.337570>,  <32.203030, 46.436886, 20.929682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773540, 46.019875, 21.337570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442429, 45.941444, 21.547840>,  <32.243759, 45.894386, 21.674002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442429, 45.941444, 21.547840>,  <32.773540, 46.019875, 21.337570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442429, 45.941444, 21.547840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560177, -0.236587, 0.793869,
		-0.031289, 0.951621, 0.305678,
		-0.827782, -0.196073, 0.525674,
		32.194096, 45.882622, 21.705542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937588, 46.303295, 22.047178>,  <32.773540, 46.019875, 21.337570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937588, 46.303295, 22.047178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656509, 46.018711, 22.049772>,  <32.487862, 45.847961, 22.051329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656509, 46.018711, 22.049772>,  <32.937588, 46.303295, 22.047178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656509, 46.018711, 22.049772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333502, -0.321318, 0.886302,
		-0.628483, 0.624966, 0.463062,
		-0.702699, -0.711458, 0.006484,
		32.445702, 45.805275, 22.051718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802525, 46.360340, 22.655699>,  <32.937588, 46.303295, 22.047178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802525, 46.360340, 22.655699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663609, 46.007324, 22.528889>,  <32.580257, 45.795513, 22.452803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663609, 46.007324, 22.528889>,  <32.802525, 46.360340, 22.655699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663609, 46.007324, 22.528889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281068, -0.420488, 0.862665,
		-0.894645, 0.210491, 0.394087,
		-0.347292, -0.882544, -0.317025,
		32.559422, 45.742561, 22.433781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429291, 46.110687, 23.253468>,  <32.802525, 46.360340, 22.655699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429291, 46.110687, 23.253468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475292, 45.777641, 23.036757>,  <32.502895, 45.577812, 22.906729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475292, 45.777641, 23.036757>,  <32.429291, 46.110687, 23.253468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475292, 45.777641, 23.036757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041072, -0.548918, 0.834867,
		-0.992515, -0.073764, -0.097327,
		0.115007, -0.832615, -0.541780,
		32.509796, 45.527855, 22.874222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006668, 45.608162, 23.554163>,  <32.429291, 46.110687, 23.253468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006668, 45.608162, 23.554163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315830, 45.437744, 23.366074>,  <32.501328, 45.335495, 23.253220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315830, 45.437744, 23.366074>,  <32.006668, 45.608162, 23.554163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315830, 45.437744, 23.366074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144527, -0.603379, 0.784248,
		-0.617855, -0.674103, -0.404773,
		0.772895, -0.426051, -0.470227,
		32.547703, 45.309933, 23.225006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076191, 44.866810, 23.731236>,  <32.006668, 45.608162, 23.554163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076191, 44.866810, 23.731236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450016, 44.876804, 23.589268>,  <32.674313, 44.882801, 23.504087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450016, 44.876804, 23.589268>,  <32.076191, 44.866810, 23.731236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450016, 44.876804, 23.589268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349619, -0.249578, 0.903038,
		-0.066018, -0.968032, -0.241982,
		0.934563, 0.024984, -0.354919,
		32.730385, 44.884300, 23.482792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420849, 44.159950, 23.736399>,  <32.076191, 44.866810, 23.731236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420849, 44.159950, 23.736399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712048, 44.433918, 23.724323>,  <32.886765, 44.598297, 23.717077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712048, 44.433918, 23.724323>,  <32.420849, 44.159950, 23.736399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712048, 44.433918, 23.724323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380369, -0.366872, 0.848955,
		0.570389, -0.629518, -0.527602,
		0.727994, 0.684918, -0.030189,
		32.930447, 44.639393, 23.715267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932888, 43.777088, 23.965616>,  <32.420849, 44.159950, 23.736399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932888, 43.777088, 23.965616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069042, 44.150475, 24.010815>,  <33.150734, 44.374508, 24.037933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069042, 44.150475, 24.010815>,  <32.932888, 43.777088, 23.965616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069042, 44.150475, 24.010815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494439, -0.279908, 0.822910,
		0.799790, -0.224241, -0.556822,
		0.340390, 0.933470, 0.112995,
		33.171158, 44.430515, 24.044714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615097, 43.762001, 23.954380>,  <32.932888, 43.777088, 23.965616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615097, 43.762001, 23.954380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522190, 44.096672, 24.152786>,  <33.466446, 44.297474, 24.271830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522190, 44.096672, 24.152786>,  <33.615097, 43.762001, 23.954380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522190, 44.096672, 24.152786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486140, -0.341835, 0.804249,
		0.842449, 0.427932, -0.327344,
		-0.232266, 0.836674, 0.496014,
		33.452511, 44.347675, 24.301590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261204, 43.992466, 24.328730>,  <33.615097, 43.762001, 23.954380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261204, 43.992466, 24.328730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934929, 44.148964, 24.499182>,  <33.739166, 44.242863, 24.601454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934929, 44.148964, 24.499182>,  <34.261204, 43.992466, 24.328730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934929, 44.148964, 24.499182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335248, -0.280621, 0.899367,
		0.471453, 0.876459, 0.097735,
		-0.815684, 0.391244, 0.426131,
		33.690224, 44.266338, 24.627022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466866, 44.194904, 24.937040>,  <34.261204, 43.992466, 24.328730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466866, 44.194904, 24.937040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072498, 44.215164, 25.000797>,  <33.835880, 44.227318, 25.039051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072498, 44.215164, 25.000797>,  <34.466866, 44.194904, 24.937040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072498, 44.215164, 25.000797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121946, -0.434539, 0.892359,
		0.114458, 0.899228, 0.422242,
		-0.985915, 0.050647, 0.159394,
		33.776722, 44.230358, 25.048616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330132, 44.410915, 25.622326>,  <34.466866, 44.194904, 24.937040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330132, 44.410915, 25.622326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999771, 44.218037, 25.505447>,  <33.801556, 44.102310, 25.435320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999771, 44.218037, 25.505447>,  <34.330132, 44.410915, 25.622326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999771, 44.218037, 25.505447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080656, -0.613959, 0.785206,
		-0.558016, 0.624935, 0.545961,
		-0.825901, -0.482193, -0.292195,
		33.752003, 44.073380, 25.417789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138546, 44.143757, 26.139774>,  <34.330132, 44.410915, 25.622326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138546, 44.143757, 26.139774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904110, 43.922009, 25.903412>,  <33.763447, 43.788960, 25.761595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904110, 43.922009, 25.903412>,  <34.138546, 44.143757, 26.139774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904110, 43.922009, 25.903412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079700, -0.765202, 0.638838,
		-0.806313, 0.327324, 0.492664,
		-0.586094, -0.554369, -0.590905,
		33.728283, 43.755699, 25.726141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585159, 43.837185, 26.569485>,  <34.138546, 44.143757, 26.139774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585159, 43.837185, 26.569485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640705, 43.610302, 26.244770>,  <33.674034, 43.474171, 26.049942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640705, 43.610302, 26.244770>,  <33.585159, 43.837185, 26.569485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640705, 43.610302, 26.244770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020732, -0.817882, 0.575013,
		-0.990095, -0.096678, -0.101814,
		0.138863, -0.567206, -0.811785,
		33.682365, 43.440140, 26.001234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094738, 43.316845, 26.667715>,  <33.585159, 43.837185, 26.569485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094738, 43.316845, 26.667715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350826, 43.161060, 26.402857>,  <33.504478, 43.067589, 26.243942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350826, 43.161060, 26.402857>,  <33.094738, 43.316845, 26.667715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350826, 43.161060, 26.402857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074984, -0.889521, 0.450699,
		-0.764521, -0.238898, -0.598695,
		0.640223, -0.389462, -0.662144,
		33.542892, 43.044220, 26.204214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729362, 42.699764, 26.606262>,  <33.094738, 43.316845, 26.667715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729362, 42.699764, 26.606262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077728, 42.655499, 26.414738>,  <33.286747, 42.628941, 26.299824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077728, 42.655499, 26.414738>,  <32.729362, 42.699764, 26.606262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077728, 42.655499, 26.414738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003289, -0.972982, 0.230859,
		-0.491421, -0.202634, -0.847021,
		0.870916, -0.110663, -0.478810,
		33.339005, 42.622299, 26.271095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708984, 42.098705, 26.214659>,  <32.729362, 42.699764, 26.606262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708984, 42.098705, 26.214659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097435, 42.138611, 26.301338>,  <33.330505, 42.162556, 26.353346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097435, 42.138611, 26.301338>,  <32.708984, 42.098705, 26.214659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097435, 42.138611, 26.301338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031343, -0.953842, 0.298670,
		0.236493, -0.283255, -0.929429,
		0.971128, 0.099765, 0.216699,
		33.388775, 42.168541, 26.366348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919964, 41.418201, 26.402727>,  <32.708984, 42.098705, 26.214659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919964, 41.418201, 26.402727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228088, 41.634659, 26.537655>,  <33.412964, 41.764534, 26.618610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228088, 41.634659, 26.537655>,  <32.919964, 41.418201, 26.402727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228088, 41.634659, 26.537655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287004, -0.766600, 0.574415,
		0.569430, -0.345666, -0.745831,
		0.770310, 0.541146, 0.337317,
		33.459183, 41.797001, 26.638849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479935, 41.003284, 26.329893>,  <32.919964, 41.418201, 26.402727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479935, 41.003284, 26.329893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545559, 41.286774, 26.604353>,  <33.584934, 41.456867, 26.769028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545559, 41.286774, 26.604353>,  <33.479935, 41.003284, 26.329893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545559, 41.286774, 26.604353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129324, -0.705023, 0.697294,
		0.977937, -0.025662, -0.207320,
		0.164059, 0.708721, 0.686149,
		33.594776, 41.499390, 26.810198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054020, 40.755928, 26.623068>,  <33.479935, 41.003284, 26.329893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054020, 40.755928, 26.623068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911644, 40.999855, 26.906317>,  <33.826218, 41.146210, 27.076265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911644, 40.999855, 26.906317>,  <34.054020, 40.755928, 26.623068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911644, 40.999855, 26.906317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163605, -0.705381, 0.689690,
		0.920078, 0.361337, 0.151301,
		-0.355935, 0.609814, 0.708122,
		33.804863, 41.182800, 27.118753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332802, 40.528515, 27.214373>,  <34.054020, 40.755928, 26.623068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332802, 40.528515, 27.214373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047638, 40.760101, 27.372643>,  <33.876537, 40.899052, 27.467604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047638, 40.760101, 27.372643>,  <34.332802, 40.528515, 27.214373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047638, 40.760101, 27.372643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001967, -0.562586, 0.826737,
		0.701249, 0.590170, 0.399936,
		-0.712914, 0.578962, 0.395674,
		33.833763, 40.933788, 27.491344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486256, 40.634537, 27.857422>,  <34.332802, 40.528515, 27.214373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486256, 40.634537, 27.857422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101112, 40.737320, 27.890596>,  <33.870026, 40.798992, 27.910501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101112, 40.737320, 27.890596>,  <34.486256, 40.634537, 27.857422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101112, 40.737320, 27.890596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077864, -0.558345, 0.825947,
		0.258543, 0.788810, 0.557614,
		-0.962857, 0.256961, 0.082936,
		33.812256, 40.814407, 27.915478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434166, 40.824444, 28.565685>,  <34.486256, 40.634537, 27.857422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434166, 40.824444, 28.565685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076565, 40.751190, 28.402115>,  <33.862003, 40.707237, 28.303972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076565, 40.751190, 28.402115>,  <34.434166, 40.824444, 28.565685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076565, 40.751190, 28.402115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261281, -0.528339, 0.807830,
		-0.363996, 0.829047, 0.424487,
		-0.894002, -0.183137, -0.408927,
		33.808365, 40.696251, 28.279436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877281, 41.061653, 29.034443>,  <34.434166, 40.824444, 28.565685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877281, 41.061653, 29.034443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681396, 40.795918, 28.808582>,  <33.563866, 40.636475, 28.673065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681396, 40.795918, 28.808582>,  <33.877281, 41.061653, 29.034443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681396, 40.795918, 28.808582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354942, -0.439624, 0.825074,
		-0.796367, 0.604466, -0.020515,
		-0.489711, -0.664343, -0.564652,
		33.534485, 40.596615, 28.639187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184124, 41.033031, 29.210165>,  <33.877281, 41.061653, 29.034443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184124, 41.033031, 29.210165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278828, 40.688908, 29.029583>,  <33.335648, 40.482433, 28.921234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278828, 40.688908, 29.029583>,  <33.184124, 41.033031, 29.210165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278828, 40.688908, 29.029583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407827, -0.509747, 0.757519,
		-0.881830, 0.004769, -0.471543,
		0.236755, -0.860311, -0.451455,
		33.349854, 40.430813, 28.894146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637585, 40.638958, 29.411858>,  <33.184124, 41.033031, 29.210165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637585, 40.638958, 29.411858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890770, 40.366379, 29.264894>,  <33.042679, 40.202831, 29.176716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890770, 40.366379, 29.264894>,  <32.637585, 40.638958, 29.411858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890770, 40.366379, 29.264894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481944, -0.718236, 0.501864,
		-0.605879, -0.140590, -0.783035,
		0.632962, -0.681448, -0.367408,
		33.080658, 40.161945, 29.154673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266014, 40.004063, 29.337528>,  <32.637585, 40.638958, 29.411858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266014, 40.004063, 29.337528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645332, 39.880638, 29.367237>,  <32.872925, 39.806583, 29.385063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645332, 39.880638, 29.367237>,  <32.266014, 40.004063, 29.337528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645332, 39.880638, 29.367237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266883, -0.648631, 0.712777,
		-0.171763, -0.695748, -0.697447,
		0.948299, -0.308565, 0.074272,
		32.929821, 39.788067, 29.389519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242996, 39.264748, 29.435961>,  <32.266014, 40.004063, 29.337528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242996, 39.264748, 29.435961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600056, 39.375973, 29.577866>,  <32.814293, 39.442707, 29.663008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600056, 39.375973, 29.577866>,  <32.242996, 39.264748, 29.435961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600056, 39.375973, 29.577866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143806, -0.570235, 0.808796,
		0.427195, -0.772989, -0.469034,
		0.892650, 0.278064, 0.354762,
		32.867851, 39.459393, 29.684294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647179, 38.707066, 29.583509>,  <32.242996, 39.264748, 29.435961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647179, 38.707066, 29.583509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849693, 38.973289, 29.802856>,  <32.971203, 39.133022, 29.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849693, 38.973289, 29.802856>,  <32.647179, 38.707066, 29.583509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849693, 38.973289, 29.802856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004560, -0.633809, 0.773476,
		0.862354, -0.394100, -0.317853,
		0.506284, 0.665561, 0.548365,
		33.001579, 39.172958, 29.967365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113255, 38.346519, 29.948240>,  <32.647179, 38.707066, 29.583509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113255, 38.346519, 29.948240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105766, 38.696461, 30.141848>,  <33.101273, 38.906425, 30.258013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105766, 38.696461, 30.141848>,  <33.113255, 38.346519, 29.948240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105766, 38.696461, 30.141848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073533, -0.481588, 0.873307,
		0.997117, 0.051942, -0.055314,
		-0.018723, 0.874857, 0.484019,
		33.100151, 38.958920, 30.287054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714005, 38.367184, 30.395546>,  <33.113255, 38.346519, 29.948240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714005, 38.367184, 30.395546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444511, 38.616917, 30.553682>,  <33.282818, 38.766758, 30.648563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444511, 38.616917, 30.553682>,  <33.714005, 38.367184, 30.395546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444511, 38.616917, 30.553682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056603, -0.489813, 0.869988,
		0.736807, 0.608514, 0.294661,
		-0.673729, 0.624335, 0.395342,
		33.242393, 38.804218, 30.672285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023643, 38.624271, 31.055080>,  <33.714005, 38.367184, 30.395546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023643, 38.624271, 31.055080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629704, 38.691643, 31.071619>,  <33.393341, 38.732067, 31.081543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629704, 38.691643, 31.071619>,  <34.023643, 38.624271, 31.055080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629704, 38.691643, 31.071619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045302, -0.479977, 0.876111,
		0.167407, 0.860961, 0.480334,
		-0.984846, 0.168427, 0.041348,
		33.334251, 38.742172, 31.084023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841347, 38.806103, 31.703270>,  <34.023643, 38.624271, 31.055080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841347, 38.806103, 31.703270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487358, 38.689014, 31.558418>,  <33.274963, 38.618759, 31.471508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487358, 38.689014, 31.558418>,  <33.841347, 38.806103, 31.703270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487358, 38.689014, 31.558418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148528, -0.559612, 0.815337,
		-0.441319, 0.775337, 0.451764,
		-0.884973, -0.292724, -0.362127,
		33.221867, 38.601196, 31.449780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351978, 38.929905, 32.269474>,  <33.841347, 38.806103, 31.703270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351978, 38.929905, 32.269474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162743, 38.667889, 32.033810>,  <33.049202, 38.510681, 31.892412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162743, 38.667889, 32.033810>,  <33.351978, 38.929905, 32.269474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162743, 38.667889, 32.033810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156988, -0.595348, 0.787982,
		-0.866913, 0.465279, 0.178821,
		-0.473092, -0.655039, -0.589159,
		33.020817, 38.471378, 31.857061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712349, 38.731670, 32.643841>,  <33.351978, 38.929905, 32.269474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712349, 38.731670, 32.643841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752556, 38.450645, 32.362045>,  <32.776680, 38.282032, 32.192966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752556, 38.450645, 32.362045>,  <32.712349, 38.731670, 32.643841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752556, 38.450645, 32.362045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139173, -0.711041, 0.689240,
		-0.985153, 0.028765, -0.169250,
		0.100518, -0.702562, -0.704488,
		32.782711, 38.239876, 32.150700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230358, 38.192303, 32.803638>,  <32.712349, 38.731670, 32.643841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230358, 38.192303, 32.803638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491104, 38.009464, 32.561604>,  <32.647552, 37.899761, 32.416382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491104, 38.009464, 32.561604>,  <32.230358, 38.192303, 32.803638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491104, 38.009464, 32.561604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009686, -0.792838, 0.609356,
		-0.758273, -0.403079, -0.512396,
		0.651865, -0.457095, -0.605092,
		32.686665, 37.872337, 32.380077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924053, 37.590874, 32.616356>,  <32.230358, 38.192303, 32.803638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924053, 37.590874, 32.616356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318733, 37.531040, 32.590923>,  <32.555542, 37.495140, 32.575665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318733, 37.531040, 32.590923>,  <31.924053, 37.590874, 32.616356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318733, 37.531040, 32.590923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084141, -0.804772, 0.587591,
		-0.139064, -0.574427, -0.806656,
		0.986702, -0.149586, -0.063582,
		32.614742, 37.486164, 32.571850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018394, 36.980190, 32.784409>,  <31.924053, 37.590874, 32.616356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018394, 36.980190, 32.784409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415436, 37.026676, 32.770409>,  <32.653660, 37.054569, 32.762009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415436, 37.026676, 32.770409>,  <32.018394, 36.980190, 32.784409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415436, 37.026676, 32.770409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113862, -0.791773, 0.600109,
		0.042034, -0.599657, -0.799153,
		0.992607, 0.116218, -0.034997,
		32.713219, 37.061543, 32.759911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419300, 36.421959, 32.437691>,  <32.018394, 36.980190, 32.784409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419300, 36.421959, 32.437691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677269, 36.608017, 32.680252>,  <32.832050, 36.719650, 32.825790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677269, 36.608017, 32.680252>,  <32.419300, 36.421959, 32.437691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677269, 36.608017, 32.680252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070766, -0.826395, 0.558626,
		0.760968, -0.317356, -0.565874,
		0.644919, 0.465141, 0.606402,
		32.870743, 36.747559, 32.862171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778584, 35.880928, 32.593380>,  <32.419300, 36.421959, 32.437691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778584, 35.880928, 32.593380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879269, 36.162422, 32.859131>,  <32.939682, 36.331318, 33.018581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879269, 36.162422, 32.859131>,  <32.778584, 35.880928, 32.593380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879269, 36.162422, 32.859131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145575, -0.706202, 0.692883,
		0.956790, -0.077693, -0.280209,
		0.251716, 0.703735, 0.664376,
		32.954784, 36.373543, 33.058445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280533, 35.568539, 32.966484>,  <32.778584, 35.880928, 32.593380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280533, 35.568539, 32.966484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162163, 35.875515, 33.193981>,  <33.091141, 36.059700, 33.330479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162163, 35.875515, 33.193981>,  <33.280533, 35.568539, 32.966484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162163, 35.875515, 33.193981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014371, -0.591765, 0.805983,
		0.955104, 0.246682, 0.164088,
		-0.295923, 0.767439, 0.568742,
		33.073387, 36.105747, 33.364605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655373, 35.605350, 33.588249>,  <33.280533, 35.568539, 32.966484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655373, 35.605350, 33.588249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327797, 35.813793, 33.684402>,  <33.131252, 35.938858, 33.742096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327797, 35.813793, 33.684402>,  <33.655373, 35.605350, 33.588249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327797, 35.813793, 33.684402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140886, -0.588620, 0.796039,
		0.556320, 0.618039, 0.555460,
		-0.818938, 0.521108, 0.240388,
		33.082115, 35.970127, 33.756519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095348, 35.539059, 32.894547>,  <33.655373, 35.605350, 33.588249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095348, 35.539059, 32.894547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434624, 35.339725, 32.822727>,  <34.638187, 35.220127, 32.779636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434624, 35.339725, 32.822727>,  <34.095348, 35.539059, 32.894547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434624, 35.339725, 32.822727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318750, 0.750918, -0.578378,
		0.423052, 0.433343, 0.795765,
		0.848190, -0.498334, -0.179549,
		34.689079, 35.190224, 32.768864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788044, 35.989231, 32.964996>,  <34.095348, 35.539059, 32.894547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788044, 35.989231, 32.964996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845482, 35.672306, 32.727806>,  <34.879944, 35.482151, 32.585491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845482, 35.672306, 32.727806>,  <34.788044, 35.989231, 32.964996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845482, 35.672306, 32.727806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395710, 0.595169, -0.699419,
		0.907080, -0.134212, 0.398991,
		0.143596, -0.792314, -0.592975,
		34.888561, 35.434612, 32.549915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481735, 36.016964, 32.915405>,  <34.788044, 35.989231, 32.964996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481735, 36.016964, 32.915405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328274, 35.807789, 32.610947>,  <35.236198, 35.682285, 32.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328274, 35.807789, 32.610947>,  <35.481735, 36.016964, 32.915405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328274, 35.807789, 32.610947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445508, 0.617157, -0.648568,
		0.808908, -0.587923, -0.003801,
		-0.383654, -0.522938, -0.761147,
		35.213177, 35.650906, 32.382603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995735, 35.976727, 32.387196>,  <35.481735, 36.016964, 32.915405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995735, 35.976727, 32.387196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638077, 35.933296, 32.213428>,  <35.423481, 35.907238, 32.109169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638077, 35.933296, 32.213428>,  <35.995735, 35.976727, 32.387196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638077, 35.933296, 32.213428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197606, 0.774906, -0.600394,
		0.401817, -0.622682, -0.671424,
		-0.894145, -0.108571, -0.434416,
		35.369835, 35.900726, 32.083103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083111, 36.118282, 31.705381>,  <35.995735, 35.976727, 32.387196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083111, 36.118282, 31.705381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685589, 36.115330, 31.661039>,  <35.447075, 36.113560, 31.634434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685589, 36.115330, 31.661039>,  <36.083111, 36.118282, 31.705381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685589, 36.115330, 31.661039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073440, 0.705053, -0.705342,
		0.083363, -0.709117, -0.700146,
		-0.993809, -0.007381, -0.110853,
		35.387447, 36.113117, 31.627783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039684, 36.049728, 31.051313>,  <36.083111, 36.118282, 31.705381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039684, 36.049728, 31.051313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698223, 36.207832, 31.186989>,  <35.493347, 36.302696, 31.268394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698223, 36.207832, 31.186989>,  <36.039684, 36.049728, 31.051313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698223, 36.207832, 31.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020132, 0.675779, -0.736830,
		-0.520457, -0.622167, -0.584837,
		-0.853651, 0.395262, 0.339188,
		35.442127, 36.326412, 31.288746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388927, 35.966022, 30.563974>,  <36.039684, 36.049728, 31.051313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388927, 35.966022, 30.563974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376247, 36.293434, 30.793407>,  <35.368637, 36.489883, 30.931068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376247, 36.293434, 30.793407>,  <35.388927, 35.966022, 30.563974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376247, 36.293434, 30.793407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064478, 0.571003, -0.818412,
		-0.997415, -0.062930, 0.034674,
		-0.031704, 0.818532, 0.573585,
		35.366737, 36.538994, 30.965483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191662, 36.378075, 30.130899>,  <35.388927, 35.966022, 30.563974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191662, 36.378075, 30.130899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260040, 36.637257, 30.427799>,  <35.301067, 36.792767, 30.605940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260040, 36.637257, 30.427799>,  <35.191662, 36.378075, 30.130899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260040, 36.637257, 30.427799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081398, 0.741476, -0.666023,
		-0.981913, 0.174270, 0.074009,
		0.170944, 0.647953, 0.742250,
		35.311325, 36.831642, 30.650475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771748, 36.922173, 29.958889>,  <35.191662, 36.378075, 30.130899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771748, 36.922173, 29.958889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076118, 37.050484, 30.184488>,  <35.258739, 37.127468, 30.319847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076118, 37.050484, 30.184488>,  <34.771748, 36.922173, 29.958889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076118, 37.050484, 30.184488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092922, 0.806408, -0.584014,
		-0.642148, 0.496800, 0.583811,
		0.760928, 0.320775, 0.563997,
		35.304398, 37.146717, 30.353687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854935, 37.706665, 29.814268>,  <34.771748, 36.922173, 29.958889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854935, 37.706665, 29.814268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192089, 37.638973, 30.018583>,  <35.394382, 37.598358, 30.141172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192089, 37.638973, 30.018583>,  <34.854935, 37.706665, 29.814268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192089, 37.638973, 30.018583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443690, 0.755640, -0.481817,
		-0.304436, 0.632749, 0.712003,
		0.842887, -0.169226, 0.510788,
		35.444954, 37.588203, 30.171820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087315, 38.360943, 30.068216>,  <34.854935, 37.706665, 29.814268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087315, 38.360943, 30.068216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393963, 38.106724, 30.031631>,  <35.577953, 37.954193, 30.009680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393963, 38.106724, 30.031631>,  <35.087315, 38.360943, 30.068216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393963, 38.106724, 30.031631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516695, 0.695178, -0.499753,
		0.381199, 0.335864, 0.861326,
		0.766624, -0.635548, -0.091462,
		35.623951, 37.916058, 30.004192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690842, 38.803539, 30.336933>,  <35.087315, 38.360943, 30.068216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690842, 38.803539, 30.336933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858032, 38.512894, 30.118822>,  <35.958347, 38.338505, 29.987955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858032, 38.512894, 30.118822>,  <35.690842, 38.803539, 30.336933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858032, 38.512894, 30.118822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536880, 0.681762, -0.496951,
		0.732843, -0.085038, 0.675063,
		0.417972, -0.726615, -0.545279,
		35.983425, 38.294910, 29.955238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366692, 38.944332, 30.299612>,  <35.690842, 38.803539, 30.336933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366692, 38.944332, 30.299612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330185, 38.692497, 29.990992>,  <36.308281, 38.541397, 29.805819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330185, 38.692497, 29.990992>,  <36.366692, 38.944332, 30.299612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330185, 38.692497, 29.990992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581013, 0.595577, -0.554719,
		0.808761, -0.498907, 0.311444,
		-0.091264, -0.629588, -0.771550,
		36.302807, 38.503620, 29.759527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989220, 38.970573, 30.066429>,  <36.366692, 38.944332, 30.299612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989220, 38.970573, 30.066429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756630, 38.832844, 29.771585>,  <36.617077, 38.750206, 29.594679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756630, 38.832844, 29.771585>,  <36.989220, 38.970573, 30.066429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756630, 38.832844, 29.771585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451365, 0.617263, -0.644403,
		0.676876, -0.707408, -0.203503,
		-0.581471, -0.344327, -0.737110,
		36.582188, 38.729546, 29.550453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338203, 39.112534, 29.498518>,  <36.989220, 38.970573, 30.066429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338203, 39.112534, 29.498518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978962, 39.035603, 29.340322>,  <36.763416, 38.989445, 29.245405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978962, 39.035603, 29.340322>,  <37.338203, 39.112534, 29.498518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978962, 39.035603, 29.340322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151667, 0.708668, -0.689048,
		0.412796, -0.678822, -0.607289,
		-0.898107, -0.192331, -0.395490,
		36.709530, 38.977901, 29.221676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394608, 38.846981, 28.779764>,  <37.338203, 39.112534, 29.498518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394608, 38.846981, 28.779764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028458, 38.999821, 28.830500>,  <36.808769, 39.091526, 28.860941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028458, 38.999821, 28.830500>,  <37.394608, 38.846981, 28.779764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028458, 38.999821, 28.830500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117161, 0.554222, -0.824082,
		-0.385180, -0.739483, -0.552088,
		-0.915374, 0.382103, 0.126837,
		36.753845, 39.114452, 28.868551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105377, 38.842834, 28.101461>,  <37.394608, 38.846981, 28.779764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105377, 38.842834, 28.101461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890415, 39.106461, 28.311922>,  <36.761440, 39.264637, 28.438198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890415, 39.106461, 28.311922>,  <37.105377, 38.842834, 28.101461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890415, 39.106461, 28.311922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166737, 0.528549, -0.832367,
		-0.826679, -0.535045, -0.174153,
		-0.537402, 0.659062, 0.526152,
		36.729195, 39.304180, 28.469769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526638, 38.977592, 27.753132>,  <37.105377, 38.842834, 28.101461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526638, 38.977592, 27.753132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566284, 39.304722, 27.979879>,  <36.590073, 39.500999, 28.115929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566284, 39.304722, 27.979879>,  <36.526638, 38.977592, 27.753132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566284, 39.304722, 27.979879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225969, 0.573290, -0.787576,
		-0.969079, -0.050035, 0.241624,
		0.099114, 0.817823, 0.566870,
		36.596020, 39.550068, 28.149940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139843, 39.402779, 27.418335>,  <36.526638, 38.977592, 27.753132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139843, 39.402779, 27.418335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283577, 39.674278, 27.674517>,  <36.369820, 39.837177, 27.828226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283577, 39.674278, 27.674517>,  <36.139843, 39.402779, 27.418335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283577, 39.674278, 27.674517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129549, 0.715930, -0.686048,
		-0.924172, 0.163552, 0.345190,
		0.359337, 0.678746, 0.640454,
		36.391376, 39.877903, 27.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667164, 39.900406, 27.528023>,  <36.139843, 39.402779, 27.418335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667164, 39.900406, 27.528023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000584, 40.094959, 27.632812>,  <36.200634, 40.211693, 27.695686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000584, 40.094959, 27.632812>,  <35.667164, 39.900406, 27.528023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000584, 40.094959, 27.632812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262613, 0.766053, -0.586684,
		-0.486039, 0.420230, 0.766272,
		0.833547, 0.486384, 0.261974,
		36.250648, 40.240875, 27.711405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550549, 40.623085, 27.724226>,  <35.667164, 39.900406, 27.528023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550549, 40.623085, 27.724226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944336, 40.641331, 27.656412>,  <36.180607, 40.652279, 27.615723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944336, 40.641331, 27.656412>,  <35.550549, 40.623085, 27.724226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944336, 40.641331, 27.656412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123532, 0.866125, -0.484321,
		0.124750, 0.497742, 0.858307,
		0.984468, 0.045610, -0.169536,
		36.239677, 40.655014, 27.605551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820007, 41.277653, 27.965588>,  <35.550549, 40.623085, 27.724226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820007, 41.277653, 27.965588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055473, 41.155376, 27.666248>,  <36.196754, 41.082012, 27.486645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055473, 41.155376, 27.666248>,  <35.820007, 41.277653, 27.965588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055473, 41.155376, 27.666248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177329, 0.854363, -0.488486,
		0.788685, 0.420260, 0.448729,
		0.588669, -0.305689, -0.748347,
		36.232075, 41.063671, 27.441744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070244, 41.877838, 27.695465>,  <35.820007, 41.277653, 27.965588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070244, 41.877838, 27.695465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243702, 41.648338, 27.417540>,  <36.347775, 41.510639, 27.250784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243702, 41.648338, 27.417540>,  <36.070244, 41.877838, 27.695465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243702, 41.648338, 27.417540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029156, 0.779614, -0.625581,
		0.900613, 0.251020, 0.354802,
		0.433642, -0.573751, -0.694812,
		36.373795, 41.476212, 27.209095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609554, 42.223450, 27.393784>,  <36.070244, 41.877838, 27.695465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609554, 42.223450, 27.393784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473427, 41.969440, 27.116386>,  <36.391750, 41.817036, 26.949947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473427, 41.969440, 27.116386>,  <36.609554, 42.223450, 27.393784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473427, 41.969440, 27.116386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070530, 0.752676, -0.654603,
		0.937662, -0.173860, -0.300936,
		-0.340317, -0.635021, -0.693493,
		36.371330, 41.778934, 26.908339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959492, 42.224007, 26.719620>,  <36.609554, 42.223450, 27.393784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959492, 42.224007, 26.719620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605579, 42.063107, 26.625507>,  <36.393230, 41.966568, 26.569040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605579, 42.063107, 26.625507>,  <36.959492, 42.224007, 26.719620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605579, 42.063107, 26.625507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098885, 0.655454, -0.748733,
		0.455390, -0.639201, -0.619711,
		-0.884784, -0.402246, -0.235280,
		36.340145, 41.942432, 26.554924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032349, 42.179665, 26.003210>,  <36.959492, 42.224007, 26.719620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032349, 42.179665, 26.003210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636692, 42.134251, 26.040533>,  <36.399300, 42.107002, 26.062927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636692, 42.134251, 26.040533>,  <37.032349, 42.179665, 26.003210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636692, 42.134251, 26.040533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136490, 0.474383, -0.869673,
		0.054475, -0.872967, -0.484728,
		-0.989142, -0.113536, 0.093309,
		36.339951, 42.100189, 26.068525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817104, 41.859104, 25.342836>,  <37.032349, 42.179665, 26.003210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817104, 41.859104, 25.342836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486774, 42.016869, 25.504061>,  <36.288578, 42.111526, 25.600796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486774, 42.016869, 25.504061>,  <36.817104, 41.859104, 25.342836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486774, 42.016869, 25.504061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178437, 0.495256, -0.850225,
		-0.534958, -0.774054, -0.338615,
		-0.825821, 0.394414, 0.403061,
		36.239029, 42.135193, 25.624979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372574, 41.922939, 24.775833>,  <36.817104, 41.859104, 25.342836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372574, 41.922939, 24.775833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198795, 42.164722, 25.042933>,  <36.094528, 42.309792, 25.203192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198795, 42.164722, 25.042933>,  <36.372574, 41.922939, 24.775833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198795, 42.164722, 25.042933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314368, 0.592984, -0.741311,
		-0.844056, -0.531978, -0.067597,
		-0.434445, 0.604458, 0.667749,
		36.068462, 42.346058, 25.243258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769386, 42.072800, 24.478386>,  <36.372574, 41.922939, 24.775833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769386, 42.072800, 24.478386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838741, 42.373913, 24.732393>,  <35.880356, 42.554581, 24.884798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838741, 42.373913, 24.732393>,  <35.769386, 42.072800, 24.478386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838741, 42.373913, 24.732393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137555, 0.656978, -0.741255,
		-0.975200, 0.041178, 0.217464,
		0.173392, 0.752785, 0.635020,
		35.890759, 42.599747, 24.922899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260826, 42.659500, 24.352989>,  <35.769386, 42.072800, 24.478386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260826, 42.659500, 24.352989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600594, 42.784668, 24.522959>,  <35.804455, 42.859768, 24.624941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600594, 42.784668, 24.522959>,  <35.260826, 42.659500, 24.352989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600594, 42.784668, 24.522959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006460, 0.811323, -0.584562,
		-0.527674, 0.493795, 0.691177,
		0.849422, 0.312923, 0.424925,
		35.855419, 42.878544, 24.650436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242062, 43.306854, 24.343700>,  <35.260826, 42.659500, 24.352989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242062, 43.306854, 24.343700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630695, 43.296734, 24.437836>,  <35.863876, 43.290661, 24.494316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630695, 43.296734, 24.437836>,  <35.242062, 43.306854, 24.343700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630695, 43.296734, 24.437836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159272, 0.805378, -0.570963,
		-0.175089, 0.592221, 0.786523,
		0.971585, -0.025302, 0.235337,
		35.922173, 43.289143, 24.508436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535732, 44.016899, 24.390917>,  <35.242062, 43.306854, 24.343700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535732, 44.016899, 24.390917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847351, 43.773460, 24.330650>,  <36.034321, 43.627399, 24.294491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847351, 43.773460, 24.330650>,  <35.535732, 44.016899, 24.390917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847351, 43.773460, 24.330650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310134, 0.582918, -0.751015,
		0.544889, 0.538349, 0.642866,
		0.779046, -0.608594, -0.150665,
		36.081066, 43.590881, 24.285450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163158, 44.488888, 24.271620>,  <35.535732, 44.016899, 24.390917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163158, 44.488888, 24.271620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268642, 44.135380, 24.117010>,  <36.331932, 43.923275, 24.024244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268642, 44.135380, 24.117010>,  <36.163158, 44.488888, 24.271620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268642, 44.135380, 24.117010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331990, 0.459386, -0.823861,
		0.905670, 0.088940, 0.414550,
		0.263712, -0.883773, -0.386525,
		36.347755, 43.870247, 24.001053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900078, 44.608910, 23.996965>,  <36.163158, 44.488888, 24.271620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900078, 44.608910, 23.996965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776394, 44.271313, 23.821663>,  <36.702183, 44.068756, 23.716482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776394, 44.271313, 23.821663>,  <36.900078, 44.608910, 23.996965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776394, 44.271313, 23.821663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243802, 0.375087, -0.894355,
		0.919212, -0.383389, 0.089787,
		-0.309208, -0.843992, -0.438255,
		36.683632, 44.018116, 23.690186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462486, 44.313236, 23.536766>,  <36.900078, 44.608910, 23.996965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462486, 44.313236, 23.536766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126495, 44.158428, 23.384634>,  <36.924900, 44.065544, 23.293356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126495, 44.158428, 23.384634>,  <37.462486, 44.313236, 23.536766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126495, 44.158428, 23.384634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312901, 0.227164, -0.922220,
		0.443313, -0.893652, -0.069715,
		-0.839980, -0.387018, -0.380329,
		36.874500, 44.042324, 23.270535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571220, 43.939781, 22.893635>,  <37.462486, 44.313236, 23.536766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571220, 43.939781, 22.893635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175873, 43.988792, 22.857597>,  <36.938663, 44.018200, 22.835976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175873, 43.988792, 22.857597>,  <37.571220, 43.939781, 22.893635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175873, 43.988792, 22.857597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104428, 0.116097, -0.987733,
		-0.110568, -0.985651, -0.127542,
		-0.988367, 0.122530, -0.090093,
		36.879364, 44.025551, 22.830570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467415, 43.469120, 22.313740>,  <37.571220, 43.939781, 22.893635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467415, 43.469120, 22.313740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127716, 43.680302, 22.316074>,  <36.923897, 43.807011, 22.317474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127716, 43.680302, 22.316074>,  <37.467415, 43.469120, 22.313740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127716, 43.680302, 22.316074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115887, -0.175604, -0.977616,
		-0.515114, -0.830918, 0.210316,
		-0.849252, 0.527957, 0.005837,
		36.872940, 43.838688, 22.317825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826691, 43.085621, 21.913370>,  <37.467415, 43.469120, 22.313740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826691, 43.085621, 21.913370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777096, 43.481796, 21.937540>,  <36.747337, 43.719501, 21.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777096, 43.481796, 21.937540>,  <36.826691, 43.085621, 21.913370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777096, 43.481796, 21.937540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110336, 0.074280, -0.991115,
		-0.986130, -0.116220, -0.118492,
		-0.123989, 0.990442, 0.060427,
		36.739899, 43.778931, 21.955667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505356, 43.094265, 21.223366>,  <36.826691, 43.085621, 21.913370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505356, 43.094265, 21.223366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636299, 42.888157, 20.906549>,  <36.714867, 42.764492, 20.716459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636299, 42.888157, 20.906549>,  <36.505356, 43.094265, 21.223366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636299, 42.888157, 20.906549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030035, -0.832130, 0.553767,
		-0.944422, -0.205070, -0.256930,
		0.327360, -0.515273, -0.792041,
		36.734509, 42.733574, 20.668938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116699, 42.505295, 21.078259>,  <36.505356, 43.094265, 21.223366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116699, 42.505295, 21.078259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476925, 42.423405, 20.924860>,  <36.693062, 42.374271, 20.832821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476925, 42.423405, 20.924860>,  <36.116699, 42.505295, 21.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476925, 42.423405, 20.924860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039478, -0.840011, 0.541131,
		-0.432926, -0.502464, -0.748402,
		0.900565, -0.204724, -0.383498,
		36.747093, 42.361988, 20.809811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074020, 41.813847, 20.966585>,  <36.116699, 42.505295, 21.078259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074020, 41.813847, 20.966585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463287, 41.904064, 20.984779>,  <36.696850, 41.958195, 20.995695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463287, 41.904064, 20.984779>,  <36.074020, 41.813847, 20.966585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463287, 41.904064, 20.984779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186147, -0.887993, 0.420496,
		0.135228, -0.400749, -0.906153,
		0.973171, 0.225540, 0.045483,
		36.755238, 41.971725, 20.998425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413548, 41.192181, 21.008482>,  <36.074020, 41.813847, 20.966585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413548, 41.192181, 21.008482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696629, 41.433556, 21.155466>,  <36.866478, 41.578381, 21.243656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696629, 41.433556, 21.155466>,  <36.413548, 41.192181, 21.008482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696629, 41.433556, 21.155466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267677, -0.710339, 0.650974,
		0.653839, -0.362336, -0.664234,
		0.707703, 0.603433, 0.367458,
		36.908939, 41.614586, 21.265703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874290, 40.858959, 21.275637>,  <36.413548, 41.192181, 21.008482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874290, 40.858959, 21.275637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999454, 41.200241, 21.442553>,  <37.074551, 41.405010, 21.542702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999454, 41.200241, 21.442553>,  <36.874290, 40.858959, 21.275637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999454, 41.200241, 21.442553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241264, -0.496345, 0.833926,
		0.918630, -0.160263, -0.361156,
		0.312906, 0.853204, 0.417292,
		37.093327, 41.456203, 21.567739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529724, 40.747627, 21.585703>,  <36.874290, 40.858959, 21.275637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529724, 40.747627, 21.585703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377247, 41.054375, 21.792236>,  <37.285759, 41.238422, 21.916157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377247, 41.054375, 21.792236>,  <37.529724, 40.747627, 21.585703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377247, 41.054375, 21.792236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386303, -0.375282, 0.842576,
		0.839918, 0.520645, -0.153190,
		-0.381194, 0.766872, 0.516332,
		37.262890, 41.284435, 21.947136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066795, 41.045540, 22.016855>,  <37.529724, 40.747627, 21.585703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066795, 41.045540, 22.016855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717930, 41.148003, 22.183575>,  <37.508610, 41.209480, 22.283607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717930, 41.148003, 22.183575>,  <38.066795, 41.045540, 22.016855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717930, 41.148003, 22.183575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310748, -0.367960, 0.876380,
		0.377853, 0.893863, 0.241321,
		-0.872160, 0.256153, 0.416801,
		37.456284, 41.224850, 22.308615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250843, 41.294731, 22.826431>,  <38.066795, 41.045540, 22.016855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250843, 41.294731, 22.826431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853127, 41.254013, 22.839279>,  <37.614498, 41.229584, 22.846989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853127, 41.254013, 22.839279>,  <38.250843, 41.294731, 22.826431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853127, 41.254013, 22.839279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083492, -0.554212, 0.828178,
		-0.066501, 0.826128, 0.559545,
		-0.994287, -0.101792, 0.032120,
		37.554840, 41.223476, 22.848915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163857, 41.253338, 23.504107>,  <38.250843, 41.294731, 22.826431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163857, 41.253338, 23.504107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801041, 41.137543, 23.381817>,  <37.583351, 41.068066, 23.308443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801041, 41.137543, 23.381817>,  <38.163857, 41.253338, 23.504107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801041, 41.137543, 23.381817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122815, -0.512629, 0.849781,
		-0.402726, 0.808336, 0.429423,
		-0.907044, -0.289489, -0.305724,
		37.528927, 41.050697, 23.290100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596680, 41.395020, 24.054211>,  <38.163857, 41.253338, 23.504107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596680, 41.395020, 24.054211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481983, 41.078812, 23.837748>,  <37.413166, 40.889088, 23.707869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481983, 41.078812, 23.837748>,  <37.596680, 41.395020, 24.054211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481983, 41.078812, 23.837748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045588, -0.552980, 0.831947,
		-0.956922, 0.263226, 0.122525,
		-0.286744, -0.790522, -0.541159,
		37.395962, 40.841656, 23.675400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017052, 41.038509, 24.404135>,  <37.596680, 41.395020, 24.054211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017052, 41.038509, 24.404135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117397, 40.746075, 24.150339>,  <37.177605, 40.570614, 23.998062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117397, 40.746075, 24.150339>,  <37.017052, 41.038509, 24.404135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117397, 40.746075, 24.150339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181001, -0.679317, 0.711173,
		-0.950949, -0.063567, -0.302747,
		0.250868, -0.731086, -0.634490,
		37.192657, 40.526749, 23.959991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505306, 40.570911, 24.501268>,  <37.017052, 41.038509, 24.404135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505306, 40.570911, 24.501268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816357, 40.376842, 24.341316>,  <37.002987, 40.260403, 24.245344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816357, 40.376842, 24.341316>,  <36.505306, 40.570911, 24.501268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816357, 40.376842, 24.341316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193442, -0.789792, 0.582073,
		-0.598229, -0.375281, -0.708016,
		0.777626, -0.485173, -0.399882,
		37.049644, 40.231289, 24.221352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230236, 39.970150, 24.349951>,  <36.505306, 40.570911, 24.501268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230236, 39.970150, 24.349951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626400, 39.918385, 24.330568>,  <36.864098, 39.887325, 24.318939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626400, 39.918385, 24.330568>,  <36.230236, 39.970150, 24.349951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626400, 39.918385, 24.330568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091426, -0.876585, 0.472483,
		-0.103623, -0.463519, -0.880007,
		0.990406, -0.129415, -0.048457,
		36.923523, 39.879559, 24.316031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347775, 39.261353, 24.018623>,  <36.230236, 39.970150, 24.349951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347775, 39.261353, 24.018623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683182, 39.356712, 24.214605>,  <36.884426, 39.413929, 24.332195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683182, 39.356712, 24.214605>,  <36.347775, 39.261353, 24.018623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683182, 39.356712, 24.214605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010044, -0.892287, 0.451357,
		0.544784, -0.383391, -0.745803,
		0.838517, 0.238401, 0.489954,
		36.934738, 39.428234, 24.361591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841103, 38.782444, 23.857857>,  <36.347775, 39.261353, 24.018623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841103, 38.782444, 23.857857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927479, 38.955406, 24.208033>,  <36.979305, 39.059185, 24.418139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927479, 38.955406, 24.208033>,  <36.841103, 38.782444, 23.857857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927479, 38.955406, 24.208033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077994, -0.886089, 0.456907,
		0.973287, -0.166944, -0.157617,
		0.215940, 0.432408, 0.875439,
		36.992260, 39.085129, 24.470665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136566, 38.256374, 24.182846>,  <36.841103, 38.782444, 23.857857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136566, 38.256374, 24.182846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080791, 38.519157, 24.479216>,  <37.047325, 38.676826, 24.657038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080791, 38.519157, 24.479216>,  <37.136566, 38.256374, 24.182846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080791, 38.519157, 24.479216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202215, -0.751358, 0.628149,
		0.969364, -0.062240, 0.237612,
		-0.139436, 0.656954, 0.740925,
		37.038960, 38.716244, 24.701492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490719, 37.965672, 24.808414>,  <37.136566, 38.256374, 24.182846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490719, 37.965672, 24.808414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248596, 38.237774, 24.973751>,  <37.103321, 38.401035, 25.072954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248596, 38.237774, 24.973751>,  <37.490719, 37.965672, 24.808414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248596, 38.237774, 24.973751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265309, -0.662009, 0.700968,
		0.750474, 0.314638, 0.581198,
		-0.605309, 0.680255, 0.413344,
		37.067005, 38.441849, 25.097754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661842, 37.893166, 25.531626>,  <37.490719, 37.965672, 24.808414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661842, 37.893166, 25.531626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305920, 38.072601, 25.498114>,  <37.092365, 38.180264, 25.478006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305920, 38.072601, 25.498114>,  <37.661842, 37.893166, 25.531626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305920, 38.072601, 25.498114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339330, -0.527634, 0.778754,
		0.305136, 0.721366, 0.621710,
		-0.889802, 0.448590, -0.083781,
		37.038979, 38.207180, 25.472979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612694, 38.125416, 26.164675>,  <37.661842, 37.893166, 25.531626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612694, 38.125416, 26.164675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258709, 38.102390, 25.979837>,  <37.046318, 38.088573, 25.868935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258709, 38.102390, 25.979837>,  <37.612694, 38.125416, 26.164675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258709, 38.102390, 25.979837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375362, -0.499082, 0.781038,
		-0.275585, 0.864640, 0.420059,
		-0.884961, -0.057568, -0.462092,
		36.993221, 38.085121, 25.841209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236580, 38.321392, 26.576269>,  <37.612694, 38.125416, 26.164675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236580, 38.321392, 26.576269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027100, 38.076569, 26.339249>,  <36.901409, 37.929676, 26.197037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027100, 38.076569, 26.339249>,  <37.236580, 38.321392, 26.576269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027100, 38.076569, 26.339249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163924, -0.610165, 0.775131,
		-0.835980, 0.503073, 0.219215,
		-0.523705, -0.612059, -0.592551,
		36.869987, 37.892952, 26.161484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603008, 38.293968, 26.903671>,  <37.236580, 38.321392, 26.576269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603008, 38.293968, 26.903671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614296, 37.985313, 26.649498>,  <36.621071, 37.800121, 26.496994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614296, 37.985313, 26.649498>,  <36.603008, 38.293968, 26.903671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614296, 37.985313, 26.649498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284925, -0.615525, 0.734810,
		-0.958134, 0.160312, -0.237231,
		0.028223, -0.771640, -0.635433,
		36.622765, 37.753822, 26.458868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033310, 37.916843, 27.048494>,  <36.603008, 38.293968, 26.903671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033310, 37.916843, 27.048494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303394, 37.667606, 26.890583>,  <36.465443, 37.518063, 26.795835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303394, 37.667606, 26.890583>,  <36.033310, 37.916843, 27.048494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303394, 37.667606, 26.890583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118849, -0.620108, 0.775462,
		-0.727991, -0.476677, -0.492755,
		0.675206, -0.623093, -0.394780,
		36.505955, 37.480679, 26.772150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704559, 37.296310, 27.202532>,  <36.033310, 37.916843, 27.048494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704559, 37.296310, 27.202532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064350, 37.173779, 27.077887>,  <36.280224, 37.100258, 27.003099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064350, 37.173779, 27.077887>,  <35.704559, 37.296310, 27.202532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064350, 37.173779, 27.077887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031091, -0.756185, 0.653620,
		-0.435862, -0.578227, -0.689694,
		0.899476, -0.306331, -0.311615,
		36.334194, 37.081879, 26.984402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628372, 36.494251, 27.105062>,  <35.704559, 37.296310, 27.202532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628372, 36.494251, 27.105062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007366, 36.599052, 27.178404>,  <36.234764, 36.661934, 27.222408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007366, 36.599052, 27.178404>,  <35.628372, 36.494251, 27.105062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007366, 36.599052, 27.178404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134394, -0.846508, 0.515134,
		0.290176, -0.463442, -0.837269,
		0.947490, 0.262003, 0.183352,
		36.291615, 36.677654, 27.233410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022858, 35.897125, 26.984697>,  <35.628372, 36.494251, 27.105062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022858, 35.897125, 26.984697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232121, 36.127357, 27.236099>,  <36.357677, 36.265499, 27.386940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232121, 36.127357, 27.236099>,  <36.022858, 35.897125, 26.984697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232121, 36.127357, 27.236099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133040, -0.783587, 0.606870,
		0.841791, -0.233870, -0.486511,
		0.523153, 0.575583, 0.628503,
		36.389065, 36.300034, 27.424650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492561, 35.465988, 27.342100>,  <36.022858, 35.897125, 26.984697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492561, 35.465988, 27.342100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527122, 35.770390, 27.599287>,  <36.547859, 35.953030, 27.753599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527122, 35.770390, 27.599287>,  <36.492561, 35.465988, 27.342100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527122, 35.770390, 27.599287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089934, -0.648704, 0.755708,
		0.992192, -0.007473, -0.124492,
		0.086406, 0.761004, 0.642967,
		36.553043, 35.998692, 27.792177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220242, 35.518326, 27.579029>,  <36.492561, 35.465988, 27.342100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220242, 35.518326, 27.579029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979755, 35.695812, 27.844860>,  <36.835464, 35.802303, 28.004358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979755, 35.695812, 27.844860>,  <37.220242, 35.518326, 27.579029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979755, 35.695812, 27.844860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238196, -0.694346, 0.679077,
		0.762762, 0.566569, 0.311758,
		-0.601212, 0.443715, 0.664576,
		36.799393, 35.828926, 28.044233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564251, 35.417282, 28.122032>,  <37.220242, 35.518326, 27.579029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564251, 35.417282, 28.122032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224026, 35.563179, 28.273563>,  <37.019890, 35.650719, 28.364481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224026, 35.563179, 28.273563>,  <37.564251, 35.417282, 28.122032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224026, 35.563179, 28.273563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153008, -0.517557, 0.841857,
		0.503126, 0.774014, 0.384405,
		-0.850560, 0.364743, 0.378827,
		36.968857, 35.672604, 28.387211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650909, 35.738327, 28.791681>,  <37.564251, 35.417282, 28.122032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650909, 35.738327, 28.791681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269981, 35.621387, 28.756750>,  <37.041424, 35.551224, 28.735792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269981, 35.621387, 28.756750>,  <37.650909, 35.738327, 28.791681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269981, 35.621387, 28.756750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139451, -0.671607, 0.727665,
		-0.271383, 0.680789, 0.680351,
		-0.952315, -0.292352, -0.087326,
		36.984287, 35.533684, 28.730553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337902, 35.754421, 29.481422>,  <37.650909, 35.738327, 28.791681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337902, 35.754421, 29.481422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080463, 35.521210, 29.283089>,  <36.925999, 35.381283, 29.164089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080463, 35.521210, 29.283089>,  <37.337902, 35.754421, 29.481422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080463, 35.521210, 29.283089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047459, -0.616194, 0.786163,
		-0.763888, 0.529507, 0.368913,
		-0.643601, -0.583032, -0.495834,
		36.887383, 35.346298, 29.134338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831108, 35.489212, 29.986774>,  <37.337902, 35.754421, 29.481422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831108, 35.489212, 29.986774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784992, 35.224766, 29.690224>,  <36.757324, 35.066097, 29.512293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784992, 35.224766, 29.690224>,  <36.831108, 35.489212, 29.986774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784992, 35.224766, 29.690224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122599, -0.731177, 0.671081,
		-0.985737, 0.168260, 0.003244,
		-0.115288, -0.661112, -0.741377,
		36.750404, 35.026432, 29.467810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365471, 35.033615, 30.201860>,  <36.831108, 35.489212, 29.986774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365471, 35.033615, 30.201860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520718, 34.837433, 29.889751>,  <36.613865, 34.719723, 29.702486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520718, 34.837433, 29.889751>,  <36.365471, 35.033615, 30.201860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520718, 34.837433, 29.889751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069199, -0.859756, 0.505996,
		-0.919011, -0.142390, -0.367620,
		0.388112, -0.490454, -0.780271,
		36.637150, 34.690296, 29.655670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940132, 34.494289, 30.058434>,  <36.365471, 35.033615, 30.201860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940132, 34.494289, 30.058434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288334, 34.362537, 29.912157>,  <36.497253, 34.283485, 29.824390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288334, 34.362537, 29.912157>,  <35.940132, 34.494289, 30.058434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288334, 34.362537, 29.912157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044688, -0.792862, 0.607761,
		-0.490130, -0.512715, -0.704908,
		0.870503, -0.329383, -0.365693,
		36.549484, 34.263721, 29.802448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945992, 33.764019, 29.695160>,  <35.940132, 34.494289, 30.058434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945992, 33.764019, 29.695160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328854, 33.837589, 29.784626>,  <36.558571, 33.881729, 29.838306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328854, 33.837589, 29.784626>,  <35.945992, 33.764019, 29.695160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328854, 33.837589, 29.784626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039625, -0.848317, 0.528004,
		0.286851, -0.496519, -0.819259,
		0.957155, 0.183922, 0.223667,
		36.616001, 33.892765, 29.851727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303040, 33.128094, 29.689726>,  <35.945992, 33.764019, 29.695160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303040, 33.128094, 29.689726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537823, 33.372791, 29.901859>,  <36.678692, 33.519608, 30.029139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537823, 33.372791, 29.901859>,  <36.303040, 33.128094, 29.689726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537823, 33.372791, 29.901859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167739, -0.732715, 0.659539,
		0.792049, -0.298166, -0.532687,
		0.586959, 0.611740, 0.530332,
		36.713909, 33.556313, 30.060959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918594, 32.720406, 29.804594>,  <36.303040, 33.128094, 29.689726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918594, 32.720406, 29.804594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949062, 33.010311, 30.078505>,  <36.967342, 33.184254, 30.242851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949062, 33.010311, 30.078505>,  <36.918594, 32.720406, 29.804594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949062, 33.010311, 30.078505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329662, -0.666452, 0.668704,
		0.941022, 0.174812, -0.289688,
		0.076166, 0.724764, 0.684774,
		36.971912, 33.227741, 30.283937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669746, 32.623657, 30.154026>,  <36.918594, 32.720406, 29.804594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669746, 32.623657, 30.154026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433331, 32.828144, 30.403610>,  <37.291481, 32.950836, 30.553360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433331, 32.828144, 30.403610>,  <37.669746, 32.623657, 30.154026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433331, 32.828144, 30.403610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343258, -0.540597, 0.768068,
		0.729960, 0.668141, 0.144038,
		-0.591044, 0.511217, 0.623959,
		37.256016, 32.981510, 30.590797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070564, 32.824036, 30.662621>,  <37.669746, 32.623657, 30.154026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070564, 32.824036, 30.662621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707466, 32.829472, 30.830343>,  <37.489609, 32.832733, 30.930977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707466, 32.829472, 30.830343>,  <38.070564, 32.824036, 30.662621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707466, 32.829472, 30.830343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368249, -0.453014, 0.811893,
		0.200988, 0.891400, 0.406214,
		-0.907742, 0.013593, 0.419308,
		37.435143, 32.833549, 30.956135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266727, 32.799435, 31.395489>,  <38.070564, 32.824036, 30.662621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266727, 32.799435, 31.395489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878025, 32.705799, 31.383516>,  <37.644802, 32.649620, 31.376333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878025, 32.705799, 31.383516>,  <38.266727, 32.799435, 31.395489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878025, 32.705799, 31.383516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138510, -0.668430, 0.730764,
		-0.191068, 0.705978, 0.681973,
		-0.971755, -0.234086, -0.029931,
		37.586498, 32.635574, 31.374537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185352, 32.616951, 32.006027>,  <38.266727, 32.799435, 31.395489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185352, 32.616951, 32.006027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869530, 32.440807, 31.835062>,  <37.680035, 32.335121, 31.732483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869530, 32.440807, 31.835062>,  <38.185352, 32.616951, 32.006027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869530, 32.440807, 31.835062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080652, -0.764901, 0.639079,
		-0.608350, 0.470120, 0.639451,
		-0.789561, -0.440357, -0.427411,
		37.632660, 32.308701, 31.706839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783264, 33.043346, 32.052631>,  <38.185352, 32.616951, 32.006027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783264, 33.043346, 32.052631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121769, 32.994228, 32.259998>,  <39.324871, 32.964756, 32.384418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121769, 32.994228, 32.259998>,  <38.783264, 33.043346, 32.052631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121769, 32.994228, 32.259998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365465, -0.841829, 0.397189,
		0.387646, -0.525590, -0.757289,
		0.846266, -0.122794, 0.518416,
		39.375648, 32.957390, 32.415524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968143, 32.350239, 31.995316>,  <38.783264, 33.043346, 32.052631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968143, 32.350239, 31.995316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076942, 32.495045, 32.351959>,  <39.142220, 32.581928, 32.565945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076942, 32.495045, 32.351959>,  <38.968143, 32.350239, 31.995316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076942, 32.495045, 32.351959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369071, -0.816442, 0.444082,
		0.888710, -0.449854, -0.088458,
		0.271993, 0.362013, 0.891609,
		39.158539, 32.603649, 32.619442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326668, 31.777670, 32.356430>,  <38.968143, 32.350239, 31.995316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326668, 31.777670, 32.356430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204636, 32.029289, 32.642429>,  <39.131416, 32.180260, 32.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204636, 32.029289, 32.642429>,  <39.326668, 31.777670, 32.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204636, 32.029289, 32.642429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368504, -0.770283, 0.520451,
		0.878139, -0.104697, 0.466808,
		-0.305084, 0.629049, 0.714997,
		39.113110, 32.218002, 32.856930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663074, 31.518967, 32.995922>,  <39.326668, 31.777670, 32.356430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663074, 31.518967, 32.995922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341965, 31.740831, 33.083466>,  <39.149300, 31.873951, 33.135990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341965, 31.740831, 33.083466>,  <39.663074, 31.518967, 32.995922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341965, 31.740831, 33.083466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277877, -0.672743, 0.685712,
		0.527571, 0.489660, 0.694191,
		-0.802779, 0.554661, 0.218855,
		39.101131, 31.907230, 33.149120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697956, 31.659317, 33.741875>,  <39.663074, 31.518967, 32.995922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697956, 31.659317, 33.741875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326813, 31.650551, 33.592957>,  <39.104126, 31.645290, 33.503605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326813, 31.650551, 33.592957>,  <39.697956, 31.659317, 33.741875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326813, 31.650551, 33.592957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293370, -0.573457, 0.764906,
		-0.230262, 0.818942, 0.525655,
		-0.927854, -0.021917, -0.372299,
		39.048458, 31.643976, 33.481266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130882, 31.772394, 34.294796>,  <39.697956, 31.659317, 33.741875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130882, 31.772394, 34.294796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885979, 31.619535, 34.017925>,  <38.739037, 31.527821, 33.851803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885979, 31.619535, 34.017925>,  <39.130882, 31.772394, 34.294796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885979, 31.619535, 34.017925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520484, -0.464195, 0.716672,
		-0.595176, 0.799055, 0.085308,
		-0.612260, -0.382145, -0.692173,
		38.702301, 31.504892, 33.810272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702805, 31.306862, 34.605999>,  <39.130882, 31.772394, 34.294796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702805, 31.306862, 34.605999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538738, 31.219168, 34.251892>,  <38.440296, 31.166552, 34.039429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538738, 31.219168, 34.251892>,  <38.702805, 31.306862, 34.605999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538738, 31.219168, 34.251892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717201, -0.522070, 0.461590,
		-0.563369, 0.824243, 0.056899,
		-0.410168, -0.219238, -0.885267,
		38.415688, 31.153397, 33.986313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966438, 31.411104, 34.736019>,  <38.702805, 31.306862, 34.605999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966438, 31.411104, 34.736019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010754, 31.175184, 34.416054>,  <38.037342, 31.033632, 34.224075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010754, 31.175184, 34.416054>,  <37.966438, 31.411104, 34.736019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010754, 31.175184, 34.416054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815306, -0.514204, 0.266216,
		-0.568333, 0.622679, -0.537838,
		0.110791, -0.589802, -0.799912,
		38.043991, 30.998243, 34.176079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367416, 31.592968, 34.345879>,  <37.966438, 31.411104, 34.736019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367416, 31.592968, 34.345879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470482, 31.209061, 34.301239>,  <37.532322, 30.978716, 34.274456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470482, 31.209061, 34.301239>,  <37.367416, 31.592968, 34.345879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470482, 31.209061, 34.301239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956824, -0.269531, 0.108816,
		-0.134518, 0.078742, -0.987778,
		0.257668, -0.959767, -0.111599,
		37.547783, 30.921131, 34.267757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880192, 31.252487, 33.781746>,  <37.367416, 31.592968, 34.345879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880192, 31.252487, 33.781746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015423, 30.967058, 34.027191>,  <37.096561, 30.795801, 34.174458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015423, 30.967058, 34.027191>,  <36.880192, 31.252487, 33.781746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015423, 30.967058, 34.027191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930086, -0.352873, 0.102085,
		0.143681, -0.605223, -0.782982,
		0.338077, -0.713573, 0.613610,
		37.116844, 30.752987, 34.211273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436687, 30.736975, 33.668839>,  <36.880192, 31.252487, 33.781746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436687, 30.736975, 33.668839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613274, 30.628704, 34.011028>,  <36.719227, 30.563742, 34.216343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613274, 30.628704, 34.011028>,  <36.436687, 30.736975, 33.668839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613274, 30.628704, 34.011028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806299, -0.537986, 0.245870,
		0.393683, -0.798313, -0.455752,
		0.441469, -0.270678, 0.855475,
		36.745716, 30.547501, 34.267670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213936, 30.015615, 33.806850>,  <36.436687, 30.736975, 33.668839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213936, 30.015615, 33.806850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324623, 30.178913, 34.154819>,  <36.391037, 30.276892, 34.363602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324623, 30.178913, 34.154819>,  <36.213936, 30.015615, 33.806850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324623, 30.178913, 34.154819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746860, -0.478265, 0.462020,
		0.604670, -0.777559, 0.172557,
		0.276720, 0.408246, 0.869920,
		36.407639, 30.301388, 34.415794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098099, 29.522699, 34.320988>,  <36.213936, 30.015615, 33.806850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098099, 29.522699, 34.320988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164776, 29.844290, 34.549316>,  <36.204781, 30.037245, 34.686314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164776, 29.844290, 34.549316>,  <36.098099, 29.522699, 34.320988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164776, 29.844290, 34.549316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706864, -0.306172, 0.637653,
		0.687428, -0.509782, 0.517267,
		0.166691, 0.803978, 0.570818,
		36.214783, 30.085484, 34.720562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377323, 29.327713, 35.016224>,  <36.098099, 29.522699, 34.320988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377323, 29.327713, 35.016224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200073, 29.683683, 35.059441>,  <36.093723, 29.897264, 35.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200073, 29.683683, 35.059441>,  <36.377323, 29.327713, 35.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200073, 29.683683, 35.059441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611134, -0.388060, 0.689873,
		0.655862, 0.239673, 0.715822,
		-0.443126, 0.889925, 0.108042,
		36.067135, 29.950661, 35.091854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437042, 29.548714, 35.701363>,  <36.377323, 29.327713, 35.016224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437042, 29.548714, 35.701363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127819, 29.757603, 35.557323>,  <35.942287, 29.882936, 35.470901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127819, 29.757603, 35.557323>,  <36.437042, 29.548714, 35.701363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127819, 29.757603, 35.557323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514442, -0.184003, 0.837552,
		0.371129, 0.832722, 0.410897,
		-0.773054, 0.522223, -0.360098,
		35.895905, 29.914270, 35.449295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305653, 30.106426, 36.157005>,  <36.437042, 29.548714, 35.701363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305653, 30.106426, 36.157005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935116, 30.089949, 36.007233>,  <35.712795, 30.080061, 35.917370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935116, 30.089949, 36.007233>,  <36.305653, 30.106426, 36.157005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935116, 30.089949, 36.007233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359773, -0.197792, 0.911835,
		-0.111623, 0.979378, 0.168401,
		-0.926339, -0.041196, -0.374432,
		35.657215, 30.077589, 35.894905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846718, 30.417786, 36.631886>,  <36.305653, 30.106426, 36.157005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846718, 30.417786, 36.631886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638119, 30.165361, 36.402172>,  <35.512959, 30.013906, 36.264343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638119, 30.165361, 36.402172>,  <35.846718, 30.417786, 36.631886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638119, 30.165361, 36.402172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493350, -0.326130, 0.806378,
		-0.696165, 0.703846, -0.141259,
		-0.521497, -0.631062, -0.574283,
		35.481670, 29.976042, 36.229889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262146, 30.501635, 36.924198>,  <35.846718, 30.417786, 36.631886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262146, 30.501635, 36.924198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233887, 30.168291, 36.704918>,  <35.216930, 29.968285, 36.573349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233887, 30.168291, 36.704918>,  <35.262146, 30.501635, 36.924198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233887, 30.168291, 36.704918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495779, -0.447549, 0.744246,
		-0.865570, 0.324367, -0.381542,
		-0.070650, -0.833358, -0.548200,
		35.212692, 29.918283, 36.540459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539268, 30.334185, 36.922253>,  <35.262146, 30.501635, 36.924198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539268, 30.334185, 36.922253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706928, 29.981623, 36.835129>,  <34.807522, 29.770086, 36.782852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706928, 29.981623, 36.835129>,  <34.539268, 30.334185, 36.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706928, 29.981623, 36.835129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575235, -0.443414, 0.687378,
		-0.702440, -0.162817, -0.692870,
		0.419145, -0.881405, -0.217814,
		34.832672, 29.717201, 36.769783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975815, 29.868248, 36.773895>,  <34.539268, 30.334185, 36.922253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975815, 29.868248, 36.773895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287228, 29.656298, 36.908428>,  <34.474075, 29.529127, 36.989147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287228, 29.656298, 36.908428>,  <33.975815, 29.868248, 36.773895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287228, 29.656298, 36.908428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593342, -0.446782, 0.669575,
		-0.204526, -0.720844, -0.662233,
		0.778533, -0.529876, 0.336329,
		34.520786, 29.497335, 37.009327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859421, 29.140699, 36.676632>,  <33.975815, 29.868248, 36.773895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859421, 29.140699, 36.676632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107986, 29.225077, 36.978455>,  <34.257126, 29.275703, 37.159546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107986, 29.225077, 36.978455>,  <33.859421, 29.140699, 36.676632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107986, 29.225077, 36.978455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537393, -0.586069, 0.606409,
		0.570137, -0.782321, -0.250832,
		0.621411, 0.210942, 0.754554,
		34.294411, 29.288359, 37.204823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960785, 28.575672, 37.054783>,  <33.859421, 29.140699, 36.676632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960785, 28.575672, 37.054783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037281, 28.883247, 37.298805>,  <34.083179, 29.067793, 37.445217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037281, 28.883247, 37.298805>,  <33.960785, 28.575672, 37.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037281, 28.883247, 37.298805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664734, -0.355836, 0.656894,
		0.722189, -0.531146, 0.443089,
		0.191240, 0.768937, 0.610052,
		34.094654, 29.113928, 37.481819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271118, 28.341066, 37.743752>,  <33.960785, 28.575672, 37.054783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271118, 28.341066, 37.743752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041794, 28.668303, 37.725670>,  <33.904198, 28.864645, 37.714821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041794, 28.668303, 37.725670>,  <34.271118, 28.341066, 37.743752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041794, 28.668303, 37.725670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704888, -0.464349, 0.536202,
		0.417670, 0.339275, 0.842879,
		-0.573310, 0.818091, -0.045206,
		33.869801, 28.913731, 37.712109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943848, 28.490231, 37.893684>,  <34.271118, 28.341066, 37.743752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943848, 28.490231, 37.893684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978123, 28.361687, 37.516457>,  <34.998688, 28.284561, 37.290119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978123, 28.361687, 37.516457>,  <34.943848, 28.490231, 37.893684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978123, 28.361687, 37.516457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240111, 0.925316, -0.293492,
		0.966957, -0.201294, 0.156447,
		0.085684, -0.321359, -0.943073,
		35.003826, 28.265280, 37.233536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571827, 28.773193, 37.812305>,  <34.943848, 28.490231, 37.893684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571827, 28.773193, 37.812305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317909, 28.711973, 37.509354>,  <35.165558, 28.675241, 37.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317909, 28.711973, 37.509354>,  <35.571827, 28.773193, 37.812305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317909, 28.711973, 37.509354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280190, 0.867879, -0.410219,
		0.720093, -0.472613, -0.508039,
		-0.634790, -0.153048, -0.757375,
		35.127472, 28.666058, 37.282143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772457, 28.829193, 37.075478>,  <35.571827, 28.773193, 37.812305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772457, 28.829193, 37.075478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398449, 28.961403, 37.024117>,  <35.174042, 29.040728, 36.993301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398449, 28.961403, 37.024117>,  <35.772457, 28.829193, 37.075478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398449, 28.961403, 37.024117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295814, 0.527432, -0.796436,
		-0.195517, -0.782669, -0.590934,
		-0.935022, 0.330523, -0.128402,
		35.117943, 29.060560, 36.985596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585724, 28.703686, 36.444534>,  <35.772457, 28.829193, 37.075478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585724, 28.703686, 36.444534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320999, 28.994164, 36.518986>,  <35.162163, 29.168449, 36.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320999, 28.994164, 36.518986>,  <35.585724, 28.703686, 36.444534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320999, 28.994164, 36.518986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288635, 0.475973, -0.830746,
		-0.691876, -0.496076, -0.524611,
		-0.661814, 0.726194, 0.186129,
		35.122456, 29.212023, 36.574825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074123, 28.816946, 35.844643>,  <35.585724, 28.703686, 36.444534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074123, 28.816946, 35.844643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129097, 29.153263, 36.054089>,  <35.162083, 29.355053, 36.179756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129097, 29.153263, 36.054089>,  <35.074123, 28.816946, 35.844643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129097, 29.153263, 36.054089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248017, 0.482582, -0.840001,
		-0.958957, 0.245314, -0.142206,
		0.137438, 0.840795, 0.523617,
		35.170330, 29.405502, 36.211174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659042, 29.289637, 35.490974>,  <35.074123, 28.816946, 35.844643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659042, 29.289637, 35.490974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922001, 29.486900, 35.718876>,  <35.079777, 29.605259, 35.855618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922001, 29.486900, 35.718876>,  <34.659042, 29.289637, 35.490974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922001, 29.486900, 35.718876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273134, 0.548738, -0.790117,
		-0.702298, 0.675042, 0.226043,
		0.657400, 0.493157, 0.569755,
		35.119221, 29.634848, 35.889801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567917, 29.997999, 35.252659>,  <34.659042, 29.289637, 35.490974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567917, 29.997999, 35.252659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922810, 30.015272, 35.436382>,  <35.135746, 30.025637, 35.546616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922810, 30.015272, 35.436382>,  <34.567917, 29.997999, 35.252659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922810, 30.015272, 35.436382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383457, 0.484499, -0.786270,
		-0.256488, 0.873725, 0.413302,
		0.887228, 0.043185, 0.459304,
		35.188976, 30.028227, 35.574173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922451, 30.679838, 35.013687>,  <34.567917, 29.997999, 35.252659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922451, 30.679838, 35.013687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219879, 30.448078, 35.147194>,  <35.398335, 30.309021, 35.227299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219879, 30.448078, 35.147194>,  <34.922451, 30.679838, 35.013687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219879, 30.448078, 35.147194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593077, 0.340953, -0.729390,
		0.308812, 0.740300, 0.597152,
		0.743569, -0.579402, 0.333765,
		35.442951, 30.274258, 35.247322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421261, 31.121489, 35.115135>,  <34.922451, 30.679838, 35.013687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421261, 31.121489, 35.115135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601341, 30.765499, 35.086124>,  <35.709389, 30.551905, 35.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601341, 30.765499, 35.086124>,  <35.421261, 31.121489, 35.115135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601341, 30.765499, 35.086124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552912, 0.341631, -0.759985,
		0.701146, 0.302046, 0.645881,
		0.450203, -0.889976, -0.072529,
		35.736401, 30.498507, 35.064365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134007, 31.210564, 34.930435>,  <35.421261, 31.121489, 35.115135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134007, 31.210564, 34.930435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045479, 30.831978, 34.836433>,  <35.992363, 30.604826, 34.780033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045479, 30.831978, 34.836433>,  <36.134007, 31.210564, 34.930435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045479, 30.831978, 34.836433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481933, 0.103344, -0.870092,
		0.847796, -0.305821, 0.433261,
		-0.221318, -0.946464, -0.235000,
		35.979084, 30.548038, 34.765934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578777, 30.715866, 35.288830>,  <36.134007, 31.210564, 34.930435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578777, 30.715866, 35.288830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620796, 30.405151, 35.040455>,  <36.646008, 30.218721, 34.891430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620796, 30.405151, 35.040455>,  <36.578777, 30.715866, 35.288830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620796, 30.405151, 35.040455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857832, 0.386650, -0.338566,
		0.503079, -0.497094, 0.706971,
		0.105051, -0.776788, -0.620939,
		36.652313, 30.172115, 34.854172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200687, 30.242538, 35.366684>,  <36.578777, 30.715866, 35.288830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200687, 30.242538, 35.366684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078304, 30.250441, 34.985947>,  <37.004875, 30.255182, 34.757504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078304, 30.250441, 34.985947>,  <37.200687, 30.242538, 35.366684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078304, 30.250441, 34.985947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934570, 0.196914, -0.296317,
		0.181576, -0.980222, -0.078713,
		-0.305955, 0.019758, -0.951841,
		36.986519, 30.256369, 34.700394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588047, 29.755703, 35.005581>,  <37.200687, 30.242538, 35.366684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588047, 29.755703, 35.005581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474060, 30.055977, 34.767166>,  <37.405670, 30.236141, 34.624115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474060, 30.055977, 34.767166>,  <37.588047, 29.755703, 35.005581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474060, 30.055977, 34.767166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922125, 0.044930, -0.384274,
		-0.261690, -0.659128, -0.705031,
		-0.284963, 0.750687, -0.596041,
		37.388573, 30.281183, 34.588352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881973, 29.682798, 34.316113>,  <37.588047, 29.755703, 35.005581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881973, 29.682798, 34.316113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791382, 30.071108, 34.284340>,  <37.737026, 30.304092, 34.265278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791382, 30.071108, 34.284340>,  <37.881973, 29.682798, 34.316113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791382, 30.071108, 34.284340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801376, 0.139364, -0.581699,
		-0.553628, -0.195393, -0.809517,
		-0.226478, 0.970772, -0.079427,
		37.723438, 30.362339, 34.260513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021935, 29.741608, 33.662731>,  <37.881973, 29.682798, 34.316113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021935, 29.741608, 33.662731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961552, 30.115175, 33.792351>,  <37.925323, 30.339315, 33.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961552, 30.115175, 33.792351>,  <38.021935, 29.741608, 33.662731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961552, 30.115175, 33.792351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742923, 0.323428, -0.586055,
		-0.652134, 0.152272, -0.742654,
		-0.150956, 0.933920, 0.324045,
		37.916264, 30.395351, 33.889565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199955, 30.165010, 33.123108>,  <38.021935, 29.741608, 33.662731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199955, 30.165010, 33.123108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159679, 30.432129, 33.418110>,  <38.135513, 30.592400, 33.595112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159679, 30.432129, 33.418110>,  <38.199955, 30.165010, 33.123108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159679, 30.432129, 33.418110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548847, 0.655558, -0.518663,
		-0.829837, 0.352551, -0.432526,
		-0.100691, 0.667796, 0.737503,
		38.129471, 30.632467, 33.639362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097393, 30.810091, 32.814796>,  <38.199955, 30.165010, 33.123108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097393, 30.810091, 32.814796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179489, 30.907629, 33.193935>,  <38.228745, 30.966152, 33.421421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179489, 30.907629, 33.193935>,  <38.097393, 30.810091, 32.814796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179489, 30.907629, 33.193935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453670, 0.834433, -0.312898,
		-0.867215, 0.494230, 0.060632,
		0.205237, 0.243843, 0.947849,
		38.241058, 30.980782, 33.478291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904510, 31.503559, 32.924309>,  <38.097393, 30.810091, 32.814796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904510, 31.503559, 32.924309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210155, 31.430851, 33.171886>,  <38.393543, 31.387226, 33.320431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210155, 31.430851, 33.171886>,  <37.904510, 31.503559, 32.924309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210155, 31.430851, 33.171886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448856, 0.838937, -0.307755,
		-0.463311, 0.512975, 0.722634,
		0.764115, -0.181772, 0.618941,
		38.439388, 31.376320, 33.357567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931942, 32.115265, 33.436409>,  <37.904510, 31.503559, 32.924309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931942, 32.115265, 33.436409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278694, 31.924034, 33.379902>,  <38.486748, 31.809296, 33.345997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278694, 31.924034, 33.379902>,  <37.931942, 32.115265, 33.436409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278694, 31.924034, 33.379902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458708, 0.875929, -0.149447,
		0.195187, 0.064753, 0.978626,
		0.866885, -0.478074, -0.141267,
		38.538761, 31.780613, 33.337521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401958, 32.302559, 33.992355>,  <37.931942, 32.115265, 33.436409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401958, 32.302559, 33.992355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575577, 32.227310, 33.639942>,  <38.679749, 32.182159, 33.428493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575577, 32.227310, 33.639942>,  <38.401958, 32.302559, 33.992355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575577, 32.227310, 33.639942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510110, 0.857399, 0.068230,
		0.742558, -0.479037, 0.468115,
		0.434046, -0.188126, -0.881030,
		38.705791, 32.170872, 33.375633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719326, 32.953930, 33.842567>,  <38.401958, 32.302559, 33.992355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719326, 32.953930, 33.842567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836330, 32.748898, 33.519657>,  <38.906532, 32.625877, 33.325912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836330, 32.748898, 33.519657>,  <38.719326, 32.953930, 33.842567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836330, 32.748898, 33.519657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515709, 0.795474, -0.318222,
		0.805282, -0.323236, 0.497030,
		0.292514, -0.512581, -0.807277,
		38.924084, 32.595123, 33.277473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461407, 33.001690, 33.826321>,  <38.719326, 32.953930, 33.842567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461407, 33.001690, 33.826321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347630, 32.912693, 33.453312>,  <39.279366, 32.859295, 33.229507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347630, 32.912693, 33.453312>,  <39.461407, 33.001690, 33.826321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347630, 32.912693, 33.453312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664303, 0.655581, -0.359046,
		0.691227, -0.721602, -0.038670,
		-0.284440, -0.222494, -0.932519,
		39.262299, 32.845943, 33.173557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096664, 32.891262, 33.508148>,  <39.461407, 33.001690, 33.826321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096664, 32.891262, 33.508148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828896, 32.999119, 33.231258>,  <39.668236, 33.063831, 33.065125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828896, 32.999119, 33.231258>,  <40.096664, 32.891262, 33.508148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828896, 32.999119, 33.231258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698367, 0.546132, -0.462627,
		0.253299, -0.793115, -0.553902,
		-0.669420, 0.269644, -0.692220,
		39.628071, 33.080013, 33.023594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076942, 33.394295, 34.060371>,  <40.096664, 32.891262, 33.508148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076942, 33.394295, 34.060371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417778, 33.502087, 34.239849>,  <40.622280, 33.566761, 34.347538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417778, 33.502087, 34.239849>,  <40.076942, 33.394295, 34.060371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417778, 33.502087, 34.239849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349839, -0.930874, -0.105290,
		0.389308, 0.246688, -0.887460,
		0.852087, 0.269477, 0.448698,
		40.673405, 33.582932, 34.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661999, 33.298412, 33.655533>,  <40.076942, 33.394295, 34.060371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661999, 33.298412, 33.655533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745770, 33.248970, 34.043526>,  <40.796032, 33.219303, 34.276321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745770, 33.248970, 34.043526>,  <40.661999, 33.298412, 33.655533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745770, 33.248970, 34.043526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300672, -0.935777, -0.184167,
		0.930449, 0.330216, -0.158814,
		0.209430, -0.123607, 0.969980,
		40.808598, 33.211887, 34.334518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239349, 32.951996, 33.601055>,  <40.661999, 33.298412, 33.655533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239349, 32.951996, 33.601055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024574, 32.883335, 33.931446>,  <40.895710, 32.842140, 34.129681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024574, 32.883335, 33.931446>,  <41.239349, 32.951996, 33.601055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024574, 32.883335, 33.931446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286440, -0.958011, -0.012885,
		0.793503, 0.229673, 0.563562,
		-0.536940, -0.171651, 0.825973,
		40.863491, 32.831841, 34.179237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625393, 32.943565, 34.214367>,  <41.239349, 32.951996, 33.601055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625393, 32.943565, 34.214367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298229, 32.715710, 34.182014>,  <41.101933, 32.578999, 34.162601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298229, 32.715710, 34.182014>,  <41.625393, 32.943565, 34.214367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298229, 32.715710, 34.182014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552487, -0.816843, 0.165909,
		-0.160577, 0.091011, 0.982818,
		-0.817908, -0.569635, -0.080884,
		41.052856, 32.544819, 34.157749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578625, 32.544754, 34.910454>,  <41.625393, 32.943565, 34.214367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578625, 32.544754, 34.910454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410851, 32.390362, 34.581799>,  <41.310184, 32.297726, 34.384605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410851, 32.390362, 34.581799>,  <41.578625, 32.544754, 34.910454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410851, 32.390362, 34.581799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329632, -0.908084, 0.258313,
		-0.845823, -0.162493, 0.508114,
		-0.419436, -0.385978, -0.821641,
		41.285019, 32.274567, 34.335304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107864, 32.163242, 34.471394>,  <41.578625, 32.544754, 34.910454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107864, 32.163242, 34.471394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464634, 31.994226, 34.535805>,  <42.678696, 31.892817, 34.574451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464634, 31.994226, 34.535805>,  <42.107864, 32.163242, 34.471394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464634, 31.994226, 34.535805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451048, 0.806109, -0.383072,
		0.032058, 0.414303, 0.909574,
		0.891924, -0.422542, 0.161028,
		42.732212, 31.867464, 34.584114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563789, 32.538715, 34.956821>,  <42.107864, 32.163242, 34.471394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563789, 32.538715, 34.956821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725574, 32.340229, 34.649529>,  <42.822647, 32.221138, 34.465153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725574, 32.340229, 34.649529>,  <42.563789, 32.538715, 34.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725574, 32.340229, 34.649529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494535, 0.825272, -0.272693,
		0.769313, -0.269621, 0.579190,
		0.404466, -0.496216, -0.768230,
		42.846912, 32.191364, 34.419060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285023, 32.739925, 34.827915>,  <42.563789, 32.538715, 34.956821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285023, 32.739925, 34.827915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135944, 32.641708, 34.469963>,  <43.046497, 32.582779, 34.255192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135944, 32.641708, 34.469963>,  <43.285023, 32.739925, 34.827915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135944, 32.641708, 34.469963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353106, 0.854283, -0.381467,
		0.858147, -0.458157, -0.231681,
		-0.372693, -0.245547, -0.894878,
		43.024136, 32.568047, 34.201500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770851, 32.829128, 34.319073>,  <43.285023, 32.739925, 34.827915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770851, 32.829128, 34.319073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413994, 32.866825, 34.142349>,  <43.199879, 32.889442, 34.036316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413994, 32.866825, 34.142349>,  <43.770851, 32.829128, 34.319073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413994, 32.866825, 34.142349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292590, 0.865693, -0.406162,
		0.344195, -0.491624, -0.799897,
		-0.892144, 0.094243, -0.441812,
		43.146351, 32.895100, 34.009804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809837, 32.999508, 33.541142>,  <43.770851, 32.829128, 34.319073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809837, 32.999508, 33.541142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491173, 33.170925, 33.711636>,  <43.299973, 33.273777, 33.813931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491173, 33.170925, 33.711636>,  <43.809837, 32.999508, 33.541142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491173, 33.170925, 33.711636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349893, 0.902003, -0.252915,
		-0.492850, -0.052352, -0.868538,
		-0.796664, 0.428545, 0.426235,
		43.252174, 33.299488, 33.839504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397278, 33.544395, 33.047935>,  <43.809837, 32.999508, 33.541142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397278, 33.544395, 33.047935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363220, 33.611691, 33.440762>,  <43.342785, 33.652069, 33.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363220, 33.611691, 33.440762>,  <43.397278, 33.544395, 33.047935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363220, 33.611691, 33.440762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407802, 0.905189, -0.119714,
		-0.909092, 0.390293, -0.145683,
		-0.085147, 0.168241, 0.982062,
		43.337677, 33.662163, 33.735378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959785, 34.189922, 33.271164>,  <43.397278, 33.544395, 33.047935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959785, 34.189922, 33.271164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277737, 34.078926, 33.487003>,  <43.468506, 34.012329, 33.616508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277737, 34.078926, 33.487003>,  <42.959785, 34.189922, 33.271164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277737, 34.078926, 33.487003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372971, 0.924904, -0.073787,
		-0.478605, 0.259907, 0.838681,
		0.794877, -0.277489, 0.539601,
		43.516201, 33.995678, 33.648884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094673, 34.760109, 33.861580>,  <42.959785, 34.189922, 33.271164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094673, 34.760109, 33.861580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404877, 34.551811, 33.718796>,  <43.591000, 34.426834, 33.633125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404877, 34.551811, 33.718796>,  <43.094673, 34.760109, 33.861580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404877, 34.551811, 33.718796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509699, 0.850051, -0.132744,
		0.372558, -0.078998, 0.924640,
		0.775505, -0.520743, -0.356959,
		43.637527, 34.395588, 33.611710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662037, 34.832417, 34.209160>,  <43.094673, 34.760109, 33.861580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662037, 34.832417, 34.209160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623093, 34.673943, 34.574356>,  <43.599728, 34.578857, 34.793476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623093, 34.673943, 34.574356>,  <43.662037, 34.832417, 34.209160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623093, 34.673943, 34.574356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656233, -0.715239, -0.240398,
		0.748251, 0.575732, 0.329626,
		-0.097357, -0.396189, 0.912993,
		43.593887, 34.555084, 34.848255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355091, 34.547733, 34.585590>,  <43.662037, 34.832417, 34.209160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355091, 34.547733, 34.585590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041542, 34.326847, 34.699146>,  <43.853413, 34.194317, 34.767281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041542, 34.326847, 34.699146>,  <44.355091, 34.547733, 34.585590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041542, 34.326847, 34.699146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459627, -0.823461, -0.332648,
		0.417469, -0.130270, 0.899305,
		-0.783877, -0.552216, 0.283893,
		43.806377, 34.161182, 34.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050392, 34.721977, 34.711411>,  <44.355091, 34.547733, 34.585590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050392, 34.721977, 34.711411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327984, 35.009792, 34.721657>,  <45.494537, 35.182484, 34.727806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327984, 35.009792, 34.721657>,  <45.050392, 34.721977, 34.711411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327984, 35.009792, 34.721657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694769, -0.678575, 0.238392,
		0.188916, -0.147641, -0.970831,
		0.693979, 0.719540, 0.025617,
		45.536179, 35.225655, 34.729343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688663, 34.505550, 34.357285>,  <45.050392, 34.721977, 34.711411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688663, 34.505550, 34.357285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821873, 34.782108, 34.613747>,  <45.901798, 34.948044, 34.767624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.821873, 34.782108, 34.613747>,  <45.688663, 34.505550, 34.357285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.821873, 34.782108, 34.613747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730425, -0.619167, 0.288290,
		0.596301, 0.372306, -0.711206,
		0.333024, 0.691390, 0.641151,
		45.921780, 34.989525, 34.806091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418816, 34.745605, 34.174850>,  <45.688663, 34.505550, 34.357285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418816, 34.745605, 34.174850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320641, 34.753597, 34.562534>,  <46.261734, 34.758392, 34.795143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320641, 34.753597, 34.562534>,  <46.418816, 34.745605, 34.174850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320641, 34.753597, 34.562534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693546, -0.694917, 0.189958,
		0.677313, 0.718812, 0.156703,
		-0.245440, 0.019980, 0.969206,
		46.247009, 34.759590, 34.853294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065853, 34.854492, 34.363964>,  <46.418816, 34.745605, 34.174850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065853, 34.854492, 34.363964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827271, 34.679321, 34.633026>,  <46.684120, 34.574219, 34.794464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827271, 34.679321, 34.633026>,  <47.065853, 34.854492, 34.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827271, 34.679321, 34.633026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718575, -0.664734, 0.204399,
		0.357623, 0.605266, 0.711168,
		-0.596453, -0.437930, 0.672653,
		46.648335, 34.547943, 34.834824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504387, 34.617210, 35.061493>,  <47.065853, 34.854492, 34.363964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504387, 34.617210, 35.061493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162731, 34.414982, 35.012749>,  <46.957737, 34.293644, 34.983501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162731, 34.414982, 35.012749>,  <47.504387, 34.617210, 35.061493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162731, 34.414982, 35.012749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461301, -0.844746, 0.271304,
		-0.240103, 0.175517, 0.954748,
		-0.854138, -0.505567, -0.121859,
		46.906490, 34.263313, 34.976192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534016, 35.279396, 35.326714>,  <47.504387, 34.617210, 35.061493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534016, 35.279396, 35.326714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813110, 34.993183, 35.312996>,  <47.980568, 34.821457, 35.304768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813110, 34.993183, 35.312996>,  <47.534016, 35.279396, 35.326714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813110, 34.993183, 35.312996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451187, 0.476143, -0.754796,
		0.556406, 0.511181, 0.655062,
		0.697741, -0.715529, -0.034291,
		48.022434, 34.778522, 35.302708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.975067, 36.326653, 23.671524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647400, 36.524231, 23.788128>,  <32.450798, 36.642776, 23.858089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.647400, 36.524231, 23.788128>,  <32.975067, 36.326653, 23.671524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647400, 36.524231, 23.788128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141251, -0.318858, 0.937218,
		0.555882, 0.808919, 0.191429,
		-0.819172, 0.493943, 0.291508,
		32.401649, 36.672413, 23.875580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125935, 36.549801, 24.409016>,  <32.975067, 36.326653, 23.671524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125935, 36.549801, 24.409016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726463, 36.550583, 24.388491>,  <32.486778, 36.551052, 24.376175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726463, 36.550583, 24.388491>,  <33.125935, 36.549801, 24.409016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726463, 36.550583, 24.388491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050772, -0.186941, 0.981058,
		-0.007675, 0.982369, 0.186794,
		-0.998681, 0.001954, -0.051312,
		32.426861, 36.551170, 24.373096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863895, 36.895638, 25.063112>,  <33.125935, 36.549801, 24.409016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863895, 36.895638, 25.063112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557877, 36.683895, 24.916420>,  <32.374268, 36.556850, 24.828403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557877, 36.683895, 24.916420>,  <32.863895, 36.895638, 25.063112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557877, 36.683895, 24.916420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194168, -0.353363, 0.915114,
		-0.614009, 0.771310, 0.167554,
		-0.765043, -0.529354, -0.366732,
		32.328365, 36.525089, 24.806400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296253, 36.960434, 25.617105>,  <32.863895, 36.895638, 25.063112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296253, 36.960434, 25.617105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.200520, 36.639828, 25.397913>,  <32.143078, 36.447464, 25.266397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.200520, 36.639828, 25.397913>,  <32.296253, 36.960434, 25.617105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200520, 36.639828, 25.397913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262695, -0.489880, 0.831270,
		-0.934724, 0.342905, -0.093309,
		-0.239337, -0.801520, -0.547982,
		32.128719, 36.399372, 25.233519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680836, 36.710587, 25.926214>,  <32.296253, 36.960434, 25.617105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680836, 36.710587, 25.926214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.823618, 36.392979, 25.729393>,  <31.909286, 36.202415, 25.611300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.823618, 36.392979, 25.729393>,  <31.680836, 36.710587, 25.926214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823618, 36.392979, 25.729393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235139, -0.586171, 0.775315,
		-0.904043, -0.161050, -0.395941,
		0.356954, -0.794019, -0.492055,
		31.930704, 36.154774, 25.581776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200739, 36.126301, 26.007103>,  <31.680836, 36.710587, 25.926214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200739, 36.126301, 26.007103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.556728, 35.971786, 25.910168>,  <31.770323, 35.879078, 25.852007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.556728, 35.971786, 25.910168>,  <31.200739, 36.126301, 26.007103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556728, 35.971786, 25.910168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061437, -0.628154, 0.775660,
		-0.451851, -0.675429, -0.582774,
		0.889975, -0.386286, -0.242335,
		31.823721, 35.855900, 25.837467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052063, 35.392677, 26.091436>,  <31.200739, 36.126301, 26.007103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052063, 35.392677, 26.091436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.450432, 35.428696, 26.093500>,  <31.689453, 35.450306, 26.094738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.450432, 35.428696, 26.093500>,  <31.052063, 35.392677, 26.091436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450432, 35.428696, 26.093500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054141, -0.642618, 0.764272,
		0.072136, -0.760877, -0.644874,
		0.995925, 0.090046, 0.005162,
		31.749208, 35.455708, 26.095049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257105, 34.772793, 26.490408>,  <31.052063, 35.392677, 26.091436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257105, 34.772793, 26.490408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592871, 34.989399, 26.471857>,  <31.794331, 35.119362, 26.460726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592871, 34.989399, 26.471857>,  <31.257105, 34.772793, 26.490408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592871, 34.989399, 26.471857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408551, -0.572419, 0.710931,
		0.358430, -0.615712, -0.701731,
		0.839413, 0.541512, -0.046378,
		31.844694, 35.151852, 26.457943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801508, 34.319954, 26.537930>,  <31.257105, 34.772793, 26.490408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801508, 34.319954, 26.537930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.928431, 34.680973, 26.654358>,  <32.004585, 34.897583, 26.724215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.928431, 34.680973, 26.654358>,  <31.801508, 34.319954, 26.537930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928431, 34.680973, 26.654358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459198, -0.414781, 0.785553,
		0.829731, -0.115603, -0.546061,
		0.317308, 0.902548, 0.291072,
		32.023624, 34.951736, 26.741680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434155, 34.137787, 26.778805>,  <31.801508, 34.319954, 26.537930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434155, 34.137787, 26.778805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.354019, 34.497967, 26.933237>,  <32.305939, 34.714073, 27.025896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.354019, 34.497967, 26.933237>,  <32.434155, 34.137787, 26.778805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354019, 34.497967, 26.933237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411440, -0.280309, 0.867262,
		0.889146, 0.332596, -0.314323,
		-0.200341, 0.900448, 0.386079,
		32.293919, 34.768101, 27.049061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041523, 34.261837, 27.210739>,  <32.434155, 34.137787, 26.778805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041523, 34.261837, 27.210739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754944, 34.500256, 27.355751>,  <32.582996, 34.643307, 27.442759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.754944, 34.500256, 27.355751>,  <33.041523, 34.261837, 27.210739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754944, 34.500256, 27.355751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205171, -0.316654, 0.926086,
		0.666785, 0.737876, 0.104576,
		-0.716451, 0.596045, 0.362531,
		32.540009, 34.679070, 27.464510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351593, 34.559135, 27.754644>,  <33.041523, 34.261837, 27.210739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351593, 34.559135, 27.754644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957657, 34.582748, 27.819891>,  <32.721294, 34.596916, 27.859039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957657, 34.582748, 27.819891>,  <33.351593, 34.559135, 27.754644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957657, 34.582748, 27.819891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149738, -0.185472, 0.971174,
		0.087582, 0.980875, 0.173821,
		-0.984839, 0.059029, 0.163118,
		32.662205, 34.600456, 27.868826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263649, 34.985699, 28.360792>,  <33.351593, 34.559135, 27.754644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263649, 34.985699, 28.360792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924454, 34.776669, 28.325409>,  <32.720936, 34.651249, 28.304178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924454, 34.776669, 28.325409>,  <33.263649, 34.985699, 28.360792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924454, 34.776669, 28.325409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010375, -0.183233, 0.983015,
		-0.529906, 0.832672, 0.160802,
		-0.847993, -0.522574, -0.088458,
		32.670055, 34.619896, 28.298872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881187, 35.087582, 28.965218>,  <33.263649, 34.985699, 28.360792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881187, 35.087582, 28.965218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766384, 34.738083, 28.808146>,  <32.697502, 34.528385, 28.713902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766384, 34.738083, 28.808146>,  <32.881187, 35.087582, 28.965218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766384, 34.738083, 28.808146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268062, -0.466805, 0.842755,
		-0.919658, 0.136612, 0.368193,
		-0.287005, -0.873745, -0.392681,
		32.680283, 34.475960, 28.690342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705112, 34.754391, 29.570972>,  <32.881187, 35.087582, 28.965218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705112, 34.754391, 29.570972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699657, 34.469784, 29.289957>,  <32.696384, 34.299019, 29.121347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699657, 34.469784, 29.289957>,  <32.705112, 34.754391, 29.570972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699657, 34.469784, 29.289957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206443, -0.689468, 0.694273,
		-0.978363, -0.135562, 0.156294,
		-0.013642, -0.711517, -0.702537,
		32.695564, 34.256329, 29.079197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333897, 34.102379, 29.788244>,  <32.705112, 34.754391, 29.570972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333897, 34.102379, 29.788244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.580002, 33.971546, 29.501339>,  <32.727665, 33.893047, 29.329195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.580002, 33.971546, 29.501339>,  <32.333897, 34.102379, 29.788244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580002, 33.971546, 29.501339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253239, -0.779634, 0.572749,
		-0.746540, -0.534030, -0.396850,
		0.615262, -0.327082, -0.717265,
		32.764580, 33.873421, 29.286160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310909, 33.471088, 29.978241>,  <32.333897, 34.102379, 29.788244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310909, 33.471088, 29.978241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.591385, 33.465828, 29.693100>,  <32.759670, 33.462669, 29.522015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.591385, 33.465828, 29.693100>,  <32.310909, 33.471088, 29.978241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591385, 33.465828, 29.693100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281205, -0.913675, 0.293464,
		-0.655178, -0.406232, -0.636960,
		0.701189, -0.013155, -0.712854,
		32.801743, 33.461880, 29.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337833, 32.745876, 29.662439>,  <32.310909, 33.471088, 29.978241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337833, 32.745876, 29.662439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.690250, 32.927822, 29.610504>,  <32.901703, 33.036987, 29.579344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.690250, 32.927822, 29.610504>,  <32.337833, 32.745876, 29.662439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690250, 32.927822, 29.610504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473004, -0.844262, 0.251972,
		0.004997, -0.283412, -0.958985,
		0.881046, 0.454863, -0.129836,
		32.954563, 33.064281, 29.571554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761089, 32.216362, 29.377048>,  <32.337833, 32.745876, 29.662439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761089, 32.216362, 29.377048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017845, 32.483734, 29.527338>,  <33.171898, 32.644157, 29.617512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.017845, 32.483734, 29.527338>,  <32.761089, 32.216362, 29.377048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017845, 32.483734, 29.527338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606908, -0.742358, 0.283844,
		0.468652, 0.045831, -0.882193,
		0.641894, 0.668434, 0.375723,
		33.210415, 32.684265, 29.640055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412575, 31.906719, 29.337400>,  <32.761089, 32.216362, 29.377048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412575, 31.906719, 29.337400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519363, 32.193607, 29.594872>,  <33.583439, 32.365738, 29.749355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.519363, 32.193607, 29.594872>,  <33.412575, 31.906719, 29.337400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519363, 32.193607, 29.594872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636130, -0.632888, 0.441352,
		0.723923, 0.291634, -0.625208,
		0.266973, 0.717219, 0.643679,
		33.599457, 32.408772, 29.787975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128609, 31.885483, 29.426535>,  <33.412575, 31.906719, 29.337400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128609, 31.885483, 29.426535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974483, 32.060982, 29.751257>,  <33.882008, 32.166283, 29.946091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974483, 32.060982, 29.751257>,  <34.128609, 31.885483, 29.426535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974483, 32.060982, 29.751257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692454, -0.444021, 0.568641,
		0.609949, 0.781246, -0.132724,
		-0.385317, 0.438747, 0.811808,
		33.858887, 32.192608, 29.994799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622723, 31.916458, 29.906683>,  <34.128609, 31.885483, 29.426535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622723, 31.916458, 29.906683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292099, 31.918329, 30.131815>,  <34.093723, 31.919453, 30.266893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292099, 31.918329, 30.131815>,  <34.622723, 31.916458, 29.906683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292099, 31.918329, 30.131815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473336, -0.535290, 0.699584,
		0.304551, 0.844656, 0.440234,
		-0.826560, 0.004680, 0.562829,
		34.044132, 31.919733, 30.300663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072998, 31.426989, 30.242840>,  <34.622723, 31.916458, 29.906683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072998, 31.426989, 30.242840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418224, 31.262167, 30.125999>,  <35.625362, 31.163275, 30.055895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418224, 31.262167, 30.125999>,  <35.072998, 31.426989, 30.242840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418224, 31.262167, 30.125999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037863, 0.523912, -0.850930,
		0.503665, 0.745471, 0.436571,
		0.863069, -0.412054, -0.292102,
		35.677147, 31.138552, 30.038368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595367, 32.006439, 29.945187>,  <35.072998, 31.426989, 30.242840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595367, 32.006439, 29.945187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.682186, 31.647470, 29.791553>,  <35.734276, 31.432089, 29.699373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.682186, 31.647470, 29.791553>,  <35.595367, 32.006439, 29.945187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682186, 31.647470, 29.791553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183873, 0.348834, -0.918970,
		0.958688, 0.270079, -0.089300,
		0.217043, -0.897425, -0.384083,
		35.747299, 31.378242, 29.676329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196564, 32.042446, 29.392879>,  <35.595367, 32.006439, 29.945187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196564, 32.042446, 29.392879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002327, 31.697206, 29.337358>,  <35.885784, 31.490063, 29.304047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002327, 31.697206, 29.337358>,  <36.196564, 32.042446, 29.392879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002327, 31.697206, 29.337358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202554, 0.265545, -0.942581,
		0.850397, -0.429591, -0.303769,
		-0.485589, -0.863097, -0.138803,
		35.856651, 31.438278, 29.295717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409462, 31.762671, 28.772823>,  <36.196564, 32.042446, 29.392879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409462, 31.762671, 28.772823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059654, 31.580534, 28.839613>,  <35.849770, 31.471252, 28.879686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059654, 31.580534, 28.839613>,  <36.409462, 31.762671, 28.772823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059654, 31.580534, 28.839613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212645, 0.050570, -0.975820,
		0.435887, -0.888880, -0.141050,
		-0.874520, -0.455341, 0.166974,
		35.797298, 31.443932, 28.889706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322422, 31.372553, 28.221336>,  <36.409462, 31.762671, 28.772823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322422, 31.372553, 28.221336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955620, 31.439753, 28.366049>,  <35.735538, 31.480072, 28.452875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955620, 31.439753, 28.366049>,  <36.322422, 31.372553, 28.221336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955620, 31.439753, 28.366049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341091, 0.139956, -0.929553,
		-0.206799, -0.975801, -0.071036,
		-0.917001, 0.168001, 0.361779,
		35.680519, 31.490152, 28.474583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961529, 30.944366, 27.863420>,  <36.322422, 31.372553, 28.221336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961529, 30.944366, 27.863420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718315, 31.229700, 28.002815>,  <35.572388, 31.400900, 28.086452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718315, 31.229700, 28.002815>,  <35.961529, 30.944366, 27.863420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718315, 31.229700, 28.002815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451316, 0.050556, -0.890931,
		-0.653152, -0.698996, 0.291201,
		-0.608035, 0.713337, 0.348489,
		35.535904, 31.443701, 28.107363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490906, 30.931129, 27.439606>,  <35.961529, 30.944366, 27.863420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490906, 30.931129, 27.439606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365799, 31.262125, 27.626127>,  <35.290733, 31.460722, 27.738039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365799, 31.262125, 27.626127>,  <35.490906, 30.931129, 27.439606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365799, 31.262125, 27.626127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357898, 0.352075, -0.864842,
		-0.879820, -0.437386, 0.186037,
		-0.312771, 0.827488, 0.466303,
		35.271969, 31.510372, 27.766018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788414, 31.018085, 27.186651>,  <35.490906, 30.931129, 27.439606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788414, 31.018085, 27.186651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911610, 31.370066, 27.331333>,  <34.985527, 31.581253, 27.418142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911610, 31.370066, 27.331333>,  <34.788414, 31.018085, 27.186651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911610, 31.370066, 27.331333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360415, 0.459766, -0.811614,
		-0.880479, 0.119605, 0.458750,
		0.307991, 0.879949, 0.361706,
		35.004005, 31.634050, 27.439844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190517, 31.525566, 27.329243>,  <34.788414, 31.018085, 27.186651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190517, 31.525566, 27.329243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507572, 31.764338, 27.279606>,  <34.697807, 31.907600, 27.249825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507572, 31.764338, 27.279606>,  <34.190517, 31.525566, 27.329243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507572, 31.764338, 27.279606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537650, 0.588375, -0.603943,
		-0.287499, 0.545426, 0.787309,
		0.792639, 0.596930, -0.124091,
		34.745365, 31.943417, 27.242378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923943, 32.227119, 27.075752>,  <34.190517, 31.525566, 27.329243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923943, 32.227119, 27.075752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314129, 32.258083, 26.993322>,  <34.548241, 32.276661, 26.943865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314129, 32.258083, 26.993322>,  <33.923943, 32.227119, 27.075752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314129, 32.258083, 26.993322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218792, 0.444191, -0.868807,
		0.024283, 0.892582, 0.450231,
		0.975469, 0.077409, -0.206076,
		34.606770, 32.281307, 26.931499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004574, 32.939510, 26.805355>,  <33.923943, 32.227119, 27.075752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004574, 32.939510, 26.805355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335430, 32.762630, 26.666624>,  <34.533943, 32.656502, 26.583385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335430, 32.762630, 26.666624>,  <34.004574, 32.939510, 26.805355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335430, 32.762630, 26.666624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018994, 0.638788, -0.769148,
		0.561670, 0.629608, 0.536769,
		0.827144, -0.442203, -0.346829,
		34.583572, 32.629971, 26.562576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533741, 33.418629, 26.675831>,  <34.004574, 32.939510, 26.805355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533741, 33.418629, 26.675831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624416, 33.114910, 26.431839>,  <34.678822, 32.932678, 26.285444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624416, 33.114910, 26.431839>,  <34.533741, 33.418629, 26.675831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624416, 33.114910, 26.431839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074338, 0.637946, -0.766484,
		0.971126, 0.128410, 0.201061,
		0.226690, -0.759299, -0.609980,
		34.692425, 32.887119, 26.248844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097782, 33.664791, 26.262243>,  <34.533741, 33.418629, 26.675831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097782, 33.664791, 26.262243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.008541, 33.328236, 26.065351>,  <34.954994, 33.126301, 25.947216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.008541, 33.328236, 26.065351>,  <35.097782, 33.664791, 26.262243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008541, 33.328236, 26.065351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265217, 0.433512, -0.861236,
		0.938021, -0.322693, 0.126432,
		-0.223104, -0.841390, -0.492227,
		34.941608, 33.075817, 25.917683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625301, 33.662647, 25.694227>,  <35.097782, 33.664791, 26.262243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625301, 33.662647, 25.694227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307575, 33.439137, 25.598873>,  <35.116940, 33.305031, 25.541660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307575, 33.439137, 25.598873>,  <35.625301, 33.662647, 25.694227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307575, 33.439137, 25.598873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024759, 0.421852, -0.906327,
		0.606997, -0.714010, -0.348919,
		-0.794318, -0.558777, -0.238385,
		35.069279, 33.271503, 25.527357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690243, 33.393742, 25.019619>,  <35.625301, 33.662647, 25.694227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690243, 33.393742, 25.019619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292389, 33.389233, 25.060768>,  <35.053677, 33.386528, 25.085459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292389, 33.389233, 25.060768>,  <35.690243, 33.393742, 25.019619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292389, 33.389233, 25.060768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098292, 0.413982, -0.904963,
		-0.032387, -0.910215, -0.412867,
		-0.994630, -0.011272, 0.102874,
		34.993999, 33.385849, 25.091631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546906, 33.323158, 24.385113>,  <35.690243, 33.393742, 25.019619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546906, 33.323158, 24.385113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.212814, 33.433945, 24.575140>,  <35.012360, 33.500416, 24.689156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.212814, 33.433945, 24.575140>,  <35.546906, 33.323158, 24.385113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212814, 33.433945, 24.575140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294149, 0.504907, -0.811508,
		-0.464624, -0.817533, -0.340243,
		-0.835225, 0.276964, 0.475069,
		34.962246, 33.517033, 24.717661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962563, 33.215580, 23.938335>,  <35.546906, 33.323158, 24.385113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962563, 33.215580, 23.938335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830948, 33.487751, 24.200253>,  <34.751980, 33.651054, 24.357403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830948, 33.487751, 24.200253>,  <34.962563, 33.215580, 23.938335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830948, 33.487751, 24.200253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188026, 0.632313, -0.751549,
		-0.925409, -0.370404, -0.080116,
		-0.329035, 0.680427, 0.654794,
		34.732239, 33.691879, 24.396690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325867, 33.443932, 23.586121>,  <34.962563, 33.215580, 23.938335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325867, 33.443932, 23.586121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439949, 33.716690, 23.855541>,  <34.508396, 33.880344, 24.017195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439949, 33.716690, 23.855541>,  <34.325867, 33.443932, 23.586121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439949, 33.716690, 23.855541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070565, 0.715772, -0.694760,
		-0.955866, 0.150619, 0.252259,
		0.285204, 0.681898, 0.673553,
		34.525509, 33.921261, 24.057608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.814838, 34.012753, 23.487110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098381, 34.178322, 23.715561>,  <34.268509, 34.277664, 23.852633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098381, 34.178322, 23.715561>,  <33.814838, 34.012753, 23.487110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098381, 34.178322, 23.715561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019242, 0.820755, -0.570956,
		-0.705088, 0.393737, 0.589764,
		0.708858, 0.413923, 0.571129,
		34.311039, 34.302498, 23.886900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559639, 34.680908, 23.562256>,  <33.814838, 34.012753, 23.487110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559639, 34.680908, 23.562256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947926, 34.721870, 23.649183>,  <34.180897, 34.746449, 23.701340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947926, 34.721870, 23.649183>,  <33.559639, 34.680908, 23.562256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947926, 34.721870, 23.649183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033334, 0.838432, -0.543986,
		-0.237916, 0.535298, 0.810464,
		0.970714, 0.102407, 0.217320,
		34.239140, 34.752594, 23.714378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687050, 35.324078, 23.739765>,  <33.559639, 34.680908, 23.562256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687050, 35.324078, 23.739765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060955, 35.223843, 23.639025>,  <34.285297, 35.163704, 23.578581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060955, 35.223843, 23.639025>,  <33.687050, 35.324078, 23.739765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060955, 35.223843, 23.639025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102358, 0.868781, -0.484502,
		0.340211, 0.427115, 0.837752,
		0.934762, -0.250584, -0.251850,
		34.341385, 35.148666, 23.563469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140057, 35.952221, 23.921589>,  <33.687050, 35.324078, 23.739765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140057, 35.952221, 23.921589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327606, 35.728268, 23.648329>,  <34.440136, 35.593895, 23.484373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327606, 35.728268, 23.648329>,  <34.140057, 35.952221, 23.921589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327606, 35.728268, 23.648329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199356, 0.820558, -0.535670,
		0.860474, 0.114971, 0.496354,
		0.468873, -0.559881, -0.683148,
		34.468269, 35.560303, 23.443384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629547, 36.409245, 23.701361>,  <34.140057, 35.952221, 23.921589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629547, 36.409245, 23.701361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604977, 36.129181, 23.416824>,  <34.590233, 35.961143, 23.246101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604977, 36.129181, 23.416824>,  <34.629547, 36.409245, 23.701361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604977, 36.129181, 23.416824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104836, 0.704221, -0.702198,
		0.992591, -0.117707, 0.030145,
		-0.061424, -0.700156, -0.711343,
		34.586548, 35.919136, 23.203421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106712, 36.730907, 23.193533>,  <34.629547, 36.409245, 23.701361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106712, 36.730907, 23.193533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882137, 36.462494, 22.999836>,  <34.747391, 36.301445, 22.883617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882137, 36.462494, 22.999836>,  <35.106712, 36.730907, 23.193533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882137, 36.462494, 22.999836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019637, 0.595817, -0.802880,
		0.827283, -0.441261, -0.347694,
		-0.561442, -0.671037, -0.484245,
		34.713703, 36.261185, 22.854563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391068, 36.585144, 22.538515>,  <35.106712, 36.730907, 23.193533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391068, 36.585144, 22.538515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.999763, 36.508980, 22.505653>,  <34.764980, 36.463280, 22.485937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.999763, 36.508980, 22.505653>,  <35.391068, 36.585144, 22.538515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999763, 36.508980, 22.505653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023418, 0.495046, -0.868551,
		0.206050, -0.847746, -0.488744,
		-0.978261, -0.190411, -0.082152,
		34.706284, 36.451855, 22.481009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299683, 36.420223, 21.887930>,  <35.391068, 36.585144, 22.538515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299683, 36.420223, 21.887930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918594, 36.502876, 21.977041>,  <34.689941, 36.552467, 22.030508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918594, 36.502876, 21.977041>,  <35.299683, 36.420223, 21.887930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918594, 36.502876, 21.977041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044955, 0.629261, -0.775893,
		-0.300509, -0.749223, -0.590220,
		-0.952719, 0.206629, 0.222780,
		34.632778, 36.564865, 22.043875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992561, 36.342464, 21.270466>,  <35.299683, 36.420223, 21.887930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992561, 36.342464, 21.270466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736805, 36.578407, 21.467749>,  <34.583351, 36.719971, 21.586119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736805, 36.578407, 21.467749>,  <34.992561, 36.342464, 21.270466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736805, 36.578407, 21.467749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000436, 0.641181, -0.767389,
		-0.768885, -0.490874, -0.409706,
		-0.639387, 0.589855, 0.493208,
		34.544991, 36.755363, 21.615711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475208, 36.626488, 20.683674>,  <34.992561, 36.342464, 21.270466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475208, 36.626488, 20.683674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447266, 36.873245, 20.997248>,  <34.430500, 37.021301, 21.185392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447266, 36.873245, 20.997248>,  <34.475208, 36.626488, 20.683674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447266, 36.873245, 20.997248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083099, 0.786724, -0.611686,
		-0.994090, 0.022411, -0.106225,
		-0.069861, 0.616898, 0.783937,
		34.426308, 37.058315, 21.232430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068520, 37.124588, 20.442207>,  <34.475208, 36.626488, 20.683674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068520, 37.124588, 20.442207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241287, 37.294861, 20.760262>,  <34.344948, 37.397026, 20.951094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241287, 37.294861, 20.760262>,  <34.068520, 37.124588, 20.442207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241287, 37.294861, 20.760262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025157, 0.875580, -0.482418,
		-0.901561, 0.228369, 0.367472,
		0.431920, 0.425685, 0.795134,
		34.370865, 37.422565, 20.998802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603828, 37.793201, 20.656164>,  <34.068520, 37.124588, 20.442207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603828, 37.793201, 20.656164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987698, 37.821323, 20.765045>,  <34.218018, 37.838196, 20.830374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987698, 37.821323, 20.765045>,  <33.603828, 37.793201, 20.656164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987698, 37.821323, 20.765045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081336, 0.857389, -0.508201,
		-0.269110, 0.509844, 0.817092,
		0.959669, 0.070303, 0.272201,
		34.275597, 37.842415, 20.846704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761696, 38.526325, 20.713459>,  <33.603828, 37.793201, 20.656164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761696, 38.526325, 20.713459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134617, 38.381775, 20.719501>,  <34.358368, 38.295044, 20.723127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134617, 38.381775, 20.719501>,  <33.761696, 38.526325, 20.713459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134617, 38.381775, 20.719501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331702, 0.837611, -0.434029,
		0.144194, 0.409655, 0.900772,
		0.932299, -0.361372, 0.015104,
		34.414307, 38.273365, 20.724033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131569, 39.069881, 20.934280>,  <33.761696, 38.526325, 20.713459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131569, 39.069881, 20.934280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405205, 38.826904, 20.772768>,  <34.569386, 38.681118, 20.675861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405205, 38.826904, 20.772768>,  <34.131569, 39.069881, 20.934280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405205, 38.826904, 20.772768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522316, 0.794363, -0.310117,
		0.509127, 0.001246, 0.860691,
		0.684088, -0.607441, -0.403781,
		34.610432, 38.644672, 20.651634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696106, 39.447506, 20.969894>,  <34.131569, 39.069881, 20.934280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696106, 39.447506, 20.969894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787617, 39.189968, 20.677832>,  <34.842525, 39.035446, 20.502594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787617, 39.189968, 20.677832>,  <34.696106, 39.447506, 20.969894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787617, 39.189968, 20.677832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466426, 0.730848, -0.498305,
		0.854463, -0.226563, 0.467507,
		0.228779, -0.643840, -0.730157,
		34.856251, 38.996815, 20.458784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396381, 39.608406, 20.802866>,  <34.696106, 39.447506, 20.969894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396381, 39.608406, 20.802866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247982, 39.429604, 20.477278>,  <35.158943, 39.322323, 20.281925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247982, 39.429604, 20.477278>,  <35.396381, 39.608406, 20.802866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247982, 39.429604, 20.477278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515194, 0.630189, -0.580894,
		0.772617, -0.634862, -0.003504,
		-0.370996, -0.447003, -0.813972,
		35.136684, 39.295502, 20.233086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983189, 39.482101, 20.343197>,  <35.396381, 39.608406, 20.802866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983189, 39.482101, 20.343197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649948, 39.501995, 20.122847>,  <35.450005, 39.513931, 19.990637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.649948, 39.501995, 20.122847>,  <35.983189, 39.482101, 20.343197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649948, 39.501995, 20.122847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451309, 0.636919, -0.625023,
		0.319780, -0.769325, -0.553065,
		-0.833103, 0.049733, -0.550877,
		35.400017, 39.516914, 19.957584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266079, 39.603992, 19.611164>,  <35.983189, 39.482101, 20.343197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266079, 39.603992, 19.611164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880955, 39.711800, 19.618784>,  <35.649879, 39.776482, 19.623356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880955, 39.711800, 19.618784>,  <36.266079, 39.603992, 19.611164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880955, 39.711800, 19.618784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197423, 0.749896, -0.631411,
		-0.184462, -0.604166, -0.775214,
		-0.962807, 0.269516, 0.019051,
		35.592113, 39.792656, 19.624500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250694, 39.926270, 18.951910>,  <36.266079, 39.603992, 19.611164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250694, 39.926270, 18.951910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912323, 40.042091, 19.131046>,  <35.709301, 40.111584, 19.238527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912323, 40.042091, 19.131046>,  <36.250694, 39.926270, 18.951910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912323, 40.042091, 19.131046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019792, 0.822137, -0.568945,
		-0.532926, -0.490151, -0.689740,
		-0.845931, 0.289554, 0.447839,
		35.658543, 40.128956, 19.265398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089226, 40.336872, 18.470989>,  <36.250694, 39.926270, 18.951910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089226, 40.336872, 18.470989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851475, 40.432968, 18.777975>,  <35.708824, 40.490623, 18.962166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851475, 40.432968, 18.777975>,  <36.089226, 40.336872, 18.470989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851475, 40.432968, 18.777975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290612, 0.825677, -0.483532,
		-0.749839, -0.510435, -0.420949,
		-0.594379, 0.240238, 0.767462,
		35.673161, 40.505039, 19.008213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512749, 40.496075, 18.174660>,  <36.089226, 40.336872, 18.470989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512749, 40.496075, 18.174660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483662, 40.692451, 18.521921>,  <35.466209, 40.810276, 18.730278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483662, 40.692451, 18.521921>,  <35.512749, 40.496075, 18.174660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483662, 40.692451, 18.521921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210418, 0.843313, -0.494517,
		-0.974903, -0.218634, 0.041980,
		-0.072716, 0.490939, 0.868154,
		35.461845, 40.839733, 18.782368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033970, 40.911602, 18.077209>,  <35.512749, 40.496075, 18.174660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033970, 40.911602, 18.077209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213268, 41.090736, 18.386665>,  <35.320847, 41.198219, 18.572338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.213268, 41.090736, 18.386665>,  <35.033970, 40.911602, 18.077209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213268, 41.090736, 18.386665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201288, 0.893793, -0.400770,
		-0.870953, 0.023920, 0.490783,
		0.448245, 0.447841, 0.773637,
		35.347740, 41.225090, 18.618757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629185, 41.525967, 18.260363>,  <35.033970, 40.911602, 18.077209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629185, 41.525967, 18.260363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018547, 41.527283, 18.351995>,  <35.252163, 41.528072, 18.406975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018547, 41.527283, 18.351995>,  <34.629185, 41.525967, 18.260363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018547, 41.527283, 18.351995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093824, 0.906472, -0.411710,
		-0.209012, 0.422252, 0.882053,
		0.973402, 0.003295, 0.229081,
		35.310566, 41.528271, 18.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062965, 42.098701, 18.685827>,  <34.629185, 41.525967, 18.260363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062965, 42.098701, 18.685827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238167, 41.925846, 18.370510>,  <35.343288, 41.822132, 18.181320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238167, 41.925846, 18.370510>,  <35.062965, 42.098701, 18.685827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238167, 41.925846, 18.370510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025720, 0.870500, -0.491496,
		0.898604, 0.235553, 0.370169,
		0.438005, -0.432139, -0.788294,
		35.369568, 41.796204, 18.134022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359547, 42.275730, 18.621010>,  <35.062965, 42.098701, 18.685827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359547, 42.275730, 18.621010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975193, 42.370964, 18.564428>,  <33.744579, 42.428104, 18.530479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975193, 42.370964, 18.564428>,  <34.359547, 42.275730, 18.621010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975193, 42.370964, 18.564428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263686, -0.630449, 0.730071,
		0.084641, 0.738816, 0.668571,
		-0.960888, 0.238086, -0.141454,
		33.686928, 42.442390, 18.521992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035408, 42.334530, 19.321241>,  <34.359547, 42.275730, 18.621010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035408, 42.334530, 19.321241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734669, 42.291328, 19.061068>,  <33.554226, 42.265408, 18.904964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734669, 42.291328, 19.061068>,  <34.035408, 42.334530, 19.321241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734669, 42.291328, 19.061068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507989, -0.534001, 0.675862,
		-0.420325, 0.838557, 0.346624,
		-0.751847, -0.108000, -0.650433,
		33.509113, 42.258930, 18.865938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471996, 42.493736, 19.733870>,  <34.035408, 42.334530, 19.321241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471996, 42.493736, 19.733870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.344383, 42.263618, 19.432606>,  <33.267815, 42.125546, 19.251846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.344383, 42.263618, 19.432606>,  <33.471996, 42.493736, 19.733870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344383, 42.263618, 19.432606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411981, -0.631495, 0.656876,
		-0.853516, 0.519852, -0.035545,
		-0.319032, -0.575298, -0.753161,
		33.248672, 42.091030, 19.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876522, 42.271061, 19.951521>,  <33.471996, 42.493736, 19.733870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876522, 42.271061, 19.951521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928539, 42.010307, 19.652689>,  <32.959751, 41.853855, 19.473389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928539, 42.010307, 19.652689>,  <32.876522, 42.271061, 19.951521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928539, 42.010307, 19.652689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430397, -0.715904, 0.549764,
		-0.893223, 0.250048, -0.373669,
		0.130043, -0.651888, -0.747082,
		32.967552, 41.814739, 19.428564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272087, 41.944874, 19.827175>,  <32.876522, 42.271061, 19.951521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272087, 41.944874, 19.827175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561291, 41.713844, 19.675560>,  <32.734814, 41.575226, 19.584591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561291, 41.713844, 19.675560>,  <32.272087, 41.944874, 19.827175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561291, 41.713844, 19.675560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443722, -0.808767, 0.386013,
		-0.529505, -0.110903, -0.841026,
		0.723005, -0.577577, -0.379036,
		32.778191, 41.540569, 19.561850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882793, 41.289059, 19.603399>,  <32.272087, 41.944874, 19.827175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882793, 41.289059, 19.603399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263729, 41.167427, 19.593695>,  <32.492290, 41.094448, 19.587872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263729, 41.167427, 19.593695>,  <31.882793, 41.289059, 19.603399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263729, 41.167427, 19.593695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251209, -0.826895, 0.503130,
		-0.173053, -0.473055, -0.863871,
		0.952338, -0.304080, -0.024261,
		32.549431, 41.076202, 19.586416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891432, 40.603436, 19.447077>,  <31.882793, 41.289059, 19.603399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891432, 40.603436, 19.447077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240387, 40.658852, 19.634584>,  <32.449760, 40.692101, 19.747089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240387, 40.658852, 19.634584>,  <31.891432, 40.603436, 19.447077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240387, 40.658852, 19.634584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146339, -0.840985, 0.520893,
		0.466392, -0.523021, -0.713392,
		0.872389, 0.138543, 0.468767,
		32.502106, 40.700413, 19.775215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268108, 39.972137, 19.419409>,  <31.891432, 40.603436, 19.447077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268108, 39.972137, 19.419409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417519, 40.167503, 19.734859>,  <32.507164, 40.284721, 19.924129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417519, 40.167503, 19.734859>,  <32.268108, 39.972137, 19.419409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417519, 40.167503, 19.734859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098363, -0.824513, 0.557227,
		0.922391, -0.285709, -0.259933,
		0.373523, 0.488414, 0.788627,
		32.529575, 40.314026, 19.971447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638931, 39.443886, 19.724001>,  <32.268108, 39.972137, 19.419409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638931, 39.443886, 19.724001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.644775, 39.741116, 19.991619>,  <32.648281, 39.919453, 20.152191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.644775, 39.741116, 19.991619>,  <32.638931, 39.443886, 19.724001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644775, 39.741116, 19.991619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010229, -0.668972, 0.743217,
		0.999841, -0.017705, -0.002175,
		0.014614, 0.743076, 0.669047,
		32.649158, 39.964039, 20.192333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990265, 39.148239, 20.217300>,  <32.638931, 39.443886, 19.724001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990265, 39.148239, 20.217300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840458, 39.460884, 20.416826>,  <32.750572, 39.648472, 20.536541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840458, 39.460884, 20.416826>,  <32.990265, 39.148239, 20.217300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840458, 39.460884, 20.416826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028193, -0.547318, 0.836450,
		0.926789, 0.299206, 0.227019,
		-0.374522, 0.781613, 0.498813,
		32.728100, 39.695370, 20.566469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478863, 39.434700, 20.714987>,  <32.990265, 39.148239, 20.217300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478863, 39.434700, 20.714987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089195, 39.472275, 20.797123>,  <32.855392, 39.494820, 20.846405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089195, 39.472275, 20.797123>,  <33.478863, 39.434700, 20.714987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089195, 39.472275, 20.797123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100333, -0.634594, 0.766305,
		0.202290, 0.767116, 0.608779,
		-0.974173, 0.093936, 0.205339,
		32.796944, 39.500454, 20.858725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436752, 39.369137, 21.493090>,  <33.478863, 39.434700, 20.714987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436752, 39.369137, 21.493090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050739, 39.306938, 21.408684>,  <32.819130, 39.269619, 21.358040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050739, 39.306938, 21.408684>,  <33.436752, 39.369137, 21.493090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050739, 39.306938, 21.408684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096383, -0.538123, 0.837337,
		-0.243757, 0.828399, 0.504320,
		-0.965035, -0.155499, -0.211014,
		32.761230, 39.260288, 21.345379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239182, 39.193256, 22.133881>,  <33.436752, 39.369137, 21.493090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239182, 39.193256, 22.133881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910404, 39.089592, 21.931002>,  <32.713139, 39.027393, 21.809275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910404, 39.089592, 21.931002>,  <33.239182, 39.193256, 22.133881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910404, 39.089592, 21.931002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182147, -0.724123, 0.665184,
		-0.539662, 0.639126, 0.547981,
		-0.821941, -0.259161, -0.507196,
		32.663822, 39.011845, 21.778843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759438, 39.179268, 22.630131>,  <33.239182, 39.193256, 22.133881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759438, 39.179268, 22.630131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619926, 38.972591, 22.317366>,  <32.536221, 38.848587, 22.129707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619926, 38.972591, 22.317366>,  <32.759438, 39.179268, 22.630131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619926, 38.972591, 22.317366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313598, -0.721870, 0.616895,
		-0.883183, 0.460364, 0.089737,
		-0.348775, -0.516690, -0.781913,
		32.515293, 38.817585, 22.082792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045292, 39.014229, 22.798573>,  <32.759438, 39.179268, 22.630131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045292, 39.014229, 22.798573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160275, 38.725338, 22.546938>,  <32.229263, 38.552002, 22.395956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160275, 38.725338, 22.546938>,  <32.045292, 39.014229, 22.798573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160275, 38.725338, 22.546938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471786, -0.678372, 0.563231,
		-0.833538, 0.134889, -0.535742,
		0.287458, -0.722230, -0.629088,
		32.246513, 38.508671, 22.358212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570522, 38.540447, 22.827204>,  <32.045292, 39.014229, 22.798573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570522, 38.540447, 22.827204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.836899, 38.320213, 22.625856>,  <31.996725, 38.188072, 22.505047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.836899, 38.320213, 22.625856>,  <31.570522, 38.540447, 22.827204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836899, 38.320213, 22.625856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345600, -0.825671, 0.445902,
		-0.661125, -0.122980, -0.740129,
		0.665940, -0.550585, -0.503369,
		32.036682, 38.155037, 22.474846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176970, 37.974739, 22.570250>,  <31.570522, 38.540447, 22.827204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176970, 37.974739, 22.570250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.565878, 37.887714, 22.604563>,  <31.799223, 37.835499, 22.625151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.565878, 37.887714, 22.604563>,  <31.176970, 37.974739, 22.570250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565878, 37.887714, 22.604563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220603, -0.731481, 0.645190,
		-0.077617, -0.646223, -0.759191,
		0.972270, -0.217557, 0.085784,
		31.857559, 37.822449, 22.630299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206364, 37.294701, 22.603600>,  <31.176970, 37.974739, 22.570250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206364, 37.294701, 22.603600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555576, 37.389412, 22.774128>,  <31.765104, 37.446239, 22.876444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555576, 37.389412, 22.774128>,  <31.206364, 37.294701, 22.603600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555576, 37.389412, 22.774128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152453, -0.697880, 0.699801,
		0.463217, -0.675944, -0.573175,
		0.873034, 0.236778, 0.426320,
		31.817486, 37.460445, 22.902023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435371, 36.622555, 22.746920>,  <31.206364, 37.294701, 22.603600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435371, 36.622555, 22.746920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654572, 36.876232, 22.965094>,  <31.786091, 37.028439, 23.095999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654572, 36.876232, 22.965094>,  <31.435371, 36.622555, 22.746920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654572, 36.876232, 22.965094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055053, -0.677992, 0.733004,
		0.834664, -0.371659, -0.406454,
		0.548001, 0.634189, 0.545435,
		31.818972, 37.066490, 23.128723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026680, 36.283997, 22.907907>,  <31.435371, 36.622555, 22.746920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026680, 36.283997, 22.907907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964931, 36.551643, 23.198685>,  <31.927881, 36.712234, 23.373150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964931, 36.551643, 23.198685>,  <32.026680, 36.283997, 22.907907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964931, 36.551643, 23.198685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167492, -0.707389, 0.686693,
		0.973712, 0.227765, -0.002870,
		-0.154375, 0.669122, 0.726942,
		31.918619, 36.752380, 23.416767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.239899, 31.972052, 25.533148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.072929, 32.249718, 25.767717>,  <34.972748, 32.416317, 25.908459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.072929, 32.249718, 25.767717>,  <35.239899, 31.972052, 25.533148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072929, 32.249718, 25.767717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233107, -0.541942, 0.807441,
		0.878305, 0.473743, 0.064403,
		-0.417422, 0.694166, 0.586423,
		34.947704, 32.457966, 25.943644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582867, 31.906010, 26.078945>,  <35.239899, 31.972052, 25.533148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582867, 31.906010, 26.078945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.271732, 32.115570, 26.217794>,  <35.085052, 32.241306, 26.301104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.271732, 32.115570, 26.217794>,  <35.582867, 31.906010, 26.078945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271732, 32.115570, 26.217794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297603, -0.179428, 0.937677,
		0.553533, 0.832667, -0.016348,
		-0.777839, 0.523900, 0.347123,
		35.038380, 32.272739, 26.321932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872952, 32.301991, 26.618393>,  <35.582867, 31.906010, 26.078945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872952, 32.301991, 26.618393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.481400, 32.287159, 26.698807>,  <35.246468, 32.278259, 26.747055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.481400, 32.287159, 26.698807>,  <35.872952, 32.301991, 26.618393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481400, 32.287159, 26.698807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201301, -0.346168, 0.916322,
		0.035612, 0.937440, 0.346322,
		-0.978882, -0.037083, 0.201035,
		35.187737, 32.276035, 26.759117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835129, 32.663342, 27.231642>,  <35.872952, 32.301991, 26.618393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835129, 32.663342, 27.231642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.511845, 32.428600, 27.212048>,  <35.317875, 32.287758, 27.200291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.511845, 32.428600, 27.212048>,  <35.835129, 32.663342, 27.231642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511845, 32.428600, 27.212048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177487, -0.322058, 0.929934,
		-0.561508, 0.742890, 0.364450,
		-0.808213, -0.586850, -0.048985,
		35.269382, 32.252544, 27.197351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514637, 32.734234, 27.887276>,  <35.835129, 32.663342, 27.231642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514637, 32.734234, 27.887276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.330269, 32.413067, 27.736082>,  <35.219650, 32.220367, 27.645365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.330269, 32.413067, 27.736082>,  <35.514637, 32.734234, 27.887276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330269, 32.413067, 27.736082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012507, -0.431761, 0.901901,
		-0.887355, 0.410974, 0.209049,
		-0.460917, -0.802921, -0.377985,
		35.191994, 32.172192, 27.622686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910889, 32.632957, 28.286530>,  <35.514637, 32.734234, 27.887276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910889, 32.632957, 28.286530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008808, 32.284832, 28.115587>,  <35.067562, 32.075958, 28.013021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008808, 32.284832, 28.115587>,  <34.910889, 32.632957, 28.286530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008808, 32.284832, 28.115587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051928, -0.451903, 0.890555,
		-0.968182, -0.195817, -0.155820,
		0.244802, -0.870310, -0.427355,
		35.082249, 32.023739, 27.987381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517502, 32.137329, 28.693447>,  <34.910889, 32.632957, 28.286530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517502, 32.137329, 28.693447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.810505, 31.930460, 28.516375>,  <34.986305, 31.806339, 28.410131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.810505, 31.930460, 28.516375>,  <34.517502, 32.137329, 28.693447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810505, 31.930460, 28.516375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249227, -0.401401, 0.881341,
		-0.633500, -0.755916, -0.165134,
		0.732505, -0.517174, -0.442683,
		35.030258, 31.775309, 28.383570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485886, 31.401855, 28.977598>,  <34.517502, 32.137329, 28.693447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485886, 31.401855, 28.977598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840927, 31.431953, 28.795834>,  <35.053951, 31.450012, 28.686775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840927, 31.431953, 28.795834>,  <34.485886, 31.401855, 28.977598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840927, 31.431953, 28.795834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445825, -0.388227, 0.806548,
		-0.115727, -0.918487, -0.378139,
		0.887608, 0.075245, -0.454413,
		35.107208, 31.454527, 28.659510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777889, 30.712318, 29.134846>,  <34.485886, 31.401855, 28.977598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777889, 30.712318, 29.134846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085773, 30.944199, 29.027889>,  <35.270504, 31.083326, 28.963717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085773, 30.944199, 29.027889>,  <34.777889, 30.712318, 29.134846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085773, 30.944199, 29.027889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565437, -0.424619, 0.707093,
		0.296364, -0.695446, -0.654617,
		0.769708, 0.579701, -0.267389,
		35.316685, 31.118109, 28.947672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328247, 30.231266, 29.192600>,  <34.777889, 30.712318, 29.134846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328247, 30.231266, 29.192600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.489922, 30.596733, 29.209770>,  <35.586926, 30.816013, 29.220072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.489922, 30.596733, 29.209770>,  <35.328247, 30.231266, 29.192600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489922, 30.596733, 29.209770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471843, -0.248474, 0.845946,
		0.783580, -0.321665, -0.531538,
		0.404185, 0.913669, 0.042924,
		35.611176, 30.870834, 29.222647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130779, 30.199106, 29.299217>,  <35.328247, 30.231266, 29.192600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130779, 30.199106, 29.299217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.988453, 30.554644, 29.414700>,  <35.903057, 30.767967, 29.483990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.988453, 30.554644, 29.414700>,  <36.130779, 30.199106, 29.299217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988453, 30.554644, 29.414700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382174, -0.143526, 0.912877,
		0.852842, 0.435151, -0.288625,
		-0.355814, 0.888844, 0.288708,
		35.881710, 30.821297, 29.501312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725010, 30.470379, 29.559334>,  <36.130779, 30.199106, 29.299217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725010, 30.470379, 29.559334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.409149, 30.670393, 29.701553>,  <36.219631, 30.790401, 29.786884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.409149, 30.670393, 29.701553>,  <36.725010, 30.470379, 29.559334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409149, 30.670393, 29.701553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419521, 0.017169, 0.907583,
		0.447718, 0.865836, -0.223332,
		-0.789652, 0.500034, 0.355550,
		36.172253, 30.820404, 29.808218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042049, 30.796637, 30.012218>,  <36.725010, 30.470379, 29.559334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042049, 30.796637, 30.012218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659378, 30.836422, 30.121675>,  <36.429775, 30.860294, 30.187349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.659378, 30.836422, 30.121675>,  <37.042049, 30.796637, 30.012218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659378, 30.836422, 30.121675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275594, 0.006189, 0.961254,
		0.093917, 0.995022, -0.033332,
		-0.956675, 0.099464, 0.273640,
		36.372375, 30.866261, 30.203768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049255, 31.340261, 30.437527>,  <37.042049, 30.796637, 30.012218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049255, 31.340261, 30.437527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.695053, 31.177635, 30.527494>,  <36.482533, 31.080059, 30.581476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.695053, 31.177635, 30.527494>,  <37.049255, 31.340261, 30.437527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695053, 31.177635, 30.527494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130951, 0.246081, 0.960362,
		-0.445797, 0.879858, -0.164666,
		-0.885504, -0.406564, 0.224921,
		36.429401, 31.055666, 30.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711201, 31.711740, 31.029570>,  <37.049255, 31.340261, 30.437527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711201, 31.711740, 31.029570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983738, 31.912943, 31.242268>,  <37.147263, 32.033665, 31.369886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983738, 31.912943, 31.242268>,  <36.711201, 31.711740, 31.029570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983738, 31.912943, 31.242268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252799, 0.843475, -0.473965,
		-0.686922, 0.188508, 0.701857,
		0.681345, 0.503006, 0.531747,
		37.188141, 32.063843, 31.401793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327221, 32.270077, 31.272776>,  <36.711201, 31.711740, 31.029570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327221, 32.270077, 31.272776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.701748, 32.401455, 31.322474>,  <36.926464, 32.480282, 31.352293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.701748, 32.401455, 31.322474>,  <36.327221, 32.270077, 31.272776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701748, 32.401455, 31.322474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252439, 0.875498, -0.412040,
		-0.244111, 0.354435, 0.902655,
		0.936314, 0.328449, 0.124245,
		36.982643, 32.499989, 31.359747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338074, 32.948246, 31.566774>,  <36.327221, 32.270077, 31.272776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338074, 32.948246, 31.566774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687588, 32.922081, 31.374018>,  <36.897297, 32.906380, 31.258364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687588, 32.922081, 31.374018>,  <36.338074, 32.948246, 31.566774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687588, 32.922081, 31.374018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218484, 0.832471, -0.509172,
		0.434469, 0.550192, 0.713109,
		0.873786, -0.065416, -0.481891,
		36.949722, 32.902454, 31.229450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553612, 33.684151, 31.419458>,  <36.338074, 32.948246, 31.566774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553612, 33.684151, 31.419458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.765057, 33.458267, 31.165947>,  <36.891922, 33.322739, 31.013840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.765057, 33.458267, 31.165947>,  <36.553612, 33.684151, 31.419458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765057, 33.458267, 31.165947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035778, 0.731135, -0.681294,
		0.848108, 0.382816, 0.366284,
		0.528614, -0.564706, -0.633778,
		36.923641, 33.288857, 30.975813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047546, 34.182114, 31.102722>,  <36.553612, 33.684151, 31.419458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047546, 34.182114, 31.102722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017548, 33.875092, 30.848091>,  <36.999546, 33.690876, 30.695312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017548, 33.875092, 30.848091>,  <37.047546, 34.182114, 31.102722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017548, 33.875092, 30.848091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074729, 0.640907, -0.763973,
		0.994380, -0.009727, -0.105427,
		-0.075000, -0.767557, -0.636578,
		36.995049, 33.644825, 30.657118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611343, 34.286335, 30.624411>,  <37.047546, 34.182114, 31.102722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611343, 34.286335, 30.624411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310917, 34.074993, 30.466047>,  <37.130661, 33.948189, 30.371029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310917, 34.074993, 30.466047>,  <37.611343, 34.286335, 30.624411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310917, 34.074993, 30.466047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041864, 0.560338, -0.827205,
		0.658897, -0.637861, -0.398732,
		-0.751067, -0.528351, -0.395909,
		37.085598, 33.916489, 30.347275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891830, 34.093723, 30.058271>,  <37.611343, 34.286335, 30.624411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891830, 34.093723, 30.058271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.498924, 34.036373, 30.009945>,  <37.263180, 34.001965, 29.980949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.498924, 34.036373, 30.009945>,  <37.891830, 34.093723, 30.058271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498924, 34.036373, 30.009945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005405, 0.665771, -0.746137,
		0.187410, -0.732253, -0.654740,
		-0.982267, -0.143372, -0.120814,
		37.204243, 33.993362, 29.973701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680668, 33.846355, 29.329805>,  <37.891830, 34.093723, 30.058271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680668, 33.846355, 29.329805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.345467, 33.997250, 29.487514>,  <37.144348, 34.087784, 29.582140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.345467, 33.997250, 29.487514>,  <37.680668, 33.846355, 29.329805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345467, 33.997250, 29.487514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141771, 0.547224, -0.824892,
		-0.526933, -0.747156, -0.405093,
		-0.837999, 0.377233, 0.394275,
		37.094067, 34.110420, 29.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265808, 33.987244, 28.764029>,  <37.680668, 33.846355, 29.329805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265808, 33.987244, 28.764029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.082397, 34.206787, 29.043604>,  <36.972351, 34.338512, 29.211349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.082397, 34.206787, 29.043604>,  <37.265808, 33.987244, 28.764029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082397, 34.206787, 29.043604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302770, 0.642954, -0.703520,
		-0.835516, -0.534198, -0.128633,
		-0.458523, 0.548856, 0.698937,
		36.944839, 34.371445, 29.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630836, 34.144619, 28.496279>,  <37.265808, 33.987244, 28.764029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630836, 34.144619, 28.496279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652035, 34.415611, 28.789730>,  <36.664753, 34.578209, 28.965801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.652035, 34.415611, 28.789730>,  <36.630836, 34.144619, 28.496279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652035, 34.415611, 28.789730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145549, 0.732054, -0.665517,
		-0.987931, -0.071511, 0.137401,
		0.052993, 0.677483, 0.733627,
		36.667934, 34.618855, 29.009819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007454, 34.622971, 28.558823>,  <36.630836, 34.144619, 28.496279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007454, 34.622971, 28.558823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301258, 34.841938, 28.719240>,  <36.477539, 34.973316, 28.815491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301258, 34.841938, 28.719240>,  <36.007454, 34.622971, 28.558823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301258, 34.841938, 28.719240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197743, 0.737996, -0.645182,
		-0.649150, 0.394587, 0.650311,
		0.734508, 0.547414, 0.401044,
		36.521610, 35.006161, 28.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699520, 35.201778, 28.640839>,  <36.007454, 34.622971, 28.558823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699520, 35.201778, 28.640839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.087303, 35.295574, 28.669615>,  <36.319973, 35.351852, 28.686880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.087303, 35.295574, 28.669615>,  <35.699520, 35.201778, 28.640839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087303, 35.295574, 28.669615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158682, 0.823256, -0.545040,
		-0.187031, 0.516975, 0.835318,
		0.969453, 0.234490, 0.071940,
		36.378139, 35.365921, 28.691196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743298, 35.902016, 28.821037>,  <35.699520, 35.201778, 28.640839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743298, 35.902016, 28.821037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115959, 35.821598, 28.699972>,  <36.339554, 35.773346, 28.627333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115959, 35.821598, 28.699972>,  <35.743298, 35.902016, 28.821037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115959, 35.821598, 28.699972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012947, 0.814078, -0.580611,
		0.363123, 0.544846, 0.755834,
		0.931651, -0.201047, -0.302664,
		36.395454, 35.761284, 28.609173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143631, 36.539371, 28.911692>,  <35.743298, 35.902016, 28.821037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143631, 36.539371, 28.911692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302074, 36.308708, 28.625877>,  <36.397141, 36.170311, 28.454388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302074, 36.308708, 28.625877>,  <36.143631, 36.539371, 28.911692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302074, 36.308708, 28.625877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028561, 0.785554, -0.618134,
		0.917758, 0.224442, 0.327637,
		0.396111, -0.576655, -0.714538,
		36.420906, 36.135712, 28.411516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429180, 37.233292, 29.328646>,  <36.143631, 36.539371, 28.911692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429180, 37.233292, 29.328646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282635, 37.558254, 29.510096>,  <36.194706, 37.753231, 29.618965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282635, 37.558254, 29.510096>,  <36.429180, 37.233292, 29.328646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282635, 37.558254, 29.510096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432842, -0.580361, 0.689804,
		0.823667, 0.056371, 0.564266,
		-0.366362, 0.812406, 0.453624,
		36.172726, 37.801975, 29.646183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777325, 37.332680, 29.962328>,  <36.429180, 37.233292, 29.328646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777325, 37.332680, 29.962328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.415913, 37.502205, 29.987661>,  <36.199066, 37.603920, 30.002861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.415913, 37.502205, 29.987661>,  <36.777325, 37.332680, 29.962328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415913, 37.502205, 29.987661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230767, -0.605757, 0.761450,
		0.361079, 0.673378, 0.645123,
		-0.903531, 0.423816, 0.063333,
		36.144852, 37.629349, 30.006660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615181, 37.298000, 30.627335>,  <36.777325, 37.332680, 29.962328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615181, 37.298000, 30.627335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.246433, 37.365009, 30.487570>,  <36.025185, 37.405216, 30.403711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.246433, 37.365009, 30.487570>,  <36.615181, 37.298000, 30.627335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246433, 37.365009, 30.487570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381269, -0.553126, 0.740733,
		-0.069176, 0.816081, 0.573783,
		-0.921872, 0.167525, -0.349410,
		35.969872, 37.415268, 30.382748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297516, 37.579376, 31.139442>,  <36.615181, 37.298000, 30.627335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297516, 37.579376, 31.139442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995506, 37.451046, 30.910702>,  <35.814301, 37.374050, 30.773458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995506, 37.451046, 30.910702>,  <36.297516, 37.579376, 31.139442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995506, 37.451046, 30.910702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421928, -0.429865, 0.798244,
		-0.501912, 0.843973, 0.189195,
		-0.755024, -0.320821, -0.571850,
		35.768997, 37.354801, 30.739147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758312, 37.529831, 31.616095>,  <36.297516, 37.579376, 31.139442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758312, 37.529831, 31.616095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.586746, 37.321274, 31.321020>,  <35.483807, 37.196140, 31.143974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.586746, 37.321274, 31.321020>,  <35.758312, 37.529831, 31.616095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586746, 37.321274, 31.321020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453454, -0.582011, 0.675013,
		-0.781289, 0.624030, 0.013205,
		-0.428914, -0.521392, -0.737688,
		35.458073, 37.164856, 31.099714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025898, 37.394768, 31.806442>,  <35.758312, 37.529831, 31.616095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025898, 37.394768, 31.806442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.145245, 37.107811, 31.554625>,  <35.216850, 36.935638, 31.403534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.145245, 37.107811, 31.554625>,  <35.025898, 37.394768, 31.806442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145245, 37.107811, 31.554625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521465, -0.674965, 0.522011,
		-0.799408, 0.172537, -0.575480,
		0.298363, -0.717393, -0.629545,
		35.234753, 36.892593, 31.365761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406410, 36.939030, 31.774487>,  <35.025898, 37.394768, 31.806442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406410, 36.939030, 31.774487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.717266, 36.733788, 31.628735>,  <34.903782, 36.610641, 31.541285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.717266, 36.733788, 31.628735>,  <34.406410, 36.939030, 31.774487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717266, 36.733788, 31.628735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270424, -0.795092, 0.542862,
		-0.568258, -0.323346, -0.756657,
		0.777145, -0.513104, -0.364377,
		34.950409, 36.579857, 31.519421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139645, 36.308926, 31.582088>,  <34.406410, 36.939030, 31.774487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139645, 36.308926, 31.582088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530109, 36.236671, 31.630213>,  <34.764389, 36.193321, 31.659086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530109, 36.236671, 31.630213>,  <34.139645, 36.308926, 31.582088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530109, 36.236671, 31.630213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215696, -0.868867, 0.445584,
		0.024046, -0.460913, -0.887119,
		0.976164, -0.180633, 0.120309,
		34.822960, 36.182480, 31.666306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242947, 35.535355, 31.512516>,  <34.139645, 36.308926, 31.582088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242947, 35.535355, 31.512516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585155, 35.643002, 31.689447>,  <34.790482, 35.707592, 31.795607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.585155, 35.643002, 31.689447>,  <34.242947, 35.535355, 31.512516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585155, 35.643002, 31.689447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057448, -0.799692, 0.597656,
		0.514568, -0.536719, -0.668694,
		0.855523, 0.269120, 0.442329,
		34.841812, 35.723736, 31.822145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672035, 34.957684, 31.414944>,  <34.242947, 35.535355, 31.512516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672035, 34.957684, 31.414944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842789, 35.170330, 31.707558>,  <34.945240, 35.297920, 31.883127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842789, 35.170330, 31.707558>,  <34.672035, 34.957684, 31.414944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842789, 35.170330, 31.707558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045782, -0.820618, 0.569641,
		0.903145, -0.209681, -0.374650,
		0.426887, 0.531621, 0.731537,
		34.970856, 35.329815, 31.927019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212936, 34.547729, 31.669735>,  <34.672035, 34.957684, 31.414944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212936, 34.547729, 31.669735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.121590, 34.803303, 31.963570>,  <35.066784, 34.956646, 32.139870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.121590, 34.803303, 31.963570>,  <35.212936, 34.547729, 31.669735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121590, 34.803303, 31.963570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008567, -0.755813, 0.654731,
		0.973538, 0.143223, 0.178074,
		-0.228363, 0.638932, 0.734586,
		35.053082, 34.994984, 32.183945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343662, 34.910694, 31.051958>,  <35.212936, 34.547729, 31.669735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343662, 34.910694, 31.051958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.244820, 34.531250, 30.972889>,  <35.185516, 34.303581, 30.925447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.244820, 34.531250, 30.972889>,  <35.343662, 34.910694, 31.051958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244820, 34.531250, 30.972889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853007, -0.309730, 0.420055,
		-0.459696, -0.064821, 0.885708,
		-0.247102, -0.948612, -0.197674,
		35.170689, 34.246666, 30.913586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.506790, 40.522179, 27.329422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123013, 40.588131, 27.420885>,  <36.892746, 40.627701, 27.475763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123013, 40.588131, 27.420885>,  <37.506790, 40.522179, 27.329422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123013, 40.588131, 27.420885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148647, -0.393304, 0.907313,
		0.239528, 0.904504, 0.352844,
		-0.959443, 0.164878, 0.228659,
		36.835178, 40.637596, 27.489483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342751, 40.811905, 28.072058>,  <37.506790, 40.522179, 27.329422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342751, 40.811905, 28.072058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992531, 40.653049, 27.962006>,  <36.782398, 40.557735, 27.895975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992531, 40.653049, 27.962006>,  <37.342751, 40.811905, 28.072058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992531, 40.653049, 27.962006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070960, -0.457590, 0.886327,
		-0.477891, 0.795546, 0.372461,
		-0.875548, -0.397138, -0.275130,
		36.729866, 40.533909, 27.879467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929733, 40.792053, 28.616110>,  <37.342751, 40.811905, 28.072058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929733, 40.792053, 28.616110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783497, 40.504547, 28.379560>,  <36.695755, 40.332043, 28.237631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783497, 40.504547, 28.379560>,  <36.929733, 40.792053, 28.616110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783497, 40.504547, 28.379560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001472, -0.635800, 0.771853,
		-0.930775, 0.281312, 0.233501,
		-0.365591, -0.718765, -0.591372,
		36.673820, 40.288918, 28.202148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625244, 40.438995, 29.061060>,  <36.929733, 40.792053, 28.616110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625244, 40.438995, 29.061060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611015, 40.176422, 28.759644>,  <36.602478, 40.018879, 28.578793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611015, 40.176422, 28.759644>,  <36.625244, 40.438995, 29.061060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611015, 40.176422, 28.759644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171794, -0.738778, 0.651685,
		-0.984490, 0.152636, -0.086493,
		-0.035571, -0.656437, -0.753542,
		36.600346, 39.979492, 28.533581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985161, 40.058041, 29.173761>,  <36.625244, 40.438995, 29.061060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985161, 40.058041, 29.173761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219524, 39.829403, 28.943981>,  <36.360142, 39.692219, 28.806112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219524, 39.829403, 28.943981>,  <35.985161, 40.058041, 29.173761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219524, 39.829403, 28.943981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259687, -0.803916, 0.535053,
		-0.767644, -0.164313, -0.619454,
		0.585905, -0.571594, -0.574451,
		36.395298, 39.657925, 28.771646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555550, 39.576061, 28.949354>,  <35.985161, 40.058041, 29.173761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555550, 39.576061, 28.949354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932873, 39.446335, 28.921110>,  <36.159267, 39.368500, 28.904163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932873, 39.446335, 28.921110>,  <35.555550, 39.576061, 28.949354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932873, 39.446335, 28.921110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293628, -0.914589, 0.278045,
		-0.154754, -0.241549, -0.957969,
		0.943310, -0.324316, -0.070611,
		36.215866, 39.349041, 28.899927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577049, 38.879730, 28.664000>,  <35.555550, 39.576061, 28.949354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577049, 38.879730, 28.664000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921810, 38.915695, 28.863619>,  <36.128666, 38.937275, 28.983391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921810, 38.915695, 28.863619>,  <35.577049, 38.879730, 28.664000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921810, 38.915695, 28.863619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099427, -0.935087, 0.340187,
		0.497239, -0.342825, -0.797010,
		0.861898, 0.089910, 0.499047,
		36.180378, 38.942669, 29.013332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809978, 38.227928, 28.651188>,  <35.577049, 38.879730, 28.664000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809978, 38.227928, 28.651188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034538, 38.392204, 28.938566>,  <36.169273, 38.490772, 29.110992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034538, 38.392204, 28.938566>,  <35.809978, 38.227928, 28.651188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034538, 38.392204, 28.938566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224318, -0.760139, 0.609811,
		0.796564, -0.503506, -0.334614,
		0.561397, 0.410694, 0.718446,
		36.202957, 38.515411, 29.154100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184738, 37.634911, 28.794996>,  <35.809978, 38.227928, 28.651188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184738, 37.634911, 28.794996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225460, 37.902664, 29.089357>,  <36.249893, 38.063316, 29.265974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225460, 37.902664, 29.089357>,  <36.184738, 37.634911, 28.794996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225460, 37.902664, 29.089357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213322, -0.707850, 0.673381,
		0.971663, -0.225541, 0.070730,
		0.101809, 0.669388, 0.735904,
		36.256004, 38.103481, 29.310129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730438, 36.976795, 28.600840>,  <36.184738, 37.634911, 28.794996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730438, 36.976795, 28.600840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679176, 36.688572, 28.328259>,  <36.648418, 36.515640, 28.164709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679176, 36.688572, 28.328259>,  <36.730438, 36.976795, 28.600840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679176, 36.688572, 28.328259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134100, 0.668218, -0.731780,
		0.982646, -0.185165, 0.010990,
		-0.128156, -0.720554, -0.681453,
		36.640728, 36.472404, 28.123823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238419, 37.105541, 28.103300>,  <36.730438, 36.976795, 28.600840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238419, 37.105541, 28.103300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964367, 36.871944, 27.929152>,  <36.799934, 36.731785, 27.824663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964367, 36.871944, 27.929152>,  <37.238419, 37.105541, 28.103300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964367, 36.871944, 27.929152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034453, 0.571040, -0.820199,
		0.727605, -0.576943, -0.371117,
		-0.685131, -0.583994, -0.435369,
		36.758827, 36.696747, 27.798540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497578, 36.841835, 27.487604>,  <37.238419, 37.105541, 28.103300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497578, 36.841835, 27.487604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105034, 36.826538, 27.412262>,  <36.869507, 36.817360, 27.367058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105034, 36.826538, 27.412262>,  <37.497578, 36.841835, 27.487604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105034, 36.826538, 27.412262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160330, 0.377554, -0.912002,
		0.105991, -0.925197, -0.364384,
		-0.981356, -0.038242, -0.188354,
		36.810627, 36.815063, 27.355755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543468, 36.798050, 26.717115>,  <37.497578, 36.841835, 27.487604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543468, 36.798050, 26.717115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160839, 36.881031, 26.799028>,  <36.931263, 36.930820, 26.848175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160839, 36.881031, 26.799028>,  <37.543468, 36.798050, 26.717115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160839, 36.881031, 26.799028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134047, 0.310768, -0.940986,
		-0.258852, -0.927570, -0.269463,
		-0.956570, 0.207456, 0.204781,
		36.873867, 36.943268, 26.860462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181507, 36.575039, 26.179520>,  <37.543468, 36.798050, 26.717115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181507, 36.575039, 26.179520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966061, 36.851891, 26.371708>,  <36.836792, 37.018002, 26.487020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966061, 36.851891, 26.371708>,  <37.181507, 36.575039, 26.179520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966061, 36.851891, 26.371708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096325, 0.515932, -0.851197,
		-0.837026, -0.504750, -0.211221,
		-0.538618, 0.692128, 0.480469,
		36.804474, 37.059528, 26.515848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662388, 36.691711, 25.627632>,  <37.181507, 36.575039, 26.179520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662388, 36.691711, 25.627632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635147, 36.996010, 25.885818>,  <36.618805, 37.178589, 26.040731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635147, 36.996010, 25.885818>,  <36.662388, 36.691711, 25.627632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635147, 36.996010, 25.885818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010775, 0.646371, -0.762947,
		-0.997620, -0.058911, -0.035820,
		-0.068099, 0.760745, 0.645468,
		36.614716, 37.224232, 26.079458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061642, 37.183655, 25.395182>,  <36.662388, 36.691711, 25.627632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061642, 37.183655, 25.395182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315437, 37.393158, 25.622551>,  <36.467712, 37.518860, 25.758972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315437, 37.393158, 25.622551>,  <36.061642, 37.183655, 25.395182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315437, 37.393158, 25.622551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019398, 0.745967, -0.665700,
		-0.772691, 0.411351, 0.483465,
		0.634486, 0.523759, 0.568423,
		36.505783, 37.550285, 25.793077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844849, 37.886147, 25.288273>,  <36.061642, 37.183655, 25.395182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844849, 37.886147, 25.288273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173370, 37.955139, 25.505787>,  <36.370483, 37.996536, 25.636295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173370, 37.955139, 25.505787>,  <35.844849, 37.886147, 25.288273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173370, 37.955139, 25.505787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155076, 0.849806, -0.503766,
		-0.549002, 0.498076, 0.671206,
		0.821309, 0.172481, 0.543785,
		36.419762, 38.006882, 25.668922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787086, 38.621727, 25.392986>,  <35.844849, 37.886147, 25.288273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787086, 38.621727, 25.392986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171074, 38.511509, 25.413090>,  <36.401466, 38.445377, 25.425152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171074, 38.511509, 25.413090>,  <35.787086, 38.621727, 25.392986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171074, 38.511509, 25.413090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256514, 0.792826, -0.552837,
		0.112486, 0.543600, 0.831773,
		0.959973, -0.275548, 0.050259,
		36.459064, 38.428844, 25.428167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181164, 39.188999, 25.646927>,  <35.787086, 38.621727, 25.392986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181164, 39.188999, 25.646927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444660, 38.955051, 25.457619>,  <36.602757, 38.814682, 25.344032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444660, 38.955051, 25.457619>,  <36.181164, 39.188999, 25.646927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444660, 38.955051, 25.457619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394563, 0.804155, -0.444584,
		0.640608, 0.106131, 0.760498,
		0.658742, -0.584869, -0.473273,
		36.642284, 38.779591, 25.315638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750515, 39.571198, 25.608353>,  <36.181164, 39.188999, 25.646927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750515, 39.571198, 25.608353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858330, 39.309246, 25.325939>,  <36.923019, 39.152077, 25.156490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858330, 39.309246, 25.325939>,  <36.750515, 39.571198, 25.608353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858330, 39.309246, 25.325939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469344, 0.729532, -0.497493,
		0.840872, -0.197280, 0.503999,
		0.269538, -0.654876, -0.706035,
		36.939190, 39.112782, 25.114128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521015, 39.601719, 25.546314>,  <36.750515, 39.571198, 25.608353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521015, 39.601719, 25.546314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351044, 39.454102, 25.215681>,  <37.249062, 39.365532, 25.017302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351044, 39.454102, 25.215681>,  <37.521015, 39.601719, 25.546314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351044, 39.454102, 25.215681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421216, 0.727639, -0.541404,
		0.801257, -0.578229, -0.153749,
		-0.424929, -0.369042, -0.826585,
		37.223564, 39.343388, 24.967705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909897, 39.796036, 25.140081>,  <37.521015, 39.601719, 25.546314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909897, 39.796036, 25.140081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617619, 39.687317, 24.889576>,  <37.442253, 39.622086, 24.739273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617619, 39.687317, 24.889576>,  <37.909897, 39.796036, 25.140081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617619, 39.687317, 24.889576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305942, 0.689698, -0.656290,
		0.610314, -0.671149, -0.420804,
		-0.730696, -0.271801, -0.626265,
		37.398411, 39.605778, 24.701696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219315, 39.741154, 24.437571>,  <37.909897, 39.796036, 25.140081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219315, 39.741154, 24.437571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822750, 39.770947, 24.394583>,  <37.584812, 39.788822, 24.368790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822750, 39.770947, 24.394583>,  <38.219315, 39.741154, 24.437571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822750, 39.770947, 24.394583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126703, 0.750198, -0.648960,
		0.032289, -0.657005, -0.753194,
		-0.991415, 0.074478, -0.107468,
		37.525326, 39.793289, 24.362343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.711472, 38.984726, 23.855858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.073887, 39.084061, 23.992924>,  <30.291336, 39.143661, 24.075163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.073887, 39.084061, 23.992924>,  <29.711472, 38.984726, 23.855858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073887, 39.084061, 23.992924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116755, -0.631600, 0.766453,
		0.406767, -0.734444, -0.543260,
		0.906040, 0.248340, 0.342664,
		30.345699, 39.158562, 24.095722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995178, 38.337860, 24.034779>,  <29.711472, 38.984726, 23.855858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995178, 38.337860, 24.034779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.206400, 38.599644, 24.251238>,  <30.333132, 38.756714, 24.381113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.206400, 38.599644, 24.251238>,  <29.995178, 38.337860, 24.034779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206400, 38.599644, 24.251238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078511, -0.596885, 0.798476,
		0.845574, -0.464124, -0.263805,
		0.528053, 0.654459, 0.541150,
		30.364817, 38.795982, 24.413584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551151, 37.967087, 24.416033>,  <29.995178, 38.337860, 24.034779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551151, 37.967087, 24.416033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.545948, 38.311005, 24.620222>,  <30.542826, 38.517357, 24.742735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.545948, 38.311005, 24.620222>,  <30.551151, 37.967087, 24.416033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545948, 38.311005, 24.620222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062176, -0.510224, 0.857791,
		0.997980, -0.020582, 0.060095,
		-0.013007, 0.859795, 0.510473,
		30.542046, 38.568943, 24.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046120, 37.870411, 24.825954>,  <30.551151, 37.967087, 24.416033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046120, 37.870411, 24.825954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.796957, 38.143364, 24.978977>,  <30.647459, 38.307137, 25.070791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.796957, 38.143364, 24.978977>,  <31.046120, 37.870411, 24.825954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796957, 38.143364, 24.978977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013653, -0.479458, 0.877459,
		0.782177, 0.551798, 0.289340,
		-0.622906, 0.682378, 0.382555,
		30.610085, 38.348076, 25.093744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374523, 38.043404, 25.459908>,  <31.046120, 37.870411, 24.825954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374523, 38.043404, 25.459908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.014963, 38.210594, 25.512489>,  <30.799227, 38.310909, 25.544039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.014963, 38.210594, 25.512489>,  <31.374523, 38.043404, 25.459908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014963, 38.210594, 25.512489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023454, -0.253684, 0.967003,
		0.437530, 0.872320, 0.218233,
		-0.898898, 0.417974, 0.131454,
		30.745295, 38.335987, 25.551926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484846, 38.619663, 25.924719>,  <31.374523, 38.043404, 25.459908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484846, 38.619663, 25.924719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099382, 38.519375, 25.961603>,  <30.868105, 38.459202, 25.983734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.099382, 38.519375, 25.961603>,  <31.484846, 38.619663, 25.924719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099382, 38.519375, 25.961603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135582, -0.161602, 0.977498,
		-0.230179, 0.954475, 0.189722,
		-0.963657, -0.250723, 0.092212,
		30.810286, 38.444157, 25.989267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341326, 38.857430, 26.541084>,  <31.484846, 38.619663, 25.924719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341326, 38.857430, 26.541084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048571, 38.596245, 26.463127>,  <30.872917, 38.439533, 26.416353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.048571, 38.596245, 26.463127>,  <31.341326, 38.857430, 26.541084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048571, 38.596245, 26.463127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019333, -0.305790, 0.951903,
		-0.681149, 0.692919, 0.236428,
		-0.731889, -0.652958, -0.194893,
		30.829004, 38.400356, 26.404659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047306, 38.767200, 27.204365>,  <31.341326, 38.857430, 26.541084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047306, 38.767200, 27.204365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.895693, 38.460896, 26.996542>,  <30.804726, 38.277111, 26.871847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.895693, 38.460896, 26.996542>,  <31.047306, 38.767200, 27.204365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895693, 38.460896, 26.996542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144684, -0.505507, 0.850605,
		-0.914003, 0.397579, 0.080810,
		-0.379033, -0.765764, -0.519558,
		30.781982, 38.231167, 26.840675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377426, 38.631554, 27.542198>,  <31.047306, 38.767200, 27.204365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377426, 38.631554, 27.542198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508642, 38.305122, 27.351868>,  <30.587372, 38.109264, 27.237669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508642, 38.305122, 27.351868>,  <30.377426, 38.631554, 27.542198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508642, 38.305122, 27.351868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238347, -0.558904, 0.794240,
		-0.914100, -0.147132, -0.377853,
		0.328042, -0.816075, -0.475826,
		30.607056, 38.060299, 27.209120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155825, 38.155640, 27.936199>,  <30.377426, 38.631554, 27.542198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155825, 38.155640, 27.936199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444189, 37.966476, 27.733557>,  <30.617208, 37.852978, 27.611971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444189, 37.966476, 27.733557>,  <30.155825, 38.155640, 27.936199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444189, 37.966476, 27.733557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021002, -0.745573, 0.666093,
		-0.692710, -0.469554, -0.547423,
		0.720911, -0.472906, -0.506604,
		30.660461, 37.824604, 27.581575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010817, 37.577824, 28.074717>,  <30.155825, 38.155640, 27.936199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010817, 37.577824, 28.074717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.383242, 37.508541, 27.946268>,  <30.606697, 37.466972, 27.869198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.383242, 37.508541, 27.946268>,  <30.010817, 37.577824, 28.074717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383242, 37.508541, 27.946268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073390, -0.773245, 0.629846,
		-0.357397, -0.609995, -0.707229,
		0.931064, -0.173202, -0.321123,
		30.662561, 37.456581, 27.849932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078472, 36.860481, 27.853220>,  <30.010817, 37.577824, 28.074717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078472, 36.860481, 27.853220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.441294, 37.009869, 27.930960>,  <30.658987, 37.099499, 27.977604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.441294, 37.009869, 27.930960>,  <30.078472, 36.860481, 27.853220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441294, 37.009869, 27.930960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168932, -0.745696, 0.644516,
		0.385631, -0.551780, -0.739478,
		0.907056, 0.373466, 0.194350,
		30.713411, 37.121910, 27.989265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521395, 36.373631, 27.798952>,  <30.078472, 36.860481, 27.853220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521395, 36.373631, 27.798952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.736507, 36.606941, 28.042454>,  <30.865576, 36.746925, 28.188555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.736507, 36.606941, 28.042454>,  <30.521395, 36.373631, 27.798952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736507, 36.606941, 28.042454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239105, -0.797929, 0.553298,
		0.808467, -0.151997, -0.568575,
		0.537782, 0.583272, 0.608756,
		30.897842, 36.781921, 28.225080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271006, 36.102886, 27.964739>,  <30.521395, 36.373631, 27.798952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271006, 36.102886, 27.964739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.147871, 36.320137, 28.277214>,  <31.073990, 36.450489, 28.464699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.147871, 36.320137, 28.277214>,  <31.271006, 36.102886, 27.964739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147871, 36.320137, 28.277214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258979, -0.742223, 0.618090,
		0.915514, 0.392581, 0.087825,
		-0.307836, 0.543126, 0.781186,
		31.055521, 36.483074, 28.511570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868786, 35.904411, 27.494972>,  <31.271006, 36.102886, 27.964739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868786, 35.904411, 27.494972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041142, 35.562996, 27.377802>,  <32.144554, 35.358147, 27.307499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041142, 35.562996, 27.377802>,  <31.868786, 35.904411, 27.494972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041142, 35.562996, 27.377802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000263, 0.324728, -0.945808,
		0.902404, 0.407463, 0.140147,
		0.430891, -0.853537, -0.292928,
		32.170410, 35.306934, 27.289923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460079, 36.079906, 27.182739>,  <31.868786, 35.904411, 27.494972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460079, 36.079906, 27.182739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.339733, 35.723843, 27.045862>,  <32.267525, 35.510204, 26.963736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.339733, 35.723843, 27.045862>,  <32.460079, 36.079906, 27.182739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339733, 35.723843, 27.045862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017524, 0.353596, -0.935234,
		0.953505, -0.287377, -0.090786,
		-0.300867, -0.890160, -0.342191,
		32.249474, 35.456795, 26.943205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882256, 35.919212, 26.639118>,  <32.460079, 36.079906, 27.182739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882256, 35.919212, 26.639118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.555622, 35.693920, 26.588572>,  <32.359642, 35.558746, 26.558243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.555622, 35.693920, 26.588572>,  <32.882256, 35.919212, 26.639118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555622, 35.693920, 26.588572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109134, 0.064332, -0.991943,
		0.566819, -0.823794, 0.008935,
		-0.816581, -0.563227, -0.126369,
		32.310646, 35.524952, 26.550661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037910, 35.563198, 26.067364>,  <32.882256, 35.919212, 26.639118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037910, 35.563198, 26.067364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.641838, 35.507767, 26.074722>,  <32.404194, 35.474510, 26.079138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.641838, 35.507767, 26.074722>,  <33.037910, 35.563198, 26.067364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641838, 35.507767, 26.074722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067313, 0.357302, -0.931560,
		0.122516, -0.923652, -0.363121,
		-0.990181, -0.138573, 0.018398,
		32.344784, 35.466194, 26.080242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893486, 35.241772, 25.448078>,  <33.037910, 35.563198, 26.067364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893486, 35.241772, 25.448078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.551861, 35.416157, 25.561577>,  <32.346886, 35.520790, 25.629677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.551861, 35.416157, 25.561577>,  <32.893486, 35.241772, 25.448078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551861, 35.416157, 25.561577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222928, 0.186086, -0.956909,
		-0.469982, -0.880514, -0.061739,
		-0.854061, 0.435966, 0.283748,
		32.295643, 35.546947, 25.646702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294415, 35.081028, 24.900463>,  <32.893486, 35.241772, 25.448078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294415, 35.081028, 24.900463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.184547, 35.412277, 25.095919>,  <32.118626, 35.611027, 25.213192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.184547, 35.412277, 25.095919>,  <32.294415, 35.081028, 24.900463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184547, 35.412277, 25.095919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305685, 0.406615, -0.860942,
		-0.911654, -0.385843, 0.141460,
		-0.274669, 0.828124, 0.488639,
		32.102146, 35.660713, 25.242510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676958, 35.375053, 24.555004>,  <32.294415, 35.081028, 24.900463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676958, 35.375053, 24.555004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813677, 35.688362, 24.762716>,  <31.895708, 35.876347, 24.887344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813677, 35.688362, 24.762716>,  <31.676958, 35.375053, 24.555004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813677, 35.688362, 24.762716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168114, 0.594610, -0.786242,
		-0.924614, 0.181438, 0.334916,
		0.341799, 0.783275, 0.519282,
		31.916216, 35.923344, 24.918501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300442, 35.933208, 24.319492>,  <31.676958, 35.375053, 24.555004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300442, 35.933208, 24.319492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616632, 36.110584, 24.488493>,  <31.806347, 36.217010, 24.589893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616632, 36.110584, 24.488493>,  <31.300442, 35.933208, 24.319492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616632, 36.110584, 24.488493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012551, 0.677937, -0.735013,
		-0.612361, 0.586315, 0.530329,
		0.790479, 0.443437, 0.422501,
		31.853777, 36.243614, 24.615244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114620, 36.477135, 24.258448>,  <31.300442, 35.933208, 24.319492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114620, 36.477135, 24.258448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.512133, 36.496449, 24.298580>,  <31.750641, 36.508038, 24.322660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.512133, 36.496449, 24.298580>,  <31.114620, 36.477135, 24.258448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512133, 36.496449, 24.298580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045820, 0.643918, -0.763722,
		-0.101479, 0.763570, 0.637701,
		0.993782, 0.048282, 0.100331,
		31.810266, 36.510933, 24.328680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327677, 37.218765, 24.422926>,  <31.114620, 36.477135, 24.258448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327677, 37.218765, 24.422926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.643299, 37.040104, 24.254219>,  <31.832672, 36.932907, 24.152994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.643299, 37.040104, 24.254219>,  <31.327677, 37.218765, 24.422926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643299, 37.040104, 24.254219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115080, 0.781879, -0.612717,
		0.603443, 0.434932, 0.668349,
		0.789058, -0.446654, -0.421768,
		31.880016, 36.906109, 24.127689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933582, 37.648285, 24.411514>,  <31.327677, 37.218765, 24.422926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933582, 37.648285, 24.411514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.954165, 37.388992, 24.107634>,  <31.966513, 37.233418, 23.925304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.954165, 37.388992, 24.107634>,  <31.933582, 37.648285, 24.411514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954165, 37.388992, 24.107634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160372, 0.756202, -0.634380,
		0.985715, -0.089194, 0.142868,
		0.051454, -0.648230, -0.759704,
		31.969601, 37.194523, 23.879723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353848, 37.936977, 23.927820>,  <31.933582, 37.648285, 24.411514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353848, 37.936977, 23.927820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256416, 37.643654, 23.673914>,  <32.197956, 37.467659, 23.521570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256416, 37.643654, 23.673914>,  <32.353848, 37.936977, 23.927820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256416, 37.643654, 23.673914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244774, 0.586815, -0.771838,
		0.938485, -0.343380, 0.036557,
		-0.243581, -0.733307, -0.634767,
		32.183342, 37.423660, 23.483484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940353, 37.738121, 23.473194>,  <32.353848, 37.936977, 23.927820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940353, 37.738121, 23.473194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601223, 37.642048, 23.284092>,  <32.397743, 37.584404, 23.170630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601223, 37.642048, 23.284092>,  <32.940353, 37.738121, 23.473194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601223, 37.642048, 23.284092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306864, 0.504859, -0.806816,
		0.432459, -0.829113, -0.354331,
		-0.847829, -0.240183, -0.472756,
		32.346874, 37.569992, 23.142265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099449, 37.430321, 22.773922>,  <32.940353, 37.738121, 23.473194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099449, 37.430321, 22.773922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728733, 37.578278, 22.747902>,  <32.506302, 37.667053, 22.732290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.728733, 37.578278, 22.747902>,  <33.099449, 37.430321, 22.773922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728733, 37.578278, 22.747902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290902, 0.597451, -0.747280,
		-0.237551, -0.711498, -0.661318,
		-0.926793, 0.369896, -0.065051,
		32.450695, 37.689247, 22.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402626, 36.855953, 22.302727>,  <33.099449, 37.430321, 22.773922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402626, 36.855953, 22.302727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782646, 36.759045, 22.224031>,  <34.010658, 36.700897, 22.176815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782646, 36.759045, 22.224031>,  <33.402626, 36.855953, 22.302727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782646, 36.759045, 22.224031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062317, -0.764945, 0.641074,
		-0.305809, -0.596793, -0.741835,
		0.950051, -0.242275, -0.196737,
		34.067661, 36.686363, 22.165010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509186, 36.136410, 22.200020>,  <33.402626, 36.855953, 22.302727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509186, 36.136410, 22.200020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882332, 36.241417, 22.298683>,  <34.106220, 36.304420, 22.357882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882332, 36.241417, 22.298683>,  <33.509186, 36.136410, 22.200020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882332, 36.241417, 22.298683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104390, -0.852381, 0.512396,
		0.344760, -0.452249, -0.822564,
		0.932868, 0.262521, 0.246656,
		34.162193, 36.320175, 22.372681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856335, 35.538128, 22.202419>,  <33.509186, 36.136410, 22.200020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856335, 35.538128, 22.202419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.117931, 35.764584, 22.403128>,  <34.274891, 35.900459, 22.523554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.117931, 35.764584, 22.403128>,  <33.856335, 35.538128, 22.202419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117931, 35.764584, 22.403128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316598, -0.807229, 0.498143,
		0.687065, -0.166922, -0.707162,
		0.653993, 0.566143, 0.501772,
		34.314129, 35.934425, 22.553659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368076, 35.101894, 22.227491>,  <33.856335, 35.538128, 22.202419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368076, 35.101894, 22.227491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.449661, 35.347355, 22.532602>,  <34.498611, 35.494633, 22.715668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.449661, 35.347355, 22.532602>,  <34.368076, 35.101894, 22.227491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449661, 35.347355, 22.532602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436046, -0.754545, 0.490434,
		0.876506, 0.232574, -0.421482,
		0.203965, 0.613654, 0.762776,
		34.510849, 35.531452, 22.761435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080479, 34.884541, 22.538113>,  <34.368076, 35.101894, 22.227491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080479, 34.884541, 22.538113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876774, 35.092911, 22.812130>,  <34.754551, 35.217934, 22.976540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876774, 35.092911, 22.812130>,  <35.080479, 34.884541, 22.538113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876774, 35.092911, 22.812130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130529, -0.740034, 0.659782,
		0.850655, 0.425420, 0.308875,
		-0.509263, 0.520930, 0.685043,
		34.723995, 35.249191, 23.017643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519844, 34.722942, 23.216072>,  <35.080479, 34.884541, 22.538113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519844, 34.722942, 23.216072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148304, 34.842709, 23.303329>,  <34.925381, 34.914570, 23.355684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148304, 34.842709, 23.303329>,  <35.519844, 34.722942, 23.216072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148304, 34.842709, 23.303329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044572, -0.674899, 0.736563,
		0.367763, 0.674434, 0.640226,
		-0.928851, 0.299417, 0.218142,
		34.869648, 34.932533, 23.368773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536484, 34.760784, 23.895599>,  <35.519844, 34.722942, 23.216072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536484, 34.760784, 23.895599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142811, 34.755211, 23.824947>,  <34.906609, 34.751869, 23.782557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142811, 34.755211, 23.824947>,  <35.536484, 34.760784, 23.895599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142811, 34.755211, 23.824947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140566, -0.545470, 0.826259,
		-0.107856, 0.838015, 0.534882,
		-0.984179, -0.013931, -0.176629,
		34.847557, 34.751030, 23.771959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286819, 34.852467, 24.591061>,  <35.536484, 34.760784, 23.895599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286819, 34.852467, 24.591061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990501, 34.706833, 24.365261>,  <34.812710, 34.619453, 24.229780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990501, 34.706833, 24.365261>,  <35.286819, 34.852467, 24.591061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990501, 34.706833, 24.365261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299223, -0.573532, 0.762579,
		-0.601400, 0.733830, 0.315931,
		-0.740799, -0.364081, -0.564501,
		34.768261, 34.597610, 24.195911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678165, 34.800232, 24.988316>,  <35.286819, 34.852467, 24.591061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678165, 34.800232, 24.988316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595585, 34.533386, 24.702003>,  <34.546036, 34.373280, 24.530216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595585, 34.533386, 24.702003>,  <34.678165, 34.800232, 24.988316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595585, 34.533386, 24.702003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296936, -0.654323, 0.695479,
		-0.932313, 0.356122, -0.063005,
		-0.206449, -0.667112, -0.715779,
		34.533649, 34.333252, 24.487270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011066, 34.477898, 25.098728>,  <34.678165, 34.800232, 24.988316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011066, 34.477898, 25.098728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.206871, 34.204445, 24.882202>,  <34.324352, 34.040371, 24.752287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.206871, 34.204445, 24.882202>,  <34.011066, 34.477898, 25.098728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206871, 34.204445, 24.882202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070819, -0.649892, 0.756720,
		-0.869117, -0.332087, -0.366543,
		0.489510, -0.683637, -0.541314,
		34.353725, 33.999355, 24.719809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856518, 33.878433, 25.404169>,  <34.011066, 34.477898, 25.098728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856518, 33.878433, 25.404169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.152802, 33.751755, 25.167170>,  <34.330570, 33.675747, 25.024969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.152802, 33.751755, 25.167170>,  <33.856518, 33.878433, 25.404169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152802, 33.751755, 25.167170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185428, -0.751292, 0.633385,
		-0.645732, -0.579018, -0.497762,
		0.740707, -0.316698, -0.592500,
		34.375015, 33.656746, 24.989420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668530, 33.198345, 25.234373>,  <33.856518, 33.878433, 25.404169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668530, 33.198345, 25.234373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062717, 33.250065, 25.190311>,  <34.299229, 33.281097, 25.163874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062717, 33.250065, 25.190311>,  <33.668530, 33.198345, 25.234373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062717, 33.250065, 25.190311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168771, -0.818530, 0.549112,
		-0.019168, -0.559724, -0.828457,
		0.985469, 0.129295, -0.110155,
		34.358356, 33.288853, 25.157265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002815, 32.580894, 25.211020>,  <33.668530, 33.198345, 25.234373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002815, 32.580894, 25.211020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342350, 32.769634, 25.306381>,  <34.546070, 32.882877, 25.363598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342350, 32.769634, 25.306381>,  <34.002815, 32.580894, 25.211020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342350, 32.769634, 25.306381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219620, -0.724946, 0.652855,
		0.480880, -0.501808, -0.718988,
		0.848835, 0.471849, 0.238405,
		34.597000, 32.911190, 25.377903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498837, 32.079189, 25.313282>,  <34.002815, 32.580894, 25.211020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498837, 32.079189, 25.313282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622150, 32.398438, 25.520344>,  <34.696140, 32.589985, 25.644581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622150, 32.398438, 25.520344>,  <34.498837, 32.079189, 25.313282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622150, 32.398438, 25.520344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159935, -0.579897, 0.798837,
		0.937753, -0.163479, -0.306421,
		0.308286, 0.798119, 0.517654,
		34.714638, 32.637875, 25.675640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.936676, 39.524715, 23.639631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.643700, 39.742027, 23.803766>,  <37.467915, 39.872414, 23.902246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.643700, 39.742027, 23.803766>,  <37.936676, 39.524715, 23.639631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643700, 39.742027, 23.803766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030056, 0.576310, -0.816678,
		-0.680167, -0.610501, -0.405784,
		-0.732441, 0.543281, 0.410337,
		37.423969, 39.905010, 23.926867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435406, 39.596607, 23.070662>,  <37.936676, 39.524715, 23.639631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435406, 39.596607, 23.070662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376633, 39.883892, 23.342716>,  <37.341370, 40.056263, 23.505949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376633, 39.883892, 23.342716>,  <37.435406, 39.596607, 23.070662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376633, 39.883892, 23.342716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001931, 0.687808, -0.725890,
		-0.989145, -0.105343, -0.102448,
		-0.146931, 0.718208, 0.680138,
		37.332554, 40.099354, 23.546759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913319, 39.890636, 22.882584>,  <37.435406, 39.596607, 23.070662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913319, 39.890636, 22.882584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.081364, 40.158787, 23.127239>,  <37.182190, 40.319675, 23.274033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.081364, 40.158787, 23.127239>,  <36.913319, 39.890636, 22.882584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081364, 40.158787, 23.127239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096284, 0.703127, -0.704515,
		-0.902350, 0.237084, 0.359938,
		0.420112, 0.670376, 0.611639,
		37.207397, 40.359898, 23.310732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488758, 40.493092, 22.818510>,  <36.913319, 39.890636, 22.882584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488758, 40.493092, 22.818510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822945, 40.655090, 22.967087>,  <37.023457, 40.752289, 23.056232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822945, 40.655090, 22.967087>,  <36.488758, 40.493092, 22.818510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822945, 40.655090, 22.967087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051811, 0.730957, -0.680454,
		-0.547091, 0.549253, 0.631675,
		0.835468, 0.404998, 0.371442,
		37.073586, 40.776588, 23.078520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306923, 41.119907, 23.052803>,  <36.488758, 40.493092, 22.818510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306923, 41.119907, 23.052803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.694790, 41.142353, 22.957640>,  <36.927509, 41.155819, 22.900541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.694790, 41.142353, 22.957640>,  <36.306923, 41.119907, 23.052803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694790, 41.142353, 22.957640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218708, 0.633807, -0.741927,
		0.109155, 0.771453, 0.626853,
		0.969666, 0.056113, -0.237906,
		36.985691, 41.159187, 22.886269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464260, 41.735992, 22.881912>,  <36.306923, 41.119907, 23.052803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464260, 41.735992, 22.881912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770542, 41.566223, 22.688599>,  <36.954311, 41.464363, 22.572611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770542, 41.566223, 22.688599>,  <36.464260, 41.735992, 22.881912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770542, 41.566223, 22.688599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051537, 0.708482, -0.703845,
		0.641128, 0.563842, 0.520613,
		0.765702, -0.424424, -0.483286,
		37.000252, 41.438896, 22.543613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648975, 42.339767, 22.367704>,  <36.464260, 41.735992, 22.881912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648975, 42.339767, 22.367704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.884190, 42.035175, 22.258619>,  <37.025318, 41.852421, 22.193169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.884190, 42.035175, 22.258619>,  <36.648975, 42.339767, 22.367704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884190, 42.035175, 22.258619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197030, 0.461866, -0.864789,
		0.784474, 0.454790, 0.421625,
		0.588031, -0.761476, -0.272715,
		37.060600, 41.806732, 22.176805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288857, 42.584541, 22.127485>,  <36.648975, 42.339767, 22.367704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288857, 42.584541, 22.127485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218334, 42.231579, 21.953003>,  <37.176022, 42.019802, 21.848312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218334, 42.231579, 21.953003>,  <37.288857, 42.584541, 22.127485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218334, 42.231579, 21.953003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208573, 0.399597, -0.892647,
		0.961985, -0.248357, 0.113597,
		-0.176302, -0.882406, -0.436207,
		37.165443, 41.966858, 21.822142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889709, 42.437954, 21.625423>,  <37.288857, 42.584541, 22.127485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889709, 42.437954, 21.625423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591183, 42.193687, 21.519518>,  <37.412067, 42.047127, 21.455975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591183, 42.193687, 21.519518>,  <37.889709, 42.437954, 21.625423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591183, 42.193687, 21.519518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063781, 0.330341, -0.941704,
		0.662526, -0.719697, -0.207591,
		-0.746318, -0.610664, -0.264763,
		37.367287, 42.010487, 21.440088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968674, 42.483295, 20.926250>,  <37.889709, 42.437954, 21.625423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968674, 42.483295, 20.926250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615353, 42.296593, 20.943760>,  <37.403362, 42.184570, 20.954266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615353, 42.296593, 20.943760>,  <37.968674, 42.483295, 20.926250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615353, 42.296593, 20.943760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258100, 0.406224, -0.876565,
		0.391350, -0.785576, -0.479288,
		-0.883306, -0.466747, 0.043781,
		37.350365, 42.156563, 20.956892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893742, 42.144917, 20.301254>,  <37.968674, 42.483295, 20.926250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893742, 42.144917, 20.301254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.529800, 42.205162, 20.455910>,  <37.311436, 42.241310, 20.548702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.529800, 42.205162, 20.455910>,  <37.893742, 42.144917, 20.301254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529800, 42.205162, 20.455910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194119, 0.669038, -0.717430,
		-0.366728, -0.727808, -0.579488,
		-0.909850, 0.150612, 0.386637,
		37.256844, 42.250347, 20.571901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299595, 42.089458, 19.711187>,  <37.893742, 42.144917, 20.301254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299595, 42.089458, 19.711187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155769, 42.300125, 20.019300>,  <37.069473, 42.426525, 20.204168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155769, 42.300125, 20.019300>,  <37.299595, 42.089458, 19.711187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155769, 42.300125, 20.019300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204035, 0.761139, -0.615659,
		-0.910539, -0.378535, -0.166222,
		-0.359566, 0.526667, 0.770282,
		37.047901, 42.458126, 20.250385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716789, 42.398510, 19.487394>,  <37.299595, 42.089458, 19.711187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716789, 42.398510, 19.487394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.837635, 42.637150, 19.784796>,  <36.910141, 42.780334, 19.963236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.837635, 42.637150, 19.784796>,  <36.716789, 42.398510, 19.487394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837635, 42.637150, 19.784796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167783, 0.801052, -0.574600,
		-0.938390, 0.048848, 0.342109,
		0.302115, 0.596599, 0.743503,
		36.928268, 42.816128, 20.007847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408524, 42.091042, 18.970709>,  <36.716789, 42.398510, 19.487394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408524, 42.091042, 18.970709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.047966, 41.923279, 18.927654>,  <35.831631, 41.822620, 18.901821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.047966, 41.923279, 18.927654>,  <36.408524, 42.091042, 18.970709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047966, 41.923279, 18.927654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298528, -0.782010, 0.547121,
		-0.313638, 0.461040, 0.830104,
		-0.901395, -0.419407, -0.107634,
		35.777546, 41.797455, 18.895365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949951, 41.886604, 19.567278>,  <36.408524, 42.091042, 18.970709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949951, 41.886604, 19.567278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775188, 41.657986, 19.289446>,  <35.670330, 41.520813, 19.122746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775188, 41.657986, 19.289446>,  <35.949951, 41.886604, 19.567278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775188, 41.657986, 19.289446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016530, -0.777152, 0.629096,
		-0.899355, 0.263374, 0.348990,
		-0.436906, -0.571550, -0.694582,
		35.644115, 41.486519, 19.081072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671368, 41.417221, 19.984913>,  <35.949951, 41.886604, 19.567278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671368, 41.417221, 19.984913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616199, 41.243431, 19.628889>,  <35.583099, 41.139156, 19.415276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616199, 41.243431, 19.628889>,  <35.671368, 41.417221, 19.984913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616199, 41.243431, 19.628889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178472, -0.873036, 0.453823,
		-0.974230, 0.221444, 0.042871,
		-0.137924, -0.434477, -0.890060,
		35.574821, 41.113087, 19.361872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020813, 40.991051, 20.011742>,  <35.671368, 41.417221, 19.984913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020813, 40.991051, 20.011742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.230843, 40.837040, 19.708151>,  <35.356861, 40.744633, 19.525995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.230843, 40.837040, 19.708151>,  <35.020813, 40.991051, 20.011742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230843, 40.837040, 19.708151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119134, -0.916280, 0.382410,
		-0.842676, -0.110374, -0.526987,
		0.525076, -0.385030, -0.758978,
		35.388367, 40.721531, 19.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600330, 40.422604, 19.975641>,  <35.020813, 40.991051, 20.011742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600330, 40.422604, 19.975641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917198, 40.341301, 19.745457>,  <35.107319, 40.292519, 19.607346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917198, 40.341301, 19.745457>,  <34.600330, 40.422604, 19.975641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917198, 40.341301, 19.745457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182499, -0.978660, 0.094437,
		-0.582374, 0.030210, -0.812359,
		0.792171, -0.203253, -0.575460,
		35.154850, 40.280327, 19.572819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332249, 40.004471, 19.441967>,  <34.600330, 40.422604, 19.975641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332249, 40.004471, 19.441967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720406, 39.925606, 19.497776>,  <34.953300, 39.878288, 19.531261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.720406, 39.925606, 19.497776>,  <34.332249, 40.004471, 19.441967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720406, 39.925606, 19.497776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237476, -0.884267, 0.402091,
		0.044099, -0.423319, -0.904907,
		0.970392, -0.197161, 0.139523,
		35.011524, 39.866459, 19.539633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351215, 39.298023, 19.248074>,  <34.332249, 40.004471, 19.441967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351215, 39.298023, 19.248074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.686836, 39.371773, 19.452812>,  <34.888210, 39.416023, 19.575655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.686836, 39.371773, 19.452812>,  <34.351215, 39.298023, 19.248074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686836, 39.371773, 19.452812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124032, -0.851218, 0.509945,
		0.529717, -0.491358, -0.691351,
		0.839056, 0.184377, 0.511849,
		34.938553, 39.427086, 19.606367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795139, 38.771961, 19.113420>,  <34.351215, 39.298023, 19.248074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795139, 38.771961, 19.113420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898697, 38.921425, 19.469702>,  <34.960831, 39.011105, 19.683470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898697, 38.921425, 19.469702>,  <34.795139, 38.771961, 19.113420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898697, 38.921425, 19.469702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135972, -0.898860, 0.416608,
		0.956287, -0.228968, -0.181902,
		0.258894, 0.373663, 0.890702,
		34.976364, 39.033524, 19.736912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125103, 38.223083, 19.483898>,  <34.795139, 38.771961, 19.113420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125103, 38.223083, 19.483898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026417, 38.471180, 19.781740>,  <34.967205, 38.620037, 19.960445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026417, 38.471180, 19.781740>,  <35.125103, 38.223083, 19.483898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026417, 38.471180, 19.781740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030182, -0.772901, 0.633808,
		0.968617, 0.133900, 0.209410,
		-0.246720, 0.620238, 0.744603,
		34.952400, 38.657249, 20.005121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438301, 37.914692, 19.995615>,  <35.125103, 38.223083, 19.483898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438301, 37.914692, 19.995615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175289, 38.145294, 20.189646>,  <35.017483, 38.283657, 20.306065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.175289, 38.145294, 20.189646>,  <35.438301, 37.914692, 19.995615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175289, 38.145294, 20.189646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178385, -0.744641, 0.643186,
		0.732009, 0.336382, 0.592461,
		-0.657527, 0.576504, 0.485078,
		34.978031, 38.318245, 20.335169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659657, 37.839592, 20.704683>,  <35.438301, 37.914692, 19.995615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659657, 37.839592, 20.704683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278515, 37.960754, 20.711884>,  <35.049831, 38.033451, 20.716204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278515, 37.960754, 20.711884>,  <35.659657, 37.839592, 20.704683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278515, 37.960754, 20.711884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198566, -0.667295, 0.717837,
		0.229450, 0.680416, 0.695979,
		-0.952851, 0.302905, 0.018003,
		34.992661, 38.051624, 20.717285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556698, 37.817047, 21.405039>,  <35.659657, 37.839592, 20.704683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556698, 37.817047, 21.405039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191338, 37.823811, 21.242355>,  <34.972122, 37.827869, 21.144745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191338, 37.823811, 21.242355>,  <35.556698, 37.817047, 21.405039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191338, 37.823811, 21.242355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324249, -0.634255, 0.701843,
		-0.246090, 0.772939, 0.584812,
		-0.913402, 0.016908, -0.406709,
		34.917316, 37.828884, 21.120342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028900, 37.943321, 21.992132>,  <35.556698, 37.817047, 21.405039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028900, 37.943321, 21.992132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813816, 37.786758, 21.693424>,  <34.684765, 37.692822, 21.514200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813816, 37.786758, 21.693424>,  <35.028900, 37.943321, 21.992132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813816, 37.786758, 21.693424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388431, -0.671118, 0.631444,
		-0.748321, 0.629605, 0.208836,
		-0.537714, -0.391405, -0.746770,
		34.652500, 37.669338, 21.469393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382671, 37.854923, 22.226854>,  <35.028900, 37.943321, 21.992132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382671, 37.854923, 22.226854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387047, 37.607265, 21.912773>,  <34.389671, 37.458672, 21.724323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387047, 37.607265, 21.912773>,  <34.382671, 37.854923, 22.226854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387047, 37.607265, 21.912773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311230, -0.748353, 0.585750,
		-0.950272, 0.237974, -0.200878,
		0.010935, -0.619141, -0.785204,
		34.390327, 37.421524, 21.677212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792488, 37.541004, 22.315535>,  <34.382671, 37.854923, 22.226854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792488, 37.541004, 22.315535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030914, 37.299263, 22.104074>,  <34.173969, 37.154221, 21.977200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030914, 37.299263, 22.104074>,  <33.792488, 37.541004, 22.315535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030914, 37.299263, 22.104074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338770, -0.786211, 0.516825,
		-0.727970, -0.128972, -0.673369,
		0.596066, -0.604350, -0.528646,
		34.209732, 37.117958, 21.945480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134422, 37.577068, 22.086990>,  <33.792488, 37.541004, 22.315535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134422, 37.577068, 22.086990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.804317, 37.765255, 22.211952>,  <32.606255, 37.878166, 22.286930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.804317, 37.765255, 22.211952>,  <33.134422, 37.577068, 22.086990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804317, 37.765255, 22.211952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117894, 0.684512, -0.719405,
		-0.552301, -0.556870, -0.620370,
		-0.825266, 0.470466, 0.312406,
		32.556736, 37.906395, 22.305674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806553, 37.709980, 21.451975>,  <33.134422, 37.577068, 22.086990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806553, 37.709980, 21.451975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.638786, 37.953831, 21.721029>,  <32.538128, 38.100143, 21.882462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.638786, 37.953831, 21.721029>,  <32.806553, 37.709980, 21.451975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638786, 37.953831, 21.721029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055337, 0.756749, -0.651359,
		-0.906106, -0.235969, -0.351127,
		-0.419416, 0.609631, 0.672637,
		32.512962, 38.136719, 21.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221649, 38.020626, 21.104254>,  <32.806553, 37.709980, 21.451975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221649, 38.020626, 21.104254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282719, 38.271156, 21.410042>,  <32.319359, 38.421474, 21.593513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282719, 38.271156, 21.410042>,  <32.221649, 38.020626, 21.104254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282719, 38.271156, 21.410042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138674, 0.779460, -0.610910,
		-0.978499, -0.012742, 0.205858,
		0.152673, 0.626322, 0.764468,
		32.328522, 38.459053, 21.639381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806559, 38.508392, 20.961782>,  <32.221649, 38.020626, 21.104254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806559, 38.508392, 20.961782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.048363, 38.679390, 21.230652>,  <32.193443, 38.781986, 21.391973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.048363, 38.679390, 21.230652>,  <31.806559, 38.508392, 20.961782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048363, 38.679390, 21.230652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120210, 0.883098, -0.453528,
		-0.787476, 0.193360, 0.585230,
		0.604509, 0.427492, 0.672175,
		32.229717, 38.807636, 21.432304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442417, 39.136082, 21.188972>,  <31.806559, 38.508392, 20.961782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442417, 39.136082, 21.188972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836464, 39.183319, 21.238934>,  <32.072891, 39.211662, 21.268911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836464, 39.183319, 21.238934>,  <31.442417, 39.136082, 21.188972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836464, 39.183319, 21.238934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026488, 0.822257, -0.568499,
		-0.169838, 0.556729, 0.813147,
		0.985116, 0.118091, 0.124904,
		32.132000, 39.218746, 21.276405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597897, 39.900139, 21.215572>,  <31.442417, 39.136082, 21.188972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597897, 39.900139, 21.215572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962698, 39.778732, 21.105209>,  <32.181580, 39.705887, 21.038992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.962698, 39.778732, 21.105209>,  <31.597897, 39.900139, 21.215572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962698, 39.778732, 21.105209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097044, 0.813216, -0.573814,
		0.398535, 0.496546, 0.771111,
		0.912005, -0.303517, -0.275908,
		32.236298, 39.687675, 21.022436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016346, 40.415527, 21.307434>,  <31.597897, 39.900139, 21.215572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016346, 40.415527, 21.307434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221760, 40.205246, 21.036165>,  <32.345009, 40.079079, 20.873404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221760, 40.205246, 21.036165>,  <32.016346, 40.415527, 21.307434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221760, 40.205246, 21.036165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210180, 0.843335, -0.494580,
		0.831930, 0.111445, 0.543574,
		0.513534, -0.525705, -0.678172,
		32.375820, 40.047535, 20.832714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325333, 40.565994, 22.069424>,  <32.016346, 40.415527, 21.307434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325333, 40.565994, 22.069424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297962, 40.838905, 22.360577>,  <32.281540, 41.002651, 22.535269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.297962, 40.838905, 22.360577>,  <32.325333, 40.565994, 22.069424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297962, 40.838905, 22.360577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477658, -0.662940, 0.576501,
		0.875877, -0.308233, 0.371257,
		-0.068425, 0.682278, 0.727884,
		32.277435, 41.043591, 22.578941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636028, 40.330082, 22.739950>,  <32.325333, 40.565994, 22.069424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636028, 40.330082, 22.739950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343052, 40.594223, 22.806225>,  <32.167267, 40.752708, 22.845989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343052, 40.594223, 22.806225>,  <32.636028, 40.330082, 22.739950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343052, 40.594223, 22.806225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352667, -0.576167, 0.737332,
		0.582366, 0.481623, 0.654897,
		-0.732445, 0.660357, 0.165687,
		32.123318, 40.792332, 22.855930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615597, 40.469025, 23.510872>,  <32.636028, 40.330082, 22.739950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615597, 40.469025, 23.510872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267136, 40.527088, 23.323248>,  <32.058060, 40.561928, 23.210674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267136, 40.527088, 23.323248>,  <32.615597, 40.469025, 23.510872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267136, 40.527088, 23.323248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472132, -0.509970, 0.719042,
		-0.134828, 0.847856, 0.512798,
		-0.871156, 0.145161, -0.469058,
		32.005791, 40.570637, 23.182529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140022, 40.600800, 24.066374>,  <32.615597, 40.469025, 23.510872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140022, 40.600800, 24.066374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884012, 40.514442, 23.771414>,  <31.730406, 40.462627, 23.594439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884012, 40.514442, 23.771414>,  <32.140022, 40.600800, 24.066374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884012, 40.514442, 23.771414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579153, -0.495127, 0.647634,
		-0.504925, 0.841570, 0.191860,
		-0.640025, -0.215890, -0.737401,
		31.692005, 40.449677, 23.550194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466614, 40.716099, 24.404966>,  <32.140022, 40.600800, 24.066374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466614, 40.716099, 24.404966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422768, 40.494400, 24.074924>,  <31.396460, 40.361382, 23.876900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422768, 40.494400, 24.074924>,  <31.466614, 40.716099, 24.404966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422768, 40.494400, 24.074924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597501, -0.626644, 0.500311,
		-0.794341, 0.547842, -0.262472,
		-0.109615, -0.554244, -0.825105,
		31.389883, 40.328125, 23.827393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749134, 40.692787, 24.308334>,  <31.466614, 40.716099, 24.404966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749134, 40.692787, 24.308334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.904266, 40.375172, 24.121109>,  <30.997345, 40.184601, 24.008774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.904266, 40.375172, 24.121109>,  <30.749134, 40.692787, 24.308334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904266, 40.375172, 24.121109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717237, -0.578929, 0.387830,
		-0.578929, 0.185301, -0.794043,
		-0.387830, 0.794043, 0.468064,
		31.020615, 40.136959, 23.980690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166761, 40.361298, 24.202356>,  <30.749134, 40.692787, 24.308334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166761, 40.361298, 24.202356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436136, 40.078949, 24.114517>,  <30.597761, 39.909538, 24.061813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436136, 40.078949, 24.114517>,  <30.166761, 40.361298, 24.202356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436136, 40.078949, 24.114517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574021, -0.686500, 0.446337,
		-0.465812, -0.174526, -0.867502,
		0.673438, -0.705874, -0.219598,
		30.638168, 39.867188, 24.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.466293, 44.894836, 22.264114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.401817, 44.537201, 22.096964>,  <36.363132, 44.322620, 21.996674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.401817, 44.537201, 22.096964>,  <36.466293, 44.894836, 22.264114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401817, 44.537201, 22.096964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155593, -0.395098, 0.905366,
		-0.974581, 0.210959, -0.075426,
		-0.161194, -0.894089, -0.417878,
		36.353458, 44.268974, 21.971600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766464, 44.614742, 22.470556>,  <36.466293, 44.894836, 22.264114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766464, 44.614742, 22.470556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081627, 44.375927, 22.410223>,  <36.270725, 44.232639, 22.374023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081627, 44.375927, 22.410223>,  <35.766464, 44.614742, 22.470556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081627, 44.375927, 22.410223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152911, -0.426960, 0.891248,
		-0.596505, -0.679158, -0.427698,
		0.787908, -0.597035, -0.150833,
		36.318001, 44.196815, 22.364973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584442, 43.968216, 22.697214>,  <35.766464, 44.614742, 22.470556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584442, 43.968216, 22.697214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981457, 43.997662, 22.736086>,  <36.219666, 44.015327, 22.759409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981457, 43.997662, 22.736086>,  <35.584442, 43.968216, 22.697214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981457, 43.997662, 22.736086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048569, -0.492360, 0.869035,
		0.111820, -0.867273, -0.485112,
		0.992541, 0.073614, 0.097179,
		36.279221, 44.019745, 22.765240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790718, 43.362278, 22.875185>,  <35.584442, 43.968216, 22.697214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790718, 43.362278, 22.875185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.116383, 43.571754, 22.975500>,  <36.311779, 43.697441, 23.035688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.116383, 43.571754, 22.975500>,  <35.790718, 43.362278, 22.875185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116383, 43.571754, 22.975500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035974, -0.476578, 0.878396,
		0.579526, -0.706132, -0.406849,
		0.814159, 0.523689, 0.250787,
		36.360630, 43.728863, 23.050735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266575, 42.902981, 23.159538>,  <35.790718, 43.362278, 22.875185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266575, 42.902981, 23.159538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.383270, 43.252556, 23.315033>,  <36.453285, 43.462303, 23.408331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.383270, 43.252556, 23.315033>,  <36.266575, 42.902981, 23.159538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383270, 43.252556, 23.315033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002440, -0.407097, 0.913382,
		0.956496, -0.265518, -0.120897,
		0.291736, 0.873940, 0.388739,
		36.470791, 43.514736, 23.431654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869698, 42.732544, 23.555391>,  <36.266575, 42.902981, 23.159538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869698, 42.732544, 23.555391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.689472, 43.060425, 23.696861>,  <36.581337, 43.257153, 23.781744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.689472, 43.060425, 23.696861>,  <36.869698, 42.732544, 23.555391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689472, 43.060425, 23.696861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007425, -0.399594, 0.916662,
		0.892714, 0.410388, 0.186128,
		-0.450563, 0.819699, 0.353676,
		36.554302, 43.306335, 23.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247105, 42.966473, 24.183468>,  <36.869698, 42.732544, 23.555391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247105, 42.966473, 24.183468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886444, 43.137695, 24.208103>,  <36.670048, 43.240429, 24.222883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886444, 43.137695, 24.208103>,  <37.247105, 42.966473, 24.183468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886444, 43.137695, 24.208103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073480, -0.291979, 0.953598,
		0.426175, 0.855287, 0.294717,
		-0.901651, 0.428056, 0.061587,
		36.615948, 43.266113, 24.226580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144318, 43.143208, 24.840033>,  <37.247105, 42.966473, 24.183468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144318, 43.143208, 24.840033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.764912, 43.156849, 24.714071>,  <36.537270, 43.165035, 24.638494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.764912, 43.156849, 24.714071>,  <37.144318, 43.143208, 24.840033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764912, 43.156849, 24.714071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291033, -0.486206, 0.823956,
		-0.125008, 0.873178, 0.471097,
		-0.948511, 0.034104, -0.314903,
		36.480358, 43.167080, 24.619600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819229, 43.374184, 25.386292>,  <37.144318, 43.143208, 24.840033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819229, 43.374184, 25.386292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.538841, 43.202442, 25.158506>,  <36.370609, 43.099396, 25.021835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.538841, 43.202442, 25.158506>,  <36.819229, 43.374184, 25.386292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538841, 43.202442, 25.158506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334566, -0.507199, 0.794238,
		-0.629844, 0.747263, 0.211885,
		-0.700973, -0.429357, -0.569465,
		36.328548, 43.073635, 24.987667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127022, 43.586323, 25.781487>,  <36.819229, 43.374184, 25.386292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127022, 43.586323, 25.781487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.065971, 43.287834, 25.522299>,  <36.029343, 43.108742, 25.366787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.065971, 43.287834, 25.522299>,  <36.127022, 43.586323, 25.781487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065971, 43.287834, 25.522299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260204, -0.602176, 0.754770,
		-0.953415, 0.283802, -0.102262,
		-0.152625, -0.746218, -0.647970,
		36.020184, 43.063969, 25.327908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544212, 43.177437, 26.082357>,  <36.127022, 43.586323, 25.781487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544212, 43.177437, 26.082357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.702045, 42.922298, 25.817797>,  <35.796745, 42.769215, 25.659060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.702045, 42.922298, 25.817797>,  <35.544212, 43.177437, 26.082357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702045, 42.922298, 25.817797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052475, -0.734278, 0.676817,
		-0.917359, -0.232355, -0.323207,
		0.394586, -0.637845, -0.661404,
		35.820423, 42.730946, 25.619375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179657, 42.665123, 26.104881>,  <35.544212, 43.177437, 26.082357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179657, 42.665123, 26.104881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506111, 42.488468, 25.955814>,  <35.701984, 42.382473, 25.866375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506111, 42.488468, 25.955814>,  <35.179657, 42.665123, 26.104881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506111, 42.488468, 25.955814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057621, -0.703883, 0.707974,
		-0.574983, -0.556328, -0.599911,
		0.816134, -0.441641, -0.372665,
		35.750950, 42.355976, 25.844015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534737, 42.428917, 25.796064>,  <35.179657, 42.665123, 26.104881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534737, 42.428917, 25.796064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.166954, 42.478954, 25.945171>,  <33.946285, 42.508976, 26.034636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.166954, 42.478954, 25.945171>,  <34.534737, 42.428917, 25.796064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166954, 42.478954, 25.945171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097270, 0.846213, -0.523891,
		-0.380977, -0.517953, -0.765886,
		-0.919453, 0.125093, 0.372769,
		33.891117, 42.516483, 26.057003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372368, 42.771881, 25.249899>,  <34.534737, 42.428917, 25.796064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372368, 42.771881, 25.249899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.095028, 42.813946, 25.535053>,  <33.928623, 42.839184, 25.706146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.095028, 42.813946, 25.535053>,  <34.372368, 42.771881, 25.249899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095028, 42.813946, 25.535053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355027, 0.811042, -0.464937,
		-0.627075, -0.575458, -0.525000,
		-0.693349, 0.105161, 0.712888,
		33.887024, 42.845493, 25.748920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686775, 42.717937, 24.975891>,  <34.372368, 42.771881, 25.249899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686775, 42.717937, 24.975891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.694939, 42.954990, 25.297976>,  <33.699837, 43.097221, 25.491226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.694939, 42.954990, 25.297976>,  <33.686775, 42.717937, 24.975891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694939, 42.954990, 25.297976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248638, 0.783086, -0.570048,
		-0.968381, -0.188571, 0.163336,
		0.020411, 0.592636, 0.805212,
		33.701061, 43.132782, 25.539539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063526, 43.023674, 24.933510>,  <33.686775, 42.717937, 24.975891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063526, 43.023674, 24.933510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.252865, 43.260056, 25.194803>,  <33.366467, 43.401886, 25.351580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.252865, 43.260056, 25.194803>,  <33.063526, 43.023674, 24.933510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252865, 43.260056, 25.194803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380819, 0.805975, -0.453190,
		-0.794306, -0.034249, 0.606552,
		0.473345, 0.590958, 0.653233,
		33.394867, 43.437344, 25.390774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600979, 43.575981, 25.001858>,  <33.063526, 43.023674, 24.933510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600979, 43.575981, 25.001858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952946, 43.719383, 25.126581>,  <33.164127, 43.805424, 25.201414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952946, 43.719383, 25.126581>,  <32.600979, 43.575981, 25.001858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952946, 43.719383, 25.126581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186160, 0.863922, -0.467957,
		-0.437140, 0.353717, 0.826917,
		0.879916, 0.358502, 0.311807,
		33.216919, 43.826935, 25.220123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514343, 44.275749, 25.363928>,  <32.600979, 43.575981, 25.001858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514343, 44.275749, 25.363928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.895771, 44.246502, 25.247068>,  <33.124630, 44.228954, 25.176952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.895771, 44.246502, 25.247068>,  <32.514343, 44.275749, 25.363928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895771, 44.246502, 25.247068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171028, 0.666994, -0.725168,
		0.247885, 0.741466, 0.623523,
		0.953573, -0.073119, -0.292150,
		33.181843, 44.224567, 25.159424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816738, 44.922810, 25.324177>,  <32.514343, 44.275749, 25.363928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816738, 44.922810, 25.324177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.049438, 44.711639, 25.076674>,  <33.189056, 44.584938, 24.928171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.049438, 44.711639, 25.076674>,  <32.816738, 44.922810, 25.324177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049438, 44.711639, 25.076674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150655, 0.677631, -0.719805,
		0.799295, 0.511964, 0.314675,
		0.581748, -0.527929, -0.618757,
		33.223961, 44.553261, 24.891047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225697, 45.449444, 24.947983>,  <32.816738, 44.922810, 25.324177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225697, 45.449444, 24.947983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.253338, 45.113506, 24.732620>,  <33.269920, 44.911942, 24.603403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.253338, 45.113506, 24.732620>,  <33.225697, 45.449444, 24.947983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253338, 45.113506, 24.732620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214106, 0.514636, -0.830246,
		0.974364, 0.172646, -0.144255,
		0.069100, -0.839847, -0.538407,
		33.274067, 44.861553, 24.571098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552544, 45.654793, 24.280235>,  <33.225697, 45.449444, 24.947983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552544, 45.654793, 24.280235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.429485, 45.287636, 24.179979>,  <33.355652, 45.067341, 24.119825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.429485, 45.287636, 24.179979>,  <33.552544, 45.654793, 24.280235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429485, 45.287636, 24.179979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216900, 0.324132, -0.920811,
		0.926450, -0.228919, -0.298809,
		-0.307644, -0.917897, -0.250639,
		33.337193, 45.012268, 24.104788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887489, 45.536232, 23.607801>,  <33.552544, 45.654793, 24.280235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887489, 45.536232, 23.607801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.583870, 45.280090, 23.654785>,  <33.401699, 45.126404, 23.682976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.583870, 45.280090, 23.654785>,  <33.887489, 45.536232, 23.607801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583870, 45.280090, 23.654785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289004, 0.169755, -0.942157,
		0.583376, -0.749085, -0.313917,
		-0.759045, -0.640355, 0.117457,
		33.356155, 45.087982, 23.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871582, 45.116886, 22.975653>,  <33.887489, 45.536232, 23.607801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871582, 45.116886, 22.975653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.505066, 45.052006, 23.122133>,  <33.285156, 45.013077, 23.210022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.505066, 45.052006, 23.122133>,  <33.871582, 45.116886, 22.975653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505066, 45.052006, 23.122133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397632, 0.258904, -0.880260,
		0.047964, -0.952188, -0.301725,
		-0.916290, -0.162197, 0.366202,
		33.230179, 45.003345, 23.231995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463345, 44.675156, 22.493671>,  <33.871582, 45.116886, 22.975653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463345, 44.675156, 22.493671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.201954, 44.880463, 22.716208>,  <33.045120, 45.003647, 22.849730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.201954, 44.880463, 22.716208>,  <33.463345, 44.675156, 22.493671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201954, 44.880463, 22.716208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576055, 0.139574, -0.805406,
		-0.491042, -0.846801, 0.204463,
		-0.653481, 0.513270, 0.556341,
		33.005909, 45.034443, 22.883110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946999, 44.300446, 22.185413>,  <33.463345, 44.675156, 22.493671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946999, 44.300446, 22.185413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056423, 44.327274, 22.569220>,  <34.122078, 44.343372, 22.799503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.056423, 44.327274, 22.569220>,  <33.946999, 44.300446, 22.185413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056423, 44.327274, 22.569220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870347, 0.441930, 0.217242,
		-0.409466, -0.894538, 0.179273,
		0.273558, 0.067076, 0.959514,
		34.138489, 44.347397, 22.857075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187946, 43.717896, 22.506897>,  <33.946999, 44.300446, 22.185413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187946, 43.717896, 22.506897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.852795, 43.841183, 22.326691>,  <33.651703, 43.915157, 22.218567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.852795, 43.841183, 22.326691>,  <34.187946, 43.717896, 22.506897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852795, 43.841183, 22.326691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476085, -0.816382, 0.326900,
		-0.267035, 0.488385, 0.830766,
		-0.837876, 0.308221, -0.450515,
		33.601433, 43.933651, 22.191536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617222, 43.673073, 22.964499>,  <34.187946, 43.717896, 22.506897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617222, 43.673073, 22.964499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.420044, 43.670357, 22.616484>,  <33.301739, 43.668728, 22.407675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.420044, 43.670357, 22.616484>,  <33.617222, 43.673073, 22.964499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420044, 43.670357, 22.616484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546112, -0.776040, 0.315474,
		-0.677326, 0.630647, 0.378832,
		-0.492942, -0.006794, -0.870036,
		33.272160, 43.668320, 22.355473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946423, 43.657528, 23.178305>,  <33.617222, 43.673073, 22.964499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946423, 43.657528, 23.178305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.985321, 43.524929, 22.802933>,  <33.008659, 43.445370, 22.577709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.985321, 43.524929, 22.802933>,  <32.946423, 43.657528, 23.178305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985321, 43.524929, 22.802933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519183, -0.821339, 0.236331,
		-0.849113, 0.464235, -0.251979,
		0.097247, -0.331494, -0.938432,
		33.014496, 43.425480, 22.521402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342468, 43.470211, 23.057524>,  <32.946423, 43.657528, 23.178305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342468, 43.470211, 23.057524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.565926, 43.289196, 22.779493>,  <32.700001, 43.180588, 22.612675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.565926, 43.289196, 22.779493>,  <32.342468, 43.470211, 23.057524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565926, 43.289196, 22.779493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500585, -0.852154, 0.152472,
		-0.661311, 0.262768, -0.702582,
		0.558643, -0.452534, -0.695076,
		32.733517, 43.153435, 22.570971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755096, 43.062618, 22.675896>,  <32.342468, 43.470211, 23.057524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755096, 43.062618, 22.675896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.107826, 42.896957, 22.585688>,  <32.319466, 42.797562, 22.531563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.107826, 42.896957, 22.585688>,  <31.755096, 43.062618, 22.675896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107826, 42.896957, 22.585688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418110, -0.907822, 0.032286,
		-0.218104, 0.065821, -0.973703,
		0.881825, -0.414157, -0.225520,
		32.372375, 42.772709, 22.518032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588133, 42.557564, 22.274603>,  <31.755096, 43.062618, 22.675896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588133, 42.557564, 22.274603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946434, 42.457787, 22.421793>,  <32.161415, 42.397919, 22.510107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946434, 42.457787, 22.421793>,  <31.588133, 42.557564, 22.274603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946434, 42.457787, 22.421793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218112, -0.967864, -0.125163,
		0.387372, 0.031855, -0.921373,
		0.895751, -0.249447, 0.367976,
		32.215160, 42.382954, 22.532187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926016, 42.126511, 21.727423>,  <31.588133, 42.557564, 22.274603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926016, 42.126511, 21.727423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.114845, 42.063923, 22.074448>,  <32.228142, 42.026371, 22.282663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.114845, 42.063923, 22.074448>,  <31.926016, 42.126511, 21.727423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114845, 42.063923, 22.074448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195928, -0.978131, -0.069798,
		0.859512, -0.137030, -0.492405,
		0.472072, -0.156468, 0.867563,
		32.256466, 42.016983, 22.334717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282822, 41.429771, 21.628756>,  <31.926016, 42.126511, 21.727423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282822, 41.429771, 21.628756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269501, 41.500187, 22.022284>,  <32.261509, 41.542439, 22.258400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269501, 41.500187, 22.022284>,  <32.282822, 41.429771, 21.628756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269501, 41.500187, 22.022284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228907, -0.959543, 0.163950,
		0.972878, -0.219743, 0.072254,
		-0.033304, 0.176042, 0.983819,
		32.259510, 41.553001, 22.317429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516933, 40.953529, 21.133133>,  <32.282822, 41.429771, 21.628756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516933, 40.953529, 21.133133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.570679, 40.652111, 20.875727>,  <32.602928, 40.471260, 20.721283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.570679, 40.652111, 20.875727>,  <32.516933, 40.953529, 21.133133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570679, 40.652111, 20.875727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400165, 0.635360, -0.660443,
		0.906539, -0.168769, 0.386915,
		0.134368, -0.753548, -0.643515,
		32.610989, 40.426048, 20.682673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186462, 41.018143, 20.794991>,  <32.516933, 40.953529, 21.133133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186462, 41.018143, 20.794991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945606, 40.819424, 20.544994>,  <32.801094, 40.700191, 20.394997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945606, 40.819424, 20.544994>,  <33.186462, 41.018143, 20.794991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945606, 40.819424, 20.544994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325303, 0.562225, -0.760316,
		0.729112, -0.661130, -0.176928,
		-0.602141, -0.496801, -0.624993,
		32.764965, 40.670383, 20.357496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685741, 40.934986, 20.252382>,  <33.186462, 41.018143, 20.794991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685741, 40.934986, 20.252382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.318516, 40.860744, 20.112268>,  <33.098179, 40.816200, 20.028200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.318516, 40.860744, 20.112268>,  <33.685741, 40.934986, 20.252382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318516, 40.860744, 20.112268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207694, 0.527437, -0.823817,
		0.337658, -0.829073, -0.445674,
		-0.918069, -0.185605, -0.350286,
		33.043095, 40.805061, 20.007183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795456, 40.778461, 19.596188>,  <33.685741, 40.934986, 20.252382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795456, 40.778461, 19.596188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.409714, 40.883980, 19.604565>,  <33.178268, 40.947292, 19.609591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.409714, 40.883980, 19.604565>,  <33.795456, 40.778461, 19.596188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409714, 40.883980, 19.604565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178868, 0.708118, -0.683062,
		-0.195021, -0.654966, -0.730059,
		-0.964351, 0.263796, 0.020945,
		33.120407, 40.963120, 19.610847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678535, 40.849888, 18.979525>,  <33.795456, 40.778461, 19.596188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678535, 40.849888, 18.979525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.381882, 41.051994, 19.156019>,  <33.203892, 41.173260, 19.261915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.381882, 41.051994, 19.156019>,  <33.678535, 40.849888, 18.979525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381882, 41.051994, 19.156019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041146, 0.690794, -0.721880,
		-0.669543, -0.517215, -0.533105,
		-0.741633, 0.505265, 0.441235,
		33.159393, 41.203575, 19.288389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128063, 40.961838, 18.462418>,  <33.678535, 40.849888, 18.979525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128063, 40.961838, 18.462418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.121975, 41.222347, 18.765894>,  <33.118320, 41.378651, 18.947981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.121975, 41.222347, 18.765894>,  <33.128063, 40.961838, 18.462418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121975, 41.222347, 18.765894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010199, 0.758640, -0.651431,
		-0.999832, -0.017654, -0.004905,
		-0.015222, 0.651271, 0.758692,
		33.117409, 41.417728, 18.993502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797367, 41.468880, 18.134665>,  <33.128063, 40.961838, 18.462418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797367, 41.468880, 18.134665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.921947, 41.642117, 18.472996>,  <32.996696, 41.746059, 18.675995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.921947, 41.642117, 18.472996>,  <32.797367, 41.468880, 18.134665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921947, 41.642117, 18.472996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230928, 0.828923, -0.509470,
		-0.921776, 0.354001, 0.158156,
		0.311452, 0.433094, 0.845829,
		33.015385, 41.772045, 18.726744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384380, 42.131016, 18.221567>,  <32.797367, 41.468880, 18.134665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384380, 42.131016, 18.221567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737797, 42.163322, 18.406103>,  <32.949844, 42.182705, 18.516825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737797, 42.163322, 18.406103>,  <32.384380, 42.131016, 18.221567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737797, 42.163322, 18.406103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205551, 0.818216, -0.536909,
		-0.420841, 0.569209, 0.706324,
		0.883539, 0.080767, 0.461340,
		33.002857, 42.187553, 18.544506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418514, 42.848686, 18.314259>,  <32.384380, 42.131016, 18.221567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418514, 42.848686, 18.314259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.794949, 42.731228, 18.381332>,  <33.020809, 42.660751, 18.421577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.794949, 42.731228, 18.381332>,  <32.418514, 42.848686, 18.314259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794949, 42.731228, 18.381332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332454, 0.712785, -0.617586,
		0.061830, 0.636952, 0.768420,
		0.941091, -0.293650, 0.167686,
		33.077274, 42.643131, 18.431639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.041595, 32.147251, 31.088938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354435, 32.094738, 30.845272>,  <33.542141, 32.063229, 30.699072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354435, 32.094738, 30.845272>,  <33.041595, 32.147251, 31.088938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354435, 32.094738, 30.845272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353989, 0.710912, -0.607698,
		0.512843, 0.690919, 0.509532,
		0.782102, -0.131285, -0.609164,
		33.589066, 32.055351, 30.662523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475605, 32.778027, 31.133451>,  <33.041595, 32.147251, 31.088938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475605, 32.778027, 31.133451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557125, 32.612984, 30.778324>,  <33.606037, 32.513958, 30.565247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557125, 32.612984, 30.778324>,  <33.475605, 32.778027, 31.133451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557125, 32.612984, 30.778324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252122, 0.854147, -0.454828,
		0.945992, 0.316531, 0.070045,
		0.203796, -0.412604, -0.887821,
		33.618263, 32.489204, 30.511978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673466, 33.359669, 30.749990>,  <33.475605, 32.778027, 31.133451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673466, 33.359669, 30.749990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618839, 33.067001, 30.482853>,  <33.586063, 32.891403, 30.322571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618839, 33.067001, 30.482853>,  <33.673466, 33.359669, 30.749990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618839, 33.067001, 30.482853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170895, 0.681452, -0.711630,
		0.975779, 0.016944, -0.218103,
		-0.136569, -0.731666, -0.667842,
		33.577869, 32.847500, 30.282501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851177, 33.684029, 30.173233>,  <33.673466, 33.359669, 30.749990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851177, 33.684029, 30.173233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.686264, 33.359226, 30.007986>,  <33.587318, 33.164345, 29.908838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.686264, 33.359226, 30.007986>,  <33.851177, 33.684029, 30.173233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686264, 33.359226, 30.007986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349699, 0.559761, -0.751251,
		0.841271, -0.165258, -0.514737,
		-0.412280, -0.812009, -0.413120,
		33.562580, 33.115623, 29.884050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118893, 33.654690, 29.494364>,  <33.851177, 33.684029, 30.173233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118893, 33.654690, 29.494364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764107, 33.470165, 29.503252>,  <33.551235, 33.359451, 29.508585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764107, 33.470165, 29.503252>,  <34.118893, 33.654690, 29.494364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764107, 33.470165, 29.503252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310261, 0.559521, -0.768554,
		0.342109, -0.688571, -0.639399,
		-0.886961, -0.461309, 0.022220,
		33.498020, 33.331772, 29.509918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929070, 33.673214, 28.747715>,  <34.118893, 33.654690, 29.494364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929070, 33.673214, 28.747715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600315, 33.603546, 28.964666>,  <33.403065, 33.561745, 29.094837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600315, 33.603546, 28.964666>,  <33.929070, 33.673214, 28.747715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600315, 33.603546, 28.964666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546771, 0.508352, -0.665297,
		-0.159842, -0.843352, -0.513038,
		-0.821884, -0.174172, 0.542376,
		33.353748, 33.551296, 29.127378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422806, 33.420197, 28.256912>,  <33.929070, 33.673214, 28.747715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422806, 33.420197, 28.256912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230988, 33.575043, 28.571918>,  <33.115898, 33.667950, 28.760921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230988, 33.575043, 28.571918>,  <33.422806, 33.420197, 28.256912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230988, 33.575043, 28.571918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546929, 0.569950, -0.613209,
		-0.686225, -0.724777, -0.061595,
		-0.479546, 0.387112, 0.787515,
		33.087124, 33.691177, 28.808172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781010, 33.270264, 28.197638>,  <33.422806, 33.420197, 28.256912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781010, 33.270264, 28.197638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765308, 33.579498, 28.450869>,  <32.755890, 33.765041, 28.602808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765308, 33.579498, 28.450869>,  <32.781010, 33.270264, 28.197638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765308, 33.579498, 28.450869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521986, 0.524385, -0.672720,
		-0.852051, -0.356863, 0.382960,
		-0.039251, 0.773091, 0.633080,
		32.753532, 33.811424, 28.640793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075169, 33.452003, 28.331335>,  <32.781010, 33.270264, 28.197638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075169, 33.452003, 28.331335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277081, 33.789021, 28.406511>,  <32.398228, 33.991230, 28.451616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277081, 33.789021, 28.406511>,  <32.075169, 33.452003, 28.331335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277081, 33.789021, 28.406511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584952, 0.493950, -0.643308,
		-0.634848, 0.214791, 0.742181,
		0.504777, 0.842543, 0.187941,
		32.428513, 34.041782, 28.462894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553322, 33.953495, 28.144125>,  <32.075169, 33.452003, 28.331335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553322, 33.953495, 28.144125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867979, 34.188225, 28.220884>,  <32.056774, 34.329063, 28.266941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.867979, 34.188225, 28.220884>,  <31.553322, 33.953495, 28.144125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867979, 34.188225, 28.220884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258057, 0.594869, -0.761274,
		-0.560893, 0.549329, 0.619384,
		0.786642, 0.586829, 0.191899,
		32.103973, 34.364273, 28.278454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396847, 34.746445, 28.204620>,  <31.553322, 33.953495, 28.144125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396847, 34.746445, 28.204620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777792, 34.725346, 28.084473>,  <32.006359, 34.712685, 28.012383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.777792, 34.725346, 28.084473>,  <31.396847, 34.746445, 28.204620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777792, 34.725346, 28.084473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226679, 0.536446, -0.812922,
		0.204015, 0.842285, 0.498933,
		0.952363, -0.052751, -0.300372,
		32.063499, 34.709522, 27.994362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573038, 35.447769, 27.944424>,  <31.396847, 34.746445, 28.204620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573038, 35.447769, 27.944424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872978, 35.232925, 27.789896>,  <32.052940, 35.104019, 27.697180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872978, 35.232925, 27.789896>,  <31.573038, 35.447769, 27.944424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872978, 35.232925, 27.789896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030725, 0.555005, -0.831279,
		0.660896, 0.635202, 0.399667,
		0.749848, -0.537110, -0.386317,
		32.097931, 35.071793, 27.674002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618004, 35.620255, 28.635618>,  <31.573038, 35.447769, 27.944424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618004, 35.620255, 28.635618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.456303, 35.949631, 28.794882>,  <31.359282, 36.147255, 28.890440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.456303, 35.949631, 28.794882>,  <31.618004, 35.620255, 28.635618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456303, 35.949631, 28.794882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190297, -0.501507, 0.843966,
		0.894631, 0.265410, 0.359434,
		-0.404255, 0.823437, 0.398157,
		31.335026, 36.196663, 28.914330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909481, 35.737858, 29.308010>,  <31.618004, 35.620255, 28.635618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909481, 35.737858, 29.308010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546686, 35.906261, 29.303404>,  <31.329010, 36.007301, 29.300640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546686, 35.906261, 29.303404>,  <31.909481, 35.737858, 29.308010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546686, 35.906261, 29.303404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177460, -0.357229, 0.917004,
		0.381950, 0.833752, 0.398713,
		-0.906985, 0.421006, -0.011514,
		31.274591, 36.032562, 29.299950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893160, 36.255207, 29.780567>,  <31.909481, 35.737858, 29.308010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893160, 36.255207, 29.780567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504267, 36.168510, 29.745275>,  <31.270931, 36.116493, 29.724100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504267, 36.168510, 29.745275>,  <31.893160, 36.255207, 29.780567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504267, 36.168510, 29.745275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043805, -0.201796, 0.978448,
		-0.229874, 0.955145, 0.186699,
		-0.972234, -0.216741, -0.088228,
		31.212597, 36.103489, 29.718807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549690, 36.634224, 30.312874>,  <31.893160, 36.255207, 29.780567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549690, 36.634224, 30.312874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.305038, 36.334682, 30.210800>,  <31.158247, 36.154957, 30.149555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.305038, 36.334682, 30.210800>,  <31.549690, 36.634224, 30.312874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305038, 36.334682, 30.210800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000976, -0.321840, 0.946794,
		-0.791142, 0.579337, 0.196116,
		-0.611631, -0.748857, -0.255186,
		31.121550, 36.110023, 30.134245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081625, 36.674675, 30.860222>,  <31.549690, 36.634224, 30.312874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081625, 36.674675, 30.860222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044760, 36.311836, 30.695942>,  <31.022640, 36.094131, 30.597374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.044760, 36.311836, 30.695942>,  <31.081625, 36.674675, 30.860222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044760, 36.311836, 30.695942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166613, -0.392591, 0.904495,
		-0.981706, 0.151788, -0.114953,
		-0.092162, -0.907101, -0.410698,
		31.017111, 36.039707, 30.572733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626627, 36.333046, 31.312866>,  <31.081625, 36.674675, 30.860222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626627, 36.333046, 31.312866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764170, 36.029057, 31.092251>,  <30.846695, 35.846661, 30.959881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764170, 36.029057, 31.092251>,  <30.626627, 36.333046, 31.312866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764170, 36.029057, 31.092251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094989, -0.612494, 0.784747,
		-0.934205, -0.217452, -0.282800,
		0.343858, -0.759977, -0.551540,
		30.867327, 35.801064, 30.926788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196232, 35.750675, 31.491655>,  <30.626627, 36.333046, 31.312866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196232, 35.750675, 31.491655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538370, 35.583687, 31.368948>,  <30.743652, 35.483494, 31.295324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.538370, 35.583687, 31.368948>,  <30.196232, 35.750675, 31.491655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538370, 35.583687, 31.368948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019718, -0.617953, 0.785968,
		-0.517682, -0.666226, -0.536795,
		0.855346, -0.417466, -0.306766,
		30.794973, 35.458447, 31.276918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118959, 35.071732, 31.498131>,  <30.196232, 35.750675, 31.491655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118959, 35.071732, 31.498131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.514549, 35.128296, 31.515718>,  <30.751904, 35.162235, 31.526272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.514549, 35.128296, 31.515718>,  <30.118959, 35.071732, 31.498131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514549, 35.128296, 31.515718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063183, -0.671442, 0.738359,
		0.133936, -0.727439, -0.672973,
		0.988974, 0.141413, 0.043969,
		30.811241, 35.170719, 31.528910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301275, 34.515991, 31.696283>,  <30.118959, 35.071732, 31.498131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301275, 34.515991, 31.696283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.647757, 34.698833, 31.777021>,  <30.855646, 34.808540, 31.825464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.647757, 34.698833, 31.777021>,  <30.301275, 34.515991, 31.696283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647757, 34.698833, 31.777021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140563, -0.610533, 0.779417,
		0.479512, -0.646763, -0.593099,
		0.866205, 0.457108, 0.201847,
		30.907618, 34.835964, 31.837576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799360, 33.998211, 31.771912>,  <30.301275, 34.515991, 31.696283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799360, 33.998211, 31.771912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972641, 34.314785, 31.944408>,  <31.076609, 34.504730, 32.047909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972641, 34.314785, 31.944408>,  <30.799360, 33.998211, 31.771912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972641, 34.314785, 31.944408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177971, -0.544164, 0.819885,
		0.883551, -0.278427, -0.376585,
		0.433202, 0.791432, 0.431244,
		31.102602, 34.552216, 32.073780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496464, 33.764214, 32.047276>,  <30.799360, 33.998211, 31.771912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496464, 33.764214, 32.047276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381859, 34.084591, 32.257572>,  <31.313095, 34.276817, 32.383751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381859, 34.084591, 32.257572>,  <31.496464, 33.764214, 32.047276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381859, 34.084591, 32.257572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199247, -0.486937, 0.850407,
		0.937129, 0.348405, -0.020071,
		-0.286513, 0.800941, 0.525742,
		31.295904, 34.324875, 32.415295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030251, 33.910931, 32.536034>,  <31.496464, 33.764214, 32.047276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030251, 33.910931, 32.536034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708151, 34.094185, 32.686604>,  <31.514893, 34.204136, 32.776947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708151, 34.094185, 32.686604>,  <32.030251, 33.910931, 32.536034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708151, 34.094185, 32.686604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190059, -0.401918, 0.895734,
		0.561656, 0.792828, 0.236571,
		-0.805245, 0.458132, 0.376424,
		31.466578, 34.231625, 32.799530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261383, 34.144741, 33.250034>,  <32.030251, 33.910931, 32.536034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261383, 34.144741, 33.250034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.865236, 34.191792, 33.279285>,  <31.627550, 34.220020, 33.296837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.865236, 34.191792, 33.279285>,  <32.261383, 34.144741, 33.250034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865236, 34.191792, 33.279285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032757, -0.314073, 0.948834,
		0.134571, 0.942084, 0.307193,
		-0.990362, 0.117623, 0.073125,
		31.568127, 34.227077, 33.301224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095005, 34.629356, 33.748116>,  <32.261383, 34.144741, 33.250034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095005, 34.629356, 33.748116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793774, 34.370304, 33.701729>,  <31.613035, 34.214874, 33.673897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793774, 34.370304, 33.701729>,  <32.095005, 34.629356, 33.748116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793774, 34.370304, 33.701729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118280, -0.306650, 0.944445,
		-0.647211, 0.697525, 0.307533,
		-0.753079, -0.647630, -0.115964,
		31.567850, 34.176014, 33.666939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164295, 35.314240, 34.096470>,  <32.095005, 34.629356, 33.748116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164295, 35.314240, 34.096470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473415, 35.515522, 34.251167>,  <32.658886, 35.636292, 34.343987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473415, 35.515522, 34.251167>,  <32.164295, 35.314240, 34.096470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473415, 35.515522, 34.251167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178408, 0.757050, -0.628526,
		-0.609058, 0.416727, 0.674824,
		0.772799, 0.503202, 0.386740,
		32.705254, 35.666481, 34.367188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967318, 35.908798, 33.917469>,  <32.164295, 35.314240, 34.096470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967318, 35.908798, 33.917469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339420, 35.948853, 34.058659>,  <32.562683, 35.972885, 34.143372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339420, 35.948853, 34.058659>,  <31.967318, 35.908798, 33.917469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339420, 35.948853, 34.058659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133121, 0.804361, -0.579035,
		-0.341902, 0.585641, 0.734934,
		0.930259, 0.100138, 0.352974,
		32.618500, 35.978893, 34.164551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080406, 36.673546, 34.180920>,  <31.967318, 35.908798, 33.917469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080406, 36.673546, 34.180920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369907, 36.448040, 34.021740>,  <32.543606, 36.312737, 33.926231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369907, 36.448040, 34.021740>,  <32.080406, 36.673546, 34.180920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369907, 36.448040, 34.021740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320916, 0.785503, -0.529148,
		0.610902, 0.255262, 0.749426,
		0.723748, -0.563761, -0.397948,
		32.587032, 36.278912, 33.902355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668148, 37.156410, 34.062199>,  <32.080406, 36.673546, 34.180920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668148, 37.156410, 34.062199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794834, 36.832554, 33.864540>,  <32.870846, 36.638241, 33.745945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794834, 36.832554, 33.864540>,  <32.668148, 37.156410, 34.062199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794834, 36.832554, 33.864540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290429, 0.578718, -0.762061,
		0.902963, 0.097842, 0.418431,
		0.316715, -0.809638, -0.494144,
		32.889847, 36.589664, 33.716297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314960, 37.204819, 33.998665>,  <32.668148, 37.156410, 34.062199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314960, 37.204819, 33.998665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216568, 36.956871, 33.700603>,  <33.157532, 36.808102, 33.521767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216568, 36.956871, 33.700603>,  <33.314960, 37.204819, 33.998665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216568, 36.956871, 33.700603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471848, 0.594951, -0.650687,
		0.846671, -0.511656, 0.146138,
		-0.245983, -0.619873, -0.745152,
		33.142773, 36.770908, 33.477058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832153, 37.345596, 33.567722>,  <33.314960, 37.204819, 33.998665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832153, 37.345596, 33.567722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548733, 37.156219, 33.358414>,  <33.378681, 37.042595, 33.232830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548733, 37.156219, 33.358414>,  <33.832153, 37.345596, 33.567722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548733, 37.156219, 33.358414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182309, 0.593541, -0.783883,
		0.681704, -0.650817, -0.334240,
		-0.708550, -0.473441, -0.523269,
		33.336166, 37.014187, 33.201431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999035, 37.403061, 32.913887>,  <33.832153, 37.345596, 33.567722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999035, 37.403061, 32.913887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614830, 37.299957, 32.871971>,  <33.384308, 37.238094, 32.846821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614830, 37.299957, 32.871971>,  <33.999035, 37.403061, 32.913887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614830, 37.299957, 32.871971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034782, 0.484882, -0.873888,
		0.276058, -0.835735, -0.474700,
		-0.960512, -0.257754, -0.104787,
		33.326675, 37.222630, 32.840534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853432, 37.196167, 32.183804>,  <33.999035, 37.403061, 32.913887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853432, 37.196167, 32.183804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479916, 37.284191, 32.296669>,  <33.255806, 37.337006, 32.364388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479916, 37.284191, 32.296669>,  <33.853432, 37.196167, 32.183804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479916, 37.284191, 32.296669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175138, 0.406555, -0.896683,
		-0.312042, -0.886727, -0.341093,
		-0.933786, 0.220065, 0.282162,
		33.199780, 37.350212, 32.381317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566956, 37.185516, 31.592907>,  <33.853432, 37.196167, 32.183804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566956, 37.185516, 31.592907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314941, 37.389351, 31.827299>,  <33.163731, 37.511654, 31.967934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314941, 37.389351, 31.827299>,  <33.566956, 37.185516, 31.592907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314941, 37.389351, 31.827299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267100, 0.566339, -0.779691,
		-0.729185, -0.647749, -0.220703,
		-0.630037, 0.509589, 0.585979,
		33.125931, 37.542229, 32.003094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975307, 37.321083, 31.224674>,  <33.566956, 37.185516, 31.592907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975307, 37.321083, 31.224674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911476, 37.600311, 31.503881>,  <32.873177, 37.767849, 31.671406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911476, 37.600311, 31.503881>,  <32.975307, 37.321083, 31.224674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911476, 37.600311, 31.503881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332044, 0.627928, -0.703884,
		-0.929667, -0.344101, 0.131584,
		-0.159582, 0.698070, 0.698021,
		32.863602, 37.809731, 31.713287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404377, 37.667450, 31.004824>,  <32.975307, 37.321083, 31.224674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404377, 37.667450, 31.004824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.585621, 37.912952, 31.263433>,  <32.694366, 38.060253, 31.418600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.585621, 37.912952, 31.263433>,  <32.404377, 37.667450, 31.004824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585621, 37.912952, 31.263433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081391, 0.750700, -0.655610,
		-0.887733, 0.244440, 0.390102,
		0.453107, 0.613758, 0.646526,
		32.721554, 38.097080, 31.457392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084641, 38.287430, 30.950014>,  <32.404377, 37.667450, 31.004824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084641, 38.287430, 30.950014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447933, 38.365383, 31.098145>,  <32.665909, 38.412155, 31.187023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447933, 38.365383, 31.098145>,  <32.084641, 38.287430, 30.950014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447933, 38.365383, 31.098145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071649, 0.799461, -0.596430,
		-0.412293, 0.568229, 0.712131,
		0.908230, 0.194881, 0.370325,
		32.720402, 38.423847, 31.209242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025185, 38.903309, 31.083683>,  <32.084641, 38.287430, 30.950014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025185, 38.903309, 31.083683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422600, 38.858807, 31.092674>,  <32.661049, 38.832104, 31.098068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422600, 38.858807, 31.092674>,  <32.025185, 38.903309, 31.083683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422600, 38.858807, 31.092674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102388, 0.793035, -0.600510,
		0.048986, 0.598930, 0.799302,
		0.993538, -0.111255, 0.022476,
		32.720661, 38.825432, 31.099417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355419, 39.630383, 31.102266>,  <32.025185, 38.903309, 31.083683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355419, 39.630383, 31.102266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636597, 39.376320, 30.974237>,  <32.805305, 39.223885, 30.897419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636597, 39.376320, 30.974237>,  <32.355419, 39.630383, 31.102266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636597, 39.376320, 30.974237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265435, 0.651780, -0.710442,
		0.659857, 0.414443, 0.626758,
		0.702946, -0.635153, -0.320074,
		32.847481, 39.185772, 30.878216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922928, 40.053020, 31.003353>,  <32.355419, 39.630383, 31.102266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922928, 40.053020, 31.003353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006947, 39.714268, 30.807936>,  <33.057358, 39.511017, 30.690685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006947, 39.714268, 30.807936>,  <32.922928, 40.053020, 31.003353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006947, 39.714268, 30.807936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411390, 0.529861, -0.741624,
		0.886927, -0.045207, 0.459693,
		0.210047, -0.846879, -0.488545,
		33.069962, 39.460205, 30.661371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601131, 40.044979, 30.714842>,  <32.922928, 40.053020, 31.003353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601131, 40.044979, 30.714842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394329, 39.782040, 30.495535>,  <33.270248, 39.624275, 30.363951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394329, 39.782040, 30.495535>,  <33.601131, 40.044979, 30.714842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394329, 39.782040, 30.495535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198326, 0.531092, -0.823777,
		0.832690, -0.534632, -0.144207,
		-0.517004, -0.657351, -0.548266,
		33.239227, 39.584835, 30.331055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949650, 39.848904, 30.169138>,  <33.601131, 40.044979, 30.714842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949650, 39.848904, 30.169138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607784, 39.712631, 30.012426>,  <33.402664, 39.630867, 29.918400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607784, 39.712631, 30.012426>,  <33.949650, 39.848904, 30.169138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607784, 39.712631, 30.012426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336758, 0.210569, -0.917744,
		0.395157, -0.916294, -0.065237,
		-0.854661, -0.340684, -0.391778,
		33.351387, 39.610428, 29.894894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199539, 39.461136, 29.530985>,  <33.949650, 39.848904, 30.169138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199539, 39.461136, 29.530985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812904, 39.555710, 29.491390>,  <33.580921, 39.612453, 29.467632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812904, 39.555710, 29.491390>,  <34.199539, 39.461136, 29.530985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812904, 39.555710, 29.491390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194192, 0.423425, -0.884873,
		-0.167302, -0.874534, -0.455193,
		-0.966592, 0.236436, -0.098988,
		33.522926, 39.626640, 29.461695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042313, 39.331993, 28.802979>,  <34.199539, 39.461136, 29.530985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042313, 39.331993, 28.802979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733349, 39.561752, 28.911381>,  <33.547970, 39.699608, 28.976421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733349, 39.561752, 28.911381>,  <34.042313, 39.331993, 28.802979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733349, 39.561752, 28.911381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111625, 0.542832, -0.832390,
		-0.625234, -0.612698, -0.483408,
		-0.772413, 0.574399, 0.271005,
		33.501625, 39.734074, 28.992682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549370, 39.323818, 28.250381>,  <34.042313, 39.331993, 28.802979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549370, 39.323818, 28.250381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491470, 39.662525, 28.455135>,  <33.456730, 39.865749, 28.577988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491470, 39.662525, 28.455135>,  <33.549370, 39.323818, 28.250381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491470, 39.662525, 28.455135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061395, 0.524024, -0.849488,
		-0.987562, -0.091535, -0.127840,
		-0.144749, 0.846770, 0.511886,
		33.448044, 39.916557, 28.608702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110729, 39.694981, 27.828049>,  <33.549370, 39.323818, 28.250381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110729, 39.694981, 27.828049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254055, 39.966640, 28.084290>,  <33.340050, 40.129635, 28.238033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254055, 39.966640, 28.084290>,  <33.110729, 39.694981, 27.828049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254055, 39.966640, 28.084290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068034, 0.703333, -0.707598,
		-0.931118, 0.209962, 0.298221,
		0.358318, 0.679146, 0.640601,
		33.361549, 40.170383, 28.276470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656399, 40.294376, 27.797541>,  <33.110729, 39.694981, 27.828049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656399, 40.294376, 27.797541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994507, 40.428947, 27.963594>,  <33.197372, 40.509689, 28.063227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994507, 40.428947, 27.963594>,  <32.656399, 40.294376, 27.797541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994507, 40.428947, 27.963594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031722, 0.807135, -0.589514,
		-0.533397, 0.485130, 0.692919,
		0.845270, 0.336426, 0.415134,
		33.248089, 40.529877, 28.088135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512943, 40.967793, 27.755543>,  <32.656399, 40.294376, 27.797541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512943, 40.967793, 27.755543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905502, 40.902782, 27.796417>,  <33.141037, 40.863777, 27.820942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905502, 40.902782, 27.796417>,  <32.512943, 40.967793, 27.755543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905502, 40.902782, 27.796417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191237, 0.780806, -0.594787,
		0.016882, 0.603264, 0.797363,
		0.981399, -0.162526, 0.102185,
		33.199921, 40.854023, 27.827072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816513, 41.638489, 27.880125>,  <32.512943, 40.967793, 27.755543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816513, 41.638489, 27.880125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132061, 41.423286, 27.761309>,  <33.321392, 41.294167, 27.690020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132061, 41.423286, 27.761309>,  <32.816513, 41.638489, 27.880125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132061, 41.423286, 27.761309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267396, 0.735677, -0.622318,
		0.553335, 0.411502, 0.724215,
		0.788873, -0.538002, -0.297041,
		33.368721, 41.261887, 27.672195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363354, 42.074581, 27.966913>,  <32.816513, 41.638489, 27.880125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363354, 42.074581, 27.966913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486115, 41.791031, 27.712887>,  <33.559772, 41.620899, 27.560471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486115, 41.791031, 27.712887>,  <33.363354, 42.074581, 27.966913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486115, 41.791031, 27.712887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319918, 0.705277, -0.632642,
		0.896361, -0.009010, 0.443233,
		0.306903, -0.708874, -0.635065,
		33.578186, 41.578369, 27.522367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843922, 42.432037, 27.647907>,  <33.363354, 42.074581, 27.966913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843922, 42.432037, 27.647907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801685, 42.117168, 27.404856>,  <33.776344, 41.928246, 27.259026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801685, 42.117168, 27.404856>,  <33.843922, 42.432037, 27.647907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801685, 42.117168, 27.404856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252101, 0.569890, -0.782093,
		0.961923, -0.235769, 0.138269,
		-0.105595, -0.787171, -0.607628,
		33.770008, 41.881016, 27.222567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466564, 42.452793, 27.126026>,  <33.843922, 42.432037, 27.647907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466564, 42.452793, 27.126026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159595, 42.251431, 26.967211>,  <33.975414, 42.130611, 26.871922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159595, 42.251431, 26.967211>,  <34.466564, 42.452793, 27.126026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159595, 42.251431, 26.967211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001162, 0.620362, -0.784314,
		0.641140, -0.601439, -0.476665,
		-0.767423, -0.503410, -0.397041,
		33.929367, 42.100410, 26.848099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698345, 42.227432, 26.498026>,  <34.466564, 42.452793, 27.126026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698345, 42.227432, 26.498026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298882, 42.242123, 26.483482>,  <34.059204, 42.250938, 26.474756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298882, 42.242123, 26.483482>,  <34.698345, 42.227432, 26.498026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298882, 42.242123, 26.483482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050168, 0.520070, -0.852649,
		-0.012406, -0.853333, -0.521218,
		-0.998664, 0.036726, -0.036358,
		33.999283, 42.253139, 26.472574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063717, 41.896843, 26.017733>,  <34.698345, 42.227432, 26.498026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063717, 41.896843, 26.017733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460789, 41.944057, 26.027903>,  <35.699032, 41.972385, 26.034004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460789, 41.944057, 26.027903>,  <35.063717, 41.896843, 26.017733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460789, 41.944057, 26.027903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071267, -0.742765, 0.665749,
		0.097464, -0.659066, -0.745743,
		0.992684, 0.118034, 0.025423,
		35.758595, 41.979469, 26.035530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414749, 41.303005, 26.034624>,  <35.063717, 41.896843, 26.017733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414749, 41.303005, 26.034624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702179, 41.522778, 26.205162>,  <35.874638, 41.654640, 26.307486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702179, 41.522778, 26.205162>,  <35.414749, 41.303005, 26.034624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702179, 41.522778, 26.205162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176449, -0.737031, 0.652419,
		0.672688, -0.393587, -0.626562,
		0.718579, 0.549431, 0.426344,
		35.917751, 41.687607, 26.333065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015621, 40.916519, 26.034153>,  <35.414749, 41.303005, 26.034624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015621, 40.916519, 26.034153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092445, 41.181576, 26.323709>,  <36.138538, 41.340611, 26.497444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092445, 41.181576, 26.323709>,  <36.015621, 40.916519, 26.034153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092445, 41.181576, 26.323709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319588, -0.739648, 0.592271,
		0.927888, 0.117596, -0.353829,
		0.192060, 0.662640, 0.723893,
		36.150063, 41.380367, 26.540876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674431, 40.740692, 26.197517>,  <36.015621, 40.916519, 26.034153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674431, 40.740692, 26.197517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591923, 40.959343, 26.522146>,  <36.542416, 41.090534, 26.716923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591923, 40.959343, 26.522146>,  <36.674431, 40.740692, 26.197517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591923, 40.959343, 26.522146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239942, -0.775830, 0.583538,
		0.948620, 0.315098, 0.028874,
		-0.206273, 0.546627, 0.811573,
		36.530041, 41.123333, 26.765617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162731, 40.574532, 26.647161>,  <36.674431, 40.740692, 26.197517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162731, 40.574532, 26.647161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879547, 40.726131, 26.885538>,  <36.709637, 40.817093, 27.028564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879547, 40.726131, 26.885538>,  <37.162731, 40.574532, 26.647161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879547, 40.726131, 26.885538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188676, -0.711647, 0.676727,
		0.680583, 0.591537, 0.432310,
		-0.707961, 0.379002, 0.595943,
		36.667160, 40.839832, 27.064322>
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
