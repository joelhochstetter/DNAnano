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
	<24.631258, 35.164715, 34.907459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330036, 34.971188, 35.085819>,  <24.149303, 34.855072, 35.192837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330036, 34.971188, 35.085819>,  <24.631258, 35.164715, 34.907459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330036, 34.971188, 35.085819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603740, -0.238721, 0.760599,
		-0.261548, 0.841980, 0.471872,
		-0.753054, -0.483821, 0.445900,
		24.104120, 34.826042, 35.219589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892170, 35.717110, 35.290455>,  <24.631258, 35.164715, 34.907459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892170, 35.717110, 35.290455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197746, 35.972771, 35.254955>,  <25.381092, 36.126167, 35.233658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197746, 35.972771, 35.254955>,  <24.892170, 35.717110, 35.290455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197746, 35.972771, 35.254955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523044, -0.532788, 0.665254,
		0.377918, -0.554632, -0.741324,
		0.763939, 0.639157, -0.088746,
		25.426928, 36.164516, 35.228333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532227, 35.445320, 34.990829>,  <24.892170, 35.717110, 35.290455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532227, 35.445320, 34.990829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591238, 35.738434, 35.256542>,  <25.626646, 35.914303, 35.415970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591238, 35.738434, 35.256542>,  <25.532227, 35.445320, 34.990829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591238, 35.738434, 35.256542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365431, -0.664489, 0.651855,
		0.919073, 0.146580, -0.365813,
		0.147530, 0.732782, 0.664279,
		25.635496, 35.958267, 35.455826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213787, 35.324364, 35.299622>,  <25.532227, 35.445320, 34.990829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213787, 35.324364, 35.299622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008505, 35.554974, 35.553940>,  <25.885336, 35.693340, 35.706532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008505, 35.554974, 35.553940>,  <26.213787, 35.324364, 35.299622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008505, 35.554974, 35.553940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213143, -0.631973, 0.745104,
		0.831377, 0.517909, 0.201451,
		-0.513208, 0.576524, 0.635797,
		25.854542, 35.727932, 35.744678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635571, 35.463520, 35.889694>,  <26.213787, 35.324364, 35.299622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635571, 35.463520, 35.889694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249504, 35.497383, 35.988724>,  <26.017864, 35.517700, 36.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249504, 35.497383, 35.988724>,  <26.635571, 35.463520, 35.889694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249504, 35.497383, 35.988724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173974, -0.499092, 0.848906,
		0.195428, 0.862404, 0.466977,
		-0.965164, 0.084658, 0.247572,
		25.959955, 35.522781, 36.062996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432152, 35.983231, 36.496811>,  <26.635571, 35.463520, 35.889694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432152, 35.983231, 36.496811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225782, 35.640717, 36.487011>,  <26.101961, 35.435207, 36.481133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225782, 35.640717, 36.487011>,  <26.432152, 35.983231, 36.496811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225782, 35.640717, 36.487011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271300, -0.190455, 0.943463,
		-0.812537, 0.480111, 0.330570,
		-0.515926, -0.856283, -0.024498,
		26.071005, 35.383831, 36.479660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944855, 35.934235, 37.054962>,  <26.432152, 35.983231, 36.496811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944855, 35.934235, 37.054962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096230, 35.578098, 36.953705>,  <26.187054, 35.364418, 36.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096230, 35.578098, 36.953705>,  <25.944855, 35.934235, 37.054962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096230, 35.578098, 36.953705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488853, -0.039988, 0.871450,
		-0.786008, -0.453540, 0.420111,
		0.378438, -0.890339, -0.253145,
		26.209761, 35.310997, 36.877762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761250, 35.533466, 37.620251>,  <25.944855, 35.934235, 37.054962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761250, 35.533466, 37.620251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064781, 35.360062, 37.425831>,  <26.246901, 35.256020, 37.309181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064781, 35.360062, 37.425831>,  <25.761250, 35.533466, 37.620251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064781, 35.360062, 37.425831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471212, -0.149733, 0.869218,
		-0.449596, -0.888620, 0.090655,
		0.758830, -0.433514, -0.486047,
		26.292431, 35.230007, 37.280018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903660, 34.928005, 37.936600>,  <25.761250, 35.533466, 37.620251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903660, 34.928005, 37.936600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245308, 34.939606, 37.728893>,  <26.450296, 34.946564, 37.604271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245308, 34.939606, 37.728893>,  <25.903660, 34.928005, 37.936600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245308, 34.939606, 37.728893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469716, -0.471618, 0.746286,
		-0.223253, -0.881326, -0.416440,
		0.854122, 0.028998, -0.519263,
		26.501545, 34.948303, 37.573112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134178, 34.260628, 38.019131>,  <25.903660, 34.928005, 37.936600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134178, 34.260628, 38.019131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454603, 34.479671, 37.922447>,  <26.646858, 34.611095, 37.864437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454603, 34.479671, 37.922447>,  <26.134178, 34.260628, 38.019131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454603, 34.479671, 37.922447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543965, -0.497469, 0.675741,
		0.249796, -0.672794, -0.696383,
		0.801064, 0.547606, -0.241711,
		26.694923, 34.643951, 37.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658405, 33.783039, 37.834747>,  <26.134178, 34.260628, 38.019131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658405, 33.783039, 37.834747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806877, 34.131866, 37.962318>,  <26.895960, 34.341164, 38.038860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806877, 34.131866, 37.962318>,  <26.658405, 33.783039, 37.834747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806877, 34.131866, 37.962318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412843, -0.462639, 0.784554,
		0.831736, -0.159544, -0.531752,
		0.371181, 0.872072, 0.318927,
		26.918232, 34.393490, 38.057995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275179, 33.683151, 38.014786>,  <26.658405, 33.783039, 37.834747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275179, 33.683151, 38.014786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196390, 34.017723, 38.219368>,  <27.149117, 34.218468, 38.342117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196390, 34.017723, 38.219368>,  <27.275179, 33.683151, 38.014786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196390, 34.017723, 38.219368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264495, -0.457001, 0.849230,
		0.944058, 0.302552, -0.131215,
		-0.196971, 0.836428, 0.511459,
		27.137299, 34.268650, 38.372807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487593, 33.698795, 38.858047>,  <27.275179, 33.683151, 38.014786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487593, 33.698795, 38.858047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711891, 33.941681, 38.632889>,  <27.846470, 34.087414, 38.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711891, 33.941681, 38.632889>,  <27.487593, 33.698795, 38.858047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711891, 33.941681, 38.632889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640642, 0.748868, 0.169630,
		0.524538, 0.265497, 0.808932,
		0.560747, 0.607214, -0.562899,
		27.880116, 34.123844, 38.464020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794664, 33.895969, 38.994431>,  <27.487593, 33.698795, 38.858047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794664, 33.895969, 38.994431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126139, 34.096718, 39.093548>,  <27.325024, 34.217167, 39.153019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126139, 34.096718, 39.093548>,  <26.794664, 33.895969, 38.994431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126139, 34.096718, 39.093548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122078, 0.594120, -0.795059,
		-0.546238, 0.628604, 0.553607,
		0.828686, 0.501875, 0.247792,
		27.374744, 34.247280, 39.167885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720270, 34.644287, 39.092907>,  <26.794664, 33.895969, 38.994431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720270, 34.644287, 39.092907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079031, 34.536579, 38.952587>,  <27.294289, 34.471954, 38.868397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079031, 34.536579, 38.952587>,  <26.720270, 34.644287, 39.092907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079031, 34.536579, 38.952587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143946, 0.572295, -0.807315,
		0.418142, 0.774580, 0.474534,
		0.896904, -0.269265, -0.350799,
		27.348103, 34.455799, 38.847347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148510, 35.212158, 39.011539>,  <26.720270, 34.644287, 39.092907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148510, 35.212158, 39.011539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291384, 34.927639, 38.769390>,  <27.377108, 34.756927, 38.624100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291384, 34.927639, 38.769390>,  <27.148510, 35.212158, 39.011539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291384, 34.927639, 38.769390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318176, 0.516708, -0.794844,
		0.878171, 0.476522, -0.041757,
		0.357184, -0.711295, -0.605376,
		27.398539, 34.714252, 38.587776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622948, 35.455643, 38.479321>,  <27.148510, 35.212158, 39.011539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622948, 35.455643, 38.479321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452295, 35.125870, 38.330566>,  <27.349903, 34.928005, 38.241314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452295, 35.125870, 38.330566>,  <27.622948, 35.455643, 38.479321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452295, 35.125870, 38.330566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349116, 0.529432, -0.773188,
		0.834328, -0.200036, -0.513695,
		-0.426632, -0.824431, -0.371884,
		27.324306, 34.878540, 38.219002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823648, 35.344772, 37.769581>,  <27.622948, 35.455643, 38.479321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823648, 35.344772, 37.769581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481163, 35.139908, 37.796673>,  <27.275671, 35.016987, 37.812927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481163, 35.139908, 37.796673>,  <27.823648, 35.344772, 37.769581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481163, 35.139908, 37.796673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298979, 0.384317, -0.873448,
		0.421327, -0.768103, -0.482184,
		-0.856210, -0.512170, 0.067723,
		27.224298, 34.986259, 37.816990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676727, 35.141289, 37.119804>,  <27.823648, 35.344772, 37.769581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676727, 35.141289, 37.119804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315712, 35.060738, 37.272053>,  <27.099102, 35.012409, 37.363403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315712, 35.060738, 37.272053>,  <27.676727, 35.141289, 37.119804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315712, 35.060738, 37.272053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413707, 0.160284, -0.896189,
		0.119461, -0.966311, -0.227973,
		-0.902538, -0.201374, 0.380622,
		27.044950, 35.000324, 37.386238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347897, 34.725040, 36.641441>,  <27.676727, 35.141289, 37.119804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347897, 34.725040, 36.641441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024731, 34.866028, 36.830349>,  <26.830832, 34.950619, 36.943695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024731, 34.866028, 36.830349>,  <27.347897, 34.725040, 36.641441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024731, 34.866028, 36.830349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432801, 0.189011, -0.881452,
		-0.399948, -0.916538, -0.000157,
		-0.807914, 0.352467, 0.472274,
		26.782356, 34.971767, 36.972031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652891, 34.479229, 36.263935>,  <27.347897, 34.725040, 36.641441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652891, 34.479229, 36.263935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589460, 34.821800, 36.460457>,  <26.551401, 35.027344, 36.578369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589460, 34.821800, 36.460457>,  <26.652891, 34.479229, 36.263935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589460, 34.821800, 36.460457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390714, 0.402554, -0.827824,
		-0.906750, -0.323236, 0.270783,
		-0.158578, 0.856428, 0.491308,
		26.541887, 35.078728, 36.607849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048485, 34.886276, 36.025921>,  <26.652891, 34.479229, 36.263935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048485, 34.886276, 36.025921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754961, 34.776230, 35.777458>,  <25.578846, 34.710201, 35.628380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754961, 34.776230, 35.777458>,  <26.048485, 34.886276, 36.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754961, 34.776230, 35.777458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677039, -0.371596, -0.635244,
		-0.056055, -0.886696, 0.458943,
		-0.733809, -0.275114, -0.621157,
		25.534819, 34.693695, 35.591110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447725, 34.719917, 36.456429>,  <26.048485, 34.886276, 36.025921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447725, 34.719917, 36.456429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438057, 35.007030, 36.734768>,  <25.432257, 35.179298, 36.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438057, 35.007030, 36.734768>,  <25.447725, 34.719917, 36.456429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438057, 35.007030, 36.734768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230277, 0.681327, -0.694814,
		-0.972825, 0.143444, -0.181757,
		-0.024169, 0.717786, 0.695844,
		25.430807, 35.222366, 36.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900351, 35.235630, 36.358540>,  <25.447725, 34.719917, 36.456429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900351, 35.235630, 36.358540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211409, 35.388443, 36.558270>,  <25.398043, 35.480133, 36.678108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211409, 35.388443, 36.558270>,  <24.900351, 35.235630, 36.358540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211409, 35.388443, 36.558270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169518, 0.637379, -0.751673,
		-0.605421, 0.669177, 0.430891,
		0.777643, 0.382035, 0.499320,
		25.444702, 35.503052, 36.708065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773312, 35.987045, 36.311005>,  <24.900351, 35.235630, 36.358540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773312, 35.987045, 36.311005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158073, 35.881950, 36.341213>,  <25.388931, 35.818893, 36.359337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158073, 35.881950, 36.341213>,  <24.773312, 35.987045, 36.311005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158073, 35.881950, 36.341213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242837, 0.694298, -0.677481,
		0.125567, 0.670013, 0.731653,
		0.961906, -0.262741, 0.075523,
		25.446646, 35.803127, 36.363869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221149, 36.506393, 36.604748>,  <24.773312, 35.987045, 36.311005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221149, 36.506393, 36.604748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418720, 36.275272, 36.344845>,  <25.537262, 36.136600, 36.188904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418720, 36.275272, 36.344845>,  <25.221149, 36.506393, 36.604748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418720, 36.275272, 36.344845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004807, 0.745445, -0.666549,
		0.869490, 0.332349, 0.365418,
		0.493926, -0.577802, -0.649755,
		25.566898, 36.101933, 36.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714565, 36.954601, 36.306187>,  <25.221149, 36.506393, 36.604748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714565, 36.954601, 36.306187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668066, 36.642399, 36.060490>,  <25.640167, 36.455078, 35.913071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668066, 36.642399, 36.060490>,  <25.714565, 36.954601, 36.306187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668066, 36.642399, 36.060490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134036, 0.625110, -0.768942,
		0.984135, -0.007057, -0.177283,
		-0.116247, -0.780505, -0.614246,
		25.633192, 36.408249, 35.876217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077356, 37.049225, 35.696735>,  <25.714565, 36.954601, 36.306187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077356, 37.049225, 35.696735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753649, 36.824257, 35.628887>,  <25.559425, 36.689278, 35.588177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753649, 36.824257, 35.628887>,  <26.077356, 37.049225, 35.696735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753649, 36.824257, 35.628887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305370, 0.649432, -0.696410,
		0.501832, -0.511784, -0.697310,
		-0.809267, -0.562418, -0.169622,
		25.510868, 36.655533, 35.577999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958153, 36.828033, 34.888847>,  <26.077356, 37.049225, 35.696735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958153, 36.828033, 34.888847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605072, 36.870949, 35.071854>,  <25.393223, 36.896698, 35.181660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605072, 36.870949, 35.071854>,  <25.958153, 36.828033, 34.888847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605072, 36.870949, 35.071854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254221, 0.709803, -0.656926,
		-0.395231, -0.696182, -0.599269,
		-0.882703, 0.107291, 0.457520,
		25.340261, 36.903137, 35.209110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433998, 36.860165, 34.295094>,  <25.958153, 36.828033, 34.888847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433998, 36.860165, 34.295094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267405, 37.053097, 34.603352>,  <25.167448, 37.168858, 34.788307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267405, 37.053097, 34.603352>,  <25.433998, 36.860165, 34.295094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267405, 37.053097, 34.603352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388451, 0.671983, -0.630511,
		-0.821977, -0.561958, -0.092509,
		-0.416485, 0.482330, 0.770647,
		25.142460, 37.197796, 34.834545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969536, 37.371044, 34.043285>,  <25.433998, 36.860165, 34.295094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969536, 37.371044, 34.043285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976894, 37.505493, 34.419941>,  <24.981310, 37.586163, 34.645935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976894, 37.505493, 34.419941>,  <24.969536, 37.371044, 34.043285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976894, 37.505493, 34.419941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282892, 0.905064, -0.317539,
		-0.958975, -0.260540, 0.111737,
		0.018398, 0.336121, 0.941639,
		24.982414, 37.606331, 34.702431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131413, 37.558960, 33.338638>,  <24.969536, 37.371044, 34.043285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131413, 37.558960, 33.338638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219484, 37.416645, 32.975334>,  <25.272327, 37.331257, 32.757351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219484, 37.416645, 32.975334>,  <25.131413, 37.558960, 33.338638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219484, 37.416645, 32.975334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718241, 0.689162, -0.095844,
		0.660039, -0.631248, 0.407277,
		0.220178, -0.355784, -0.908262,
		25.285538, 37.309910, 32.702854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792028, 37.431644, 33.360168>,  <25.131413, 37.558960, 33.338638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792028, 37.431644, 33.360168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647663, 37.517452, 32.997131>,  <25.561045, 37.568935, 32.779308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647663, 37.517452, 32.997131>,  <25.792028, 37.431644, 33.360168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647663, 37.517452, 32.997131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646486, 0.758959, -0.077692,
		0.672159, -0.614786, -0.412602,
		-0.360912, 0.214521, -0.907592,
		25.539389, 37.581810, 32.724854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380108, 37.718353, 33.104488>,  <25.792028, 37.431644, 33.360168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380108, 37.718353, 33.104488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081467, 37.807499, 32.853756>,  <25.902283, 37.860989, 32.703316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081467, 37.807499, 32.853756>,  <26.380108, 37.718353, 33.104488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081467, 37.807499, 32.853756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450303, 0.862862, -0.229557,
		0.489708, -0.453651, -0.744572,
		-0.746601, 0.222867, -0.626831,
		25.857487, 37.874359, 32.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625019, 37.800697, 32.369297>,  <26.380108, 37.718353, 33.104488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625019, 37.800697, 32.369297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304457, 38.033451, 32.424652>,  <26.112118, 38.173103, 32.457867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304457, 38.033451, 32.424652>,  <26.625019, 37.800697, 32.369297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304457, 38.033451, 32.424652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483337, 0.766334, -0.423222,
		-0.352321, -0.272285, -0.895394,
		-0.801408, 0.581887, 0.138390,
		26.064034, 38.208015, 32.466167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235428, 38.112457, 31.737017>,  <26.625019, 37.800697, 32.369297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235428, 38.112457, 31.737017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217403, 38.360756, 32.050102>,  <26.206589, 38.509735, 32.237953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217403, 38.360756, 32.050102>,  <26.235428, 38.112457, 31.737017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217403, 38.360756, 32.050102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451914, 0.711424, -0.538191,
		-0.890923, 0.329470, -0.312580,
		-0.045060, 0.620746, 0.782716,
		26.203886, 38.546978, 32.284916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860992, 38.778374, 31.668602>,  <26.235428, 38.112457, 31.737017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860992, 38.778374, 31.668602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171743, 38.828362, 31.915451>,  <26.358194, 38.858353, 32.063560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171743, 38.828362, 31.915451>,  <25.860992, 38.778374, 31.668602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171743, 38.828362, 31.915451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449556, 0.576153, -0.682603,
		-0.440861, 0.807732, 0.391422,
		0.776879, 0.124967, 0.617124,
		26.404808, 38.865852, 32.100590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991884, 39.468597, 31.594578>,  <25.860992, 38.778374, 31.668602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991884, 39.468597, 31.594578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317032, 39.265099, 31.708014>,  <26.512119, 39.142998, 31.776075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317032, 39.265099, 31.708014>,  <25.991884, 39.468597, 31.594578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317032, 39.265099, 31.708014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510611, 0.388192, -0.767192,
		0.280221, 0.768428, 0.575321,
		0.812867, -0.508749, 0.283588,
		26.560892, 39.112473, 31.793091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663794, 39.875099, 31.658680>,  <25.991884, 39.468597, 31.594578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663794, 39.875099, 31.658680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759983, 39.497440, 31.568563>,  <26.817696, 39.270844, 31.514494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759983, 39.497440, 31.568563>,  <26.663794, 39.875099, 31.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759983, 39.497440, 31.568563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550102, 0.323792, -0.769771,
		0.799726, 0.061174, 0.597240,
		0.240472, -0.944148, -0.225293,
		26.832125, 39.214195, 31.500975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350674, 39.940197, 31.388710>,  <26.663794, 39.875099, 31.658680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350674, 39.940197, 31.388710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268167, 39.564415, 31.279247>,  <27.218664, 39.338947, 31.213570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268167, 39.564415, 31.279247>,  <27.350674, 39.940197, 31.388710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268167, 39.564415, 31.279247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868907, -0.047250, -0.492716,
		0.449952, -0.339411, 0.826041,
		-0.206263, -0.939451, -0.273656,
		27.206289, 39.282581, 31.197151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644293, 40.053169, 30.617138>,  <27.350674, 39.940197, 31.388710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644293, 40.053169, 30.617138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816227, 39.695614, 30.668045>,  <27.919388, 39.481079, 30.698589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816227, 39.695614, 30.668045>,  <27.644293, 40.053169, 30.617138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816227, 39.695614, 30.668045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775429, -0.293257, 0.559204,
		-0.462548, -0.339051, -0.819203,
		0.429836, -0.893893, 0.127265,
		27.945177, 39.427444, 30.706224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153727, 39.446323, 30.538374>,  <27.644293, 40.053169, 30.617138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153727, 39.446323, 30.538374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460114, 39.357014, 30.779520>,  <27.643946, 39.303429, 30.924208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460114, 39.357014, 30.779520>,  <27.153727, 39.446323, 30.538374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460114, 39.357014, 30.779520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642630, -0.239686, 0.727720,
		-0.017986, -0.944827, -0.327076,
		0.765965, -0.223278, 0.602863,
		27.689903, 39.290031, 30.960379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238886, 38.669594, 30.808636>,  <27.153727, 39.446323, 30.538374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238886, 38.669594, 30.808636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370310, 38.932396, 31.080046>,  <27.449163, 39.090076, 31.242891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370310, 38.932396, 31.080046>,  <27.238886, 38.669594, 30.808636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370310, 38.932396, 31.080046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696550, -0.316625, 0.643868,
		0.637862, -0.684175, 0.353606,
		0.328558, 0.657003, 0.678525,
		27.468878, 39.129498, 31.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383959, 38.265579, 31.490139>,  <27.238886, 38.669594, 30.808636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383959, 38.265579, 31.490139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271776, 38.645531, 31.545382>,  <27.204466, 38.873501, 31.578527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271776, 38.645531, 31.545382>,  <27.383959, 38.265579, 31.490139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271776, 38.645531, 31.545382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467749, -0.260890, 0.844480,
		0.838185, 0.172242, 0.517474,
		-0.280459, 0.949878, 0.138108,
		27.187639, 38.930492, 31.586815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647430, 38.479012, 32.144390>,  <27.383959, 38.265579, 31.490139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647430, 38.479012, 32.144390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316053, 38.681427, 32.048382>,  <27.117228, 38.802876, 31.990776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316053, 38.681427, 32.048382>,  <27.647430, 38.479012, 32.144390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316053, 38.681427, 32.048382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367033, -0.166817, 0.915128,
		0.423047, 0.846228, 0.323930,
		-0.828443, 0.506035, -0.240022,
		27.067520, 38.833237, 31.976376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556419, 38.994324, 32.627590>,  <27.647430, 38.479012, 32.144390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556419, 38.994324, 32.627590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197493, 38.906132, 32.474640>,  <26.982136, 38.853214, 32.382870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197493, 38.906132, 32.474640>,  <27.556419, 38.994324, 32.627590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197493, 38.906132, 32.474640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367882, -0.105102, 0.923914,
		-0.243896, 0.969712, 0.013198,
		-0.897317, -0.220483, -0.382373,
		26.928297, 38.839985, 32.359928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506418, 39.218056, 33.306793>,  <27.556419, 38.994324, 32.627590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506418, 39.218056, 33.306793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732134, 39.158813, 33.631668>,  <27.867563, 39.123268, 33.826591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732134, 39.158813, 33.631668>,  <27.506418, 39.218056, 33.306793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732134, 39.158813, 33.631668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079360, -0.988953, -0.125198,
		0.821755, 0.006193, -0.569807,
		0.564287, -0.148102, 0.812186,
		27.901421, 39.114384, 33.875324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887627, 38.600754, 33.144962>,  <27.506418, 39.218056, 33.306793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887627, 38.600754, 33.144962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938881, 38.619209, 33.541237>,  <27.969633, 38.630283, 33.778999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938881, 38.619209, 33.541237>,  <27.887627, 38.600754, 33.144962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938881, 38.619209, 33.541237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015472, -0.998703, 0.048514,
		0.991636, -0.021544, -0.127254,
		0.128134, 0.046139, 0.990683,
		27.977322, 38.633053, 33.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436266, 38.139050, 33.279049>,  <27.887627, 38.600754, 33.144962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436266, 38.139050, 33.279049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197035, 38.192173, 33.595192>,  <28.053497, 38.224049, 33.784878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197035, 38.192173, 33.595192>,  <28.436266, 38.139050, 33.279049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197035, 38.192173, 33.595192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238084, -0.971096, -0.016984,
		0.765259, -0.198329, 0.612408,
		-0.598076, 0.132807, 0.790359,
		28.017612, 38.232014, 33.832298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349895, 37.434616, 33.439163>,  <28.436266, 38.139050, 33.279049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349895, 37.434616, 33.439163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052006, 37.640656, 33.608898>,  <27.873272, 37.764278, 33.710739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052006, 37.640656, 33.608898>,  <28.349895, 37.434616, 33.439163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052006, 37.640656, 33.608898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531993, -0.842105, 0.088560,
		0.402951, -0.159790, 0.901165,
		-0.744725, 0.515099, 0.424334,
		27.828588, 37.795185, 33.736198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032797, 37.092270, 34.049030>,  <28.349895, 37.434616, 33.439163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032797, 37.092270, 34.049030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180050, 36.737610, 34.160976>,  <28.268402, 36.524815, 34.228146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180050, 36.737610, 34.160976>,  <28.032797, 37.092270, 34.049030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180050, 36.737610, 34.160976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776087, 0.458792, 0.432665,
		-0.512024, 0.057922, 0.857016,
		0.368131, -0.886654, 0.279865,
		28.290489, 36.471615, 34.244934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302773, 37.194183, 34.735764>,  <28.032797, 37.092270, 34.049030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302773, 37.194183, 34.735764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460037, 36.854561, 34.594612>,  <28.554396, 36.650787, 34.509922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460037, 36.854561, 34.594612>,  <28.302773, 37.194183, 34.735764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460037, 36.854561, 34.594612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863559, 0.209194, 0.458807,
		-0.315735, -0.485116, 0.815459,
		0.393164, -0.849058, -0.352877,
		28.577986, 36.599842, 34.488750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571941, 36.780693, 35.215904>,  <28.302773, 37.194183, 34.735764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571941, 36.780693, 35.215904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753687, 36.723370, 34.864220>,  <28.862734, 36.688976, 34.653210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753687, 36.723370, 34.864220>,  <28.571941, 36.780693, 35.215904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753687, 36.723370, 34.864220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861729, 0.320857, 0.393031,
		0.225776, -0.936223, 0.269280,
		0.454365, -0.143309, -0.879213,
		28.889996, 36.680378, 34.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237955, 36.334858, 35.327576>,  <28.571941, 36.780693, 35.215904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237955, 36.334858, 35.327576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299839, 36.580971, 35.018383>,  <29.336969, 36.728638, 34.832867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299839, 36.580971, 35.018383>,  <29.237955, 36.334858, 35.327576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299839, 36.580971, 35.018383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842519, 0.326449, 0.428478,
		0.515972, -0.717538, -0.467881,
		0.154710, 0.615281, -0.772978,
		29.346252, 36.765556, 34.786491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965176, 36.280819, 35.144997>,  <29.237955, 36.334858, 35.327576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965176, 36.280819, 35.144997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846447, 36.648933, 35.043041>,  <29.775209, 36.869801, 34.981869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846447, 36.648933, 35.043041>,  <29.965176, 36.280819, 35.144997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846447, 36.648933, 35.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869089, 0.370943, 0.327240,
		0.395705, -0.124391, -0.909915,
		-0.296820, 0.920287, -0.254891,
		29.757401, 36.925018, 34.966576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356384, 36.596607, 34.549908>,  <29.965176, 36.280819, 35.144997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356384, 36.596607, 34.549908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228275, 36.842163, 34.838509>,  <30.151409, 36.989494, 35.011669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228275, 36.842163, 34.838509>,  <30.356384, 36.596607, 34.549908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228275, 36.842163, 34.838509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942704, 0.131391, 0.306669,
		0.093460, 0.778384, -0.620793,
		-0.320272, 0.613885, 0.721506,
		30.132195, 37.026329, 35.054962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769283, 37.340004, 34.563515>,  <30.356384, 36.596607, 34.549908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769283, 37.340004, 34.563515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646498, 37.174976, 34.906574>,  <30.572826, 37.075958, 35.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646498, 37.174976, 34.906574>,  <30.769283, 37.340004, 34.563515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646498, 37.174976, 34.906574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919169, 0.105151, 0.379567,
		-0.246780, 0.904837, 0.346943,
		-0.306964, -0.412569, 0.857648,
		30.554409, 37.051205, 35.163868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129526, 37.298450, 34.409420>,  <30.769283, 37.340004, 34.563515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129526, 37.298450, 34.409420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255638, 37.488491, 34.080818>,  <30.331306, 37.602516, 33.883656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255638, 37.488491, 34.080818>,  <30.129526, 37.298450, 34.409420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255638, 37.488491, 34.080818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923439, 0.353142, -0.150168,
		0.218764, 0.805957, 0.550069,
		0.315281, 0.475104, -0.821507,
		30.350222, 37.631023, 33.834366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807421, 37.906700, 34.430489>,  <30.129526, 37.298450, 34.409420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807421, 37.906700, 34.430489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925831, 37.841728, 34.053982>,  <29.996878, 37.802746, 33.828079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925831, 37.841728, 34.053982>,  <29.807421, 37.906700, 34.430489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925831, 37.841728, 34.053982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849973, 0.404800, -0.337168,
		0.435791, 0.899863, -0.018229,
		0.296026, -0.162429, -0.941268,
		30.014639, 37.792999, 33.771603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638647, 38.453690, 34.046085>,  <29.807421, 37.906700, 34.430489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638647, 38.453690, 34.046085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694273, 38.180885, 33.758888>,  <29.727648, 38.017200, 33.586571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694273, 38.180885, 33.758888>,  <29.638647, 38.453690, 34.046085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694273, 38.180885, 33.758888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807551, 0.341548, -0.480839,
		0.573170, 0.646685, -0.503264,
		0.139063, -0.682014, -0.717996,
		29.735992, 37.976280, 33.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813883, 38.875847, 34.520481>,  <29.638647, 38.453690, 34.046085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813883, 38.875847, 34.520481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524504, 39.150002, 34.487320>,  <29.350876, 39.314495, 34.467422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524504, 39.150002, 34.487320>,  <29.813883, 38.875847, 34.520481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524504, 39.150002, 34.487320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374505, -0.288728, 0.881125,
		0.579974, 0.668494, 0.465559,
		-0.723447, 0.685384, -0.082900,
		29.307470, 39.355618, 34.462448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099220, 39.311157, 35.086197>,  <29.813883, 38.875847, 34.520481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099220, 39.311157, 35.086197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206955, 38.934753, 35.004265>,  <30.271595, 38.708912, 34.955105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206955, 38.934753, 35.004265>,  <30.099220, 39.311157, 35.086197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206955, 38.934753, 35.004265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130355, 0.246353, -0.960374,
		0.954183, 0.231964, 0.189018,
		0.269337, -0.941012, -0.204828,
		30.287756, 38.652451, 34.942818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589912, 39.357670, 34.510536>,  <30.099220, 39.311157, 35.086197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589912, 39.357670, 34.510536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492407, 38.969822, 34.518715>,  <30.433905, 38.737114, 34.523621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492407, 38.969822, 34.518715>,  <30.589912, 39.357670, 34.510536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492407, 38.969822, 34.518715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104031, -0.047098, -0.993458,
		0.964239, -0.240041, 0.112351,
		-0.243762, -0.969620, 0.020442,
		30.419279, 38.678936, 34.524849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056437, 38.733746, 34.288887>,  <30.589912, 39.357670, 34.510536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056437, 38.733746, 34.288887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690697, 38.585884, 34.222763>,  <30.471252, 38.497169, 34.183090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690697, 38.585884, 34.222763>,  <31.056437, 38.733746, 34.288887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690697, 38.585884, 34.222763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295668, -0.330519, -0.896291,
		0.276676, -0.868398, 0.411502,
		-0.914347, -0.369650, -0.165311,
		30.416393, 38.474991, 34.173168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111515, 38.046581, 34.303432>,  <31.056437, 38.733746, 34.288887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111515, 38.046581, 34.303432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789967, 38.151062, 34.089680>,  <30.597036, 38.213749, 33.961430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789967, 38.151062, 34.089680>,  <31.111515, 38.046581, 34.303432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789967, 38.151062, 34.089680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447701, -0.325783, -0.832724,
		-0.391600, -0.908647, 0.144948,
		-0.803874, 0.261201, -0.534379,
		30.548805, 38.229424, 33.929367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906181, 37.609325, 33.825287>,  <31.111515, 38.046581, 34.303432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906181, 37.609325, 33.825287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742903, 37.929638, 33.649960>,  <30.644936, 38.121826, 33.544765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742903, 37.929638, 33.649960>,  <30.906181, 37.609325, 33.825287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742903, 37.929638, 33.649960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460243, -0.234131, -0.856364,
		-0.788386, -0.551296, -0.272985,
		-0.408196, 0.800784, -0.438316,
		30.620443, 38.169872, 33.518463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855396, 37.362106, 33.178776>,  <30.906181, 37.609325, 33.825287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855396, 37.362106, 33.178776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781240, 37.751148, 33.122684>,  <30.736746, 37.984573, 33.089027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781240, 37.751148, 33.122684>,  <30.855396, 37.362106, 33.178776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781240, 37.751148, 33.122684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467003, -0.038357, -0.883423,
		-0.864603, -0.229267, -0.447100,
		-0.185391, 0.972608, -0.140232,
		30.725624, 38.042931, 33.080616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527052, 37.387257, 32.589741>,  <30.855396, 37.362106, 33.178776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527052, 37.387257, 32.589741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699629, 37.744637, 32.639709>,  <30.803175, 37.959064, 32.669689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699629, 37.744637, 32.639709>,  <30.527052, 37.387257, 32.589741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699629, 37.744637, 32.639709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257510, 0.010743, -0.966216,
		-0.864607, 0.449035, -0.225438,
		0.431443, 0.893450, 0.124920,
		30.829062, 38.012672, 32.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347107, 37.876228, 32.063492>,  <30.527052, 37.387257, 32.589741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347107, 37.876228, 32.063492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684875, 38.027115, 32.215630>,  <30.887537, 38.117649, 32.306911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684875, 38.027115, 32.215630>,  <30.347107, 37.876228, 32.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684875, 38.027115, 32.215630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328169, 0.196901, -0.923870,
		-0.423390, 0.904951, 0.042475,
		0.844420, 0.377218, 0.380343,
		30.938202, 38.140282, 32.329731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415464, 38.464584, 31.755844>,  <30.347107, 37.876228, 32.063492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415464, 38.464584, 31.755844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784349, 38.378651, 31.884449>,  <31.005680, 38.327091, 31.961613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784349, 38.378651, 31.884449>,  <30.415464, 38.464584, 31.755844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784349, 38.378651, 31.884449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333619, 0.021673, -0.942459,
		0.195502, 0.976411, 0.091660,
		0.922213, -0.214832, 0.321512,
		31.061014, 38.314201, 31.980902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728165, 38.890526, 31.460379>,  <30.415464, 38.464584, 31.755844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728165, 38.890526, 31.460379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037094, 38.653625, 31.552248>,  <31.222452, 38.511486, 31.607370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037094, 38.653625, 31.552248>,  <30.728165, 38.890526, 31.460379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037094, 38.653625, 31.552248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275390, -0.013644, -0.961236,
		0.572430, 0.805635, 0.152563,
		0.772324, -0.592254, 0.229675,
		31.268791, 38.475948, 31.621151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357468, 39.324020, 31.243896>,  <30.728165, 38.890526, 31.460379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357468, 39.324020, 31.243896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452982, 38.936478, 31.270145>,  <31.510290, 38.703953, 31.285894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452982, 38.936478, 31.270145>,  <31.357468, 39.324020, 31.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452982, 38.936478, 31.270145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542581, 0.077069, -0.836460,
		0.805349, 0.235341, 0.544084,
		0.238785, -0.968853, 0.065624,
		31.524618, 38.645821, 31.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091301, 39.299686, 31.009459>,  <31.357468, 39.324020, 31.243896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091301, 39.299686, 31.009459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945223, 38.927574, 30.995600>,  <31.857576, 38.704308, 30.987284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945223, 38.927574, 30.995600>,  <32.091301, 39.299686, 31.009459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945223, 38.927574, 30.995600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652894, -0.229418, -0.721870,
		0.663597, -0.286246, 0.691161,
		-0.365197, -0.930285, -0.034647,
		31.835663, 38.648487, 30.985205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699017, 38.869465, 31.154383>,  <32.091301, 39.299686, 31.009459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699017, 38.869465, 31.154383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403378, 38.724316, 30.927380>,  <32.225994, 38.637226, 30.791178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403378, 38.724316, 30.927380>,  <32.699017, 38.869465, 31.154383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403378, 38.724316, 30.927380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642721, -0.127732, -0.755377,
		0.201616, -0.923043, 0.327630,
		-0.739095, -0.362871, -0.567506,
		32.181648, 38.615456, 30.757128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119614, 38.302040, 30.775669>,  <32.699017, 38.869465, 31.154383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119614, 38.302040, 30.775669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784870, 38.339081, 30.559858>,  <32.584023, 38.361305, 30.430372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784870, 38.339081, 30.559858>,  <33.119614, 38.302040, 30.775669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784870, 38.339081, 30.559858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540497, -0.016444, -0.841185,
		-0.086769, -0.995568, -0.036290,
		-0.836859, 0.092603, -0.539528,
		32.533813, 38.366859, 30.397999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234158, 37.869740, 30.268837>,  <33.119614, 38.302040, 30.775669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234158, 37.869740, 30.268837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941692, 38.099113, 30.121017>,  <32.766212, 38.236740, 30.032326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941692, 38.099113, 30.121017>,  <33.234158, 37.869740, 30.268837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941692, 38.099113, 30.121017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466584, 0.025158, -0.884119,
		-0.497690, -0.818863, -0.285952,
		-0.731166, 0.573438, -0.369548,
		32.722343, 38.271145, 30.010153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899509, 37.559921, 29.651365>,  <33.234158, 37.869740, 30.268837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899509, 37.559921, 29.651365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853432, 37.957012, 29.637354>,  <32.825787, 38.195267, 29.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853432, 37.957012, 29.637354>,  <32.899509, 37.559921, 29.651365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853432, 37.957012, 29.637354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434441, 0.018638, -0.900507,
		-0.893304, -0.118949, -0.433428,
		-0.115192, 0.992725, -0.035026,
		32.818874, 38.254829, 29.626846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763927, 37.611668, 29.041664>,  <32.899509, 37.559921, 29.651365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763927, 37.611668, 29.041664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845673, 37.993904, 29.126595>,  <32.894718, 38.223248, 29.177553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845673, 37.993904, 29.126595>,  <32.763927, 37.611668, 29.041664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845673, 37.993904, 29.126595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376954, 0.123357, -0.917981,
		-0.903406, 0.267638, -0.335005,
		0.204361, 0.955590, 0.212328,
		32.906982, 38.280582, 29.190292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539410, 38.028618, 28.408436>,  <32.763927, 37.611668, 29.041664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539410, 38.028618, 28.408436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790337, 38.250889, 28.626680>,  <32.940895, 38.384251, 28.757627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790337, 38.250889, 28.626680>,  <32.539410, 38.028618, 28.408436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790337, 38.250889, 28.626680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483916, 0.270787, -0.832166,
		-0.610161, 0.786064, -0.099031,
		0.627319, 0.555678, 0.545612,
		32.978531, 38.417591, 28.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390312, 38.578209, 28.144461>,  <32.539410, 38.028618, 28.408436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390312, 38.578209, 28.144461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747292, 38.567684, 28.324615>,  <32.961479, 38.561367, 28.432709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747292, 38.567684, 28.324615>,  <32.390312, 38.578209, 28.144461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747292, 38.567684, 28.324615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437574, 0.293580, -0.849906,
		-0.109860, 0.955572, 0.273518,
		0.892446, -0.026314, 0.450387,
		33.015026, 38.559792, 28.459732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532921, 39.279202, 28.022314>,  <32.390312, 38.578209, 28.144461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532921, 39.279202, 28.022314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866730, 39.067135, 28.082302>,  <33.067017, 38.939896, 28.118294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866730, 39.067135, 28.082302>,  <32.532921, 39.279202, 28.022314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866730, 39.067135, 28.082302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386624, 0.369560, -0.844954,
		0.392547, 0.763115, 0.513383,
		0.834523, -0.530170, 0.149969,
		33.117088, 38.908085, 28.127293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087055, 39.695839, 27.907381>,  <32.532921, 39.279202, 28.022314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087055, 39.695839, 27.907381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274494, 39.344517, 27.869453>,  <33.386959, 39.133724, 27.846697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274494, 39.344517, 27.869453>,  <33.087055, 39.695839, 27.907381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274494, 39.344517, 27.869453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533000, 0.366690, -0.762529,
		0.704503, 0.306783, 0.639968,
		0.468601, -0.878307, -0.094819,
		33.415073, 39.081024, 27.841007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842869, 39.868275, 27.855576>,  <33.087055, 39.695839, 27.907381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842869, 39.868275, 27.855576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828362, 39.492378, 27.719591>,  <33.819656, 39.266842, 27.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828362, 39.492378, 27.719591>,  <33.842869, 39.868275, 27.855576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828362, 39.492378, 27.719591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596691, 0.252526, -0.761702,
		0.801651, -0.230476, 0.551576,
		-0.036267, -0.939740, -0.339960,
		33.817482, 39.210457, 27.617603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453381, 39.825794, 27.470463>,  <33.842869, 39.868275, 27.855576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453381, 39.825794, 27.470463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229012, 39.531513, 27.318619>,  <34.094391, 39.354946, 27.227512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229012, 39.531513, 27.318619>,  <34.453381, 39.825794, 27.470463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229012, 39.531513, 27.318619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310071, 0.238460, -0.920322,
		0.767606, -0.633937, 0.094363,
		-0.560925, -0.735704, -0.379609,
		34.060734, 39.310802, 27.204737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886200, 39.436161, 26.959753>,  <34.453381, 39.825794, 27.470463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886200, 39.436161, 26.959753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513660, 39.324436, 26.866310>,  <34.290138, 39.257401, 26.810244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513660, 39.324436, 26.866310>,  <34.886200, 39.436161, 26.959753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513660, 39.324436, 26.866310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185274, 0.188792, -0.964381,
		0.313470, -0.941456, -0.124081,
		-0.931348, -0.279316, -0.233608,
		34.234257, 39.240643, 26.796228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846462, 39.000340, 26.269932>,  <34.886200, 39.436161, 26.959753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846462, 39.000340, 26.269932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468388, 39.130932, 26.272165>,  <34.241543, 39.209286, 26.273506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468388, 39.130932, 26.272165>,  <34.846462, 39.000340, 26.269932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468388, 39.130932, 26.272165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052210, 0.167988, -0.984405,
		-0.322326, -0.930157, -0.175826,
		-0.945188, 0.326479, 0.005584,
		34.184830, 39.228874, 26.273840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464138, 38.677094, 25.780680>,  <34.846462, 39.000340, 26.269932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464138, 38.677094, 25.780680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257301, 39.013954, 25.841877>,  <34.133202, 39.216068, 25.878595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257301, 39.013954, 25.841877>,  <34.464138, 38.677094, 25.780680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257301, 39.013954, 25.841877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153405, 0.267035, -0.951399,
		-0.842073, -0.468487, -0.267271,
		-0.517088, 0.842147, 0.152995,
		34.102177, 39.266598, 25.887775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118080, 38.772755, 25.201439>,  <34.464138, 38.677094, 25.780680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118080, 38.772755, 25.201439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061810, 39.142509, 25.343269>,  <34.028049, 39.364361, 25.428368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061810, 39.142509, 25.343269>,  <34.118080, 38.772755, 25.201439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061810, 39.142509, 25.343269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135668, 0.336761, -0.931765,
		-0.980717, -0.179178, 0.078037,
		-0.140672, 0.924385, 0.354576,
		34.019608, 39.419827, 25.449642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460247, 38.851646, 24.949249>,  <34.118080, 38.772755, 25.201439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460247, 38.851646, 24.949249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646297, 39.201683, 25.002728>,  <33.757927, 39.411705, 25.034815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646297, 39.201683, 25.002728>,  <33.460247, 38.851646, 24.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646297, 39.201683, 25.002728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125004, 0.214442, -0.968705,
		-0.876374, 0.433857, 0.209133,
		0.465126, 0.875090, 0.133697,
		33.785835, 39.464211, 25.042837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992798, 39.411545, 24.749964>,  <33.460247, 38.851646, 24.949249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992798, 39.411545, 24.749964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361107, 39.567577, 24.748884>,  <33.582092, 39.661198, 24.748236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361107, 39.567577, 24.748884>,  <32.992798, 39.411545, 24.749964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361107, 39.567577, 24.748884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113762, 0.261894, -0.958368,
		-0.373136, 0.882750, 0.285522,
		0.920776, 0.390083, -0.002701,
		33.637341, 39.684601, 24.748074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864849, 40.009697, 24.400805>,  <32.992798, 39.411545, 24.749964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864849, 40.009697, 24.400805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261059, 39.959057, 24.379478>,  <33.498783, 39.928673, 24.366682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261059, 39.959057, 24.379478>,  <32.864849, 40.009697, 24.400805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261059, 39.959057, 24.379478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005014, 0.354538, -0.935028,
		0.137275, 0.926431, 0.350543,
		0.990520, -0.126598, -0.053315,
		33.558216, 39.921078, 24.363483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154430, 40.676338, 24.099884>,  <32.864849, 40.009697, 24.400805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154430, 40.676338, 24.099884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420883, 40.386208, 24.030416>,  <33.580757, 40.212128, 23.988737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420883, 40.386208, 24.030416>,  <33.154430, 40.676338, 24.099884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420883, 40.386208, 24.030416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169890, 0.374296, -0.911614,
		0.726223, 0.577754, 0.372558,
		0.666136, -0.725329, -0.173668,
		33.620724, 40.168610, 23.978315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655987, 41.005062, 23.659702>,  <33.154430, 40.676338, 24.099884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655987, 41.005062, 23.659702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728760, 40.612026, 23.644636>,  <33.772423, 40.376205, 23.635597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728760, 40.612026, 23.644636>,  <33.655987, 41.005062, 23.659702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728760, 40.612026, 23.644636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465964, 0.119882, -0.876645,
		0.865896, 0.141943, 0.479662,
		0.181936, -0.982589, -0.037665,
		33.783340, 40.317249, 23.633337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366348, 40.961929, 23.539761>,  <33.655987, 41.005062, 23.659702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366348, 40.961929, 23.539761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236164, 40.602657, 23.421543>,  <34.158054, 40.387093, 23.350613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236164, 40.602657, 23.421543>,  <34.366348, 40.961929, 23.539761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236164, 40.602657, 23.421543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474691, 0.115117, -0.872592,
		0.817766, -0.424290, 0.388891,
		-0.325464, -0.898179, -0.295545,
		34.138523, 40.333202, 23.332880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876469, 40.652451, 23.255802>,  <34.366348, 40.961929, 23.539761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876469, 40.652451, 23.255802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587482, 40.429974, 23.091513>,  <34.414089, 40.296486, 22.992939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587482, 40.429974, 23.091513>,  <34.876469, 40.652451, 23.255802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587482, 40.429974, 23.091513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412877, 0.129440, -0.901542,
		0.554596, -0.820910, 0.136124,
		-0.722465, -0.556194, -0.410721,
		34.370743, 40.263115, 22.968296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117035, 40.159870, 22.809591>,  <34.876469, 40.652451, 23.255802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117035, 40.159870, 22.809591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743187, 40.202221, 22.673786>,  <34.518879, 40.227631, 22.592302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743187, 40.202221, 22.673786>,  <35.117035, 40.159870, 22.809591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743187, 40.202221, 22.673786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348670, 0.084692, -0.933411,
		-0.070076, -0.990766, -0.116072,
		-0.934622, 0.105880, -0.339515,
		34.462799, 40.233986, 22.571932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066044, 39.689926, 22.308119>,  <35.117035, 40.159870, 22.809591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066044, 39.689926, 22.308119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773624, 39.953484, 22.237206>,  <34.598171, 40.111618, 22.194658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773624, 39.953484, 22.237206>,  <35.066044, 39.689926, 22.308119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773624, 39.953484, 22.237206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379676, 0.176936, -0.908042,
		-0.566933, -0.731133, -0.379514,
		-0.731049, 0.658891, -0.177283,
		34.554310, 40.151150, 22.184021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748253, 39.492409, 21.681389>,  <35.066044, 39.689926, 22.308119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748253, 39.492409, 21.681389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688412, 39.884960, 21.729580>,  <34.652508, 40.120491, 21.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688412, 39.884960, 21.729580>,  <34.748253, 39.492409, 21.681389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688412, 39.884960, 21.729580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521402, 0.181832, -0.833713,
		-0.840096, -0.061905, -0.538895,
		-0.149599, 0.981379, 0.120479,
		34.643532, 40.179375, 21.765724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044178, 39.714626, 21.104404>,  <34.748253, 39.492409, 21.681389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044178, 39.714626, 21.104404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981758, 40.061478, 21.293608>,  <34.944305, 40.269588, 21.407129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981758, 40.061478, 21.293608>,  <35.044178, 39.714626, 21.104404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981758, 40.061478, 21.293608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572459, 0.469646, -0.672103,
		-0.804947, 0.165897, -0.569683,
		-0.156050, 0.867128, 0.473009,
		34.934944, 40.321617, 21.435511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871502, 40.204208, 20.640150>,  <35.044178, 39.714626, 21.104404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871502, 40.204208, 20.640150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980240, 40.431355, 20.950926>,  <35.045483, 40.567642, 21.137390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980240, 40.431355, 20.950926>,  <34.871502, 40.204208, 20.640150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980240, 40.431355, 20.950926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617192, 0.516557, -0.593501,
		-0.738359, 0.640859, -0.210058,
		0.271843, 0.567863, 0.776938,
		35.061794, 40.601715, 21.184008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909756, 40.878666, 20.331591>,  <34.871502, 40.204208, 20.640150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909756, 40.878666, 20.331591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119167, 40.918148, 20.670097>,  <35.244816, 40.941837, 20.873201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119167, 40.918148, 20.670097>,  <34.909756, 40.878666, 20.331591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119167, 40.918148, 20.670097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616663, 0.641487, -0.456313,
		-0.587913, 0.760757, 0.274968,
		0.523531, 0.098710, 0.846269,
		35.276226, 40.947762, 20.923979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982662, 41.654995, 20.369249>,  <34.909756, 40.878666, 20.331591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982662, 41.654995, 20.369249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261192, 41.482254, 20.598557>,  <35.428310, 41.378609, 20.736141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261192, 41.482254, 20.598557>,  <34.982662, 41.654995, 20.369249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261192, 41.482254, 20.598557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645391, 0.726192, -0.236886,
		-0.314003, 0.534931, 0.784379,
		0.696328, -0.431848, 0.573267,
		35.470089, 41.352699, 20.770536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290451, 42.165920, 20.862061>,  <34.982662, 41.654995, 20.369249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290451, 42.165920, 20.862061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543911, 41.862167, 20.802969>,  <35.695988, 41.679916, 20.767515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543911, 41.862167, 20.802969>,  <35.290451, 42.165920, 20.862061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543911, 41.862167, 20.802969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689916, 0.641082, -0.336199,
		0.350010, 0.111113, 0.930133,
		0.633648, -0.759386, -0.147727,
		35.734005, 41.634350, 20.758652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950474, 42.387405, 21.136873>,  <35.290451, 42.165920, 20.862061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950474, 42.387405, 21.136873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050507, 42.104599, 20.872271>,  <36.110527, 41.934917, 20.713509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050507, 42.104599, 20.872271>,  <35.950474, 42.387405, 21.136873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050507, 42.104599, 20.872271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684610, 0.612250, -0.395549,
		0.684665, -0.353951, 0.637144,
		0.250087, -0.707014, -0.661505,
		36.125534, 41.892494, 20.673819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690346, 42.434765, 21.094784>,  <35.950474, 42.387405, 21.136873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690346, 42.434765, 21.094784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600830, 42.234280, 20.760429>,  <36.547123, 42.113987, 20.559816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600830, 42.234280, 20.760429>,  <36.690346, 42.434765, 21.094784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600830, 42.234280, 20.760429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733935, 0.477646, -0.482901,
		0.641294, -0.721552, 0.260969,
		-0.223787, -0.501216, -0.835884,
		36.533695, 42.083916, 20.509665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367329, 42.386967, 20.785419>,  <36.690346, 42.434765, 21.094784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367329, 42.386967, 20.785419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100288, 42.278648, 20.508009>,  <36.940063, 42.213657, 20.341562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100288, 42.278648, 20.508009>,  <37.367329, 42.386967, 20.785419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100288, 42.278648, 20.508009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586861, 0.381813, -0.714012,
		0.458152, -0.883677, -0.095976,
		-0.667600, -0.270801, -0.693524,
		36.900009, 42.197407, 20.299952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746220, 41.955441, 20.255117>,  <37.367329, 42.386967, 20.785419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746220, 41.955441, 20.255117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424194, 42.131557, 20.096107>,  <37.230980, 42.237228, 20.000702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424194, 42.131557, 20.096107>,  <37.746220, 41.955441, 20.255117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424194, 42.131557, 20.096107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575696, 0.418343, -0.702540,
		-0.143018, -0.794440, -0.590263,
		-0.805058, 0.440288, -0.397526,
		37.182678, 42.263645, 19.976851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781548, 41.819752, 19.584576>,  <37.746220, 41.955441, 20.255117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781548, 41.819752, 19.584576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549149, 42.143803, 19.615910>,  <37.409710, 42.338234, 19.634710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549149, 42.143803, 19.615910>,  <37.781548, 41.819752, 19.584576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549149, 42.143803, 19.615910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514337, 0.440043, -0.736084,
		-0.630790, -0.387375, -0.672342,
		-0.581000, 0.810125, 0.078333,
		37.374847, 42.386841, 19.639410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755573, 42.103737, 18.872314>,  <37.781548, 41.819752, 19.584576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755573, 42.103737, 18.872314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655514, 42.400898, 19.120674>,  <37.595478, 42.579197, 19.269690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655514, 42.400898, 19.120674>,  <37.755573, 42.103737, 18.872314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655514, 42.400898, 19.120674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304776, 0.669106, -0.677797,
		-0.918986, 0.019682, -0.393799,
		-0.250153, 0.742906, 0.620897,
		37.580467, 42.623772, 19.306944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312344, 42.544823, 18.585121>,  <37.755573, 42.103737, 18.872314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312344, 42.544823, 18.585121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476849, 42.794586, 18.850742>,  <37.575554, 42.944447, 19.010115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476849, 42.794586, 18.850742>,  <37.312344, 42.544823, 18.585121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476849, 42.794586, 18.850742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132798, 0.679700, -0.721368,
		-0.901790, 0.384859, 0.196617,
		0.411266, 0.624413, 0.664055,
		37.600227, 42.981911, 19.049959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185390, 43.226982, 18.286701>,  <37.312344, 42.544823, 18.585121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185390, 43.226982, 18.286701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471230, 43.265301, 18.563879>,  <37.642735, 43.288292, 18.730186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471230, 43.265301, 18.563879>,  <37.185390, 43.226982, 18.286701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471230, 43.265301, 18.563879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413556, 0.741081, -0.528933,
		-0.564201, 0.664546, 0.489955,
		0.714597, 0.095801, 0.692946,
		37.685608, 43.294041, 18.771763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281891, 43.865532, 18.763292>,  <37.185390, 43.226982, 18.286701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281891, 43.865532, 18.763292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657158, 43.749908, 18.687092>,  <37.882317, 43.680534, 18.641371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657158, 43.749908, 18.687092>,  <37.281891, 43.865532, 18.763292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657158, 43.749908, 18.687092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213551, 0.916332, -0.338721,
		0.272473, 0.277095, 0.921399,
		0.938166, -0.289058, -0.190502,
		37.938606, 43.663193, 18.629942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236317, 44.551823, 18.513315>,  <37.281891, 43.865532, 18.763292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236317, 44.551823, 18.513315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347893, 44.636185, 18.888060>,  <37.414837, 44.686802, 19.112907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347893, 44.636185, 18.888060>,  <37.236317, 44.551823, 18.513315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347893, 44.636185, 18.888060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834920, 0.428733, -0.345104,
		-0.474450, 0.878467, -0.056503,
		0.278938, 0.210910, 0.936862,
		37.431576, 44.699459, 19.169119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587856, 45.272278, 18.480095>,  <37.236317, 44.551823, 18.513315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587856, 45.272278, 18.480095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740616, 45.067848, 18.788109>,  <37.832272, 44.945190, 18.972918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740616, 45.067848, 18.788109>,  <37.587856, 45.272278, 18.480095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740616, 45.067848, 18.788109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924192, 0.207083, -0.320913,
		0.004549, 0.834217, 0.551418,
		0.381900, -0.511076, 0.770035,
		37.855186, 44.914524, 19.019119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935741, 45.730396, 18.906235>,  <37.587856, 45.272278, 18.480095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935741, 45.730396, 18.906235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084419, 45.359455, 18.923491>,  <38.173626, 45.136890, 18.933844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084419, 45.359455, 18.923491>,  <37.935741, 45.730396, 18.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084419, 45.359455, 18.923491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710507, 0.254255, -0.656151,
		0.597515, 0.274537, 0.753396,
		0.371692, -0.927353, 0.043140,
		38.195927, 45.081249, 18.936432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613457, 45.899296, 18.694143>,  <37.935741, 45.730396, 18.906235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613457, 45.899296, 18.694143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281990, 45.841389, 18.477865>,  <38.083111, 45.806644, 18.348099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281990, 45.841389, 18.477865>,  <38.613457, 45.899296, 18.694143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281990, 45.841389, 18.477865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414588, -0.490258, 0.766658,
		-0.376070, 0.859470, 0.346240,
		-0.828666, -0.144770, -0.540697,
		38.033390, 45.797958, 18.315657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406651, 45.850777, 18.761400>,  <38.613457, 45.899296, 18.694143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406651, 45.850777, 18.761400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338177, 46.115242, 19.053581>,  <39.297092, 46.273922, 19.228889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338177, 46.115242, 19.053581>,  <39.406651, 45.850777, 18.761400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338177, 46.115242, 19.053581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590598, -0.662287, 0.461053,
		0.788599, -0.352476, 0.503857,
		-0.171188, 0.661163, 0.730451,
		39.286819, 46.313591, 19.272717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396393, 45.506264, 19.355633>,  <39.406651, 45.850777, 18.761400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396393, 45.506264, 19.355633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242367, 45.857483, 19.469303>,  <39.149952, 46.068214, 19.537504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242367, 45.857483, 19.469303>,  <39.396393, 45.506264, 19.355633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242367, 45.857483, 19.469303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649776, -0.476604, 0.592149,
		0.655374, 0.043368, 0.754058,
		-0.385067, 0.878048, 0.284174,
		39.126846, 46.120895, 19.554556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436455, 45.520393, 20.031893>,  <39.396393, 45.506264, 19.355633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436455, 45.520393, 20.031893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130001, 45.731750, 19.885555>,  <38.946129, 45.858562, 19.797752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130001, 45.731750, 19.885555>,  <39.436455, 45.520393, 20.031893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130001, 45.731750, 19.885555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628124, -0.495169, 0.600223,
		0.135998, 0.689647, 0.711261,
		-0.766136, 0.528390, -0.365842,
		38.900162, 45.890266, 19.775803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911106, 45.961006, 20.549644>,  <39.436455, 45.520393, 20.031893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911106, 45.961006, 20.549644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726223, 45.789146, 20.239349>,  <38.615295, 45.686031, 20.053173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726223, 45.789146, 20.239349>,  <38.911106, 45.961006, 20.549644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726223, 45.789146, 20.239349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669022, -0.405225, 0.623059,
		-0.582045, 0.806966, -0.100147,
		-0.462205, -0.429649, -0.775737,
		38.587563, 45.660252, 20.006628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265881, 46.158016, 20.474157>,  <38.911106, 45.961006, 20.549644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265881, 46.158016, 20.474157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277321, 45.793930, 20.308899>,  <38.284184, 45.575478, 20.209743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277321, 45.793930, 20.308899>,  <38.265881, 46.158016, 20.474157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277321, 45.793930, 20.308899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692910, -0.315950, 0.648114,
		-0.720457, 0.267737, -0.639733,
		0.028599, -0.910216, -0.413146,
		38.285900, 45.520866, 20.184956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591930, 45.997890, 20.577845>,  <38.265881, 46.158016, 20.474157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591930, 45.997890, 20.577845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765018, 45.647511, 20.492552>,  <37.868874, 45.437283, 20.441376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765018, 45.647511, 20.492552>,  <37.591930, 45.997890, 20.577845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765018, 45.647511, 20.492552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644206, -0.465902, 0.606576,
		-0.630673, -0.125114, -0.765897,
		0.432724, -0.875946, -0.213232,
		37.894836, 45.384727, 20.428581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071774, 45.506458, 20.471806>,  <37.591930, 45.997890, 20.577845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071774, 45.506458, 20.471806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371994, 45.252186, 20.544001>,  <37.552128, 45.099621, 20.587318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371994, 45.252186, 20.544001>,  <37.071774, 45.506458, 20.471806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371994, 45.252186, 20.544001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517900, -0.396226, 0.758145,
		-0.410439, -0.662493, -0.626613,
		0.750546, -0.635695, 0.180478,
		37.597160, 45.061481, 20.598146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773609, 44.771828, 20.463518>,  <37.071774, 45.506458, 20.471806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773609, 44.771828, 20.463518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093472, 44.800911, 20.701933>,  <37.285389, 44.818359, 20.844982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093472, 44.800911, 20.701933>,  <36.773609, 44.771828, 20.463518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093472, 44.800911, 20.701933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524589, -0.398377, 0.752398,
		0.292151, -0.914336, -0.280425,
		0.799659, 0.072706, 0.596037,
		37.333370, 44.822723, 20.880743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738430, 44.205723, 20.898346>,  <36.773609, 44.771828, 20.463518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738430, 44.205723, 20.898346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985538, 44.460960, 21.082167>,  <37.133804, 44.614105, 21.192459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985538, 44.460960, 21.082167>,  <36.738430, 44.205723, 20.898346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985538, 44.460960, 21.082167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387083, -0.261938, 0.884056,
		0.684489, -0.724030, 0.085178,
		0.617772, 0.638097, 0.459553,
		37.170872, 44.652390, 21.220034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102139, 43.879566, 21.385674>,  <36.738430, 44.205723, 20.898346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102139, 43.879566, 21.385674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127323, 44.256229, 21.517921>,  <37.142433, 44.482227, 21.597269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127323, 44.256229, 21.517921>,  <37.102139, 43.879566, 21.385674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127323, 44.256229, 21.517921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109452, -0.322762, 0.940130,
		0.991996, -0.095378, 0.082746,
		0.062960, 0.941662, 0.330618,
		37.146210, 44.538727, 21.617107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494820, 43.795330, 21.973782>,  <37.102139, 43.879566, 21.385674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494820, 43.795330, 21.973782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298092, 44.143242, 21.989752>,  <37.180054, 44.351990, 21.999334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298092, 44.143242, 21.989752>,  <37.494820, 43.795330, 21.973782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298092, 44.143242, 21.989752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140342, -0.124444, 0.982251,
		0.859311, 0.477489, 0.183271,
		-0.491821, 0.869780, 0.039924,
		37.150547, 44.404175, 22.001730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714981, 44.053101, 22.604187>,  <37.494820, 43.795330, 21.973782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714981, 44.053101, 22.604187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395576, 44.277771, 22.517561>,  <37.203934, 44.412575, 22.465586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395576, 44.277771, 22.517561>,  <37.714981, 44.053101, 22.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395576, 44.277771, 22.517561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250380, 0.017274, 0.967993,
		0.547439, 0.827177, 0.126839,
		-0.798511, 0.561675, -0.216566,
		37.156025, 44.446274, 22.452591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806347, 44.554073, 23.069263>,  <37.714981, 44.053101, 22.604187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806347, 44.554073, 23.069263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427265, 44.548420, 22.941729>,  <37.199818, 44.545029, 22.865208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427265, 44.548420, 22.941729>,  <37.806347, 44.554073, 23.069263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427265, 44.548420, 22.941729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315919, -0.100264, 0.943474,
		-0.045304, 0.994860, 0.090555,
		-0.947704, -0.014135, -0.318838,
		37.142956, 44.544178, 22.846077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533035, 44.951813, 23.527964>,  <37.806347, 44.554073, 23.069263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533035, 44.951813, 23.527964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244114, 44.736195, 23.354664>,  <37.070759, 44.606823, 23.250685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244114, 44.736195, 23.354664>,  <37.533035, 44.951813, 23.527964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244114, 44.736195, 23.354664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304144, -0.315031, 0.899028,
		-0.621105, 0.781142, 0.063600,
		-0.722305, -0.539047, -0.433247,
		37.027424, 44.574482, 23.224689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916996, 45.044910, 23.924952>,  <37.533035, 44.951813, 23.527964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916996, 45.044910, 23.924952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808792, 44.713894, 23.728176>,  <36.743870, 44.515285, 23.610111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808792, 44.713894, 23.728176>,  <36.916996, 45.044910, 23.924952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808792, 44.713894, 23.728176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359675, -0.387113, 0.848986,
		-0.893004, 0.406600, -0.192925,
		-0.270514, -0.827539, -0.491937,
		36.727638, 44.465633, 23.580595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194519, 45.008453, 23.968538>,  <36.916996, 45.044910, 23.924952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194519, 45.008453, 23.968538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380287, 44.656315, 23.929968>,  <36.491749, 44.445030, 23.906826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380287, 44.656315, 23.929968>,  <36.194519, 45.008453, 23.968538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380287, 44.656315, 23.929968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522417, -0.360250, 0.772852,
		-0.715116, -0.308557, -0.627218,
		0.464424, -0.880348, -0.096424,
		36.519615, 44.392212, 23.901041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661907, 44.569813, 24.184406>,  <36.194519, 45.008453, 23.968538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661907, 44.569813, 24.184406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998165, 44.353275, 24.191042>,  <36.199921, 44.223354, 24.195023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998165, 44.353275, 24.191042>,  <35.661907, 44.569813, 24.184406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998165, 44.353275, 24.191042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399346, -0.598868, 0.694175,
		-0.365850, -0.590177, -0.719615,
		0.840640, -0.541339, 0.016589,
		36.250359, 44.190872, 24.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394459, 43.895802, 24.278717>,  <35.661907, 44.569813, 24.184406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394459, 43.895802, 24.278717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778225, 43.808590, 24.350250>,  <36.008484, 43.756264, 24.393171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778225, 43.808590, 24.350250>,  <35.394459, 43.895802, 24.278717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778225, 43.808590, 24.350250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281877, -0.723837, 0.629766,
		-0.007858, -0.654619, -0.755918,
		0.959418, -0.218025, 0.178834,
		36.066051, 43.743183, 24.403900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305935, 43.149120, 24.360029>,  <35.394459, 43.895802, 24.278717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305935, 43.149120, 24.360029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646381, 43.278324, 24.525572>,  <35.850647, 43.355846, 24.624897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646381, 43.278324, 24.525572>,  <35.305935, 43.149120, 24.360029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646381, 43.278324, 24.525572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066487, -0.715652, 0.695285,
		0.520758, -0.619281, -0.587625,
		0.851112, 0.323006, 0.413856,
		35.901714, 43.375225, 24.649729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784332, 42.644302, 24.472784>,  <35.305935, 43.149120, 24.360029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784332, 42.644302, 24.472784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889851, 42.891407, 24.769104>,  <35.953159, 43.039669, 24.946896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889851, 42.891407, 24.769104>,  <35.784332, 42.644302, 24.472784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889851, 42.891407, 24.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093628, -0.780775, 0.617757,
		0.960025, -0.093601, -0.263803,
		0.263793, 0.617762, 0.740799,
		35.968990, 43.076736, 24.991344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240799, 42.304493, 24.904406>,  <35.784332, 42.644302, 24.472784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240799, 42.304493, 24.904406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120934, 42.591972, 25.155382>,  <36.049015, 42.764458, 25.305967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120934, 42.591972, 25.155382>,  <36.240799, 42.304493, 24.904406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120934, 42.591972, 25.155382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119824, -0.680807, 0.722595,
		0.946491, 0.141352, 0.290129,
		-0.299662, 0.718694, 0.627441,
		36.031036, 42.807579, 25.343615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349873, 41.972183, 25.597893>,  <36.240799, 42.304493, 24.904406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349873, 41.972183, 25.597893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162003, 42.313995, 25.686607>,  <36.049282, 42.519081, 25.739836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162003, 42.313995, 25.686607>,  <36.349873, 41.972183, 25.597893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162003, 42.313995, 25.686607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469348, -0.454462, 0.757084,
		0.747742, 0.251490, 0.614520,
		-0.469675, 0.854528, 0.221784,
		36.021099, 42.570354, 25.753143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584278, 42.123306, 26.232916>,  <36.349873, 41.972183, 25.597893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584278, 42.123306, 26.232916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222363, 42.272137, 26.150055>,  <36.005211, 42.361435, 26.100338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222363, 42.272137, 26.150055>,  <36.584278, 42.123306, 26.232916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222363, 42.272137, 26.150055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368342, -0.439651, 0.819165,
		0.213716, 0.817477, 0.534843,
		-0.904792, 0.372074, -0.207150,
		35.950924, 42.383759, 26.087910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279408, 42.438629, 26.788651>,  <36.584278, 42.123306, 26.232916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279408, 42.438629, 26.788651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942844, 42.371807, 26.583078>,  <35.740906, 42.331715, 26.459734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942844, 42.371807, 26.583078>,  <36.279408, 42.438629, 26.788651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942844, 42.371807, 26.583078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475238, -0.223993, 0.850868,
		-0.257260, 0.960166, 0.109078,
		-0.841407, -0.167056, -0.513932,
		35.690422, 42.321690, 26.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850391, 42.693874, 27.256168>,  <36.279408, 42.438629, 26.788651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850391, 42.693874, 27.256168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622696, 42.482929, 27.003866>,  <35.486080, 42.356361, 26.852486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622696, 42.482929, 27.003866>,  <35.850391, 42.693874, 27.256168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622696, 42.482929, 27.003866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631173, -0.211323, 0.746300,
		-0.526866, 0.822939, -0.212566,
		-0.569239, -0.527366, -0.630755,
		35.451923, 42.324718, 26.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115402, 42.827091, 27.292366>,  <35.850391, 42.693874, 27.256168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115402, 42.827091, 27.292366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097359, 42.466831, 27.119490>,  <35.086533, 42.250675, 27.015764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097359, 42.466831, 27.119490>,  <35.115402, 42.827091, 27.292366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097359, 42.466831, 27.119490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747093, -0.256792, 0.613115,
		-0.663187, 0.350546, -0.661287,
		-0.045112, -0.900653, -0.432191,
		35.083824, 42.196636, 26.989832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377808, 42.743809, 27.388195>,  <35.115402, 42.827091, 27.292366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377808, 42.743809, 27.388195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497219, 42.371098, 27.305559>,  <34.568867, 42.147472, 27.255978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497219, 42.371098, 27.305559>,  <34.377808, 42.743809, 27.388195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497219, 42.371098, 27.305559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736808, -0.362587, 0.570652,
		-0.606625, -0.018139, -0.794781,
		0.298528, -0.931774, -0.206589,
		34.586777, 42.091564, 27.243582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806953, 42.313015, 27.078945>,  <34.377808, 42.743809, 27.388195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806953, 42.313015, 27.078945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079090, 42.078037, 27.254242>,  <34.242371, 41.937050, 27.359419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079090, 42.078037, 27.254242>,  <33.806953, 42.313015, 27.078945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079090, 42.078037, 27.254242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728361, -0.475493, 0.493353,
		-0.081434, -0.654845, -0.751363,
		0.680338, -0.587439, 0.438242,
		34.283192, 41.901806, 27.385714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442436, 41.728203, 27.140886>,  <33.806953, 42.313015, 27.078945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442436, 41.728203, 27.140886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755390, 41.676842, 27.384653>,  <33.943161, 41.646027, 27.530912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755390, 41.676842, 27.384653>,  <33.442436, 41.728203, 27.140886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755390, 41.676842, 27.384653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576873, -0.518187, 0.631426,
		0.234714, -0.845574, -0.479494,
		0.782385, -0.128403, 0.609414,
		33.990105, 41.638321, 27.567478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496716, 40.906067, 27.422714>,  <33.442436, 41.728203, 27.140886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496716, 40.906067, 27.422714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678696, 41.135994, 27.694775>,  <33.787884, 41.273949, 27.858011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678696, 41.135994, 27.694775>,  <33.496716, 40.906067, 27.422714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678696, 41.135994, 27.694775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472948, -0.491191, 0.731472,
		0.754545, -0.654463, 0.048387,
		0.454954, 0.574813, 0.680152,
		33.815182, 41.308437, 27.898821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439877, 40.524788, 28.011017>,  <33.496716, 40.906067, 27.422714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439877, 40.524788, 28.011017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572777, 40.859303, 28.185478>,  <33.652515, 41.060013, 28.290155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572777, 40.859303, 28.185478>,  <33.439877, 40.524788, 28.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572777, 40.859303, 28.185478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449135, -0.266350, 0.852840,
		0.829390, -0.479249, 0.287111,
		0.332251, 0.836288, 0.436156,
		33.672451, 41.110188, 28.316324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768734, 40.332756, 28.721165>,  <33.439877, 40.524788, 28.011017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768734, 40.332756, 28.721165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656963, 40.716427, 28.738630>,  <33.589901, 40.946629, 28.749109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656963, 40.716427, 28.738630>,  <33.768734, 40.332756, 28.721165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656963, 40.716427, 28.738630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487353, -0.180862, 0.854270,
		0.827290, 0.217426, 0.517994,
		-0.279426, 0.959174, 0.043662,
		33.573135, 41.004181, 28.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944458, 40.546490, 29.339170>,  <33.768734, 40.332756, 28.721165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944458, 40.546490, 29.339170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695774, 40.851788, 29.268827>,  <33.546562, 41.034966, 29.226622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695774, 40.851788, 29.268827>,  <33.944458, 40.546490, 29.339170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695774, 40.851788, 29.268827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267375, 0.004223, 0.963583,
		0.736197, 0.646091, 0.201448,
		-0.621712, 0.763249, -0.175858,
		33.509262, 41.080761, 29.216070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994049, 41.081596, 29.798210>,  <33.944458, 40.546490, 29.339170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994049, 41.081596, 29.798210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620079, 41.168308, 29.685833>,  <33.395699, 41.220337, 29.618406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620079, 41.168308, 29.685833>,  <33.994049, 41.081596, 29.798210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620079, 41.168308, 29.685833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279967, 0.035847, 0.959340,
		0.218038, 0.975561, 0.027178,
		-0.934921, 0.216782, -0.280941,
		33.339603, 41.233341, 29.601551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851234, 41.659061, 30.177134>,  <33.994049, 41.081596, 29.798210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851234, 41.659061, 30.177134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518581, 41.460918, 30.076725>,  <33.318989, 41.342033, 30.016479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518581, 41.460918, 30.076725>,  <33.851234, 41.659061, 30.177134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518581, 41.460918, 30.076725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281488, -0.013639, 0.959468,
		-0.478706, 0.868580, -0.128096,
		-0.831628, -0.495361, -0.251024,
		33.269093, 41.312309, 30.001417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334320, 41.936581, 30.577856>,  <33.851234, 41.659061, 30.177134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334320, 41.936581, 30.577856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138187, 41.614372, 30.444759>,  <33.020508, 41.421047, 30.364901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138187, 41.614372, 30.444759>,  <33.334320, 41.936581, 30.577856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138187, 41.614372, 30.444759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360046, -0.160467, 0.919031,
		-0.793690, 0.570431, -0.211342,
		-0.490330, -0.805518, -0.332742,
		32.991089, 41.372715, 30.344936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626213, 42.015823, 30.809605>,  <33.334320, 41.936581, 30.577856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626213, 42.015823, 30.809605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666458, 41.627098, 30.724316>,  <32.690605, 41.393864, 30.673141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666458, 41.627098, 30.724316>,  <32.626213, 42.015823, 30.809605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666458, 41.627098, 30.724316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430408, -0.235733, 0.871309,
		-0.897009, 0.004108, -0.441992,
		0.100613, -0.971809, -0.213222,
		32.696644, 41.335556, 30.660349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955923, 41.659054, 30.994793>,  <32.626213, 42.015823, 30.809605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955923, 41.659054, 30.994793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227619, 41.366119, 31.014046>,  <32.390636, 41.190357, 31.025597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227619, 41.366119, 31.014046>,  <31.955923, 41.659054, 30.994793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227619, 41.366119, 31.014046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348998, -0.264609, 0.898990,
		-0.645627, -0.627427, -0.435316,
		0.679239, -0.732337, 0.048132,
		32.431393, 41.146420, 31.028486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557093, 41.014214, 31.095100>,  <31.955923, 41.659054, 30.994793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557093, 41.014214, 31.095100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930347, 40.949638, 31.223597>,  <32.154301, 40.910892, 31.300694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930347, 40.949638, 31.223597>,  <31.557093, 41.014214, 31.095100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930347, 40.949638, 31.223597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344837, -0.149114, 0.926743,
		-0.101704, -0.975554, -0.194811,
		0.933136, -0.161431, 0.321242,
		32.210289, 40.901207, 31.319969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561014, 40.397141, 31.461241>,  <31.557093, 41.014214, 31.095100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561014, 40.397141, 31.461241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874781, 40.604252, 31.597828>,  <32.063042, 40.728519, 31.679781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874781, 40.604252, 31.597828>,  <31.561014, 40.397141, 31.461241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874781, 40.604252, 31.597828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230216, -0.268160, 0.935463,
		0.575927, -0.812404, -0.091149,
		0.784416, 0.517774, 0.341469,
		32.110107, 40.759583, 31.700268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861256, 39.935757, 31.940252>,  <31.561014, 40.397141, 31.461241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861256, 39.935757, 31.940252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053181, 40.275700, 32.027454>,  <32.168335, 40.479664, 32.079777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053181, 40.275700, 32.027454>,  <31.861256, 39.935757, 31.940252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053181, 40.275700, 32.027454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171281, -0.152963, 0.973276,
		0.860491, -0.504327, 0.072171,
		0.479810, 0.849857, 0.218005,
		32.197124, 40.530655, 32.092857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355862, 39.649059, 32.265591>,  <31.861256, 39.935757, 31.940252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355862, 39.649059, 32.265591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298450, 40.026737, 32.384178>,  <32.264004, 40.253345, 32.455330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298450, 40.026737, 32.384178>,  <32.355862, 39.649059, 32.265591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298450, 40.026737, 32.384178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062922, -0.290257, 0.954878,
		0.987644, 0.155703, -0.017752,
		-0.143525, 0.944197, 0.296468,
		32.255394, 40.309998, 32.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051338, 39.875126, 32.641151>,  <32.355862, 39.649059, 32.265591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051338, 39.875126, 32.641151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703041, 40.044003, 32.741997>,  <32.494064, 40.145329, 32.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703041, 40.044003, 32.741997>,  <33.051338, 39.875126, 32.641151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703041, 40.044003, 32.741997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097813, -0.353756, 0.930209,
		0.481914, 0.834632, 0.266734,
		-0.870742, 0.422191, 0.252118,
		32.441818, 40.170658, 32.817631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598793, 40.387680, 32.789379>,  <33.051338, 39.875126, 32.641151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598793, 40.387680, 32.789379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954552, 40.367416, 32.971107>,  <34.168007, 40.355259, 33.080147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954552, 40.367416, 32.971107>,  <33.598793, 40.387680, 32.789379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954552, 40.367416, 32.971107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443100, 0.339961, -0.829511,
		-0.112429, 0.939074, 0.324807,
		0.889394, -0.050661, 0.454325,
		34.221371, 40.352219, 33.107407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009438, 41.034309, 32.702950>,  <33.598793, 40.387680, 32.789379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009438, 41.034309, 32.702950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260674, 40.727959, 32.757992>,  <34.411415, 40.544147, 32.791019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260674, 40.727959, 32.757992>,  <34.009438, 41.034309, 32.702950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260674, 40.727959, 32.757992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529347, 0.290917, -0.796969,
		0.570348, 0.573409, 0.588137,
		0.628088, -0.765878, 0.137608,
		34.449100, 40.498196, 32.799274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704155, 41.320881, 32.676254>,  <34.009438, 41.034309, 32.702950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704155, 41.320881, 32.676254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755936, 40.928989, 32.615112>,  <34.787006, 40.693855, 32.578426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755936, 40.928989, 32.615112>,  <34.704155, 41.320881, 32.676254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755936, 40.928989, 32.615112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583183, 0.199901, -0.787361,
		0.801959, 0.012786, 0.597242,
		0.129456, -0.979733, -0.152855,
		34.794773, 40.635071, 32.569256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339588, 41.249306, 32.434700>,  <34.704155, 41.320881, 32.676254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339588, 41.249306, 32.434700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206440, 40.882538, 32.346657>,  <35.126553, 40.662476, 32.293831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206440, 40.882538, 32.346657>,  <35.339588, 41.249306, 32.434700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206440, 40.882538, 32.346657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650583, -0.054347, -0.757488,
		0.682597, -0.395344, 0.614625,
		-0.332871, -0.916924, -0.220107,
		35.106579, 40.607460, 32.280624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940842, 40.896561, 32.371979>,  <35.339588, 41.249306, 32.434700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940842, 40.896561, 32.371979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639156, 40.703354, 32.194054>,  <35.458145, 40.587429, 32.087299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639156, 40.703354, 32.194054>,  <35.940842, 40.896561, 32.371979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639156, 40.703354, 32.194054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555154, -0.107290, -0.824799,
		0.350666, -0.869014, 0.349067,
		-0.754213, -0.483015, -0.444814,
		35.412891, 40.558449, 32.060608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201012, 40.268661, 32.043201>,  <35.940842, 40.896561, 32.371979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201012, 40.268661, 32.043201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865894, 40.355671, 31.842890>,  <35.664822, 40.407875, 31.722702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865894, 40.355671, 31.842890>,  <36.201012, 40.268661, 32.043201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865894, 40.355671, 31.842890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535517, 0.148670, -0.831336,
		-0.106383, -0.964667, -0.241042,
		-0.837798, 0.217522, -0.500779,
		35.614555, 40.420929, 31.692656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268925, 39.932804, 31.429943>,  <36.201012, 40.268661, 32.043201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268925, 39.932804, 31.429943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988724, 40.212082, 31.370859>,  <35.820602, 40.379650, 31.335409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988724, 40.212082, 31.370859>,  <36.268925, 39.932804, 31.429943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988724, 40.212082, 31.370859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441341, 0.261178, -0.858489,
		-0.560818, -0.666562, -0.491099,
		-0.700501, 0.698198, -0.147708,
		35.778572, 40.421543, 31.326548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118820, 39.933270, 30.718596>,  <36.268925, 39.932804, 31.429943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118820, 39.933270, 30.718596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979328, 40.291153, 30.830229>,  <35.895634, 40.505882, 30.897209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979328, 40.291153, 30.830229>,  <36.118820, 39.933270, 30.718596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979328, 40.291153, 30.830229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337757, 0.397745, -0.853064,
		-0.874245, -0.203231, -0.440900,
		-0.348735, 0.894704, 0.279084,
		35.874706, 40.559563, 30.913954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840374, 40.203053, 30.069572>,  <36.118820, 39.933270, 30.718596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840374, 40.203053, 30.069572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869568, 40.523716, 30.306896>,  <35.887085, 40.716114, 30.449289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869568, 40.523716, 30.306896>,  <35.840374, 40.203053, 30.069572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869568, 40.523716, 30.306896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170725, 0.576070, -0.799372,
		-0.982612, 0.159637, -0.094817,
		0.072988, 0.801660, 0.593308,
		35.891464, 40.764214, 30.484888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511539, 40.672123, 29.691544>,  <35.840374, 40.203053, 30.069572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511539, 40.672123, 29.691544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745922, 40.870922, 29.947557>,  <35.886551, 40.990204, 30.101166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745922, 40.870922, 29.947557>,  <35.511539, 40.672123, 29.691544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745922, 40.870922, 29.947557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213218, 0.667441, -0.713485,
		-0.781790, 0.554537, 0.285120,
		0.585955, 0.497002, 0.640036,
		35.921707, 41.020023, 30.139568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412029, 41.446148, 29.615585>,  <35.511539, 40.672123, 29.691544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412029, 41.446148, 29.615585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777294, 41.370831, 29.760183>,  <35.996452, 41.325642, 29.846943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777294, 41.370831, 29.760183>,  <35.412029, 41.446148, 29.615585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777294, 41.370831, 29.760183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401666, 0.566413, -0.719612,
		-0.069260, 0.802323, 0.592857,
		0.913164, -0.188290, 0.361495,
		36.051243, 41.314342, 29.868631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617149, 42.090343, 29.673927>,  <35.412029, 41.446148, 29.615585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617149, 42.090343, 29.673927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955612, 41.877354, 29.682819>,  <36.158688, 41.749561, 29.688154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955612, 41.877354, 29.682819>,  <35.617149, 42.090343, 29.673927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955612, 41.877354, 29.682819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414409, 0.631160, -0.655670,
		0.335097, 0.564010, 0.754720,
		0.846153, -0.532476, 0.022231,
		36.209457, 41.717609, 29.689489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025234, 42.592243, 29.563715>,  <35.617149, 42.090343, 29.673927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025234, 42.592243, 29.563715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265656, 42.284622, 29.476717>,  <36.409908, 42.100052, 29.424519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265656, 42.284622, 29.476717>,  <36.025234, 42.592243, 29.563715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265656, 42.284622, 29.476717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451096, 0.551088, -0.702007,
		0.659736, 0.323830, 0.678146,
		0.601050, -0.769049, -0.217494,
		36.445969, 42.053909, 29.411469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692200, 42.826637, 29.545643>,  <36.025234, 42.592243, 29.563715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692200, 42.826637, 29.545643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722816, 42.491215, 29.329880>,  <36.741184, 42.289959, 29.200422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722816, 42.491215, 29.329880>,  <36.692200, 42.826637, 29.545643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722816, 42.491215, 29.329880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440566, 0.513761, -0.736173,
		0.894451, -0.181301, 0.408762,
		0.076537, -0.838558, -0.539409,
		36.745777, 42.239647, 29.168056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207298, 42.985924, 29.222712>,  <36.692200, 42.826637, 29.545643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207298, 42.985924, 29.222712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092655, 42.652714, 29.033426>,  <37.023869, 42.452789, 28.919855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092655, 42.652714, 29.033426>,  <37.207298, 42.985924, 29.222712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092655, 42.652714, 29.033426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576983, 0.244228, -0.779387,
		0.764818, -0.496413, 0.410642,
		-0.286608, -0.833023, -0.473212,
		37.006672, 42.402805, 28.891462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817585, 42.709560, 28.941004>,  <37.207298, 42.985924, 29.222712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817585, 42.709560, 28.941004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500340, 42.573673, 28.738791>,  <37.309994, 42.492142, 28.617462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500340, 42.573673, 28.738791>,  <37.817585, 42.709560, 28.941004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500340, 42.573673, 28.738791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454635, 0.222129, -0.862535,
		0.405310, -0.913921, -0.021727,
		-0.793115, -0.339716, -0.505531,
		37.262405, 42.471760, 28.587132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086777, 42.376003, 28.496630>,  <37.817585, 42.709560, 28.941004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086777, 42.376003, 28.496630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729942, 42.507381, 28.372492>,  <37.515842, 42.586208, 28.298010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729942, 42.507381, 28.372492>,  <38.086777, 42.376003, 28.496630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729942, 42.507381, 28.372492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396624, 0.240065, -0.886035,
		-0.216509, -0.913507, -0.344426,
		-0.892083, 0.328443, -0.310343,
		37.462318, 42.605915, 28.279388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033230, 42.075573, 27.901796>,  <38.086777, 42.376003, 28.496630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033230, 42.075573, 27.901796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776665, 42.381748, 27.881050>,  <37.622726, 42.565453, 27.868603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776665, 42.381748, 27.881050>,  <38.033230, 42.075573, 27.901796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776665, 42.381748, 27.881050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316658, 0.202562, -0.926659,
		-0.698796, -0.610795, -0.372308,
		-0.641415, 0.765440, -0.051864,
		37.584240, 42.611382, 27.865492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848087, 42.030293, 27.230118>,  <38.033230, 42.075573, 27.901796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848087, 42.030293, 27.230118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711746, 42.394623, 27.323254>,  <37.629944, 42.613220, 27.379135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711746, 42.394623, 27.323254>,  <37.848087, 42.030293, 27.230118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711746, 42.394623, 27.323254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298238, 0.339640, -0.892020,
		-0.891558, -0.234602, -0.387409,
		-0.340850, 0.910827, 0.232841,
		37.609489, 42.667870, 27.393106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417183, 42.279255, 26.659382>,  <37.848087, 42.030293, 27.230118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417183, 42.279255, 26.659382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516731, 42.621990, 26.839996>,  <37.576462, 42.827633, 26.948364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516731, 42.621990, 26.839996>,  <37.417183, 42.279255, 26.659382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516731, 42.621990, 26.839996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116522, 0.436331, -0.892209,
		-0.961501, 0.274661, 0.008750,
		0.248873, 0.856841, 0.451537,
		37.591393, 42.879044, 26.975458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180138, 42.812164, 26.250902>,  <37.417183, 42.279255, 26.659382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180138, 42.812164, 26.250902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449768, 42.996304, 26.481968>,  <37.611546, 43.106789, 26.620607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449768, 42.996304, 26.481968>,  <37.180138, 42.812164, 26.250902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449768, 42.996304, 26.481968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339550, 0.501403, -0.795802,
		-0.655991, 0.732578, 0.181673,
		0.674078, 0.460352, 0.577663,
		37.651993, 43.134411, 26.655268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185490, 43.622169, 26.159788>,  <37.180138, 42.812164, 26.250902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185490, 43.622169, 26.159788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539059, 43.466682, 26.263773>,  <37.751202, 43.373390, 26.326164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539059, 43.466682, 26.263773>,  <37.185490, 43.622169, 26.159788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539059, 43.466682, 26.263773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408595, 0.371608, -0.833641,
		0.227450, 0.843092, 0.487301,
		0.883921, -0.388721, 0.259961,
		37.804234, 43.350067, 26.341761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638992, 44.135494, 26.071768>,  <37.185490, 43.622169, 26.159788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638992, 44.135494, 26.071768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854908, 43.798790, 26.068443>,  <37.984459, 43.596767, 26.066448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854908, 43.798790, 26.068443>,  <37.638992, 44.135494, 26.071768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854908, 43.798790, 26.068443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410736, 0.271982, -0.870242,
		0.734795, 0.466334, 0.492554,
		0.539789, -0.841759, -0.008311,
		38.016846, 43.546261, 26.065950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153069, 44.353455, 25.665932>,  <37.638992, 44.135494, 26.071768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153069, 44.353455, 25.665932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220036, 43.959862, 25.690418>,  <38.260216, 43.723705, 25.705111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220036, 43.959862, 25.690418>,  <38.153069, 44.353455, 25.665932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220036, 43.959862, 25.690418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404959, 0.012022, -0.914256,
		0.898877, 0.177855, 0.400485,
		0.167420, -0.983983, 0.061218,
		38.270260, 43.664665, 25.708784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908104, 44.268246, 25.529469>,  <38.153069, 44.353455, 25.665932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908104, 44.268246, 25.529469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733356, 43.916557, 25.453457>,  <38.628510, 43.705544, 25.407850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733356, 43.916557, 25.453457>,  <38.908104, 44.268246, 25.529469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733356, 43.916557, 25.453457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479982, -0.049182, -0.875898,
		0.760764, -0.473865, 0.443498,
		-0.436870, -0.879223, -0.190031,
		38.602295, 43.652790, 25.396448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330906, 43.808758, 25.216330>,  <38.908104, 44.268246, 25.529469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330906, 43.808758, 25.216330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992619, 43.637699, 25.088659>,  <38.789646, 43.535065, 25.012056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992619, 43.637699, 25.088659>,  <39.330906, 43.808758, 25.216330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992619, 43.637699, 25.088659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450649, -0.252051, -0.856379,
		0.285777, -0.868096, 0.405883,
		-0.845722, -0.427645, -0.319176,
		38.738903, 43.509407, 24.992907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474380, 43.126850, 24.930283>,  <39.330906, 43.808758, 25.216330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474380, 43.126850, 24.930283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136726, 43.240547, 24.748453>,  <38.934132, 43.308765, 24.639355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136726, 43.240547, 24.748453>,  <39.474380, 43.126850, 24.930283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136726, 43.240547, 24.748453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330398, -0.391933, -0.858619,
		-0.422224, -0.874981, 0.236929,
		-0.844135, 0.284248, -0.454575,
		38.883484, 43.325821, 24.612082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292702, 42.497635, 24.458941>,  <39.474380, 43.126850, 24.930283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292702, 42.497635, 24.458941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080624, 42.811283, 24.329916>,  <38.953377, 42.999474, 24.252501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080624, 42.811283, 24.329916>,  <39.292702, 42.497635, 24.458941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080624, 42.811283, 24.329916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039495, -0.357184, -0.933199,
		-0.846958, -0.507513, 0.158407,
		-0.530191, 0.784124, -0.322564,
		38.921566, 43.046520, 24.233147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834324, 42.273537, 23.807877>,  <39.292702, 42.497635, 24.458941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834324, 42.273537, 23.807877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846416, 42.672337, 23.779375>,  <38.853672, 42.911617, 23.762274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846416, 42.672337, 23.779375>,  <38.834324, 42.273537, 23.807877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846416, 42.672337, 23.779375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291008, -0.076975, -0.953619,
		-0.956243, 0.008094, -0.292462,
		0.030231, 0.997000, -0.071252,
		38.855484, 42.971436, 23.757999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340389, 42.534294, 23.343487>,  <38.834324, 42.273537, 23.807877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340389, 42.534294, 23.343487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611874, 42.827435, 23.324392>,  <38.774765, 43.003319, 23.312935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611874, 42.827435, 23.324392>,  <38.340389, 42.534294, 23.343487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611874, 42.827435, 23.324392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174021, -0.223633, -0.959013,
		-0.713493, 0.642582, -0.279314,
		0.678708, 0.732855, -0.047737,
		38.815487, 43.047291, 23.310072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284840, 42.691643, 22.702583>,  <38.340389, 42.534294, 23.343487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284840, 42.691643, 22.702583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627670, 42.861530, 22.819229>,  <38.833366, 42.963463, 22.889217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627670, 42.861530, 22.819229>,  <38.284840, 42.691643, 22.702583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627670, 42.861530, 22.819229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418888, -0.244957, -0.874373,
		-0.299929, 0.871556, -0.387856,
		0.857073, 0.424718, 0.291615,
		38.884792, 42.988945, 22.906713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468533, 43.077950, 22.206493>,  <38.284840, 42.691643, 22.702583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468533, 43.077950, 22.206493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821407, 43.027618, 22.388006>,  <39.033131, 42.997417, 22.496914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821407, 43.027618, 22.388006>,  <38.468533, 43.077950, 22.206493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821407, 43.027618, 22.388006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417635, -0.236152, -0.877390,
		0.217564, 0.963535, -0.155778,
		0.882183, -0.125830, 0.453784,
		39.086063, 42.989868, 22.524141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974407, 43.398369, 21.755672>,  <38.468533, 43.077950, 22.206493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974407, 43.398369, 21.755672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157761, 43.115597, 21.971130>,  <39.267773, 42.945934, 22.100405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157761, 43.115597, 21.971130>,  <38.974407, 43.398369, 21.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157761, 43.115597, 21.971130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565199, -0.235858, -0.790519,
		0.685884, 0.666801, 0.291442,
		0.458380, -0.706928, 0.538647,
		39.295277, 42.903519, 22.132725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640640, 43.524124, 21.615110>,  <38.974407, 43.398369, 21.755672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640640, 43.524124, 21.615110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617222, 43.151917, 21.759726>,  <39.603168, 42.928593, 21.846495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617222, 43.151917, 21.759726>,  <39.640640, 43.524124, 21.615110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617222, 43.151917, 21.759726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561989, -0.330043, -0.758446,
		0.825070, 0.158775, 0.542264,
		-0.058548, -0.930517, 0.361538,
		39.599659, 42.872761, 21.868187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325363, 43.359810, 21.582647>,  <39.640640, 43.524124, 21.615110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325363, 43.359810, 21.582647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149689, 43.001781, 21.613548>,  <40.044285, 42.786964, 21.632088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149689, 43.001781, 21.613548>,  <40.325363, 43.359810, 21.582647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149689, 43.001781, 21.613548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399683, -0.271670, -0.875471,
		0.804595, -0.353615, 0.477057,
		-0.439182, -0.895071, 0.077250,
		40.017933, 42.733261, 21.636723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929871, 42.828785, 21.538097>,  <40.325363, 43.359810, 21.582647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929871, 42.828785, 21.538097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580460, 42.653969, 21.452364>,  <40.370811, 42.549080, 21.400923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580460, 42.653969, 21.452364>,  <40.929871, 42.828785, 21.538097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580460, 42.653969, 21.452364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401806, -0.398842, -0.824304,
		0.274771, -0.806174, 0.524007,
		-0.873529, -0.437044, -0.214335,
		40.318401, 42.522854, 21.388063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029377, 42.096428, 21.418390>,  <40.929871, 42.828785, 21.538097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029377, 42.096428, 21.418390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700779, 42.202568, 21.216505>,  <40.503620, 42.266254, 21.095373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700779, 42.202568, 21.216505>,  <41.029377, 42.096428, 21.418390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700779, 42.202568, 21.216505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356591, -0.451628, -0.817848,
		-0.444935, -0.851841, 0.276403,
		-0.821508, 0.265326, -0.504704,
		40.454330, 42.282173, 21.065090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928455, 41.491577, 20.997320>,  <41.029377, 42.096428, 21.418390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928455, 41.491577, 20.997320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704617, 41.780781, 20.835274>,  <40.570312, 41.954304, 20.738047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704617, 41.780781, 20.835274>,  <40.928455, 41.491577, 20.997320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704617, 41.780781, 20.835274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187691, -0.365559, -0.911668,
		-0.807234, -0.586200, 0.068863,
		-0.559594, 0.723005, -0.405116,
		40.536739, 41.997681, 20.713739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989647, 40.885246, 20.371883>,  <40.928455, 41.491577, 20.997320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989647, 40.885246, 20.371883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085648, 40.507759, 20.280844>,  <41.143250, 40.281269, 20.226221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085648, 40.507759, 20.280844>,  <40.989647, 40.885246, 20.371883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085648, 40.507759, 20.280844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249168, -0.286481, 0.925118,
		-0.938250, -0.165323, -0.303900,
		0.240005, -0.943715, -0.227598,
		41.157650, 40.224644, 20.212564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443832, 40.432301, 20.585894>,  <40.989647, 40.885246, 20.371883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443832, 40.432301, 20.585894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777206, 40.212322, 20.564198>,  <40.977230, 40.080334, 20.551180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777206, 40.212322, 20.564198>,  <40.443832, 40.432301, 20.585894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777206, 40.212322, 20.564198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131525, -0.292738, 0.947104,
		-0.536736, -0.782216, -0.316311,
		0.833436, -0.549948, -0.054242,
		41.027237, 40.047337, 20.547924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259384, 39.825287, 20.876387>,  <40.443832, 40.432301, 20.585894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259384, 39.825287, 20.876387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658466, 39.834492, 20.901852>,  <40.897915, 39.840015, 20.917131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658466, 39.834492, 20.901852>,  <40.259384, 39.825287, 20.876387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658466, 39.834492, 20.901852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046732, -0.446290, 0.893668,
		0.048976, -0.894593, -0.444191,
		0.997706, 0.023011, 0.063664,
		40.957779, 39.841396, 20.920950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460415, 39.193405, 21.261690>,  <40.259384, 39.825287, 20.876387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460415, 39.193405, 21.261690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765236, 39.450245, 21.295101>,  <40.948128, 39.604347, 21.315147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765236, 39.450245, 21.295101>,  <40.460415, 39.193405, 21.261690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765236, 39.450245, 21.295101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097766, -0.241615, 0.965435,
		0.640088, -0.727550, -0.246900,
		0.762056, 0.642101, 0.083526,
		40.993855, 39.642876, 21.320158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863270, 38.834232, 21.780903>,  <40.460415, 39.193405, 21.261690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863270, 38.834232, 21.780903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008770, 39.206650, 21.769327>,  <41.096069, 39.430099, 21.762383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008770, 39.206650, 21.769327>,  <40.863270, 38.834232, 21.780903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008770, 39.206650, 21.769327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262421, -0.072621, 0.962217,
		0.893766, -0.357604, -0.270742,
		0.363754, 0.931045, -0.028937,
		41.117897, 39.485962, 21.760647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523830, 38.889641, 22.016657>,  <40.863270, 38.834232, 21.780903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523830, 38.889641, 22.016657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383755, 39.256016, 22.095064>,  <41.299709, 39.475842, 22.142109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383755, 39.256016, 22.095064>,  <41.523830, 38.889641, 22.016657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383755, 39.256016, 22.095064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277112, -0.098595, 0.955766,
		0.894751, 0.389013, -0.219291,
		-0.350185, 0.915941, 0.196018,
		41.278698, 39.530800, 22.153870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009468, 39.222900, 22.502985>,  <41.523830, 38.889641, 22.016657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009468, 39.222900, 22.502985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683662, 39.450401, 22.548744>,  <41.488178, 39.586903, 22.576200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683662, 39.450401, 22.548744>,  <42.009468, 39.222900, 22.502985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683662, 39.450401, 22.548744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097673, -0.059934, 0.993412,
		0.571859, 0.820324, -0.006734,
		-0.814517, 0.568749, 0.114398,
		41.439308, 39.621025, 22.583063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172985, 39.723679, 23.035294>,  <42.009468, 39.222900, 22.502985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172985, 39.723679, 23.035294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773537, 39.737427, 23.051142>,  <41.533867, 39.745674, 23.060650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773537, 39.737427, 23.051142>,  <42.172985, 39.723679, 23.035294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773537, 39.737427, 23.051142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039823, 0.005218, 0.999193,
		0.034132, 0.999396, -0.006579,
		-0.998624, 0.034367, 0.039621,
		41.473949, 39.747738, 23.063028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008961, 40.330708, 23.453878>,  <42.172985, 39.723679, 23.035294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008961, 40.330708, 23.453878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672482, 40.114487, 23.459316>,  <41.470592, 39.984756, 23.462580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672482, 40.114487, 23.459316>,  <42.008961, 40.330708, 23.453878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672482, 40.114487, 23.459316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082302, 0.152850, 0.984817,
		-0.534421, 0.827311, -0.173066,
		-0.841202, -0.540550, 0.013597,
		41.420120, 39.952320, 23.463396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523647, 40.666550, 23.925100>,  <42.008961, 40.330708, 23.453878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523647, 40.666550, 23.925100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373978, 40.297989, 23.883116>,  <41.284176, 40.076855, 23.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373978, 40.297989, 23.883116>,  <41.523647, 40.666550, 23.925100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373978, 40.297989, 23.883116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210519, -0.025834, 0.977248,
		-0.903146, 0.387762, -0.184305,
		-0.374179, -0.921397, -0.104963,
		41.261723, 40.021568, 23.851627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848850, 40.581890, 24.213085>,  <41.523647, 40.666550, 23.925100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848850, 40.581890, 24.213085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964230, 40.199055, 24.224258>,  <41.033455, 39.969353, 24.230963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964230, 40.199055, 24.224258>,  <40.848850, 40.581890, 24.213085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964230, 40.199055, 24.224258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395716, -0.092593, 0.913693,
		-0.871899, -0.274604, -0.405444,
		0.288445, -0.957089, 0.027934,
		41.050762, 39.911926, 24.232639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247765, 40.312729, 24.433348>,  <40.848850, 40.581890, 24.213085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247765, 40.312729, 24.433348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540802, 40.046654, 24.491070>,  <40.716625, 39.887009, 24.525703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540802, 40.046654, 24.491070>,  <40.247765, 40.312729, 24.433348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540802, 40.046654, 24.491070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368582, -0.209455, 0.905691,
		-0.572233, -0.716692, -0.398624,
		0.732595, -0.665192, 0.144303,
		40.760582, 39.847095, 24.534361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957199, 39.669025, 24.483116>,  <40.247765, 40.312729, 24.433348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957199, 39.669025, 24.483116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312260, 39.657249, 24.666945>,  <40.525295, 39.650185, 24.777243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312260, 39.657249, 24.666945>,  <39.957199, 39.669025, 24.483116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312260, 39.657249, 24.666945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457875, -0.163108, 0.873926,
		0.049229, -0.986169, -0.158264,
		0.887652, -0.029443, 0.459572,
		40.578556, 39.648418, 24.804815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925499, 39.108025, 24.898249>,  <39.957199, 39.669025, 24.483116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925499, 39.108025, 24.898249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190712, 39.375183, 25.033482>,  <40.349842, 39.535477, 25.114622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190712, 39.375183, 25.033482>,  <39.925499, 39.108025, 24.898249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190712, 39.375183, 25.033482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355832, -0.116149, 0.927304,
		0.658611, -0.735135, 0.160648,
		0.663035, 0.667896, 0.338082,
		40.389622, 39.575550, 25.134907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846863, 39.014225, 25.561201>,  <39.925499, 39.108025, 24.898249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846863, 39.014225, 25.561201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090443, 39.331421, 25.553837>,  <40.236591, 39.521740, 25.549419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090443, 39.331421, 25.553837>,  <39.846863, 39.014225, 25.561201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090443, 39.331421, 25.553837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193141, 0.170747, 0.966200,
		0.769333, -0.584815, 0.257136,
		0.608953, 0.792993, -0.018410,
		40.273129, 39.569317, 25.548313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282059, 38.856567, 26.126621>,  <39.846863, 39.014225, 25.561201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282059, 38.856567, 26.126621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271667, 39.245220, 26.032591>,  <40.265434, 39.478413, 25.976171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271667, 39.245220, 26.032591>,  <40.282059, 38.856567, 26.126621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271667, 39.245220, 26.032591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345074, 0.211986, 0.914323,
		0.938216, 0.104872, 0.329777,
		-0.025979, 0.971629, -0.235077,
		40.263874, 39.536709, 25.962069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599949, 39.294956, 26.703442>,  <40.282059, 38.856567, 26.126621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599949, 39.294956, 26.703442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359924, 39.532677, 26.489250>,  <40.215912, 39.675308, 26.360735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359924, 39.532677, 26.489250>,  <40.599949, 39.294956, 26.703442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359924, 39.532677, 26.489250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421821, 0.333694, 0.843040,
		0.679703, 0.731750, 0.050451,
		-0.600059, 0.594298, -0.535480,
		40.179905, 39.710968, 26.328606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523350, 39.835865, 27.043011>,  <40.599949, 39.294956, 26.703442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523350, 39.835865, 27.043011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207439, 39.901981, 26.806728>,  <40.017895, 39.941650, 26.664959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207439, 39.901981, 26.806728>,  <40.523350, 39.835865, 27.043011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207439, 39.901981, 26.806728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536173, 0.281731, 0.795705,
		0.297945, 0.945148, -0.133878,
		-0.789777, 0.165295, -0.590704,
		39.970505, 39.951569, 26.629517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209568, 40.567822, 27.199230>,  <40.523350, 39.835865, 27.043011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209568, 40.567822, 27.199230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926479, 40.332504, 27.042746>,  <39.756626, 40.191315, 26.948854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926479, 40.332504, 27.042746>,  <40.209568, 40.567822, 27.199230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926479, 40.332504, 27.042746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590133, 0.187805, 0.785158,
		-0.388429, 0.786539, -0.480083,
		-0.707719, -0.588290, -0.391213,
		39.714165, 40.156017, 26.925381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583538, 40.924202, 27.325462>,  <40.209568, 40.567822, 27.199230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583538, 40.924202, 27.325462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386272, 40.594032, 27.215586>,  <39.267914, 40.395931, 27.149660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386272, 40.594032, 27.215586>,  <39.583538, 40.924202, 27.325462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386272, 40.594032, 27.215586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704730, 0.193941, 0.682454,
		-0.510042, 0.530147, -0.677348,
		-0.493166, -0.825428, -0.274692,
		39.238323, 40.346405, 27.133179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813000, 41.072521, 27.342512>,  <39.583538, 40.924202, 27.325462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813000, 41.072521, 27.342512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864925, 40.676991, 27.371819>,  <38.896080, 40.439671, 27.389402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864925, 40.676991, 27.371819>,  <38.813000, 41.072521, 27.342512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864925, 40.676991, 27.371819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744175, -0.048332, 0.666234,
		-0.655249, -0.141011, -0.742135,
		0.129815, -0.988828, 0.073267,
		38.903870, 40.380341, 27.393799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138264, 40.749458, 27.311819>,  <38.813000, 41.072521, 27.342512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138264, 40.749458, 27.311819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373993, 40.477341, 27.486132>,  <38.515430, 40.314072, 27.590719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373993, 40.477341, 27.486132>,  <38.138264, 40.749458, 27.311819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373993, 40.477341, 27.486132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683507, -0.132262, 0.717861,
		-0.430718, -0.720909, -0.542929,
		0.589321, -0.680292, 0.435778,
		38.550789, 40.273254, 27.616865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807396, 40.163612, 27.397341>,  <38.138264, 40.749458, 27.311819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807396, 40.163612, 27.397341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113533, 40.114544, 27.650070>,  <38.297215, 40.085102, 27.801708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113533, 40.114544, 27.650070>,  <37.807396, 40.163612, 27.397341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113533, 40.114544, 27.650070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642454, -0.204744, 0.738466,
		0.038775, -0.971098, -0.235508,
		0.765342, -0.122669, 0.631825,
		38.343136, 40.077744, 27.839617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494022, 39.695400, 27.910084>,  <37.807396, 40.163612, 27.397341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494022, 39.695400, 27.910084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842342, 39.803001, 28.074692>,  <38.051334, 39.867561, 28.173456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842342, 39.803001, 28.074692>,  <37.494022, 39.695400, 27.910084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842342, 39.803001, 28.074692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348734, -0.252041, 0.902696,
		0.346548, -0.929577, -0.125666,
		0.870798, 0.269003, 0.411519,
		38.103580, 39.883701, 28.198147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602028, 39.131714, 28.433821>,  <37.494022, 39.695400, 27.910084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602028, 39.131714, 28.433821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850021, 39.431370, 28.527121>,  <37.998817, 39.611164, 28.583099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850021, 39.431370, 28.527121>,  <37.602028, 39.131714, 28.433821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850021, 39.431370, 28.527121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169010, -0.162788, 0.972078,
		0.766194, -0.642096, 0.025686,
		0.619986, 0.749142, 0.233248,
		38.036018, 39.656113, 28.597095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170929, 38.894146, 28.899080>,  <37.602028, 39.131714, 28.433821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170929, 38.894146, 28.899080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121777, 39.281826, 28.984447>,  <38.092285, 39.514435, 29.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121777, 39.281826, 28.984447>,  <38.170929, 38.894146, 28.899080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121777, 39.281826, 28.984447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231006, -0.237073, 0.943627,
		0.965162, 0.066651, 0.253023,
		-0.122879, 0.969203, 0.213417,
		38.084911, 39.572586, 29.048473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708344, 39.028442, 29.426504>,  <38.170929, 38.894146, 28.899080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708344, 39.028442, 29.426504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418720, 39.302830, 29.455296>,  <38.244946, 39.467464, 29.472570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418720, 39.302830, 29.455296>,  <38.708344, 39.028442, 29.426504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418720, 39.302830, 29.455296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112493, -0.220406, 0.968900,
		0.680503, 0.693443, 0.236754,
		-0.724059, 0.685972, 0.071979,
		38.201504, 39.508621, 29.476889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872639, 39.460094, 30.003454>,  <38.708344, 39.028442, 29.426504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872639, 39.460094, 30.003454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480030, 39.491627, 29.933710>,  <38.244465, 39.510548, 29.891863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480030, 39.491627, 29.933710>,  <38.872639, 39.460094, 30.003454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480030, 39.491627, 29.933710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188566, -0.243522, 0.951389,
		0.032540, 0.966686, 0.253887,
		-0.981521, 0.078832, -0.174360,
		38.185574, 39.515278, 29.881403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597301, 39.976818, 30.551979>,  <38.872639, 39.460094, 30.003454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597301, 39.976818, 30.551979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282619, 39.764225, 30.426365>,  <38.093811, 39.636669, 30.350996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282619, 39.764225, 30.426365>,  <38.597301, 39.976818, 30.551979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282619, 39.764225, 30.426365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210336, -0.247491, 0.945784,
		-0.580392, 0.810106, 0.082912,
		-0.786705, -0.531485, -0.314037,
		38.046608, 39.604778, 30.332153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002739, 40.246407, 31.015015>,  <38.597301, 39.976818, 30.551979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002739, 40.246407, 31.015015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973328, 39.872200, 30.876793>,  <37.955681, 39.647678, 30.793859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973328, 39.872200, 30.876793>,  <38.002739, 40.246407, 31.015015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973328, 39.872200, 30.876793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219123, -0.322869, 0.920729,
		-0.972923, 0.143420, -0.181252,
		-0.073530, -0.935514, -0.345553,
		37.951267, 39.591545, 30.773127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445007, 39.888420, 31.393259>,  <38.002739, 40.246407, 31.015015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445007, 39.888420, 31.393259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647968, 39.585567, 31.228678>,  <37.769745, 39.403854, 31.129929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647968, 39.585567, 31.228678>,  <37.445007, 39.888420, 31.393259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647968, 39.585567, 31.228678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014027, -0.484680, 0.874579,
		-0.861597, -0.437989, -0.256546,
		0.507399, -0.757134, -0.411455,
		37.800186, 39.358429, 31.105242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096786, 39.362671, 31.668652>,  <37.445007, 39.888420, 31.393259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096786, 39.362671, 31.668652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424004, 39.176178, 31.533930>,  <37.620335, 39.064281, 31.453096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424004, 39.176178, 31.533930>,  <37.096786, 39.362671, 31.668652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424004, 39.176178, 31.533930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048734, -0.527288, 0.848288,
		-0.573095, -0.710346, -0.408620,
		0.818039, -0.466236, -0.336804,
		37.669415, 39.036308, 31.432890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987873, 38.665943, 31.793808>,  <37.096786, 39.362671, 31.668652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987873, 38.665943, 31.793808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385647, 38.678982, 31.753742>,  <37.624313, 38.686806, 31.729704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385647, 38.678982, 31.753742>,  <36.987873, 38.665943, 31.793808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385647, 38.678982, 31.753742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099593, -0.600579, 0.793339,
		-0.034298, -0.798901, -0.600484,
		0.994437, 0.032594, -0.100163,
		37.683979, 38.688759, 31.723694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164982, 38.037170, 31.947693>,  <36.987873, 38.665943, 31.793808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164982, 38.037170, 31.947693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505470, 38.237839, 32.009338>,  <37.709763, 38.358242, 32.046326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505470, 38.237839, 32.009338>,  <37.164982, 38.037170, 31.947693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505470, 38.237839, 32.009338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271526, -0.672282, 0.688702,
		0.449113, -0.544388, -0.708476,
		0.851217, 0.501675, 0.154115,
		37.760834, 38.388340, 32.055573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685635, 37.487160, 31.978970>,  <37.164982, 38.037170, 31.947693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685635, 37.487160, 31.978970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859005, 37.804359, 32.150223>,  <37.963028, 37.994678, 32.252975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859005, 37.804359, 32.150223>,  <37.685635, 37.487160, 31.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859005, 37.804359, 32.150223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590897, -0.608768, 0.529379,
		0.680431, 0.023537, -0.732435,
		0.433423, 0.792999, 0.428133,
		37.989033, 38.042259, 32.278664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243313, 37.260281, 32.043922>,  <37.685635, 37.487160, 31.978970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243313, 37.260281, 32.043922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237720, 37.567150, 32.300438>,  <38.234364, 37.751270, 32.454346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237720, 37.567150, 32.300438>,  <38.243313, 37.260281, 32.043922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237720, 37.567150, 32.300438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441237, -0.570795, 0.692462,
		0.897282, 0.292642, -0.330525,
		-0.013981, 0.767173, 0.641288,
		38.233524, 37.797302, 32.492825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955288, 37.378944, 32.350349>,  <38.243313, 37.260281, 32.043922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955288, 37.378944, 32.350349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672718, 37.506634, 32.603035>,  <38.503178, 37.583248, 32.754646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672718, 37.506634, 32.603035>,  <38.955288, 37.378944, 32.350349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672718, 37.506634, 32.603035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409043, -0.544251, 0.732444,
		0.577628, 0.775812, 0.253892,
		-0.706420, 0.319227, 0.631715,
		38.460793, 37.602402, 32.792549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316097, 37.556286, 32.973202>,  <38.955288, 37.378944, 32.350349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316097, 37.556286, 32.973202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936733, 37.503410, 33.088467>,  <38.709114, 37.471684, 33.157623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936733, 37.503410, 33.088467>,  <39.316097, 37.556286, 32.973202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936733, 37.503410, 33.088467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316595, -0.442717, 0.838910,
		0.016679, 0.886864, 0.461729,
		-0.948414, -0.132189, 0.288160,
		38.652210, 37.463753, 33.174915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420792, 37.634388, 33.637951>,  <39.316097, 37.556286, 32.973202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420792, 37.634388, 33.637951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073551, 37.442150, 33.588253>,  <38.865208, 37.326809, 33.558434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073551, 37.442150, 33.588253>,  <39.420792, 37.634388, 33.637951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073551, 37.442150, 33.588253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111604, -0.432843, 0.894534,
		-0.483684, 0.762677, 0.429386,
		-0.868098, -0.480594, -0.124241,
		38.813122, 37.297974, 33.550980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062351, 37.661621, 34.294998>,  <39.420792, 37.634388, 33.637951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062351, 37.661621, 34.294998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897575, 37.345501, 34.113567>,  <38.798710, 37.155830, 34.004711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897575, 37.345501, 34.113567>,  <39.062351, 37.661621, 34.294998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897575, 37.345501, 34.113567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050198, -0.477334, 0.877287,
		-0.909826, 0.384161, 0.156963,
		-0.411943, -0.790300, -0.453575,
		38.773994, 37.108410, 33.977493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665916, 37.373043, 34.813267>,  <39.062351, 37.661621, 34.294998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665916, 37.373043, 34.813267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683319, 37.070126, 34.552616>,  <38.693760, 36.888374, 34.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683319, 37.070126, 34.552616>,  <38.665916, 37.373043, 34.813267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683319, 37.070126, 34.552616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018097, -0.652733, 0.757372,
		-0.998889, -0.021156, -0.042102,
		0.043504, -0.757293, -0.651625,
		38.696369, 36.842937, 34.357128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039715, 36.903400, 34.851894>,  <38.665916, 37.373043, 34.813267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039715, 36.903400, 34.851894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349209, 36.696812, 34.705151>,  <38.534904, 36.572857, 34.617104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349209, 36.696812, 34.705151>,  <38.039715, 36.903400, 34.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349209, 36.696812, 34.705151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098404, -0.670048, 0.735766,
		-0.625816, -0.533190, -0.569265,
		0.773738, -0.516472, -0.366859,
		38.581329, 36.541870, 34.595093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947948, 36.260479, 34.995892>,  <38.039715, 36.903400, 34.851894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947948, 36.260479, 34.995892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335354, 36.238865, 34.898678>,  <38.567795, 36.225895, 34.840347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335354, 36.238865, 34.898678>,  <37.947948, 36.260479, 34.995892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335354, 36.238865, 34.898678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112258, -0.776534, 0.619994,
		-0.222228, -0.627754, -0.746016,
		0.968511, -0.054034, -0.243038,
		38.625908, 36.222656, 34.825768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028973, 35.566784, 35.017727>,  <37.947948, 36.260479, 34.995892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028973, 35.566784, 35.017727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376129, 35.763248, 35.047466>,  <38.584423, 35.881126, 35.065308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376129, 35.763248, 35.047466>,  <38.028973, 35.566784, 35.017727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376129, 35.763248, 35.047466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261650, -0.579205, 0.772050,
		0.422262, -0.650602, -0.631199,
		0.867891, 0.491161, 0.074346,
		38.636497, 35.910595, 35.069771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626644, 35.038986, 35.054459>,  <38.028973, 35.566784, 35.017727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626644, 35.038986, 35.054459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723080, 35.388245, 35.223927>,  <38.780941, 35.597797, 35.325607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723080, 35.388245, 35.223927>,  <38.626644, 35.038986, 35.054459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723080, 35.388245, 35.223927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137291, -0.462844, 0.875743,
		0.960744, -0.152963, -0.231459,
		0.241086, 0.873142, 0.423674,
		38.795406, 35.650188, 35.351028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285519, 35.069160, 35.225502>,  <38.626644, 35.038986, 35.054459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285519, 35.069160, 35.225502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132652, 35.318577, 35.498310>,  <39.040932, 35.468227, 35.661995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132652, 35.318577, 35.498310>,  <39.285519, 35.069160, 35.225502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132652, 35.318577, 35.498310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405599, -0.549970, 0.730084,
		0.830326, 0.555637, -0.042729,
		-0.382162, 0.623539, 0.682020,
		39.018005, 35.505638, 35.702915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765675, 34.905323, 35.779331>,  <39.285519, 35.069160, 35.225502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765675, 34.905323, 35.779331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484032, 35.130253, 35.952778>,  <39.315044, 35.265209, 36.056847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484032, 35.130253, 35.952778>,  <39.765675, 34.905323, 35.779331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484032, 35.130253, 35.952778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323110, -0.290050, 0.900817,
		0.632319, 0.774381, 0.022536,
		-0.704112, 0.562322, 0.433614,
		39.272797, 35.298950, 36.082863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008148, 35.115547, 36.364677>,  <39.765675, 34.905323, 35.779331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008148, 35.115547, 36.364677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650917, 35.243301, 36.491421>,  <39.436577, 35.319954, 36.567467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650917, 35.243301, 36.491421>,  <40.008148, 35.115547, 36.364677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650917, 35.243301, 36.491421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267456, -0.189423, 0.944768,
		0.361769, 0.928499, 0.083747,
		-0.893080, 0.319389, 0.316859,
		39.382992, 35.339119, 36.586479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181721, 35.309475, 36.972950>,  <40.008148, 35.115547, 36.364677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181721, 35.309475, 36.972950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782398, 35.301876, 36.994942>,  <39.542805, 35.297318, 37.008137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782398, 35.301876, 36.994942>,  <40.181721, 35.309475, 36.972950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782398, 35.301876, 36.994942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058103, -0.371442, 0.926636,
		0.002818, 0.928262, 0.371917,
		-0.998307, -0.018998, 0.054982,
		39.482906, 35.296177, 37.011436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035503, 35.455364, 37.620003>,  <40.181721, 35.309475, 36.972950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035503, 35.455364, 37.620003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680321, 35.310566, 37.506519>,  <39.467213, 35.223686, 37.438431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680321, 35.310566, 37.506519>,  <40.035503, 35.455364, 37.620003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680321, 35.310566, 37.506519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082968, -0.480662, 0.872972,
		-0.452383, 0.798700, 0.396772,
		-0.887956, -0.361998, -0.283710,
		39.413933, 35.201965, 37.421406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581734, 35.596161, 38.273750>,  <40.035503, 35.455364, 37.620003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581734, 35.596161, 38.273750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433537, 35.282791, 38.074162>,  <39.344620, 35.094769, 37.954407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433537, 35.282791, 38.074162>,  <39.581734, 35.596161, 38.273750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433537, 35.282791, 38.074162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044052, -0.521781, 0.851942,
		-0.927790, 0.337621, 0.158805,
		-0.370494, -0.783427, -0.498975,
		39.322388, 35.047764, 37.924469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904205, 35.427010, 38.569653>,  <39.581734, 35.596161, 38.273750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904205, 35.427010, 38.569653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074570, 35.120689, 38.376923>,  <39.176788, 34.936897, 38.261284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074570, 35.120689, 38.376923>,  <38.904205, 35.427010, 38.569653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074570, 35.120689, 38.376923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239258, -0.608910, 0.756296,
		-0.872558, -0.206833, -0.442563,
		0.425909, -0.765799, -0.481823,
		39.202343, 34.890949, 38.232376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450264, 34.773575, 38.760101>,  <38.904205, 35.427010, 38.569653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450264, 34.773575, 38.760101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792923, 34.608841, 38.635811>,  <38.998516, 34.510002, 38.561237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792923, 34.608841, 38.635811>,  <38.450264, 34.773575, 38.760101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792923, 34.608841, 38.635811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130860, -0.756053, 0.641295,
		-0.499034, -0.508701, -0.701562,
		0.856645, -0.411835, -0.310728,
		39.049915, 34.485291, 38.542591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379944, 34.044388, 38.930931>,  <38.450264, 34.773575, 38.760101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379944, 34.044388, 38.930931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773739, 34.062252, 38.863064>,  <39.010017, 34.072971, 38.822342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773739, 34.062252, 38.863064>,  <38.379944, 34.044388, 38.930931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773739, 34.062252, 38.863064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155050, -0.674025, 0.722253,
		-0.082105, -0.737357, -0.670494,
		0.984489, 0.044660, -0.169668,
		39.069084, 34.075649, 38.812164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724697, 33.336956, 38.869598>,  <38.379944, 34.044388, 38.930931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724697, 33.336956, 38.869598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978497, 33.613811, 39.007210>,  <39.130775, 33.779922, 39.089779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978497, 33.613811, 39.007210>,  <38.724697, 33.336956, 38.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978497, 33.613811, 39.007210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149836, -0.546808, 0.823742,
		0.758261, -0.471115, -0.450656,
		0.634499, 0.692136, 0.344033,
		39.168846, 33.821453, 39.110420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406975, 32.938896, 39.038464>,  <38.724697, 33.336956, 38.869598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406975, 32.938896, 39.038464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363674, 33.274151, 39.252308>,  <39.337692, 33.475304, 39.380615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363674, 33.274151, 39.252308>,  <39.406975, 32.938896, 39.038464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363674, 33.274151, 39.252308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217746, -0.504719, 0.835371,
		0.969984, 0.206839, -0.127865,
		-0.108251, 0.838139, 0.534607,
		39.331200, 33.525593, 39.412689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984295, 33.070248, 39.427376>,  <39.406975, 32.938896, 39.038464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984295, 33.070248, 39.427376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699562, 33.247929, 39.644993>,  <39.528721, 33.354538, 39.775562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699562, 33.247929, 39.644993>,  <39.984295, 33.070248, 39.427376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699562, 33.247929, 39.644993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274941, -0.536556, 0.797819,
		0.646300, 0.717493, 0.259809,
		-0.711831, 0.444198, 0.544044,
		39.486012, 33.381187, 39.808205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249447, 33.294765, 39.965591>,  <39.984295, 33.070248, 39.427376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249447, 33.294765, 39.965591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866306, 33.255753, 40.073666>,  <39.636421, 33.232346, 40.138512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866306, 33.255753, 40.073666>,  <40.249447, 33.294765, 39.965591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866306, 33.255753, 40.073666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276677, -0.566135, 0.776493,
		0.077231, 0.818522, 0.569260,
		-0.957855, -0.097531, 0.270190,
		39.578949, 33.226494, 40.154724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212387, 33.551548, 40.616497>,  <40.249447, 33.294765, 39.965591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212387, 33.551548, 40.616497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898361, 33.311302, 40.555923>,  <39.709946, 33.167156, 40.519577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898361, 33.311302, 40.555923>,  <40.212387, 33.551548, 40.616497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898361, 33.311302, 40.555923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208993, -0.486998, 0.848030,
		-0.583088, 0.634111, 0.507850,
		-0.785067, -0.600613, -0.151438,
		39.662842, 33.131119, 40.510490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726555, 33.414581, 41.248512>,  <40.212387, 33.551548, 40.616497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726555, 33.414581, 41.248512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717823, 33.094967, 41.008156>,  <39.712585, 32.903198, 40.863941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717823, 33.094967, 41.008156>,  <39.726555, 33.414581, 41.248512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717823, 33.094967, 41.008156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328424, -0.573408, 0.750561,
		-0.944278, -0.180962, 0.274940,
		-0.021830, -0.799035, -0.600888,
		39.711273, 32.855255, 40.827888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375130, 32.762024, 41.603893>,  <39.726555, 33.414581, 41.248512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375130, 32.762024, 41.603893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635273, 32.652035, 41.320648>,  <39.791359, 32.586040, 41.150700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635273, 32.652035, 41.320648>,  <39.375130, 32.762024, 41.603893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635273, 32.652035, 41.320648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388053, -0.681113, 0.620887,
		-0.653030, -0.678585, -0.336265,
		0.650359, -0.274969, -0.708114,
		39.830379, 32.569546, 41.108215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437798, 32.019669, 41.609543>,  <39.375130, 32.762024, 41.603893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437798, 32.019669, 41.609543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775700, 32.165733, 41.453060>,  <39.978439, 32.253372, 41.359169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775700, 32.165733, 41.453060>,  <39.437798, 32.019669, 41.609543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775700, 32.165733, 41.453060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535125, -0.569085, 0.624326,
		0.005349, -0.736749, -0.676145,
		0.844755, 0.365162, -0.391209,
		40.029125, 32.275280, 41.335697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778492, 31.445669, 41.777363>,  <39.437798, 32.019669, 41.609543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778492, 31.445669, 41.777363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461040, 31.548578, 41.556831>,  <39.270569, 31.610323, 41.424511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461040, 31.548578, 41.556831>,  <39.778492, 31.445669, 41.777363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461040, 31.548578, 41.556831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603331, 0.449574, -0.658691,
		0.078401, -0.855391, -0.512016,
		-0.793628, 0.257273, -0.551331,
		39.222954, 31.625761, 41.391434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694813, 31.271067, 40.983120>,  <39.778492, 31.445669, 41.777363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694813, 31.271067, 40.983120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566704, 30.958965, 40.768223>,  <39.489838, 30.771706, 40.639282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566704, 30.958965, 40.768223>,  <39.694813, 31.271067, 40.983120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566704, 30.958965, 40.768223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890248, 0.441772, -0.110887,
		0.323861, 0.442769, -0.836104,
		-0.320270, -0.780252, -0.537246,
		39.470623, 30.724890, 40.607048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136852, 31.606688, 40.776360>,  <39.694813, 31.271067, 40.983120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136852, 31.606688, 40.776360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054245, 31.224348, 40.692741>,  <39.004681, 30.994944, 40.642570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054245, 31.224348, 40.692741>,  <39.136852, 31.606688, 40.776360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054245, 31.224348, 40.692741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935308, 0.255596, -0.244681,
		0.287310, 0.144991, -0.946800,
		-0.206522, -0.955850, -0.209047,
		38.992287, 30.937593, 40.630028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194462, 32.073254, 40.209873>,  <39.136852, 31.606688, 40.776360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194462, 32.073254, 40.209873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256062, 32.358139, 40.483818>,  <39.293022, 32.529072, 40.648186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256062, 32.358139, 40.483818>,  <39.194462, 32.073254, 40.209873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256062, 32.358139, 40.483818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286745, 0.695513, -0.658817,
		-0.945548, -0.094922, 0.311334,
		0.154001, 0.712216, 0.684859,
		39.302261, 32.571804, 40.689278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586033, 32.424175, 40.379620>,  <39.194462, 32.073254, 40.209873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586033, 32.424175, 40.379620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900890, 32.664753, 40.434280>,  <39.089806, 32.809097, 40.467075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900890, 32.664753, 40.434280>,  <38.586033, 32.424175, 40.379620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900890, 32.664753, 40.434280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404751, 0.670895, -0.621351,
		-0.465383, 0.433783, 0.771525,
		0.787143, 0.601442, 0.136649,
		39.137032, 32.845184, 40.475273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306580, 33.107239, 40.524254>,  <38.586033, 32.424175, 40.379620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306580, 33.107239, 40.524254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685600, 33.144806, 40.402061>,  <38.913013, 33.167347, 40.328747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685600, 33.144806, 40.402061>,  <38.306580, 33.107239, 40.524254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685600, 33.144806, 40.402061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279087, 0.708902, -0.647741,
		0.155724, 0.699027, 0.697934,
		0.947555, 0.093916, -0.305482,
		38.969868, 33.172981, 40.310417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586048, 33.927864, 40.506226>,  <38.306580, 33.107239, 40.524254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586048, 33.927864, 40.506226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879509, 33.758541, 40.293598>,  <39.055584, 33.656948, 40.166023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879509, 33.758541, 40.293598>,  <38.586048, 33.927864, 40.506226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879509, 33.758541, 40.293598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002505, 0.780577, -0.625055,
		0.679520, 0.459905, 0.571612,
		0.733653, -0.423305, -0.531570,
		39.099606, 33.631550, 40.134129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113934, 34.389927, 40.373604>,  <38.586048, 33.927864, 40.506226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113934, 34.389927, 40.373604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160690, 34.146385, 40.059753>,  <39.188744, 34.000259, 39.871445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160690, 34.146385, 40.059753>,  <39.113934, 34.389927, 40.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160690, 34.146385, 40.059753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146815, 0.791954, -0.592668,
		0.982233, -0.045918, 0.181959,
		0.116889, -0.608852, -0.784625,
		39.195759, 33.963730, 39.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750710, 34.619320, 39.946735>,  <39.113934, 34.389927, 40.373604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750710, 34.619320, 39.946735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504387, 34.398998, 39.721386>,  <39.356594, 34.266804, 39.586178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504387, 34.398998, 39.721386>,  <39.750710, 34.619320, 39.946735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504387, 34.398998, 39.721386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107643, 0.649516, -0.752690,
		0.780508, -0.524156, -0.340687,
		-0.615809, -0.550808, -0.563373,
		39.319645, 34.233757, 39.552376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022015, 34.361187, 39.194046>,  <39.750710, 34.619320, 39.946735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022015, 34.361187, 39.194046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625183, 34.409790, 39.206749>,  <39.387085, 34.438950, 39.214371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625183, 34.409790, 39.206749>,  <40.022015, 34.361187, 39.194046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625183, 34.409790, 39.206749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075797, 0.780954, -0.619972,
		-0.100134, -0.612656, -0.783981,
		-0.992083, 0.121504, 0.031762,
		39.327557, 34.446239, 39.216278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287697, 34.321220, 38.495487>,  <40.022015, 34.361187, 39.194046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287697, 34.321220, 38.495487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926586, 34.185493, 38.601208>,  <39.709919, 34.104057, 38.664639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926586, 34.185493, 38.601208>,  <40.287697, 34.321220, 38.495487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926586, 34.185493, 38.601208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404273, 0.459698, -0.790722,
		0.146803, -0.820698, -0.552181,
		-0.902780, -0.339313, 0.264301,
		39.655750, 34.083698, 38.680496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013126, 33.996635, 37.881073>,  <40.287697, 34.321220, 38.495487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013126, 33.996635, 37.881073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706459, 34.131439, 38.099663>,  <39.522457, 34.212322, 38.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706459, 34.131439, 38.099663>,  <40.013126, 33.996635, 37.881073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706459, 34.131439, 38.099663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396755, 0.420504, -0.815942,
		-0.504780, -0.842377, -0.188676,
		-0.766670, 0.337014, 0.546479,
		39.476460, 34.232544, 38.263607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563339, 33.970982, 37.424431>,  <40.013126, 33.996635, 37.881073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563339, 33.970982, 37.424431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395603, 34.203014, 37.703762>,  <39.294964, 34.342236, 37.871361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395603, 34.203014, 37.703762>,  <39.563339, 33.970982, 37.424431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395603, 34.203014, 37.703762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429687, 0.550781, -0.715548,
		-0.799703, -0.600117, 0.018292,
		-0.419338, 0.580086, 0.698324,
		39.269802, 34.377041, 37.913258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848892, 34.103779, 37.205582>,  <39.563339, 33.970982, 37.424431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848892, 34.103779, 37.205582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967228, 34.403473, 37.442608>,  <39.038231, 34.583290, 37.584824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967228, 34.403473, 37.442608>,  <38.848892, 34.103779, 37.205582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967228, 34.403473, 37.442608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197898, 0.654944, -0.729304,
		-0.934514, 0.098490, 0.342030,
		0.295839, 0.749231, 0.592563,
		39.055981, 34.628242, 37.620377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366104, 34.600231, 37.047806>,  <38.848892, 34.103779, 37.205582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366104, 34.600231, 37.047806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687042, 34.794456, 37.186642>,  <38.879604, 34.910992, 37.269943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687042, 34.794456, 37.186642>,  <38.366104, 34.600231, 37.047806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687042, 34.794456, 37.186642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100670, 0.683290, -0.723174,
		-0.588311, 0.545292, 0.597115,
		0.802344, 0.485563, 0.347093,
		38.927746, 34.940125, 37.290768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140720, 35.285450, 36.914413>,  <38.366104, 34.600231, 37.047806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140720, 35.285450, 36.914413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535095, 35.273937, 36.980251>,  <38.771721, 35.267029, 37.019756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535095, 35.273937, 36.980251>,  <38.140720, 35.285450, 36.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535095, 35.273937, 36.980251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144995, 0.636968, -0.757131,
		-0.083048, 0.770352, 0.632187,
		0.985941, -0.028786, 0.164596,
		38.830879, 35.265301, 37.029629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326561, 35.884048, 37.052727>,  <38.140720, 35.285450, 36.914413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326561, 35.884048, 37.052727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632980, 35.684082, 36.891109>,  <38.816833, 35.564102, 36.794140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632980, 35.684082, 36.891109>,  <38.326561, 35.884048, 37.052727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632980, 35.684082, 36.891109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006825, 0.634881, -0.772580,
		0.642743, 0.589078, 0.489764,
		0.766052, -0.499913, -0.404045,
		38.862797, 35.534107, 36.769897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780342, 36.380600, 36.841412>,  <38.326561, 35.884048, 37.052727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780342, 36.380600, 36.841412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856892, 36.047607, 36.633430>,  <38.902821, 35.847813, 36.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856892, 36.047607, 36.633430>,  <38.780342, 36.380600, 36.841412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856892, 36.047607, 36.633430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264340, 0.553889, -0.789513,
		0.945251, 0.013647, 0.326058,
		0.191374, -0.832479, -0.519957,
		38.914303, 35.797863, 36.477444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826488, 36.587681, 36.149315>,  <38.780342, 36.380600, 36.841412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826488, 36.587681, 36.149315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955334, 36.226074, 36.036888>,  <39.032642, 36.009109, 35.969433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955334, 36.226074, 36.036888>,  <38.826488, 36.587681, 36.149315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955334, 36.226074, 36.036888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089653, 0.324689, -0.941562,
		0.942446, 0.278094, 0.185635,
		0.322116, -0.904014, -0.281070,
		39.051968, 35.954868, 35.952568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411163, 36.788795, 35.676701>,  <38.826488, 36.587681, 36.149315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411163, 36.788795, 35.676701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241226, 36.437954, 35.587082>,  <39.139263, 36.227448, 35.533310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241226, 36.437954, 35.587082>,  <39.411163, 36.788795, 35.676701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241226, 36.437954, 35.587082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001611, 0.248225, -0.968701,
		0.905267, -0.411183, -0.106869,
		-0.424841, -0.877105, -0.224048,
		39.113773, 36.174824, 35.519867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794216, 36.249657, 35.277321>,  <39.411163, 36.788795, 35.676701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794216, 36.249657, 35.277321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406322, 36.199665, 35.193420>,  <39.173588, 36.169670, 35.143078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406322, 36.199665, 35.193420>,  <39.794216, 36.249657, 35.277321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406322, 36.199665, 35.193420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194047, 0.126929, -0.972746,
		0.148206, -0.984006, -0.098833,
		-0.969732, -0.124989, -0.209755,
		39.115402, 36.162170, 35.130493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911068, 36.275784, 34.577408>,  <39.794216, 36.249657, 35.277321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911068, 36.275784, 34.577408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519226, 36.216988, 34.632202>,  <39.284119, 36.181709, 34.665077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519226, 36.216988, 34.632202>,  <39.911068, 36.275784, 34.577408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519226, 36.216988, 34.632202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181223, 0.351986, -0.918294,
		0.086763, -0.924392, -0.371446,
		-0.979607, -0.146988, 0.136982,
		39.225346, 36.172890, 34.673298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626415, 36.117691, 33.970695>,  <39.911068, 36.275784, 34.577408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626415, 36.117691, 33.970695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291767, 36.223640, 34.162491>,  <39.090977, 36.287212, 34.277569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291767, 36.223640, 34.162491>,  <39.626415, 36.117691, 33.970695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291767, 36.223640, 34.162491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366169, 0.380599, -0.849155,
		-0.407414, -0.885993, -0.221427,
		-0.836621, 0.264878, 0.479485,
		39.040779, 36.303104, 34.306335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067848, 35.886292, 33.572876>,  <39.626415, 36.117691, 33.970695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067848, 35.886292, 33.572876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915234, 36.174347, 33.804680>,  <38.823666, 36.347179, 33.943764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915234, 36.174347, 33.804680>,  <39.067848, 35.886292, 33.572876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915234, 36.174347, 33.804680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284065, 0.505248, -0.814881,
		-0.879621, -0.475529, 0.011793,
		-0.381541, 0.720136, 0.579508,
		38.800770, 36.390388, 33.978531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412804, 35.154366, 33.556217>,  <39.067848, 35.886292, 33.572876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412804, 35.154366, 33.556217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638500, 35.477863, 33.489803>,  <39.773918, 35.671963, 33.449955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638500, 35.477863, 33.489803>,  <39.412804, 35.154366, 33.556217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638500, 35.477863, 33.489803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817257, -0.518584, 0.251319,
		0.117149, -0.277499, -0.953557,
		0.564240, 0.808743, -0.166037,
		39.807774, 35.720486, 33.439991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955822, 34.989403, 32.973145>,  <39.412804, 35.154366, 33.556217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955822, 34.989403, 32.973145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054085, 35.262398, 33.248493>,  <40.113041, 35.426197, 33.413704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054085, 35.262398, 33.248493>,  <39.955822, 34.989403, 32.973145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054085, 35.262398, 33.248493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815400, -0.529501, 0.233989,
		0.524191, 0.503820, -0.686578,
		0.245655, 0.682491, 0.688375,
		40.127781, 35.467144, 33.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732365, 35.207905, 32.886154>,  <39.955822, 34.989403, 32.973145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732365, 35.207905, 32.886154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576595, 35.190655, 33.254173>,  <40.483135, 35.180305, 33.474987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576595, 35.190655, 33.254173>,  <40.732365, 35.207905, 32.886154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576595, 35.190655, 33.254173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734495, -0.617271, 0.281947,
		0.555760, 0.785567, 0.272057,
		-0.389421, -0.043130, 0.920049,
		40.459770, 35.177715, 33.530190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350693, 35.223869, 33.422722>,  <40.732365, 35.207905, 32.886154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350693, 35.223869, 33.422722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020157, 35.046646, 33.561783>,  <40.821835, 34.940311, 33.645218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020157, 35.046646, 33.561783>,  <41.350693, 35.223869, 33.422722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020157, 35.046646, 33.561783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557217, -0.732743, 0.390637,
		0.081665, 0.516517, 0.852374,
		-0.826341, -0.443056, 0.347651,
		40.772255, 34.913731, 33.666077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909039, 34.688988, 33.701859>,  <41.350693, 35.223869, 33.422722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909039, 34.688988, 33.701859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235691, 34.892990, 33.809937>,  <42.431683, 35.015392, 33.874783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235691, 34.892990, 33.809937>,  <41.909039, 34.688988, 33.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235691, 34.892990, 33.809937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254526, -0.101935, 0.961679,
		0.518007, -0.854108, 0.046568,
		0.816630, 0.510009, 0.270195,
		42.480679, 35.045994, 33.890995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413288, 34.745110, 34.266216>,  <41.909039, 34.688988, 33.701859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413288, 34.745110, 34.266216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231014, 34.909203, 34.582207>,  <41.121651, 35.007660, 34.771801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231014, 34.909203, 34.582207>,  <41.413288, 34.745110, 34.266216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231014, 34.909203, 34.582207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678581, 0.734457, 0.010025,
		-0.576088, 0.540628, -0.613061,
		-0.455687, 0.410236, 0.789972,
		41.094307, 35.032272, 34.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177509, 35.432484, 34.099163>,  <41.413288, 34.745110, 34.266216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177509, 35.432484, 34.099163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298397, 35.341640, 34.469479>,  <41.370930, 35.287136, 34.691669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298397, 35.341640, 34.469479>,  <41.177509, 35.432484, 34.099163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298397, 35.341640, 34.469479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698532, 0.713616, -0.052976,
		-0.648627, 0.662703, 0.374310,
		0.302221, -0.227106, 0.925789,
		41.389065, 35.273510, 34.747215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259018, 36.053516, 34.581757>,  <41.177509, 35.432484, 34.099163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259018, 36.053516, 34.581757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508511, 35.757004, 34.680923>,  <41.658207, 35.579098, 34.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508511, 35.757004, 34.680923>,  <41.259018, 36.053516, 34.581757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508511, 35.757004, 34.680923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770658, 0.636196, -0.036619,
		-0.130581, 0.213902, 0.968088,
		0.623727, -0.741283, 0.247921,
		41.695629, 35.534618, 34.755299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856846, 36.380543, 34.972862>,  <41.259018, 36.053516, 34.581757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856846, 36.380543, 34.972862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998035, 36.028625, 34.845509>,  <42.082748, 35.817474, 34.769096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998035, 36.028625, 34.845509>,  <41.856846, 36.380543, 34.972862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998035, 36.028625, 34.845509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881158, 0.427003, -0.203048,
		0.314590, -0.208871, 0.925962,
		0.352978, -0.879796, -0.318379,
		42.103928, 35.764687, 34.749996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594181, 36.235332, 35.185192>,  <41.856846, 36.380543, 34.972862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594181, 36.235332, 35.185192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517479, 36.010517, 34.863361>,  <42.471458, 35.875629, 34.670261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517479, 36.010517, 34.863361>,  <42.594181, 36.235332, 35.185192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517479, 36.010517, 34.863361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891595, 0.242906, -0.382171,
		0.410232, -0.790639, 0.454533,
		-0.191751, -0.562038, -0.804577,
		42.459953, 35.841908, 34.621986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964424, 35.688915, 35.063721>,  <42.594181, 36.235332, 35.185192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964424, 35.688915, 35.063721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859863, 35.881626, 34.729160>,  <42.797127, 35.997253, 34.528423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859863, 35.881626, 34.729160>,  <42.964424, 35.688915, 35.063721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859863, 35.881626, 34.729160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819787, 0.568237, 0.071101,
		0.509528, -0.667083, -0.543490,
		-0.261401, 0.481774, -0.836399,
		42.781445, 36.026157, 34.478241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654503, 35.531498, 34.790150>,  <42.964424, 35.688915, 35.063721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654503, 35.531498, 34.790150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302673, 35.618443, 34.620869>,  <43.091576, 35.670609, 34.519299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302673, 35.618443, 34.620869>,  <43.654503, 35.531498, 34.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302673, 35.618443, 34.620869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062534, 0.828997, 0.555746,
		0.471632, 0.515285, -0.715573,
		-0.879575, 0.217360, -0.423204,
		43.038799, 35.683651, 34.493908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965031, 35.488487, 35.514130>,  <43.654503, 35.531498, 34.790150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965031, 35.488487, 35.514130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846622, 35.135601, 35.367668>,  <43.775578, 34.923870, 35.279793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846622, 35.135601, 35.367668>,  <43.965031, 35.488487, 35.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846622, 35.135601, 35.367668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955065, -0.279343, -0.099089,
		-0.014865, -0.379035, 0.925263,
		-0.296024, -0.882213, -0.366155,
		43.757816, 34.870937, 35.257820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322552, 34.962265, 35.849594>,  <43.965031, 35.488487, 35.514130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322552, 34.962265, 35.849594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234219, 34.838757, 35.479534>,  <44.181221, 34.764652, 35.257500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234219, 34.838757, 35.479534>,  <44.322552, 34.962265, 35.849594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234219, 34.838757, 35.479534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834021, -0.551528, -0.015002,
		-0.505611, -0.774904, 0.379317,
		-0.220829, -0.308773, -0.925145,
		44.167969, 34.746124, 35.201992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874653, 35.282715, 36.068153>,  <44.322552, 34.962265, 35.849594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874653, 35.282715, 36.068153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736282, 35.317017, 35.694420>,  <44.653259, 35.337597, 35.470181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736282, 35.317017, 35.694420>,  <44.874653, 35.282715, 36.068153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736282, 35.317017, 35.694420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731137, 0.648731, -0.211157,
		0.588025, -0.756171, -0.287109,
		-0.345927, 0.085751, -0.934335,
		44.632504, 35.342743, 35.414120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475338, 35.238819, 35.615383>,  <44.874653, 35.282715, 36.068153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475338, 35.238819, 35.615383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180420, 35.435551, 35.430130>,  <45.003468, 35.553589, 35.318977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180420, 35.435551, 35.430130>,  <45.475338, 35.238819, 35.615383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180420, 35.435551, 35.430130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640362, 0.727216, -0.247169,
		0.215235, -0.478812, -0.851124,
		-0.737299, 0.491829, -0.463135,
		44.959229, 35.583099, 35.291191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723209, 35.480087, 34.923264>,  <45.475338, 35.238819, 35.615383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723209, 35.480087, 34.923264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429188, 35.711765, 35.064251>,  <45.252777, 35.850773, 35.148846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429188, 35.711765, 35.064251>,  <45.723209, 35.480087, 34.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429188, 35.711765, 35.064251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591886, 0.801728, -0.083087,
		-0.330710, 0.147550, -0.932127,
		-0.735052, 0.579191, 0.352472,
		45.208672, 35.885521, 35.169991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252243, 35.196548, 35.449039>,  <45.723209, 35.480087, 34.923264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252243, 35.196548, 35.449039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578091, 35.346802, 35.625809>,  <46.773598, 35.436954, 35.731873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578091, 35.346802, 35.625809>,  <46.252243, 35.196548, 35.449039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578091, 35.346802, 35.625809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579586, -0.555946, -0.595821,
		0.021878, 0.741501, -0.670595,
		0.814617, 0.375632, 0.441927,
		46.822475, 35.459492, 35.758389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763634, 35.533909, 35.072994>,  <46.252243, 35.196548, 35.449039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763634, 35.533909, 35.072994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941936, 35.356754, 35.384159>,  <47.048920, 35.250462, 35.570858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941936, 35.356754, 35.384159>,  <46.763634, 35.533909, 35.072994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941936, 35.356754, 35.384159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708579, -0.356465, -0.608974,
		0.547007, 0.822667, 0.154926,
		0.445757, -0.442890, 0.777913,
		47.075665, 35.223888, 35.617535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447872, 35.781055, 35.099300>,  <46.763634, 35.533909, 35.072994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447872, 35.781055, 35.099300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370770, 35.412640, 35.234669>,  <47.324509, 35.191589, 35.315891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370770, 35.412640, 35.234669>,  <47.447872, 35.781055, 35.099300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370770, 35.412640, 35.234669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624852, -0.381139, -0.681391,
		0.756574, 0.080119, 0.648982,
		-0.192760, -0.921040, 0.338422,
		47.312943, 35.136326, 35.336197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.037434, 35.408470, 35.142872>,  <47.447872, 35.781055, 35.099300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.037434, 35.408470, 35.142872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794399, 35.090847, 35.135822>,  <47.648579, 34.900272, 35.131592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794399, 35.090847, 35.135822>,  <48.037434, 35.408470, 35.142872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794399, 35.090847, 35.135822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546433, -0.401798, -0.734826,
		0.576412, -0.456102, 0.678027,
		-0.607585, -0.794059, -0.017629,
		47.612125, 34.852631, 35.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.569283, 37.472355, 24.706877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185848, 37.549702, 24.623230>,  <36.955788, 37.596111, 24.573042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185848, 37.549702, 24.623230>,  <37.569283, 37.472355, 24.706877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185848, 37.549702, 24.623230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214562, -0.007424, 0.976682,
		0.187307, 0.981098, 0.048607,
		-0.958582, 0.193369, -0.209116,
		36.898273, 37.607712, 24.560495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330116, 38.014992, 25.128637>,  <37.569283, 37.472355, 24.706877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330116, 38.014992, 25.128637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975414, 37.868187, 25.016226>,  <36.762592, 37.780106, 24.948778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975414, 37.868187, 25.016226>,  <37.330116, 38.014992, 25.128637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975414, 37.868187, 25.016226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343485, 0.116309, 0.931928,
		-0.309341, 0.922917, -0.229199,
		-0.886750, -0.367010, -0.281029,
		36.709389, 37.758083, 24.931917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912773, 38.371429, 25.532133>,  <37.330116, 38.014992, 25.128637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912773, 38.371429, 25.532133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686352, 38.054577, 25.440817>,  <36.550499, 37.864468, 25.386026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686352, 38.054577, 25.440817>,  <36.912773, 38.371429, 25.532133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686352, 38.054577, 25.440817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406722, 0.027478, 0.913139,
		-0.717049, 0.609738, -0.337729,
		-0.566055, -0.792127, -0.228290,
		36.516537, 37.816940, 25.372330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195774, 38.655586, 25.713936>,  <36.912773, 38.371429, 25.532133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195774, 38.655586, 25.713936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192696, 38.255615, 25.717773>,  <36.190849, 38.015633, 25.720076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192696, 38.255615, 25.717773>,  <36.195774, 38.655586, 25.713936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192696, 38.255615, 25.717773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516685, 0.012188, 0.856089,
		-0.856141, 0.001630, -0.516739,
		-0.007693, -0.999924, 0.009593,
		36.190388, 37.955639, 25.720652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581650, 38.584690, 26.043217>,  <36.195774, 38.655586, 25.713936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581650, 38.584690, 26.043217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739452, 38.219025, 26.080444>,  <35.834133, 37.999626, 26.102781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.739452, 38.219025, 26.080444>,  <35.581650, 38.584690, 26.043217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739452, 38.219025, 26.080444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535588, -0.146459, 0.831682,
		-0.746666, -0.377950, -0.547397,
		0.394505, -0.914168, 0.093069,
		35.857803, 37.944775, 26.108366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972775, 38.026089, 26.182856>,  <35.581650, 38.584690, 26.043217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972775, 38.026089, 26.182856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324345, 37.886543, 26.312958>,  <35.535286, 37.802818, 26.391020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324345, 37.886543, 26.312958>,  <34.972775, 38.026089, 26.182856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324345, 37.886543, 26.312958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418290, -0.236099, 0.877092,
		-0.229199, -0.906944, -0.353441,
		0.878921, -0.348869, 0.325252,
		35.588020, 37.781887, 26.410536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826832, 37.360008, 26.587679>,  <34.972775, 38.026089, 26.182856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826832, 37.360008, 26.587679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183304, 37.494431, 26.709572>,  <35.397186, 37.575085, 26.782707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183304, 37.494431, 26.709572>,  <34.826832, 37.360008, 26.587679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183304, 37.494431, 26.709572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225184, -0.255436, 0.940236,
		0.393809, -0.906543, -0.151967,
		0.891183, 0.336053, 0.304732,
		35.450657, 37.595245, 26.800991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006096, 36.870613, 26.979282>,  <34.826832, 37.360008, 26.587679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006096, 36.870613, 26.979282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237621, 37.170940, 27.106556>,  <35.376537, 37.351139, 27.182920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237621, 37.170940, 27.106556>,  <35.006096, 36.870613, 26.979282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237621, 37.170940, 27.106556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081537, -0.334947, 0.938702,
		0.811372, -0.569279, -0.132653,
		0.578815, 0.750821, 0.318183,
		35.411266, 37.396187, 27.202011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498291, 36.580727, 27.492004>,  <35.006096, 36.870613, 26.979282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498291, 36.580727, 27.492004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494415, 36.971523, 27.577225>,  <35.492088, 37.206001, 27.628357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.494415, 36.971523, 27.577225>,  <35.498291, 36.580727, 27.492004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494415, 36.971523, 27.577225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079182, -0.211642, 0.974134,
		0.996813, 0.026312, -0.075309,
		-0.009693, 0.976993, 0.213051,
		35.491508, 37.264622, 27.641140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149685, 36.724087, 27.887348>,  <35.498291, 36.580727, 27.492004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149685, 36.724087, 27.887348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894764, 37.022102, 27.966091>,  <35.741810, 37.200912, 28.013338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894764, 37.022102, 27.966091>,  <36.149685, 36.724087, 27.887348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894764, 37.022102, 27.966091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094217, -0.178208, 0.979472,
		0.764829, 0.642771, 0.043377,
		-0.637306, 0.745042, 0.196859,
		35.703571, 37.245613, 28.025148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426186, 37.104439, 28.407370>,  <36.149685, 36.724087, 27.887348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426186, 37.104439, 28.407370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035732, 37.191265, 28.404898>,  <35.801460, 37.243362, 28.403414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035732, 37.191265, 28.404898>,  <36.426186, 37.104439, 28.407370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035732, 37.191265, 28.404898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010706, -0.019682, 0.999749,
		0.216891, 0.975958, 0.021536,
		-0.976137, 0.217067, -0.006179,
		35.742889, 37.256386, 28.403044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403740, 37.719055, 28.788723>,  <36.426186, 37.104439, 28.407370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403740, 37.719055, 28.788723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041779, 37.550144, 28.810030>,  <35.824604, 37.448799, 28.822815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041779, 37.550144, 28.810030>,  <36.403740, 37.719055, 28.788723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041779, 37.550144, 28.810030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148706, -0.196405, 0.969181,
		-0.398801, 0.884933, 0.240522,
		-0.904900, -0.422278, 0.053269,
		35.770309, 37.423462, 28.826010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223911, 37.857063, 29.477989>,  <36.403740, 37.719055, 28.788723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223911, 37.857063, 29.477989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949924, 37.581539, 29.383026>,  <35.785534, 37.416225, 29.326048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949924, 37.581539, 29.383026>,  <36.223911, 37.857063, 29.477989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949924, 37.581539, 29.383026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121986, -0.212830, 0.969444,
		-0.718289, 0.692999, 0.061757,
		-0.684968, -0.688807, -0.237410,
		35.744434, 37.374897, 29.311804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539181, 38.022888, 29.872574>,  <36.223911, 37.857063, 29.477989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539181, 38.022888, 29.872574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558182, 37.634254, 29.779829>,  <35.569580, 37.401073, 29.724182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558182, 37.634254, 29.779829>,  <35.539181, 38.022888, 29.872574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558182, 37.634254, 29.779829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129651, -0.236155, 0.963027,
		-0.990421, -0.015682, -0.137184,
		0.047499, -0.971589, -0.231860,
		35.572430, 37.342777, 29.710272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039509, 37.768452, 30.289810>,  <35.539181, 38.022888, 29.872574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039509, 37.768452, 30.289810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.268322, 37.461876, 30.172951>,  <35.405609, 37.277931, 30.102835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.268322, 37.461876, 30.172951>,  <35.039509, 37.768452, 30.289810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268322, 37.461876, 30.172951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144968, -0.445044, 0.883697,
		-0.807319, -0.463151, -0.365688,
		0.572032, -0.766438, -0.292150,
		35.439930, 37.231945, 30.085306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667919, 37.138527, 30.522718>,  <35.039509, 37.768452, 30.289810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667919, 37.138527, 30.522718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038258, 37.004150, 30.453503>,  <35.260460, 36.923523, 30.411974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038258, 37.004150, 30.453503>,  <34.667919, 37.138527, 30.522718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038258, 37.004150, 30.453503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100697, -0.660678, 0.743885,
		-0.364225, -0.671302, -0.645518,
		0.925851, -0.335943, -0.173037,
		35.316013, 36.903366, 30.401592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566143, 36.506710, 30.642645>,  <34.667919, 37.138527, 30.522718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566143, 36.506710, 30.642645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.959297, 36.567329, 30.684538>,  <35.195190, 36.603703, 30.709673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.959297, 36.567329, 30.684538>,  <34.566143, 36.506710, 30.642645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959297, 36.567329, 30.684538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001586, -0.561531, 0.827454,
		0.184210, -0.813459, -0.551680,
		0.982885, 0.151551, 0.104730,
		35.254162, 36.612793, 30.715958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048176, 35.825455, 30.725950>,  <34.566143, 36.506710, 30.642645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048176, 35.825455, 30.725950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.261581, 36.119881, 30.892601>,  <35.389626, 36.296535, 30.992592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.261581, 36.119881, 30.892601>,  <35.048176, 35.825455, 30.725950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261581, 36.119881, 30.892601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192825, -0.585467, 0.787431,
		0.823518, -0.339770, -0.454285,
		0.533514, 0.736061, 0.416626,
		35.421635, 36.340698, 31.017590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502247, 35.450005, 31.115429>,  <35.048176, 35.825455, 30.725950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502247, 35.450005, 31.115429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589386, 35.811478, 31.262888>,  <35.641670, 36.028362, 31.351364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589386, 35.811478, 31.262888>,  <35.502247, 35.450005, 31.115429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589386, 35.811478, 31.262888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140368, -0.402803, 0.904459,
		0.965835, -0.145292, -0.214600,
		0.217852, 0.903682, 0.368647,
		35.654743, 36.082581, 31.373482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193264, 35.479252, 31.425488>,  <35.502247, 35.450005, 31.115429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193264, 35.479252, 31.425488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984035, 35.779297, 31.587343>,  <35.858498, 35.959324, 31.684456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984035, 35.779297, 31.587343>,  <36.193264, 35.479252, 31.425488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984035, 35.779297, 31.587343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223529, -0.337407, 0.914435,
		0.822454, 0.568763, 0.008816,
		-0.523071, 0.750110, 0.404637,
		35.827114, 36.004330, 31.708735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655415, 35.727119, 31.955494>,  <36.193264, 35.479252, 31.425488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655415, 35.727119, 31.955494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286831, 35.845181, 32.056526>,  <36.065681, 35.916016, 32.117146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286831, 35.845181, 32.056526>,  <36.655415, 35.727119, 31.955494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286831, 35.845181, 32.056526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205398, -0.181714, 0.961661,
		0.329730, 0.938012, 0.106820,
		-0.921461, 0.295148, 0.252583,
		36.010391, 35.933723, 32.132301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633801, 36.286980, 32.444286>,  <36.655415, 35.727119, 31.955494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633801, 36.286980, 32.444286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308479, 36.063389, 32.508900>,  <36.113289, 35.929234, 32.547668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308479, 36.063389, 32.508900>,  <36.633801, 36.286980, 32.444286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308479, 36.063389, 32.508900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391462, -0.320274, 0.862660,
		-0.430468, 0.764835, 0.479295,
		-0.813298, -0.558974, 0.161537,
		36.064491, 35.895699, 32.557362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985519, 35.789448, 32.978218>,  <36.633801, 36.286980, 32.444286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985519, 35.789448, 32.978218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298164, 35.540028, 32.984722>,  <37.485752, 35.390377, 32.988625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.298164, 35.540028, 32.984722>,  <36.985519, 35.789448, 32.978218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298164, 35.540028, 32.984722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418637, 0.505074, -0.754747,
		0.462408, 0.596730, 0.655814,
		0.781615, -0.623549, 0.016263,
		37.532650, 35.352962, 32.989601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560867, 36.188892, 32.827293>,  <36.985519, 35.789448, 32.978218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560867, 36.188892, 32.827293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711708, 35.822910, 32.769794>,  <37.802212, 35.603321, 32.735294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711708, 35.822910, 32.769794>,  <37.560867, 36.188892, 32.827293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711708, 35.822910, 32.769794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497729, 0.331084, -0.801654,
		0.781066, 0.230755, 0.580248,
		0.377097, -0.914951, -0.143745,
		37.824837, 35.548424, 32.726669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223225, 36.364784, 32.671204>,  <37.560867, 36.188892, 32.827293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223225, 36.364784, 32.671204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119282, 36.009384, 32.519924>,  <38.056915, 35.796143, 32.429157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119282, 36.009384, 32.519924>,  <38.223225, 36.364784, 32.671204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119282, 36.009384, 32.519924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402120, 0.256513, -0.878920,
		0.877937, -0.380478, 0.290627,
		-0.259860, -0.888503, -0.378200,
		38.041325, 35.742832, 32.406464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789265, 36.078140, 32.364574>,  <38.223225, 36.364784, 32.671204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789265, 36.078140, 32.364574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500698, 35.862492, 32.190723>,  <38.327557, 35.733105, 32.086411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500698, 35.862492, 32.190723>,  <38.789265, 36.078140, 32.364574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500698, 35.862492, 32.190723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505583, 0.018854, -0.862572,
		0.473224, -0.842018, 0.258968,
		-0.721419, -0.539119, -0.434632,
		38.284271, 35.700756, 32.060333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079613, 35.606476, 31.903391>,  <38.789265, 36.078140, 32.364574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079613, 35.606476, 31.903391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709396, 35.609596, 31.751965>,  <38.487267, 35.611469, 31.661108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709396, 35.609596, 31.751965>,  <39.079613, 35.606476, 31.903391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709396, 35.609596, 31.751965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378368, -0.019420, -0.925452,
		-0.014544, -0.999781, 0.015033,
		-0.925541, 0.007772, -0.378568,
		38.431736, 35.611938, 31.638393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981464, 34.995571, 31.355434>,  <39.079613, 35.606476, 31.903391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981464, 34.995571, 31.355434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713543, 35.278404, 31.264751>,  <38.552788, 35.448105, 31.210342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713543, 35.278404, 31.264751>,  <38.981464, 34.995571, 31.355434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713543, 35.278404, 31.264751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292193, -0.029693, -0.955898,
		-0.682629, -0.706509, -0.186715,
		-0.669807, 0.707081, -0.226707,
		38.512600, 35.490528, 31.196739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667133, 34.749878, 30.735954>,  <38.981464, 34.995571, 31.355434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667133, 34.749878, 30.735954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539112, 35.128750, 30.727774>,  <38.462299, 35.356071, 30.722866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539112, 35.128750, 30.727774>,  <38.667133, 34.749878, 30.735954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539112, 35.128750, 30.727774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222870, 0.054291, -0.973335,
		-0.920814, -0.316072, -0.228474,
		-0.320048, 0.947181, -0.020452,
		38.443096, 35.412903, 30.721638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453583, 34.766434, 30.047821>,  <38.667133, 34.749878, 30.735954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453583, 34.766434, 30.047821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425282, 35.152607, 30.148163>,  <38.408302, 35.384312, 30.208368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425282, 35.152607, 30.148163>,  <38.453583, 34.766434, 30.047821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425282, 35.152607, 30.148163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023651, 0.253039, -0.967167,
		-0.997213, -0.062497, -0.040737,
		-0.070753, 0.965435, 0.250856,
		38.404057, 35.442238, 30.223419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786308, 35.124756, 29.755304>,  <38.453583, 34.766434, 30.047821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786308, 35.124756, 29.755304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087906, 35.379402, 29.820065>,  <38.268864, 35.532192, 29.858921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087906, 35.379402, 29.820065>,  <37.786308, 35.124756, 29.755304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087906, 35.379402, 29.820065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001884, 0.248565, -0.968614,
		-0.656880, 0.730023, 0.188615,
		0.753993, 0.636618, 0.161902,
		38.314102, 35.570389, 29.868635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581326, 35.733303, 29.475632>,  <37.786308, 35.124756, 29.755304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581326, 35.733303, 29.475632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980991, 35.717663, 29.470898>,  <38.220791, 35.708279, 29.468058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980991, 35.717663, 29.470898>,  <37.581326, 35.733303, 29.475632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980991, 35.717663, 29.470898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005807, 0.422682, -0.906259,
		0.040440, 0.905434, 0.422557,
		0.999165, -0.039103, -0.011836,
		38.280743, 35.705933, 29.467346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801094, 36.056896, 28.882969>,  <37.581326, 35.733303, 29.475632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801094, 36.056896, 28.882969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171608, 35.944065, 28.982908>,  <38.393917, 35.876366, 29.042871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171608, 35.944065, 28.982908>,  <37.801094, 36.056896, 28.882969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171608, 35.944065, 28.982908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311016, 0.197978, -0.929556,
		0.212739, 0.938744, 0.271115,
		0.926289, -0.282074, 0.249847,
		38.449493, 35.859444, 29.057861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221134, 36.678570, 28.822453>,  <37.801094, 36.056896, 28.882969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221134, 36.678570, 28.822453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420815, 36.333801, 28.786913>,  <38.540623, 36.126942, 28.765589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420815, 36.333801, 28.786913>,  <38.221134, 36.678570, 28.822453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420815, 36.333801, 28.786913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083980, 0.150185, -0.985085,
		0.862408, 0.484292, 0.147356,
		0.499199, -0.861920, -0.088849,
		38.570576, 36.075226, 28.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873909, 36.856907, 28.560396>,  <38.221134, 36.678570, 28.822453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873909, 36.856907, 28.560396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785984, 36.475861, 28.476301>,  <38.733227, 36.247231, 28.425844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785984, 36.475861, 28.476301>,  <38.873909, 36.856907, 28.560396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785984, 36.475861, 28.476301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153799, 0.178973, -0.971758,
		0.963342, -0.245941, 0.107171,
		-0.219815, -0.952618, -0.210238,
		38.720039, 36.190075, 28.413229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404205, 36.601818, 28.162409>,  <38.873909, 36.856907, 28.560396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404205, 36.601818, 28.162409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122692, 36.335396, 28.063572>,  <38.953785, 36.175541, 28.004269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122692, 36.335396, 28.063572>,  <39.404205, 36.601818, 28.162409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122692, 36.335396, 28.063572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266057, 0.075385, -0.961005,
		0.658710, -0.742083, 0.124154,
		-0.703786, -0.666056, -0.247094,
		38.911556, 36.135578, 27.989443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717197, 36.117146, 27.791643>,  <39.404205, 36.601818, 28.162409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717197, 36.117146, 27.791643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332748, 36.095043, 27.683434>,  <39.102077, 36.081783, 27.618507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332748, 36.095043, 27.683434>,  <39.717197, 36.117146, 27.791643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332748, 36.095043, 27.683434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268586, 0.040072, -0.962422,
		0.064028, -0.997667, -0.023671,
		-0.961125, -0.055265, -0.270526,
		39.044411, 36.078465, 27.602276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769024, 35.793262, 27.194977>,  <39.717197, 36.117146, 27.791643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769024, 35.793262, 27.194977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407291, 35.963913, 27.189619>,  <39.190254, 36.066303, 27.186403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.407291, 35.963913, 27.189619>,  <39.769024, 35.793262, 27.194977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407291, 35.963913, 27.189619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055153, 0.085673, -0.994796,
		-0.423259, -0.900361, -0.101007,
		-0.904329, 0.426627, -0.013396,
		39.135994, 36.091900, 27.185600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380894, 35.450508, 26.714540>,  <39.769024, 35.793262, 27.194977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380894, 35.450508, 26.714540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200352, 35.806747, 26.736885>,  <39.092026, 36.020489, 26.750292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200352, 35.806747, 26.736885>,  <39.380894, 35.450508, 26.714540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200352, 35.806747, 26.736885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106095, 0.115718, -0.987600,
		-0.886015, -0.439832, -0.146717,
		-0.451355, 0.890594, 0.055864,
		39.064945, 36.073925, 26.753645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708786, 35.469139, 26.327421>,  <39.380894, 35.450508, 26.714540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708786, 35.469139, 26.327421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795654, 35.858627, 26.354845>,  <38.847775, 36.092319, 26.371300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795654, 35.858627, 26.354845>,  <38.708786, 35.469139, 26.327421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795654, 35.858627, 26.354845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225468, 0.118375, -0.967032,
		-0.949737, 0.194555, 0.245252,
		0.217173, 0.973723, 0.068559,
		38.860806, 36.150745, 26.375412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.113724, 35.928856, 25.974411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457813, 36.132633, 25.983170>,  <38.664268, 36.254898, 25.988424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457813, 36.132633, 25.983170>,  <38.113724, 35.928856, 25.974411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457813, 36.132633, 25.983170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247754, 0.455108, -0.855274,
		-0.445676, 0.730306, 0.517712,
		0.860227, 0.509440, 0.021894,
		38.715881, 36.285465, 25.989738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985954, 36.336166, 25.435995>,  <38.113724, 35.928856, 25.974411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985954, 36.336166, 25.435995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369965, 36.428265, 25.499660>,  <38.600372, 36.483524, 25.537859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369965, 36.428265, 25.499660>,  <37.985954, 36.336166, 25.435995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369965, 36.428265, 25.499660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019567, 0.512035, -0.858742,
		-0.279218, 0.827531, 0.487063,
		0.960028, 0.230246, 0.159162,
		38.657974, 36.497337, 25.547409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067028, 36.981037, 25.336386>,  <37.985954, 36.336166, 25.435995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067028, 36.981037, 25.336386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451988, 36.882336, 25.290962>,  <38.682964, 36.823112, 25.263708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451988, 36.882336, 25.290962>,  <38.067028, 36.981037, 25.336386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451988, 36.882336, 25.290962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048293, 0.566825, -0.822422,
		0.267306, 0.786015, 0.557429,
		0.962401, -0.246758, -0.113557,
		38.740707, 36.808308, 25.256895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505482, 37.617027, 25.219772>,  <38.067028, 36.981037, 25.336386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505482, 37.617027, 25.219772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716225, 37.316753, 25.060324>,  <38.842670, 37.136589, 24.964655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716225, 37.316753, 25.060324>,  <38.505482, 37.617027, 25.219772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716225, 37.316753, 25.060324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123815, 0.531771, -0.837789,
		0.840889, 0.392038, 0.373111,
		0.526854, -0.750684, -0.398620,
		38.874283, 37.091549, 24.940739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933983, 37.996143, 24.769901>,  <38.505482, 37.617027, 25.219772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933983, 37.996143, 24.769901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986412, 37.613365, 24.666307>,  <39.017868, 37.383698, 24.604151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986412, 37.613365, 24.666307>,  <38.933983, 37.996143, 24.769901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986412, 37.613365, 24.666307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136798, 0.276199, -0.951315,
		0.981889, 0.089261, 0.167110,
		0.131071, -0.956947, -0.258986,
		39.025734, 37.326283, 24.588612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622364, 37.907227, 24.414146>,  <38.933983, 37.996143, 24.769901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622364, 37.907227, 24.414146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.390461, 37.603168, 24.296806>,  <39.251320, 37.420734, 24.226402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.390461, 37.603168, 24.296806>,  <39.622364, 37.907227, 24.414146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390461, 37.603168, 24.296806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199348, 0.216760, -0.955655,
		0.790026, -0.612527, 0.025866,
		-0.579758, -0.760149, -0.293352,
		39.216534, 37.375122, 24.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072601, 37.579578, 23.817060>,  <39.622364, 37.907227, 24.414146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072601, 37.579578, 23.817060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705353, 37.422684, 23.794456>,  <39.485004, 37.328545, 23.780893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705353, 37.422684, 23.794456>,  <40.072601, 37.579578, 23.817060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705353, 37.422684, 23.794456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085861, -0.057680, -0.994636,
		0.386876, -0.918053, 0.086636,
		-0.918126, -0.392239, -0.056510,
		39.429916, 37.305012, 23.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074131, 37.025005, 23.432037>,  <40.072601, 37.579578, 23.817060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074131, 37.025005, 23.432037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.689606, 37.131149, 23.402506>,  <39.458889, 37.194836, 23.384787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.689606, 37.131149, 23.402506>,  <40.074131, 37.025005, 23.432037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689606, 37.131149, 23.402506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059678, -0.061015, -0.996351,
		-0.268899, -0.962216, 0.042819,
		-0.961318, 0.265362, -0.073830,
		39.401211, 37.210758, 23.380358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869194, 36.637463, 22.876820>,  <40.074131, 37.025005, 23.432037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869194, 36.637463, 22.876820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614536, 36.943382, 22.916346>,  <39.461742, 37.126934, 22.940062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614536, 36.943382, 22.916346>,  <39.869194, 36.637463, 22.876820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614536, 36.943382, 22.916346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020338, 0.111441, -0.993563,
		-0.770891, -0.634554, -0.055394,
		-0.636642, 0.764802, 0.098814,
		39.423542, 37.172821, 22.945990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337536, 36.490757, 22.463123>,  <39.869194, 36.637463, 22.876820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337536, 36.490757, 22.463123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347427, 36.889137, 22.497698>,  <39.353363, 37.128166, 22.518442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347427, 36.889137, 22.497698>,  <39.337536, 36.490757, 22.463123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347427, 36.889137, 22.497698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204790, 0.089674, -0.974689,
		-0.978494, 0.006401, 0.206178,
		0.024728, 0.995951, 0.086435,
		39.354847, 37.187923, 22.523628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942013, 36.741486, 21.939215>,  <39.337536, 36.490757, 22.463123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942013, 36.741486, 21.939215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043274, 37.111881, 22.051256>,  <39.104031, 37.334118, 22.118481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043274, 37.111881, 22.051256>,  <38.942013, 36.741486, 21.939215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043274, 37.111881, 22.051256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115674, 0.316428, -0.941537,
		-0.960487, 0.205948, 0.187216,
		0.253148, 0.925991, 0.280102,
		39.119217, 37.389679, 22.135286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422810, 37.296638, 21.703243>,  <38.942013, 36.741486, 21.939215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422810, 37.296638, 21.703243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792454, 37.444477, 21.742064>,  <39.014240, 37.533180, 21.765356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792454, 37.444477, 21.742064>,  <38.422810, 37.296638, 21.703243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792454, 37.444477, 21.742064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089243, 0.455699, -0.885649,
		-0.371558, 0.809776, 0.454100,
		0.924111, 0.369595, 0.097051,
		39.069687, 37.555355, 21.771179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352596, 37.990860, 21.432716>,  <38.422810, 37.296638, 21.703243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352596, 37.990860, 21.432716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749020, 37.945156, 21.460297>,  <38.986874, 37.917732, 21.476845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749020, 37.945156, 21.460297>,  <38.352596, 37.990860, 21.432716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749020, 37.945156, 21.460297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123323, 0.586676, -0.800377,
		0.050997, 0.801721, 0.595519,
		0.991055, -0.114258, 0.068952,
		39.046337, 37.910877, 21.480982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737041, 38.711521, 21.375465>,  <38.352596, 37.990860, 21.432716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737041, 38.711521, 21.375465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975578, 38.415779, 21.250423>,  <39.118702, 38.238335, 21.175398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975578, 38.415779, 21.250423>,  <38.737041, 38.711521, 21.375465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975578, 38.415779, 21.250423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172913, 0.498600, -0.849411,
		0.783883, 0.452489, 0.425182,
		0.596345, -0.739359, -0.312603,
		39.154484, 38.193970, 21.156643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211185, 39.115604, 21.060898>,  <38.737041, 38.711521, 21.375465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211185, 39.115604, 21.060898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289864, 38.750938, 20.916574>,  <39.337070, 38.532139, 20.829981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289864, 38.750938, 20.916574>,  <39.211185, 39.115604, 21.060898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289864, 38.750938, 20.916574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372723, 0.409897, -0.832503,
		0.906857, 0.029265, 0.420421,
		0.196693, -0.911662, -0.360810,
		39.348873, 38.477440, 20.808331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834488, 39.210972, 20.698389>,  <39.211185, 39.115604, 21.060898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834488, 39.210972, 20.698389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682816, 38.867374, 20.560780>,  <39.591812, 38.661217, 20.478214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682816, 38.867374, 20.560780>,  <39.834488, 39.210972, 20.698389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682816, 38.867374, 20.560780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279248, 0.248223, -0.927581,
		0.882181, -0.447787, 0.145751,
		-0.379180, -0.858995, -0.344022,
		39.569061, 38.609676, 20.457573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365723, 38.788521, 20.269058>,  <39.834488, 39.210972, 20.698389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365723, 38.788521, 20.269058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008533, 38.651100, 20.152731>,  <39.794220, 38.568649, 20.082935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008533, 38.651100, 20.152731>,  <40.365723, 38.788521, 20.269058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008533, 38.651100, 20.152731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241859, 0.178681, -0.953718,
		0.379615, -0.921979, -0.076466,
		-0.892971, -0.343552, -0.290819,
		39.740643, 38.548035, 20.065485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410751, 38.307442, 19.663275>,  <40.365723, 38.788521, 20.269058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410751, 38.307442, 19.663275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027390, 38.419960, 19.643940>,  <39.797375, 38.487473, 19.632339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027390, 38.419960, 19.643940>,  <40.410751, 38.307442, 19.663275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027390, 38.419960, 19.643940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095119, 0.155105, -0.983308,
		-0.269108, -0.947002, -0.175410,
		-0.958402, 0.281301, -0.048338,
		39.739868, 38.504349, 19.629438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132030, 38.009735, 19.084196>,  <40.410751, 38.307442, 19.663275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132030, 38.009735, 19.084196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888252, 38.313663, 19.174755>,  <39.741985, 38.496021, 19.229092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888252, 38.313663, 19.174755>,  <40.132030, 38.009735, 19.084196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888252, 38.313663, 19.174755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051608, 0.246932, -0.967657,
		-0.791149, -0.601415, -0.111278,
		-0.609442, 0.759818, 0.226398,
		39.705421, 38.541611, 19.242674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515995, 37.955002, 18.827000>,  <40.132030, 38.009735, 19.084196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515995, 37.955002, 18.827000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528629, 38.350140, 18.887884>,  <39.536209, 38.587223, 18.924416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528629, 38.350140, 18.887884>,  <39.515995, 37.955002, 18.827000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528629, 38.350140, 18.887884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006444, 0.152485, -0.988285,
		-0.999480, 0.030231, 0.011182,
		0.031582, 0.987843, 0.152211,
		39.538105, 38.646492, 18.933548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030060, 38.226650, 18.369427>,  <39.515995, 37.955002, 18.827000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030060, 38.226650, 18.369427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288750, 38.510429, 18.481449>,  <39.443966, 38.680695, 18.548662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288750, 38.510429, 18.481449>,  <39.030060, 38.226650, 18.369427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288750, 38.510429, 18.481449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286639, 0.114197, -0.951208,
		-0.706811, 0.695448, -0.129500,
		0.646728, 0.709444, 0.280058,
		39.482769, 38.723263, 18.565466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816864, 38.783012, 17.928087>,  <39.030060, 38.226650, 18.369427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816864, 38.783012, 17.928087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178928, 38.882732, 18.065800>,  <39.396168, 38.942566, 18.148426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.178928, 38.882732, 18.065800>,  <38.816864, 38.783012, 17.928087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178928, 38.882732, 18.065800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302206, 0.192140, -0.933678,
		-0.298920, 0.949173, 0.098576,
		0.905162, 0.249305, 0.344280,
		39.450478, 38.957523, 18.169085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042633, 39.174278, 17.409134>,  <38.816864, 38.783012, 17.928087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042633, 39.174278, 17.409134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395626, 39.113186, 17.587074>,  <39.607422, 39.076530, 17.693838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395626, 39.113186, 17.587074>,  <39.042633, 39.174278, 17.409134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395626, 39.113186, 17.587074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439648, -0.068184, -0.895578,
		0.167114, 0.985913, 0.006977,
		0.882486, -0.152731, 0.444849,
		39.660374, 39.067368, 17.720530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671810, 39.732769, 16.990189>,  <39.042633, 39.174278, 17.409134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671810, 39.732769, 16.990189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.554329, 40.102394, 17.088049>,  <38.483841, 40.324169, 17.146765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.554329, 40.102394, 17.088049>,  <38.671810, 39.732769, 16.990189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554329, 40.102394, 17.088049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606531, -0.377970, 0.699470,
		0.738821, 0.057052, 0.671482,
		-0.293706, 0.924058, 0.244649,
		38.466217, 40.379612, 17.161444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876892, 39.991596, 17.785059>,  <38.671810, 39.732769, 16.990189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876892, 39.991596, 17.785059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553684, 40.174828, 17.636858>,  <38.359760, 40.284767, 17.547937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553684, 40.174828, 17.636858>,  <38.876892, 39.991596, 17.785059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553684, 40.174828, 17.636858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489639, -0.172380, 0.854716,
		0.327659, 0.872038, 0.363579,
		-0.808019, 0.458077, -0.370502,
		38.311279, 40.312252, 17.525707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677166, 40.391758, 18.314301>,  <38.876892, 39.991596, 17.785059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677166, 40.391758, 18.314301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351570, 40.381504, 18.082176>,  <38.156212, 40.375351, 17.942902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.351570, 40.381504, 18.082176>,  <38.677166, 40.391758, 18.314301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351570, 40.381504, 18.082176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564729, -0.199006, 0.800923,
		-0.136018, 0.979663, 0.147512,
		-0.813990, -0.025635, -0.580312,
		38.107372, 40.373814, 17.908083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204288, 40.851665, 18.598034>,  <38.677166, 40.391758, 18.314301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204288, 40.851665, 18.598034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976368, 40.622791, 18.362091>,  <37.839615, 40.485466, 18.220526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976368, 40.622791, 18.362091>,  <38.204288, 40.851665, 18.598034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976368, 40.622791, 18.362091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700163, -0.037762, 0.712983,
		-0.430235, 0.819252, -0.379108,
		-0.569798, -0.572188, -0.589857,
		37.805428, 40.451134, 18.185133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588306, 41.137802, 18.676508>,  <38.204288, 40.851665, 18.598034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588306, 41.137802, 18.676508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551567, 40.757103, 18.559385>,  <37.529522, 40.528683, 18.489113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551567, 40.757103, 18.559385>,  <37.588306, 41.137802, 18.676508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551567, 40.757103, 18.559385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474755, -0.216623, 0.853043,
		-0.875312, 0.217361, -0.431952,
		-0.091848, -0.951750, -0.292806,
		37.524014, 40.471577, 18.471544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892284, 40.858273, 18.888771>,  <37.588306, 41.137802, 18.676508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892284, 40.858273, 18.888771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104301, 40.529221, 18.806473>,  <37.231510, 40.331787, 18.757093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104301, 40.529221, 18.806473>,  <36.892284, 40.858273, 18.888771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104301, 40.529221, 18.806473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395992, -0.454676, 0.797785,
		-0.749833, -0.341382, -0.566752,
		0.530038, -0.822634, -0.205747,
		37.263313, 40.282429, 18.744749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410152, 40.337063, 19.074900>,  <36.892284, 40.858273, 18.888771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410152, 40.337063, 19.074900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769310, 40.162281, 19.053513>,  <36.984802, 40.057411, 19.040680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769310, 40.162281, 19.053513>,  <36.410152, 40.337063, 19.074900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769310, 40.162281, 19.053513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248321, -0.603028, 0.758086,
		-0.363494, -0.667401, -0.649959,
		0.897891, -0.436958, -0.053467,
		37.038677, 40.031193, 19.037472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255333, 39.676479, 19.270262>,  <36.410152, 40.337063, 19.074900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255333, 39.676479, 19.270262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650066, 39.714520, 19.322582>,  <36.886906, 39.737343, 19.353973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.650066, 39.714520, 19.322582>,  <36.255333, 39.676479, 19.270262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650066, 39.714520, 19.322582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042469, -0.628014, 0.777042,
		0.156043, -0.772369, -0.615709,
		0.986837, 0.095104, 0.130799,
		36.946117, 39.743050, 19.361822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538773, 38.850243, 19.383722>,  <36.255333, 39.676479, 19.270262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538773, 38.850243, 19.383722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798805, 39.117718, 19.528078>,  <36.954826, 39.278202, 19.614691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798805, 39.117718, 19.528078>,  <36.538773, 38.850243, 19.383722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798805, 39.117718, 19.528078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060764, -0.519168, 0.852509,
		0.757428, -0.532275, -0.378135,
		0.650085, 0.668691, 0.360889,
		36.993832, 39.318325, 19.636345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244091, 38.576035, 19.581337>,  <36.538773, 38.850243, 19.383722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244091, 38.576035, 19.581337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.174530, 38.912464, 19.786221>,  <37.132793, 39.114323, 19.909151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.174530, 38.912464, 19.786221>,  <37.244091, 38.576035, 19.581337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174530, 38.912464, 19.786221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176332, -0.485130, 0.856479,
		0.968847, 0.239261, -0.063944,
		-0.173901, 0.841072, 0.512206,
		37.122360, 39.164787, 19.939882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812412, 38.826111, 20.015434>,  <37.244091, 38.576035, 19.581337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812412, 38.826111, 20.015434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.522850, 39.032677, 20.198420>,  <37.349113, 39.156616, 20.308210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.522850, 39.032677, 20.198420>,  <37.812412, 38.826111, 20.015434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522850, 39.032677, 20.198420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251040, -0.420454, 0.871893,
		0.642600, 0.746013, 0.174730,
		-0.723909, 0.516414, 0.457463,
		37.305676, 39.187599, 20.335659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947533, 38.877197, 20.616354>,  <37.812412, 38.826111, 20.015434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947533, 38.877197, 20.616354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586903, 39.037281, 20.682070>,  <37.370525, 39.133331, 20.721498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.586903, 39.037281, 20.682070>,  <37.947533, 38.877197, 20.616354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586903, 39.037281, 20.682070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104771, -0.166466, 0.980465,
		0.419737, 0.901179, 0.108152,
		-0.901578, 0.400207, 0.164289,
		37.316429, 39.157345, 20.731356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022949, 39.399914, 21.052996>,  <37.947533, 38.877197, 20.616354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022949, 39.399914, 21.052996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653770, 39.256706, 21.109556>,  <37.432262, 39.170780, 21.143492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653770, 39.256706, 21.109556>,  <38.022949, 39.399914, 21.052996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653770, 39.256706, 21.109556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180260, -0.077421, 0.980567,
		-0.340116, 0.930498, 0.135992,
		-0.922945, -0.358020, 0.141399,
		37.376888, 39.149300, 21.151976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769157, 39.591049, 21.752260>,  <38.022949, 39.399914, 21.052996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769157, 39.591049, 21.752260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498253, 39.319767, 21.638172>,  <37.335709, 39.156998, 21.569719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.498253, 39.319767, 21.638172>,  <37.769157, 39.591049, 21.752260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498253, 39.319767, 21.638172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005318, -0.383138, 0.923676,
		-0.735724, 0.627086, 0.255878,
		-0.677261, -0.678210, -0.285218,
		37.295074, 39.116302, 21.552607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062531, 39.707432, 22.181219>,  <37.769157, 39.591049, 21.752260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062531, 39.707432, 22.181219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050922, 39.317955, 22.090805>,  <37.043957, 39.084270, 22.036556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050922, 39.317955, 22.090805>,  <37.062531, 39.707432, 22.181219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050922, 39.317955, 22.090805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364938, -0.200200, 0.909253,
		-0.930580, 0.108871, -0.349527,
		-0.029016, -0.973688, -0.226033,
		37.042217, 39.025848, 22.022995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440243, 39.436508, 22.516354>,  <37.062531, 39.707432, 22.181219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440243, 39.436508, 22.516354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659023, 39.116444, 22.417904>,  <36.790291, 38.924404, 22.358833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659023, 39.116444, 22.417904>,  <36.440243, 39.436508, 22.516354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659023, 39.116444, 22.417904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233836, -0.428323, 0.872846,
		-0.803842, -0.419854, -0.421380,
		0.546955, -0.800164, -0.246127,
		36.823109, 38.876396, 22.344067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010479, 38.877144, 22.716017>,  <36.440243, 39.436508, 22.516354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010479, 38.877144, 22.716017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373718, 38.716019, 22.670244>,  <36.591663, 38.619343, 22.642780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373718, 38.716019, 22.670244>,  <36.010479, 38.877144, 22.716017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373718, 38.716019, 22.670244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133824, -0.538102, 0.832188,
		-0.396792, -0.740397, -0.542557,
		0.908101, -0.402812, -0.114432,
		36.646149, 38.595173, 22.635914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944061, 38.239971, 22.601267>,  <36.010479, 38.877144, 22.716017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944061, 38.239971, 22.601267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320641, 38.223942, 22.735176>,  <36.546589, 38.214325, 22.815521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320641, 38.223942, 22.735176>,  <35.944061, 38.239971, 22.601267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320641, 38.223942, 22.735176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296890, -0.569123, 0.766782,
		0.159797, -0.821275, -0.547697,
		0.941446, -0.040077, 0.334773,
		36.603073, 38.211918, 22.835608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188663, 37.487740, 22.706457>,  <35.944061, 38.239971, 22.601267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188663, 37.487740, 22.706457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419998, 37.728294, 22.926950>,  <36.558800, 37.872627, 23.059246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419998, 37.728294, 22.926950>,  <36.188663, 37.487740, 22.706457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419998, 37.728294, 22.926950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179448, -0.565372, 0.805079,
		0.795814, -0.564528, -0.219061,
		0.578341, 0.601384, 0.551235,
		36.593502, 37.908710, 23.092321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682465, 37.049820, 23.126390>,  <36.188663, 37.487740, 22.706457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682465, 37.049820, 23.126390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691029, 37.380569, 23.351183>,  <36.696167, 37.579018, 23.486059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691029, 37.380569, 23.351183>,  <36.682465, 37.049820, 23.126390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691029, 37.380569, 23.351183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258344, -0.538446, 0.802082,
		0.965816, -0.162357, 0.202089,
		0.021410, 0.826872, 0.561983,
		36.697453, 37.628632, 23.519777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035076, 36.783218, 23.794363>,  <36.682465, 37.049820, 23.126390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035076, 36.783218, 23.794363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867809, 37.135662, 23.882704>,  <36.767448, 37.347130, 23.935709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867809, 37.135662, 23.882704>,  <37.035076, 36.783218, 23.794363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867809, 37.135662, 23.882704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265700, -0.351144, 0.897832,
		0.868641, 0.316765, 0.380949,
		-0.418169, 0.881112, 0.220854,
		36.742359, 37.399994, 23.948959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.462833, 35.106403, 28.676786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212330, 35.415634, 28.717087>,  <39.062027, 35.601173, 28.741268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212330, 35.415634, 28.717087>,  <39.462833, 35.106403, 28.676786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212330, 35.415634, 28.717087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150930, -0.247013, 0.957186,
		0.764868, 0.584237, 0.271374,
		-0.626256, 0.773079, 0.100753,
		39.024452, 35.647556, 28.747313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566677, 35.337955, 29.238838>,  <39.462833, 35.106403, 28.676786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566677, 35.337955, 29.238838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.209221, 35.511242, 29.191952>,  <38.994747, 35.615211, 29.163820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.209221, 35.511242, 29.191952>,  <39.566677, 35.337955, 29.238838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209221, 35.511242, 29.191952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176669, -0.099485, 0.979230,
		0.412554, 0.895784, 0.165439,
		-0.893637, 0.433213, -0.117214,
		38.941132, 35.641205, 29.156788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558483, 35.799614, 29.862236>,  <39.566677, 35.337955, 29.238838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558483, 35.799614, 29.862236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.192432, 35.763283, 29.705118>,  <38.972801, 35.741482, 29.610847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.192432, 35.763283, 29.705118>,  <39.558483, 35.799614, 29.862236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192432, 35.763283, 29.705118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396797, 0.030502, 0.917400,
		-0.071346, 0.995399, -0.063954,
		-0.915130, -0.090830, -0.392795,
		38.917892, 35.736034, 29.587280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183502, 36.489216, 30.029716>,  <39.558483, 35.799614, 29.862236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183502, 36.489216, 30.029716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960392, 36.159424, 29.991505>,  <38.826527, 35.961548, 29.968576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960392, 36.159424, 29.991505>,  <39.183502, 36.489216, 30.029716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960392, 36.159424, 29.991505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410505, 0.173997, 0.895103,
		-0.721371, 0.538479, -0.435504,
		-0.557771, -0.824479, -0.095532,
		38.793060, 35.912079, 29.962845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634464, 36.671516, 30.554844>,  <39.183502, 36.489216, 30.029716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634464, 36.671516, 30.554844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.536415, 36.297478, 30.452469>,  <38.477585, 36.073055, 30.391045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.536415, 36.297478, 30.452469>,  <38.634464, 36.671516, 30.554844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536415, 36.297478, 30.452469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572743, -0.073326, 0.816448,
		-0.782228, 0.346714, -0.517599,
		-0.245121, -0.935100, -0.255936,
		38.462879, 36.016949, 30.375689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907795, 36.655155, 30.730192>,  <38.634464, 36.671516, 30.554844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907795, 36.655155, 30.730192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079185, 36.293736, 30.731268>,  <38.182018, 36.076881, 30.731913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079185, 36.293736, 30.731268>,  <37.907795, 36.655155, 30.730192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079185, 36.293736, 30.731268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366541, -0.171097, 0.914535,
		-0.825869, -0.392838, -0.404498,
		0.428472, -0.903551, 0.002688,
		38.207726, 36.022671, 30.732075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432129, 36.133297, 30.862877>,  <37.907795, 36.655155, 30.730192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432129, 36.133297, 30.862877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.771740, 35.958153, 30.981144>,  <37.975506, 35.853065, 31.052105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.771740, 35.958153, 30.981144>,  <37.432129, 36.133297, 30.862877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771740, 35.958153, 30.981144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416111, -0.209327, 0.884892,
		-0.325571, -0.874333, -0.359925,
		0.849032, -0.437864, 0.295668,
		38.026451, 35.826794, 31.069845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217239, 35.648159, 31.214090>,  <37.432129, 36.133297, 30.862877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217239, 35.648159, 31.214090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591866, 35.653900, 31.354168>,  <37.816643, 35.657345, 31.438215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591866, 35.653900, 31.354168>,  <37.217239, 35.648159, 31.214090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591866, 35.653900, 31.354168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341026, -0.193272, 0.919971,
		0.080887, -0.981040, -0.176118,
		0.936567, 0.014353, 0.350194,
		37.872837, 35.658207, 31.459227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270672, 35.054520, 31.608145>,  <37.217239, 35.648159, 31.214090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270672, 35.054520, 31.608145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583321, 35.272457, 31.729612>,  <37.770908, 35.403217, 31.802494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583321, 35.272457, 31.729612>,  <37.270672, 35.054520, 31.608145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583321, 35.272457, 31.729612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173630, -0.277553, 0.944890,
		0.599100, -0.791272, -0.122341,
		0.781621, 0.544841, 0.303671,
		37.817806, 35.435909, 31.820713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681732, 34.575039, 31.907606>,  <37.270672, 35.054520, 31.608145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681732, 34.575039, 31.907606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812019, 34.910255, 32.082695>,  <37.890190, 35.111385, 32.187748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.812019, 34.910255, 32.082695>,  <37.681732, 34.575039, 31.907606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812019, 34.910255, 32.082695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325870, -0.335096, 0.884036,
		0.887536, -0.430583, 0.163946,
		0.325714, 0.838039, 0.437723,
		37.909733, 35.161667, 32.214012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122608, 34.335835, 32.458233>,  <37.681732, 34.575039, 31.907606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122608, 34.335835, 32.458233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.007671, 34.712227, 32.529766>,  <37.938709, 34.938065, 32.572685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.007671, 34.712227, 32.529766>,  <38.122608, 34.335835, 32.458233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007671, 34.712227, 32.529766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108319, -0.217435, 0.970046,
		0.951683, 0.259366, 0.164405,
		-0.287344, 0.940984, 0.178835,
		37.921467, 34.994522, 32.583416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550159, 34.476559, 33.031929>,  <38.122608, 34.335835, 32.458233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550159, 34.476559, 33.031929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.237556, 34.725948, 33.041073>,  <38.049995, 34.875584, 33.046558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.237556, 34.725948, 33.041073>,  <38.550159, 34.476559, 33.031929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237556, 34.725948, 33.041073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152086, -0.225918, 0.962201,
		0.605073, 0.748492, 0.271379,
		-0.781509, 0.623475, 0.022862,
		38.003105, 34.912991, 33.047932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583725, 34.887535, 33.632374>,  <38.550159, 34.476559, 33.031929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583725, 34.887535, 33.632374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.201637, 34.900150, 33.514687>,  <37.972385, 34.907719, 33.444073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.201637, 34.900150, 33.514687>,  <38.583725, 34.887535, 33.632374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201637, 34.900150, 33.514687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295893, -0.093336, 0.950650,
		0.002519, 0.995135, 0.098487,
		-0.955218, 0.031536, -0.294219,
		37.915073, 34.909611, 33.426422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150539, 35.524750, 33.884357>,  <38.583725, 34.887535, 33.632374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150539, 35.524750, 33.884357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.941250, 35.186291, 33.843815>,  <37.815678, 34.983215, 33.819489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.941250, 35.186291, 33.843815>,  <38.150539, 35.524750, 33.884357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941250, 35.186291, 33.843815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417368, 0.150732, 0.896150,
		-0.742997, 0.511188, -0.432021,
		-0.523221, -0.846148, -0.101360,
		37.784283, 34.932446, 33.813408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184021, 36.150288, 33.345158>,  <38.150539, 35.524750, 33.884357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184021, 36.150288, 33.345158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.365807, 36.448082, 33.540787>,  <38.474876, 36.626759, 33.658165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.365807, 36.448082, 33.540787>,  <38.184021, 36.150288, 33.345158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365807, 36.448082, 33.540787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290345, 0.642875, -0.708810,
		-0.842117, 0.180129, 0.508323,
		0.454465, 0.744490, 0.489076,
		38.502148, 36.671429, 33.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660110, 36.721539, 33.413399>,  <38.184021, 36.150288, 33.345158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660110, 36.721539, 33.413399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022766, 36.888134, 33.440372>,  <38.240360, 36.988091, 33.456558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022766, 36.888134, 33.440372>,  <37.660110, 36.721539, 33.413399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022766, 36.888134, 33.440372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309268, 0.764758, -0.565242,
		-0.286986, 0.491615, 0.822164,
		0.906638, 0.416486, 0.067434,
		38.294758, 37.013081, 33.460602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482792, 37.421684, 33.645088>,  <37.660110, 36.721539, 33.413399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482792, 37.421684, 33.645088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.845795, 37.379841, 33.482365>,  <38.063595, 37.354736, 33.384731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.845795, 37.379841, 33.482365>,  <37.482792, 37.421684, 33.645088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845795, 37.379841, 33.482365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157583, 0.812972, -0.560575,
		0.389363, 0.572831, 0.721291,
		0.907504, -0.104604, -0.406810,
		38.118046, 37.348461, 33.360321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721657, 38.197762, 33.681042>,  <37.482792, 37.421684, 33.645088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721657, 38.197762, 33.681042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.952206, 38.025372, 33.403324>,  <38.090534, 37.921936, 33.236694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.952206, 38.025372, 33.403324>,  <37.721657, 38.197762, 33.681042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952206, 38.025372, 33.403324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110934, 0.800490, -0.588990,
		0.809620, 0.416501, 0.413573,
		0.576375, -0.430979, -0.694297,
		38.125118, 37.896076, 33.195034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139050, 38.716572, 33.381901>,  <37.721657, 38.197762, 33.681042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139050, 38.716572, 33.381901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140999, 38.442081, 33.090954>,  <38.142170, 38.277386, 32.916386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140999, 38.442081, 33.090954>,  <38.139050, 38.716572, 33.381901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140999, 38.442081, 33.090954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165950, 0.717850, -0.676130,
		0.986122, -0.117411, 0.117380,
		0.004876, -0.686226, -0.727372,
		38.142460, 38.236214, 32.872742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424789, 39.077713, 32.904129>,  <38.139050, 38.716572, 33.381901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424789, 39.077713, 32.904129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.314705, 38.763210, 32.682838>,  <38.248653, 38.574509, 32.550064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.314705, 38.763210, 32.682838>,  <38.424789, 39.077713, 32.904129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314705, 38.763210, 32.682838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012463, 0.572480, -0.819824,
		0.961303, -0.232520, -0.147754,
		-0.275212, -0.786258, -0.553224,
		38.232140, 38.527332, 32.516872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893330, 39.002281, 32.277367>,  <38.424789, 39.077713, 32.904129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893330, 39.002281, 32.277367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551441, 38.813927, 32.189987>,  <38.346310, 38.700912, 32.137558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551441, 38.813927, 32.189987>,  <38.893330, 39.002281, 32.277367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551441, 38.813927, 32.189987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031892, 0.372403, -0.927523,
		0.518109, -0.799739, -0.303283,
		-0.854720, -0.470886, -0.218450,
		38.295025, 38.672661, 32.124451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984024, 38.682018, 31.612175>,  <38.893330, 39.002281, 32.277367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984024, 38.682018, 31.612175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.585670, 38.665878, 31.644629>,  <38.346657, 38.656197, 31.664101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.585670, 38.665878, 31.644629>,  <38.984024, 38.682018, 31.612175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585670, 38.665878, 31.644629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090021, 0.338491, -0.936654,
		0.010328, -0.940104, -0.340730,
		-0.995886, -0.040346, 0.081134,
		38.286903, 38.653774, 31.668968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686432, 38.346088, 31.060570>,  <38.984024, 38.682018, 31.612175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686432, 38.346088, 31.060570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359692, 38.552780, 31.163128>,  <38.163647, 38.676796, 31.224663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359692, 38.552780, 31.163128>,  <38.686432, 38.346088, 31.060570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359692, 38.552780, 31.163128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018622, 0.467870, -0.883601,
		-0.576547, -0.716996, -0.391803,
		-0.816852, 0.516734, 0.256397,
		38.114635, 38.707802, 31.240047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275753, 38.319103, 30.528645>,  <38.686432, 38.346088, 31.060570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275753, 38.319103, 30.528645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119957, 38.647018, 30.696568>,  <38.026478, 38.843769, 30.797321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119957, 38.647018, 30.696568>,  <38.275753, 38.319103, 30.528645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119957, 38.647018, 30.696568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150338, 0.393104, -0.907121,
		-0.908678, -0.416428, -0.029864,
		-0.389490, 0.819791, 0.419810,
		38.003109, 38.892956, 30.822510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525711, 38.515743, 30.119787>,  <38.275753, 38.319103, 30.528645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525711, 38.515743, 30.119787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687981, 38.821556, 30.320152>,  <37.785343, 39.005043, 30.440371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687981, 38.821556, 30.320152>,  <37.525711, 38.515743, 30.119787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687981, 38.821556, 30.320152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174763, 0.602804, -0.778515,
		-0.897154, 0.228283, 0.378155,
		0.405675, 0.764535, 0.500912,
		37.809685, 39.050915, 30.470427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010277, 39.040955, 29.778496>,  <37.525711, 38.515743, 30.119787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010277, 39.040955, 29.778496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.315414, 39.219547, 29.965567>,  <37.498497, 39.326702, 30.077808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.315414, 39.219547, 29.965567>,  <37.010277, 39.040955, 29.778496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315414, 39.219547, 29.965567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122561, 0.610344, -0.782598,
		-0.634859, 0.654320, 0.410877,
		0.762846, 0.446482, 0.467676,
		37.544270, 39.353493, 30.105869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919968, 39.751881, 29.638544>,  <37.010277, 39.040955, 29.778496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919968, 39.751881, 29.638544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.305298, 39.714928, 29.739311>,  <37.536495, 39.692757, 29.799772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.305298, 39.714928, 29.739311>,  <36.919968, 39.751881, 29.638544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305298, 39.714928, 29.739311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253010, 0.625357, -0.738184,
		-0.089346, 0.774852, 0.625797,
		0.963329, -0.092379, 0.251918,
		37.594296, 39.687214, 29.814886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215893, 40.478443, 29.640354>,  <36.919968, 39.751881, 29.638544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215893, 40.478443, 29.640354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.509960, 40.211235, 29.594271>,  <37.686401, 40.050911, 29.566620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.509960, 40.211235, 29.594271>,  <37.215893, 40.478443, 29.640354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509960, 40.211235, 29.594271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339048, 0.509516, -0.790848,
		0.587007, 0.542343, 0.601071,
		0.735166, -0.668025, -0.115209,
		37.730511, 40.010826, 29.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347824, 41.141369, 29.813927>,  <37.215893, 40.478443, 29.640354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347824, 41.141369, 29.813927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.999771, 41.335854, 29.781733>,  <36.790939, 41.452545, 29.762417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.999771, 41.335854, 29.781733>,  <37.347824, 41.141369, 29.813927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999771, 41.335854, 29.781733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342926, -0.480047, 0.807438,
		0.353947, 0.730176, 0.584436,
		-0.870128, 0.486209, -0.080486,
		36.738731, 41.481716, 29.757587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175652, 41.476871, 30.439980>,  <37.347824, 41.141369, 29.813927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175652, 41.476871, 30.439980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823566, 41.416664, 30.259951>,  <36.612316, 41.380539, 30.151934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823566, 41.416664, 30.259951>,  <37.175652, 41.476871, 30.439980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823566, 41.416664, 30.259951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329957, -0.487534, 0.808356,
		-0.341099, 0.860032, 0.379470,
		-0.880216, -0.150521, -0.450070,
		36.559502, 41.371510, 30.124929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646759, 41.752304, 30.909721>,  <37.175652, 41.476871, 30.439980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646759, 41.752304, 30.909721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414970, 41.524761, 30.676271>,  <36.275898, 41.388237, 30.536201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414970, 41.524761, 30.676271>,  <36.646759, 41.752304, 30.909721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414970, 41.524761, 30.676271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518213, -0.295521, 0.802572,
		-0.629019, 0.767510, -0.123541,
		-0.579473, -0.568854, -0.583623,
		36.241127, 41.354103, 30.501184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068768, 41.768612, 31.283348>,  <36.646759, 41.752304, 30.909721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068768, 41.768612, 31.283348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.011837, 41.460876, 31.034233>,  <35.977680, 41.276237, 30.884764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.011837, 41.460876, 31.034233>,  <36.068768, 41.768612, 31.283348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011837, 41.460876, 31.034233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588747, -0.439994, 0.678073,
		-0.795689, 0.463173, -0.390321,
		-0.142326, -0.769335, -0.622790,
		35.969139, 41.230076, 30.847397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369961, 41.685986, 31.249470>,  <36.068768, 41.768612, 31.283348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369961, 41.685986, 31.249470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.526768, 41.336361, 31.134687>,  <35.620853, 41.126587, 31.065819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.526768, 41.336361, 31.134687>,  <35.369961, 41.685986, 31.249470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526768, 41.336361, 31.134687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727227, -0.485467, 0.485245,
		-0.563441, 0.018457, -0.825951,
		0.392015, -0.874060, -0.286955,
		35.644371, 41.074142, 31.048601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796875, 41.291927, 31.124767>,  <35.369961, 41.685986, 31.249470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796875, 41.291927, 31.124767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097969, 41.037163, 31.191378>,  <35.278625, 40.884304, 31.231344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097969, 41.037163, 31.191378>,  <34.796875, 41.291927, 31.124767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097969, 41.037163, 31.191378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578279, -0.518821, 0.629617,
		-0.314614, -0.570234, -0.758848,
		0.752736, -0.636913, 0.166526,
		35.323792, 40.846088, 31.241335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487770, 40.622154, 31.171112>,  <34.796875, 41.291927, 31.124767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487770, 40.622154, 31.171112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.849255, 40.589420, 31.339212>,  <35.066147, 40.569778, 31.440073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.849255, 40.589420, 31.339212>,  <34.487770, 40.622154, 31.171112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849255, 40.589420, 31.339212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420885, -0.349786, 0.836962,
		0.078503, -0.933248, -0.350550,
		0.903710, -0.081837, 0.420249,
		35.120369, 40.564869, 31.465286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577679, 39.934586, 31.334244>,  <34.487770, 40.622154, 31.171112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577679, 39.934586, 31.334244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.825443, 40.134762, 31.576200>,  <34.974102, 40.254868, 31.721375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.825443, 40.134762, 31.576200>,  <34.577679, 39.934586, 31.334244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825443, 40.134762, 31.576200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364055, -0.499546, 0.786078,
		0.695553, -0.707119, -0.127238,
		0.619411, 0.500437, 0.604891,
		35.011265, 40.284893, 31.757668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605446, 39.445526, 31.862734>,  <34.577679, 39.934586, 31.334244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605446, 39.445526, 31.862734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.729195, 39.808807, 31.975492>,  <34.803444, 40.026775, 32.043148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.729195, 39.808807, 31.975492>,  <34.605446, 39.445526, 31.862734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729195, 39.808807, 31.975492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059620, -0.277331, 0.958923,
		0.949071, -0.313469, -0.031651,
		0.309370, 0.908199, 0.281896,
		34.822006, 40.081268, 32.060062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965572, 39.320541, 32.488258>,  <34.605446, 39.445526, 31.862734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965572, 39.320541, 32.488258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.891708, 39.712845, 32.513618>,  <34.847389, 39.948227, 32.528835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.891708, 39.712845, 32.513618>,  <34.965572, 39.320541, 32.488258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891708, 39.712845, 32.513618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354514, -0.126640, 0.926435,
		0.916635, 0.148600, 0.371077,
		-0.184662, 0.980755, 0.063402,
		34.836311, 40.007072, 32.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164467, 39.487022, 33.080326>,  <34.965572, 39.320541, 32.488258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164467, 39.487022, 33.080326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939022, 39.800228, 32.975079>,  <34.803753, 39.988152, 32.911930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.939022, 39.800228, 32.975079>,  <35.164467, 39.487022, 33.080326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939022, 39.800228, 32.975079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378291, 0.038500, 0.924886,
		0.734325, 0.620817, 0.274506,
		-0.563616, 0.783010, -0.263121,
		34.769936, 40.035130, 32.896141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394291, 39.930420, 33.530418>,  <35.164467, 39.487022, 33.080326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394291, 39.930420, 33.530418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019157, 40.034695, 33.438763>,  <34.794075, 40.097260, 33.383770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019157, 40.034695, 33.438763>,  <35.394291, 39.930420, 33.530418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019157, 40.034695, 33.438763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219867, 0.064607, 0.973388,
		0.268558, 0.963258, -0.003274,
		-0.937835, 0.260691, -0.229140,
		34.737808, 40.112904, 33.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.652702, 43.561665, 27.324203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330685, 43.419102, 27.134516>,  <38.137474, 43.333565, 27.020702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330685, 43.419102, 27.134516>,  <38.652702, 43.561665, 27.324203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330685, 43.419102, 27.134516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543326, 0.122088, 0.830597,
		-0.238134, 0.926320, -0.291931,
		-0.805040, -0.356407, -0.474220,
		38.089172, 43.312180, 26.992250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986019, 43.995434, 27.476637>,  <38.652702, 43.561665, 27.324203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986019, 43.995434, 27.476637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879051, 43.632729, 27.346247>,  <37.814869, 43.415104, 27.268013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879051, 43.632729, 27.346247>,  <37.986019, 43.995434, 27.476637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879051, 43.632729, 27.346247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584792, -0.116143, 0.802825,
		-0.765835, 0.405321, -0.499211,
		-0.267422, -0.906767, -0.325975,
		37.798824, 43.360699, 27.248455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265041, 43.907856, 27.610394>,  <37.986019, 43.995434, 27.476637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265041, 43.907856, 27.610394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383789, 43.529491, 27.558069>,  <37.455036, 43.302471, 27.526674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383789, 43.529491, 27.558069>,  <37.265041, 43.907856, 27.610394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383789, 43.529491, 27.558069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550504, -0.281464, 0.785954,
		-0.780265, -0.161313, -0.604288,
		0.296870, -0.945916, -0.130813,
		37.472851, 43.245716, 27.518826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700481, 43.573116, 27.816999>,  <37.265041, 43.907856, 27.610394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700481, 43.573116, 27.816999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973240, 43.280899, 27.831579>,  <37.136894, 43.105568, 27.840326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973240, 43.280899, 27.831579>,  <36.700481, 43.573116, 27.816999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973240, 43.280899, 27.831579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426808, -0.356927, 0.830926,
		-0.594019, -0.582158, -0.555188,
		0.681892, -0.730545, 0.036448,
		37.177807, 43.061737, 27.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291412, 42.930183, 27.878315>,  <36.700481, 43.573116, 27.816999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291412, 42.930183, 27.878315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655384, 42.828445, 28.009367>,  <36.873768, 42.767403, 28.087997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655384, 42.828445, 28.009367>,  <36.291412, 42.930183, 27.878315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655384, 42.828445, 28.009367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398786, -0.753646, 0.522483,
		0.114026, -0.606075, -0.787192,
		0.909928, -0.254344, 0.327629,
		36.928364, 42.752144, 28.107656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233234, 42.235676, 27.943459>,  <36.291412, 42.930183, 27.878315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233234, 42.235676, 27.943459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583725, 42.289558, 28.128536>,  <36.794018, 42.321888, 28.239582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583725, 42.289558, 28.128536>,  <36.233234, 42.235676, 27.943459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583725, 42.289558, 28.128536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213103, -0.752847, 0.622742,
		0.432223, -0.644263, -0.630958,
		0.876225, 0.134704, 0.462693,
		36.846592, 42.329971, 28.267344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559349, 41.563007, 28.056513>,  <36.233234, 42.235676, 27.943459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559349, 41.563007, 28.056513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715061, 41.811844, 28.328236>,  <36.808491, 41.961147, 28.491268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715061, 41.811844, 28.328236>,  <36.559349, 41.563007, 28.056513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715061, 41.811844, 28.328236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304538, -0.609085, 0.732306,
		0.869318, -0.491950, -0.047656,
		0.389285, 0.622094, 0.679306,
		36.831848, 41.998470, 28.532028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883488, 41.184925, 28.463438>,  <36.559349, 41.563007, 28.056513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883488, 41.184925, 28.463438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826603, 41.513054, 28.685013>,  <36.792473, 41.709930, 28.817959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826603, 41.513054, 28.685013>,  <36.883488, 41.184925, 28.463438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826603, 41.513054, 28.685013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396239, -0.560010, 0.727588,
		0.907067, -0.116022, 0.404682,
		-0.142210, 0.820322, 0.553939,
		36.783939, 41.759151, 28.851194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240208, 41.117077, 29.065464>,  <36.883488, 41.184925, 28.463438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240208, 41.117077, 29.065464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968185, 41.385651, 29.183247>,  <36.804970, 41.546795, 29.253916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968185, 41.385651, 29.183247>,  <37.240208, 41.117077, 29.065464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968185, 41.385651, 29.183247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234741, -0.579888, 0.780145,
		0.694563, 0.461423, 0.551970,
		-0.680058, 0.671430, 0.294454,
		36.764168, 41.587078, 29.271584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939533, 40.817986, 29.391598>,  <37.240208, 41.117077, 29.065464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939533, 40.817986, 29.391598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973385, 40.434349, 29.283533>,  <37.993694, 40.204166, 29.218695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973385, 40.434349, 29.283533>,  <37.939533, 40.817986, 29.391598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973385, 40.434349, 29.283533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283513, 0.283102, -0.916228,
		0.955227, 0.000942, 0.295872,
		0.084624, -0.959089, -0.270160,
		37.998772, 40.146622, 29.202486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564968, 40.800163, 29.062254>,  <37.939533, 40.817986, 29.391598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564968, 40.800163, 29.062254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400604, 40.462276, 28.925081>,  <38.301987, 40.259544, 28.842777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400604, 40.462276, 28.925081>,  <38.564968, 40.800163, 29.062254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400604, 40.462276, 28.925081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648624, -0.006544, -0.761081,
		0.640657, -0.535167, 0.550596,
		-0.410908, -0.844721, -0.342930,
		38.277332, 40.208858, 28.822203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077583, 40.429108, 28.787182>,  <38.564968, 40.800163, 29.062254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077583, 40.429108, 28.787182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775597, 40.238689, 28.606781>,  <38.594406, 40.124439, 28.498541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775597, 40.238689, 28.606781>,  <39.077583, 40.429108, 28.787182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775597, 40.238689, 28.606781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605122, -0.240718, -0.758870,
		0.252695, -0.845832, 0.469801,
		-0.754966, -0.476049, -0.451003,
		38.549107, 40.095875, 28.471479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357281, 39.827213, 28.621294>,  <39.077583, 40.429108, 28.787182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357281, 39.827213, 28.621294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043221, 39.911373, 28.388306>,  <38.854786, 39.961868, 28.248512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043221, 39.911373, 28.388306>,  <39.357281, 39.827213, 28.621294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043221, 39.911373, 28.388306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555658, -0.175976, -0.812574,
		-0.273467, -0.961647, 0.021257,
		-0.785150, 0.210401, -0.582470,
		38.807674, 39.974491, 28.213564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452427, 39.390244, 28.090435>,  <39.357281, 39.827213, 28.621294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452427, 39.390244, 28.090435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194309, 39.667744, 27.962492>,  <39.039440, 39.834244, 27.885725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194309, 39.667744, 27.962492>,  <39.452427, 39.390244, 28.090435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194309, 39.667744, 27.962492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364626, -0.088228, -0.926965,
		-0.671304, -0.714790, -0.196027,
		-0.645290, 0.693752, -0.319859,
		39.000721, 39.875870, 27.866535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056534, 39.097218, 27.576929>,  <39.452427, 39.390244, 28.090435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056534, 39.097218, 27.576929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031376, 39.493847, 27.531639>,  <39.016281, 39.731827, 27.504465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031376, 39.493847, 27.531639>,  <39.056534, 39.097218, 27.576929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031376, 39.493847, 27.531639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364891, -0.082749, -0.927365,
		-0.928923, -0.099637, -0.356614,
		-0.062891, 0.991577, -0.113224,
		39.012508, 39.791321, 27.497671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686584, 39.251476, 26.911043>,  <39.056534, 39.097218, 27.576929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686584, 39.251476, 26.911043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884426, 39.588711, 26.995485>,  <39.003132, 39.791054, 27.046150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884426, 39.588711, 26.995485>,  <38.686584, 39.251476, 26.911043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884426, 39.588711, 26.995485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274221, 0.079106, -0.958408,
		-0.824723, 0.531924, -0.192066,
		0.494606, 0.843089, 0.211105,
		39.032806, 39.841637, 27.058817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808250, 39.511406, 26.269661>,  <38.686584, 39.251476, 26.911043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808250, 39.511406, 26.269661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076794, 39.730854, 26.468979>,  <39.237919, 39.862522, 26.588570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076794, 39.730854, 26.468979>,  <38.808250, 39.511406, 26.269661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076794, 39.730854, 26.468979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501276, 0.159098, -0.850535,
		-0.545896, 0.820796, -0.168197,
		0.671356, 0.548617, 0.498297,
		39.278202, 39.895439, 26.618467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963726, 40.035194, 25.843552>,  <38.808250, 39.511406, 26.269661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963726, 40.035194, 25.843552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275295, 40.031628, 26.094376>,  <39.462234, 40.029488, 26.244871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275295, 40.031628, 26.094376>,  <38.963726, 40.035194, 25.843552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275295, 40.031628, 26.094376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627110, 0.004267, -0.778919,
		0.004267, 0.999951, 0.008913,
		0.778919, -0.008913, 0.627061,
		39.508972, 40.028954, 26.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412754, 40.630688, 25.739557>,  <38.963726, 40.035194, 25.843552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412754, 40.630688, 25.739557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640499, 40.355732, 25.919922>,  <39.777145, 40.190758, 26.028141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640499, 40.355732, 25.919922>,  <39.412754, 40.630688, 25.739557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640499, 40.355732, 25.919922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590599, -0.039519, -0.805996,
		0.571853, 0.725213, 0.383471,
		0.569365, -0.687390, 0.450909,
		39.811310, 40.149513, 26.055195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106918, 40.859200, 25.773582>,  <39.412754, 40.630688, 25.739557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106918, 40.859200, 25.773582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148811, 40.463203, 25.811441>,  <40.173946, 40.225605, 25.834156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148811, 40.463203, 25.811441>,  <40.106918, 40.859200, 25.773582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148811, 40.463203, 25.811441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663811, -0.001273, -0.747899,
		0.740530, 0.141159, 0.657031,
		0.104736, -0.989986, 0.094646,
		40.180233, 40.166206, 25.839834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886841, 40.682022, 25.823013>,  <40.106918, 40.859200, 25.773582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886841, 40.682022, 25.823013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708092, 40.340302, 25.716818>,  <40.600842, 40.135269, 25.653101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708092, 40.340302, 25.716818>,  <40.886841, 40.682022, 25.823013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708092, 40.340302, 25.716818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757819, -0.203784, -0.619824,
		0.475412, -0.478172, 0.738468,
		-0.446871, -0.854297, -0.265487,
		40.574032, 40.084011, 25.637173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400829, 40.250183, 25.639385>,  <40.886841, 40.682022, 25.823013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400829, 40.250183, 25.639385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099430, 40.044765, 25.475183>,  <40.918591, 39.921516, 25.376663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099430, 40.044765, 25.475183>,  <41.400829, 40.250183, 25.639385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099430, 40.044765, 25.475183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583196, -0.233848, -0.777944,
		0.303510, -0.825586, 0.475699,
		-0.753501, -0.513540, -0.410504,
		40.873379, 39.890705, 25.352032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685177, 39.540890, 25.518261>,  <41.400829, 40.250183, 25.639385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685177, 39.540890, 25.518261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362389, 39.590561, 25.287306>,  <41.168716, 39.620361, 25.148733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362389, 39.590561, 25.287306>,  <41.685177, 39.540890, 25.518261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362389, 39.590561, 25.287306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552017, -0.188929, -0.812147,
		-0.209934, -0.974108, 0.083913,
		-0.806973, 0.124176, -0.577386,
		41.120296, 39.627811, 25.114090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.411930, 39.661869, 22.392967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.700981, 39.866562, 22.578842>,  <33.874413, 39.989380, 22.690367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.700981, 39.866562, 22.578842>,  <33.411930, 39.661869, 22.392967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700981, 39.866562, 22.578842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243788, -0.440382, 0.864078,
		0.646820, -0.737692, -0.193477,
		0.722627, 0.511736, 0.464689,
		33.917770, 40.020084, 22.718248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663914, 39.205566, 22.870132>,  <33.411930, 39.661869, 22.392967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663914, 39.205566, 22.870132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799442, 39.553257, 23.014154>,  <33.880760, 39.761871, 23.100567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799442, 39.553257, 23.014154>,  <33.663914, 39.205566, 22.870132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799442, 39.553257, 23.014154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103897, -0.345781, 0.932546,
		0.935095, -0.353378, -0.026848,
		0.338824, 0.869230, 0.360053,
		33.901089, 39.814026, 23.122169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097855, 39.055321, 23.470379>,  <33.663914, 39.205566, 22.870132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097855, 39.055321, 23.470379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015869, 39.442471, 23.528641>,  <33.966679, 39.674759, 23.563597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015869, 39.442471, 23.528641>,  <34.097855, 39.055321, 23.470379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015869, 39.442471, 23.528641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118295, -0.172218, 0.977930,
		0.971594, 0.183213, 0.149793,
		-0.204966, 0.967871, 0.145653,
		33.954380, 39.732830, 23.572336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514931, 39.240536, 23.999914>,  <34.097855, 39.055321, 23.470379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514931, 39.240536, 23.999914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224140, 39.513771, 23.971954>,  <34.049664, 39.677711, 23.955179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224140, 39.513771, 23.971954>,  <34.514931, 39.240536, 23.999914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224140, 39.513771, 23.971954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084644, 0.011871, 0.996341,
		0.681421, 0.730237, 0.049189,
		-0.726981, 0.683091, -0.069899,
		34.006046, 39.718697, 23.950985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838367, 39.835541, 24.233351>,  <34.514931, 39.240536, 23.999914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838367, 39.835541, 24.233351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440613, 39.842766, 24.275038>,  <34.201958, 39.847099, 24.300051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440613, 39.842766, 24.275038>,  <34.838367, 39.835541, 24.233351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440613, 39.842766, 24.275038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104859, 0.039114, 0.993718,
		0.013870, 0.999072, -0.040789,
		-0.994390, 0.018060, 0.104219,
		34.142296, 39.848183, 24.306303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729584, 40.385792, 24.715321>,  <34.838367, 39.835541, 24.233351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729584, 40.385792, 24.715321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404297, 40.153652, 24.732588>,  <34.209126, 40.014366, 24.742949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.404297, 40.153652, 24.732588>,  <34.729584, 40.385792, 24.715321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404297, 40.153652, 24.732588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006468, 0.065158, 0.997854,
		-0.581921, 0.811754, -0.049234,
		-0.813220, -0.580353, 0.043167,
		34.160332, 39.979546, 24.745539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361378, 40.693851, 25.257357>,  <34.729584, 40.385792, 24.715321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361378, 40.693851, 25.257357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228394, 40.319313, 25.212242>,  <34.148605, 40.094589, 25.185173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.228394, 40.319313, 25.212242>,  <34.361378, 40.693851, 25.257357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228394, 40.319313, 25.212242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161586, -0.061267, 0.984955,
		-0.929173, 0.345681, -0.130933,
		-0.332458, -0.936350, -0.112785,
		34.128654, 40.038406, 25.178406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933449, 40.630062, 25.750805>,  <34.361378, 40.693851, 25.257357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933449, 40.630062, 25.750805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940247, 40.240181, 25.661659>,  <33.944324, 40.006252, 25.608171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.940247, 40.240181, 25.661659>,  <33.933449, 40.630062, 25.750805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940247, 40.240181, 25.661659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197604, -0.221774, 0.954866,
		-0.980135, 0.027810, -0.196374,
		0.016996, -0.974702, -0.222864,
		33.945347, 39.947769, 25.594801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432961, 40.366753, 26.190668>,  <33.933449, 40.630062, 25.750805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432961, 40.366753, 26.190668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609657, 40.026932, 26.075346>,  <33.715675, 39.823040, 26.006153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609657, 40.026932, 26.075346>,  <33.432961, 40.366753, 26.190668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609657, 40.026932, 26.075346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224963, -0.415988, 0.881105,
		-0.868478, -0.324365, -0.374879,
		0.441745, -0.849553, -0.288306,
		33.742180, 39.772064, 25.988853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995731, 39.710369, 26.199469>,  <33.432961, 40.366753, 26.190668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995731, 39.710369, 26.199469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373589, 39.593250, 26.258694>,  <33.600304, 39.522980, 26.294230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373589, 39.593250, 26.258694>,  <32.995731, 39.710369, 26.199469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373589, 39.593250, 26.258694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274000, -0.455741, 0.846891,
		-0.180487, -0.840577, -0.510738,
		0.944642, -0.292795, 0.148063,
		33.656982, 39.505413, 26.303112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985462, 38.992752, 26.548237>,  <32.995731, 39.710369, 26.199469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985462, 38.992752, 26.548237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.377510, 39.048355, 26.604856>,  <33.612740, 39.081718, 26.638828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.377510, 39.048355, 26.604856>,  <32.985462, 38.992752, 26.548237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377510, 39.048355, 26.604856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078339, -0.384319, 0.919871,
		0.182269, -0.912675, -0.365790,
		0.980123, 0.139009, 0.141548,
		33.671547, 39.090057, 26.647320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300552, 38.341549, 26.862406>,  <32.985462, 38.992752, 26.548237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300552, 38.341549, 26.862406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.567219, 38.619995, 26.968969>,  <33.727219, 38.787064, 27.032907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.567219, 38.619995, 26.968969>,  <33.300552, 38.341549, 26.862406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567219, 38.619995, 26.968969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071637, -0.415610, 0.906717,
		0.741905, -0.585395, -0.326941,
		0.666667, 0.696119, 0.266407,
		33.767220, 38.828831, 27.048891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859230, 37.997852, 27.149975>,  <33.300552, 38.341549, 26.862406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859230, 37.997852, 27.149975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847469, 38.376808, 27.277466>,  <33.840412, 38.604183, 27.353960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847469, 38.376808, 27.277466>,  <33.859230, 37.997852, 27.149975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847469, 38.376808, 27.277466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048712, -0.319844, 0.946217,
		0.998380, 0.012298, 0.055555,
		-0.029406, 0.947390, 0.318727,
		33.838646, 38.661026, 27.373083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308182, 38.122059, 27.675491>,  <33.859230, 37.997852, 27.149975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308182, 38.122059, 27.675491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.045403, 38.417759, 27.734711>,  <33.887733, 38.595181, 27.770243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.045403, 38.417759, 27.734711>,  <34.308182, 38.122059, 27.675491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045403, 38.417759, 27.734711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161542, -0.329831, 0.930116,
		0.736423, 0.587125, 0.336104,
		-0.656952, 0.739254, 0.148050,
		33.848316, 38.639534, 27.779125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886280, 38.258915, 28.077360>,  <34.308182, 38.122059, 27.675491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886280, 38.258915, 28.077360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144363, 37.953331, 28.074129>,  <35.299213, 37.769981, 28.072191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144363, 37.953331, 28.074129>,  <34.886280, 38.258915, 28.077360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144363, 37.953331, 28.074129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259057, 0.228709, -0.938393,
		0.718744, 0.603369, 0.345475,
		0.645211, -0.763962, -0.008076,
		35.337925, 37.724144, 28.071707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528923, 38.525185, 27.834011>,  <34.886280, 38.258915, 28.077360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528923, 38.525185, 27.834011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515362, 38.130543, 27.770180>,  <35.507225, 37.893757, 27.731880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515362, 38.130543, 27.770180>,  <35.528923, 38.525185, 27.834011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515362, 38.130543, 27.770180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133995, 0.153743, -0.978984,
		0.990402, -0.054572, 0.126987,
		-0.033902, -0.986603, -0.159579,
		35.505192, 37.834560, 27.722305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166870, 38.447937, 27.460457>,  <35.528923, 38.525185, 27.834011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166870, 38.447937, 27.460457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.953804, 38.116325, 27.392365>,  <35.825966, 37.917358, 27.351509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.953804, 38.116325, 27.392365>,  <36.166870, 38.447937, 27.460457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953804, 38.116325, 27.392365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273536, 0.021702, -0.961617,
		0.800903, -0.558784, 0.215210,
		-0.532665, -0.829029, -0.170228,
		35.794003, 37.867615, 27.341295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607536, 38.025249, 27.138023>,  <36.166870, 38.447937, 27.460457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607536, 38.025249, 27.138023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256546, 37.853981, 27.051569>,  <36.045952, 37.751221, 26.999697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256546, 37.853981, 27.051569>,  <36.607536, 38.025249, 27.138023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256546, 37.853981, 27.051569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277964, -0.086728, -0.956668,
		0.390869, -0.899529, 0.195116,
		-0.877473, -0.428167, -0.216137,
		35.993305, 37.725533, 26.986729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748592, 37.320824, 26.868477>,  <36.607536, 38.025249, 27.138023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748592, 37.320824, 26.868477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407299, 37.478222, 26.731565>,  <36.202522, 37.572662, 26.649420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407299, 37.478222, 26.731565>,  <36.748592, 37.320824, 26.868477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407299, 37.478222, 26.731565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345195, -0.065855, -0.936218,
		-0.390941, -0.916963, -0.079645,
		-0.853232, 0.393499, -0.342277,
		36.151329, 37.596272, 26.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402321, 36.803009, 26.354462>,  <36.748592, 37.320824, 26.868477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402321, 36.803009, 26.354462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243885, 37.160648, 26.270844>,  <36.148823, 37.375233, 26.220673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243885, 37.160648, 26.270844>,  <36.402321, 36.803009, 26.354462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243885, 37.160648, 26.270844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215102, -0.130976, -0.967769,
		-0.892661, -0.428289, -0.140445,
		-0.396089, 0.894100, -0.209043,
		36.125057, 37.428879, 26.208130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126614, 36.670757, 25.630903>,  <36.402321, 36.803009, 26.354462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126614, 36.670757, 25.630903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.134102, 37.069469, 25.662075>,  <36.138596, 37.308697, 25.680779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.134102, 37.069469, 25.662075>,  <36.126614, 36.670757, 25.630903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134102, 37.069469, 25.662075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118405, 0.075187, -0.990115,
		-0.992789, 0.027759, -0.116617,
		0.018716, 0.996783, 0.077931,
		36.139717, 37.368504, 25.685455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622211, 36.879169, 25.195240>,  <36.126614, 36.670757, 25.630903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622211, 36.879169, 25.195240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892883, 37.171234, 25.233109>,  <36.055286, 37.346474, 25.255829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892883, 37.171234, 25.233109>,  <35.622211, 36.879169, 25.195240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892883, 37.171234, 25.233109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156523, -0.017017, -0.987528,
		-0.719445, 0.683061, -0.125802,
		0.676682, 0.730163, 0.094672,
		36.095886, 37.390282, 25.261511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603523, 37.230785, 24.547495>,  <35.622211, 36.879169, 25.195240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603523, 37.230785, 24.547495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934227, 37.413651, 24.678625>,  <36.132648, 37.523369, 24.757303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934227, 37.413651, 24.678625>,  <35.603523, 37.230785, 24.547495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934227, 37.413651, 24.678625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259555, 0.207021, -0.943278,
		-0.499099, 0.864953, 0.052498,
		0.826759, 0.457163, 0.327826,
		36.182255, 37.550800, 24.776974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682739, 37.879993, 24.106277>,  <35.603523, 37.230785, 24.547495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682739, 37.879993, 24.106277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043316, 37.798885, 24.259274>,  <36.259663, 37.750221, 24.351070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043316, 37.798885, 24.259274>,  <35.682739, 37.879993, 24.106277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043316, 37.798885, 24.259274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431118, 0.340157, -0.835721,
		0.039350, 0.918248, 0.394047,
		0.901437, -0.202766, 0.382488,
		36.313747, 37.738056, 24.374020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099903, 38.515499, 24.194384>,  <35.682739, 37.879993, 24.106277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099903, 38.515499, 24.194384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.325188, 38.190872, 24.132225>,  <36.460358, 37.996098, 24.094931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.325188, 38.190872, 24.132225>,  <36.099903, 38.515499, 24.194384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325188, 38.190872, 24.132225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442815, 0.455214, -0.772460,
		0.697642, 0.366249, 0.615758,
		0.563215, -0.811567, -0.155396,
		36.494152, 37.947403, 24.085606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740910, 38.744614, 24.139393>,  <36.099903, 38.515499, 24.194384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740910, 38.744614, 24.139393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716244, 38.395378, 23.945936>,  <36.701443, 38.185837, 23.829863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716244, 38.395378, 23.945936>,  <36.740910, 38.744614, 24.139393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716244, 38.395378, 23.945936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313209, 0.443159, -0.839947,
		0.947680, -0.203277, 0.246132,
		-0.061666, -0.873092, -0.483641,
		36.697742, 38.133450, 23.800844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354008, 38.585690, 23.898956>,  <36.740910, 38.744614, 24.139393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354008, 38.585690, 23.898956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097435, 38.392498, 23.660530>,  <36.943493, 38.276581, 23.517473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097435, 38.392498, 23.660530>,  <37.354008, 38.585690, 23.898956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097435, 38.392498, 23.660530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346782, 0.510518, -0.786837,
		0.684331, -0.711407, -0.159973,
		-0.641431, -0.482981, -0.596067,
		36.905006, 38.247604, 23.481710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739582, 38.271378, 23.476049>,  <37.354008, 38.585690, 23.898956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739582, 38.271378, 23.476049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392570, 38.264008, 23.277229>,  <37.184364, 38.259586, 23.157936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392570, 38.264008, 23.277229>,  <37.739582, 38.271378, 23.476049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392570, 38.264008, 23.277229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431560, 0.468969, -0.770599,
		0.247298, -0.883022, -0.398892,
		-0.867525, -0.018421, -0.497052,
		37.132313, 38.258480, 23.128113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162979, 37.540558, 23.406847>,  <37.739582, 38.271378, 23.476049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162979, 37.540558, 23.406847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541069, 37.411289, 23.388439>,  <38.767921, 37.333729, 23.377394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541069, 37.411289, 23.388439>,  <38.162979, 37.540558, 23.406847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541069, 37.411289, 23.388439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110446, -0.449282, 0.886536,
		-0.307179, -0.832890, -0.460364,
		0.945221, -0.323171, -0.046021,
		38.824635, 37.314339, 23.374632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127861, 36.793530, 23.583632>,  <38.162979, 37.540558, 23.406847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127861, 36.793530, 23.583632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486992, 36.953026, 23.658371>,  <38.702469, 37.048721, 23.703215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486992, 36.953026, 23.658371>,  <38.127861, 36.793530, 23.583632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486992, 36.953026, 23.658371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027333, -0.373040, 0.927413,
		0.439498, -0.837764, -0.324026,
		0.897828, 0.398740, 0.186849,
		38.756340, 37.072647, 23.714426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691322, 36.288620, 23.876474>,  <38.127861, 36.793530, 23.583632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691322, 36.288620, 23.876474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849464, 36.639988, 23.983860>,  <38.944351, 36.850807, 24.048290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849464, 36.639988, 23.983860>,  <38.691322, 36.288620, 23.876474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849464, 36.639988, 23.983860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147782, -0.349298, 0.925284,
		0.906563, -0.326140, -0.267911,
		0.395353, 0.878421, 0.268463,
		38.968071, 36.903515, 24.064400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053177, 36.074940, 24.323174>,  <38.691322, 36.288620, 23.876474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053177, 36.074940, 24.323174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.059814, 36.468636, 24.393597>,  <39.063797, 36.704853, 24.435850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.059814, 36.468636, 24.393597>,  <39.053177, 36.074940, 24.323174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059814, 36.468636, 24.393597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222903, -0.175293, 0.958951,
		0.974699, 0.023335, -0.222298,
		0.016590, 0.984240, 0.176059,
		39.064793, 36.763908, 24.446415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741051, 36.199783, 24.523716>,  <39.053177, 36.074940, 24.323174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741051, 36.199783, 24.523716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.467258, 36.462383, 24.650518>,  <39.302982, 36.619942, 24.726599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.467258, 36.462383, 24.650518>,  <39.741051, 36.199783, 24.523716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467258, 36.462383, 24.650518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328600, -0.110328, 0.938003,
		0.650772, 0.746215, -0.140208,
		-0.684483, 0.656498, 0.317005,
		39.261913, 36.659332, 24.745621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006035, 36.379898, 25.135813>,  <39.741051, 36.199783, 24.523716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006035, 36.379898, 25.135813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618179, 36.470356, 25.173027>,  <39.385468, 36.524632, 25.195354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618179, 36.470356, 25.173027>,  <40.006035, 36.379898, 25.135813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618179, 36.470356, 25.173027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025953, -0.283129, 0.958731,
		0.243156, 0.932038, 0.268664,
		-0.969640, 0.226149, 0.093034,
		39.327286, 36.538200, 25.200937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897102, 36.811691, 25.710726>,  <40.006035, 36.379898, 25.135813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897102, 36.811691, 25.710726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.515343, 36.705685, 25.655741>,  <39.286289, 36.642082, 25.622749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.515343, 36.705685, 25.655741>,  <39.897102, 36.811691, 25.710726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515343, 36.705685, 25.655741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108983, -0.119391, 0.986848,
		-0.277938, 0.956825, 0.085065,
		-0.954397, -0.265012, -0.137461,
		39.229023, 36.626183, 25.614502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583004, 37.223972, 26.150444>,  <39.897102, 36.811691, 25.710726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583004, 37.223972, 26.150444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346638, 36.905426, 26.098875>,  <39.204819, 36.714298, 26.067934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346638, 36.905426, 26.098875>,  <39.583004, 37.223972, 26.150444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346638, 36.905426, 26.098875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159703, -0.041172, 0.986306,
		-0.790770, 0.603410, -0.102853,
		-0.590912, -0.796368, -0.128924,
		39.169365, 36.666515, 26.060198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973660, 37.434788, 26.517656>,  <39.583004, 37.223972, 26.150444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973660, 37.434788, 26.517656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980412, 37.038128, 26.466503>,  <38.984463, 36.800133, 26.435810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980412, 37.038128, 26.466503>,  <38.973660, 37.434788, 26.517656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980412, 37.038128, 26.466503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301874, -0.126988, 0.944853,
		-0.953199, 0.022660, -0.301495,
		0.016876, -0.991645, -0.127885,
		38.985474, 36.740635, 26.428137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411407, 37.187935, 26.919151>,  <38.973660, 37.434788, 26.517656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411407, 37.187935, 26.919151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611610, 36.845108, 26.870264>,  <38.731731, 36.639412, 26.840933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611610, 36.845108, 26.870264>,  <38.411407, 37.187935, 26.919151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611610, 36.845108, 26.870264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261327, -0.284155, 0.922477,
		-0.825349, -0.429767, -0.366195,
		0.500506, -0.857063, -0.122217,
		38.761761, 36.587990, 26.833599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942242, 36.559364, 27.103752>,  <38.411407, 37.187935, 26.919151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942242, 36.559364, 27.103752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.313240, 36.412670, 27.132759>,  <38.535839, 36.324654, 27.150164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.313240, 36.412670, 27.132759>,  <37.942242, 36.559364, 27.103752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313240, 36.412670, 27.132759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207104, -0.342572, 0.916380,
		-0.311219, -0.864959, -0.393685,
		0.927497, -0.366729, 0.072522,
		38.591488, 36.302650, 27.154514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785793, 35.863728, 27.356726>,  <37.942242, 36.559364, 27.103752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785793, 35.863728, 27.356726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169254, 35.943630, 27.437805>,  <38.399330, 35.991573, 27.486452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169254, 35.943630, 27.437805>,  <37.785793, 35.863728, 27.356726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169254, 35.943630, 27.437805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134256, -0.310567, 0.941022,
		0.250932, -0.929324, -0.270905,
		0.958649, 0.199762, 0.202698,
		38.456848, 36.003559, 27.498615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925709, 35.342453, 27.720985>,  <37.785793, 35.863728, 27.356726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925709, 35.342453, 27.720985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.239594, 35.575745, 27.804956>,  <38.427925, 35.715721, 27.855339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.239594, 35.575745, 27.804956>,  <37.925709, 35.342453, 27.720985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239594, 35.575745, 27.804956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062019, -0.263098, 0.962774,
		0.616753, -0.768518, -0.170284,
		0.784710, 0.583232, 0.209929,
		38.475006, 35.750713, 27.867935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408054, 34.918476, 28.155333>,  <37.925709, 35.342453, 27.720985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408054, 34.918476, 28.155333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480564, 35.306332, 28.220976>,  <38.524071, 35.539047, 28.260363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480564, 35.306332, 28.220976>,  <38.408054, 34.918476, 28.155333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480564, 35.306332, 28.220976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222304, -0.202957, 0.953619,
		0.957978, -0.136382, -0.252346,
		0.181272, 0.969644, 0.164110,
		38.534946, 35.597225, 28.270208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.743355, 39.074356, 24.873007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.442848, 39.320271, 24.776972>,  <41.262547, 39.467819, 24.719351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.442848, 39.320271, 24.776972>,  <41.743355, 39.074356, 24.873007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442848, 39.320271, 24.776972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234853, -0.090943, -0.967767,
		-0.616805, -0.783432, -0.076063,
		-0.751262, 0.614788, -0.240085,
		41.217468, 39.504707, 24.704947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441486, 38.693832, 24.162975>,  <41.743355, 39.074356, 24.873007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441486, 38.693832, 24.162975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.291885, 39.064041, 24.186749>,  <41.202126, 39.286167, 24.201012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.291885, 39.064041, 24.186749>,  <41.441486, 38.693832, 24.162975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291885, 39.064041, 24.186749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038143, 0.079379, -0.996114,
		-0.926645, -0.370279, -0.064990,
		-0.373999, 0.925523, 0.059433,
		41.179688, 39.341698, 24.204578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830330, 38.791943, 23.686255>,  <41.441486, 38.693832, 24.162975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830330, 38.791943, 23.686255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949524, 39.169140, 23.745537>,  <41.021042, 39.395458, 23.781107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949524, 39.169140, 23.745537>,  <40.830330, 38.791943, 23.686255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949524, 39.169140, 23.745537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107839, 0.187522, -0.976323,
		-0.948459, 0.274948, 0.157571,
		0.297986, 0.942995, 0.148206,
		41.038921, 39.452038, 23.789999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364613, 39.181080, 23.380360>,  <40.830330, 38.791943, 23.686255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364613, 39.181080, 23.380360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.674526, 39.432713, 23.405548>,  <40.860474, 39.583691, 23.420662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.674526, 39.432713, 23.405548>,  <40.364613, 39.181080, 23.380360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674526, 39.432713, 23.405548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104215, 0.225320, -0.968695,
		-0.623579, 0.743966, 0.240134,
		0.774783, 0.629083, 0.062972,
		40.906960, 39.621437, 23.424440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152641, 39.846977, 23.086355>,  <40.364613, 39.181080, 23.380360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152641, 39.846977, 23.086355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.551292, 39.816856, 23.073317>,  <40.790482, 39.798786, 23.065493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.551292, 39.816856, 23.073317>,  <40.152641, 39.846977, 23.086355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551292, 39.816856, 23.073317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019947, 0.163038, -0.986418,
		0.079592, 0.983742, 0.160986,
		0.996628, -0.075300, -0.032599,
		40.850281, 39.794266, 23.063538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337837, 40.335526, 22.654421>,  <40.152641, 39.846977, 23.086355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337837, 40.335526, 22.654421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668911, 40.112370, 22.630081>,  <40.867554, 39.978477, 22.615477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668911, 40.112370, 22.630081>,  <40.337837, 40.335526, 22.654421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668911, 40.112370, 22.630081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001310, 0.110351, -0.993892,
		0.561195, 0.822547, 0.092066,
		0.827683, -0.557888, -0.060851,
		40.917217, 39.945004, 22.611826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773079, 40.742012, 22.113838>,  <40.337837, 40.335526, 22.654421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773079, 40.742012, 22.113838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929558, 40.375034, 22.142860>,  <41.023445, 40.154850, 22.160275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929558, 40.375034, 22.142860>,  <40.773079, 40.742012, 22.113838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929558, 40.375034, 22.142860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252433, 0.031155, -0.967113,
		0.885008, 0.396650, 0.243780,
		0.391200, -0.917441, 0.072555,
		41.046917, 40.099800, 22.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410618, 40.793121, 21.748440>,  <40.773079, 40.742012, 22.113838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410618, 40.793121, 21.748440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334187, 40.400555, 21.755459>,  <41.288330, 40.165012, 21.759670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334187, 40.400555, 21.755459>,  <41.410618, 40.793121, 21.748440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334187, 40.400555, 21.755459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270007, -0.069740, -0.960329,
		0.943709, -0.178757, 0.278316,
		-0.191075, -0.981418, 0.017549,
		41.276863, 40.106129, 21.760723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986996, 40.429535, 21.354744>,  <41.410618, 40.793121, 21.748440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986996, 40.429535, 21.354744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.677666, 40.175991, 21.349218>,  <41.492065, 40.023865, 21.345903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.677666, 40.175991, 21.349218>,  <41.986996, 40.429535, 21.354744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677666, 40.175991, 21.349218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161388, -0.175733, -0.971119,
		0.613123, -0.753222, 0.238196,
		-0.773327, -0.633857, -0.013815,
		41.445667, 39.985832, 21.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296261, 39.849251, 21.042377>,  <41.986996, 40.429535, 21.354744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296261, 39.849251, 21.042377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.897923, 39.843975, 21.006353>,  <41.658920, 39.840809, 20.984739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.897923, 39.843975, 21.006353>,  <42.296261, 39.849251, 21.042377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897923, 39.843975, 21.006353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090172, -0.008130, -0.995893,
		0.012409, -0.999880, 0.009286,
		-0.995849, -0.013195, -0.090061,
		41.599167, 39.840019, 20.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151398, 39.445282, 20.556757>,  <42.296261, 39.849251, 21.042377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151398, 39.445282, 20.556757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796841, 39.630444, 20.558578>,  <41.584106, 39.741539, 20.559671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796841, 39.630444, 20.558578>,  <42.151398, 39.445282, 20.556757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796841, 39.630444, 20.558578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094417, 0.190412, -0.977153,
		-0.453195, -0.865716, -0.212486,
		-0.886397, 0.462903, 0.004556,
		41.530922, 39.769314, 20.559946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735062, 39.132835, 20.071751>,  <42.151398, 39.445282, 20.556757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735062, 39.132835, 20.071751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.629696, 39.511799, 20.144451>,  <41.566475, 39.739178, 20.188072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.629696, 39.511799, 20.144451>,  <41.735062, 39.132835, 20.071751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629696, 39.511799, 20.144451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129802, 0.221503, -0.966482,
		-0.955910, -0.230994, -0.181323,
		-0.263415, 0.947406, 0.181753,
		41.550671, 39.796021, 20.198977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188564, 39.228691, 19.566370>,  <41.735062, 39.132835, 20.071751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188564, 39.228691, 19.566370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354515, 39.571083, 19.689774>,  <41.454086, 39.776516, 19.763817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.354515, 39.571083, 19.689774>,  <41.188564, 39.228691, 19.566370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354515, 39.571083, 19.689774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038342, 0.322319, -0.945854,
		-0.909068, 0.404244, 0.100904,
		0.414880, 0.855977, 0.308510,
		41.478977, 39.827877, 19.782326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862057, 39.746143, 19.199461>,  <41.188564, 39.228691, 19.566370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862057, 39.746143, 19.199461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202427, 39.903378, 19.338839>,  <41.406647, 39.997719, 19.422464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202427, 39.903378, 19.338839>,  <40.862057, 39.746143, 19.199461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202427, 39.903378, 19.338839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138624, 0.471777, -0.870753,
		-0.506671, 0.789245, 0.346953,
		0.850922, 0.393089, 0.348444,
		41.457703, 40.021305, 19.443371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642666, 39.464096, 18.519667>,  <40.862057, 39.746143, 19.199461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642666, 39.464096, 18.519667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303703, 39.284180, 18.406824>,  <40.100327, 39.176228, 18.339119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303703, 39.284180, 18.406824>,  <40.642666, 39.464096, 18.519667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303703, 39.284180, 18.406824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330554, 0.031145, 0.943273,
		-0.415493, 0.892588, -0.175074,
		-0.847407, -0.449795, -0.282109,
		40.049480, 39.149242, 18.322191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114201, 39.776894, 18.996006>,  <40.642666, 39.464096, 18.519667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114201, 39.776894, 18.996006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910179, 39.467884, 18.844717>,  <39.787766, 39.282478, 18.753942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910179, 39.467884, 18.844717>,  <40.114201, 39.776894, 18.996006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910179, 39.467884, 18.844717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439892, -0.143591, 0.886497,
		-0.739150, 0.618537, -0.266589,
		-0.510051, -0.772524, -0.378225,
		39.757164, 39.236126, 18.731249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397476, 39.895405, 19.158083>,  <40.114201, 39.776894, 18.996006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397476, 39.895405, 19.158083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430790, 39.504318, 19.081005>,  <39.450779, 39.269665, 19.034758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430790, 39.504318, 19.081005>,  <39.397476, 39.895405, 19.158083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430790, 39.504318, 19.081005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485059, -0.208687, 0.849216,
		-0.870507, 0.022746, -0.491631,
		0.083281, -0.977718, -0.192697,
		39.455776, 39.211002, 19.023195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918900, 39.551994, 19.493294>,  <39.397476, 39.895405, 19.158083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918900, 39.551994, 19.493294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.148746, 39.234123, 19.415010>,  <39.286655, 39.043400, 19.368040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.148746, 39.234123, 19.415010>,  <38.918900, 39.551994, 19.493294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148746, 39.234123, 19.415010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210013, -0.374296, 0.903215,
		-0.791020, -0.477899, -0.381969,
		0.574615, -0.794679, -0.195711,
		39.321133, 38.995720, 19.356297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524506, 38.937180, 19.449795>,  <38.918900, 39.551994, 19.493294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524506, 38.937180, 19.449795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893883, 38.802197, 19.522875>,  <39.115509, 38.721207, 19.566723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893883, 38.802197, 19.522875>,  <38.524506, 38.937180, 19.449795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893883, 38.802197, 19.522875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343264, -0.513591, 0.786380,
		-0.171535, -0.788891, -0.590108,
		0.923442, -0.337454, 0.182699,
		39.170914, 38.700962, 19.577684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573235, 38.129520, 19.560514>,  <38.524506, 38.937180, 19.449795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573235, 38.129520, 19.560514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911800, 38.267368, 19.722906>,  <39.114941, 38.350079, 19.820341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911800, 38.267368, 19.722906>,  <38.573235, 38.129520, 19.560514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911800, 38.267368, 19.722906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164223, -0.556292, 0.814598,
		0.506571, -0.756159, -0.414259,
		0.846415, 0.344621, 0.405980,
		39.165726, 38.370754, 19.844700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899662, 37.595455, 19.997505>,  <38.573235, 38.129520, 19.560514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899662, 37.595455, 19.997505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092598, 37.914970, 20.141327>,  <39.208359, 38.106682, 20.227619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.092598, 37.914970, 20.141327>,  <38.899662, 37.595455, 19.997505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092598, 37.914970, 20.141327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084523, -0.450983, 0.888522,
		0.871895, -0.398183, -0.285045,
		0.482344, 0.798790, 0.359554,
		39.237301, 38.154606, 20.249193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598202, 37.361267, 20.202274>,  <38.899662, 37.595455, 19.997505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598202, 37.361267, 20.202274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.498302, 37.690029, 20.407057>,  <39.438362, 37.887287, 20.529926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.498302, 37.690029, 20.407057>,  <39.598202, 37.361267, 20.202274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498302, 37.690029, 20.407057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203442, -0.472372, 0.857599,
		0.946697, 0.318341, -0.049233,
		-0.249753, 0.821902, 0.511957,
		39.423378, 37.936600, 20.560644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907856, 37.198429, 20.856163>,  <39.598202, 37.361267, 20.202274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907856, 37.198429, 20.856163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668747, 37.511806, 20.924135>,  <39.525280, 37.699833, 20.964918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.668747, 37.511806, 20.924135>,  <39.907856, 37.198429, 20.856163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668747, 37.511806, 20.924135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005000, -0.208327, 0.978047,
		0.801649, 0.585500, 0.120615,
		-0.597774, 0.783447, 0.169933,
		39.489414, 37.746841, 20.975115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246979, 37.570007, 21.344595>,  <39.907856, 37.198429, 20.856163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246979, 37.570007, 21.344595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.858696, 37.664932, 21.359629>,  <39.625729, 37.721889, 21.368649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.858696, 37.664932, 21.359629>,  <40.246979, 37.570007, 21.344595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858696, 37.664932, 21.359629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002089, -0.148087, 0.988972,
		0.240265, 0.960079, 0.143253,
		-0.970705, 0.237316, 0.037586,
		39.567486, 37.736126, 21.370905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180248, 38.134613, 21.930323>,  <40.246979, 37.570007, 21.344595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180248, 38.134613, 21.930323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815052, 37.975525, 21.893961>,  <39.595936, 37.880070, 21.872145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815052, 37.975525, 21.893961>,  <40.180248, 38.134613, 21.930323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815052, 37.975525, 21.893961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081287, -0.041012, 0.995847,
		-0.399801, 0.916588, 0.005113,
		-0.912991, -0.397725, -0.090903,
		39.541153, 37.856209, 21.866690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819363, 38.495247, 22.441029>,  <40.180248, 38.134613, 21.930323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819363, 38.495247, 22.441029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621220, 38.161518, 22.344267>,  <39.502335, 37.961281, 22.286211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621220, 38.161518, 22.344267>,  <39.819363, 38.495247, 22.441029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621220, 38.161518, 22.344267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195047, -0.164535, 0.966894,
		-0.846507, 0.526144, -0.081229,
		-0.495361, -0.834326, -0.241903,
		39.472610, 37.911221, 22.271696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169258, 38.454384, 22.786060>,  <39.819363, 38.495247, 22.441029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169258, 38.454384, 22.786060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279953, 38.080143, 22.698372>,  <39.346371, 37.855598, 22.645758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279953, 38.080143, 22.698372>,  <39.169258, 38.454384, 22.786060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279953, 38.080143, 22.698372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353784, -0.311306, 0.882001,
		-0.893451, -0.166523, -0.417151,
		0.276735, -0.935606, -0.219223,
		39.362972, 37.799461, 22.632605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529430, 38.116684, 23.038620>,  <39.169258, 38.454384, 22.786060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529430, 38.116684, 23.038620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788822, 37.812561, 23.023634>,  <38.944458, 37.630089, 23.014643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788822, 37.812561, 23.023634>,  <38.529430, 38.116684, 23.038620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788822, 37.812561, 23.023634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335778, -0.329868, 0.882293,
		-0.683174, -0.559570, -0.469207,
		0.648481, -0.760308, -0.037466,
		38.983368, 37.584469, 23.012394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806461, 37.975754, 22.754547>,  <38.529430, 38.116684, 23.038620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806461, 37.975754, 22.754547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448273, 38.148247, 22.710428>,  <37.233360, 38.251743, 22.683958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.448273, 38.148247, 22.710428>,  <37.806461, 37.975754, 22.754547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448273, 38.148247, 22.710428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178757, 0.121474, -0.976366,
		-0.407644, -0.894025, -0.185863,
		-0.895473, 0.431234, -0.110295,
		37.179630, 38.277618, 22.677340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538990, 37.832558, 22.093718>,  <37.806461, 37.975754, 22.754547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538990, 37.832558, 22.093718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332249, 38.162197, 22.186432>,  <37.208206, 38.359982, 22.242060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332249, 38.162197, 22.186432>,  <37.538990, 37.832558, 22.093718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332249, 38.162197, 22.186432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154848, 0.176290, -0.972082,
		-0.841956, -0.538311, 0.036495,
		-0.516849, 0.824101, 0.231784,
		37.177193, 38.409428, 22.255968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168007, 37.881443, 21.489634>,  <37.538990, 37.832558, 22.093718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168007, 37.881443, 21.489634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118027, 38.232807, 21.674145>,  <37.088039, 38.443626, 21.784851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118027, 38.232807, 21.674145>,  <37.168007, 37.881443, 21.489634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118027, 38.232807, 21.674145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286011, 0.413297, -0.864513,
		-0.950045, -0.239953, 0.199593,
		-0.124951, 0.878412, 0.461280,
		37.080540, 38.496330, 21.812529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492577, 38.159348, 21.208567>,  <37.168007, 37.881443, 21.489634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492577, 38.159348, 21.208567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715286, 38.466602, 21.335037>,  <36.848911, 38.650955, 21.410919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715286, 38.466602, 21.335037>,  <36.492577, 38.159348, 21.208567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715286, 38.466602, 21.335037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132583, 0.457930, -0.879046,
		-0.820014, 0.447511, 0.356806,
		0.556775, 0.768137, 0.316177,
		36.882320, 38.697044, 21.429890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082924, 38.771545, 21.146009>,  <36.492577, 38.159348, 21.208567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082924, 38.771545, 21.146009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473949, 38.855640, 21.140699>,  <36.708565, 38.906097, 21.137514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473949, 38.855640, 21.140699>,  <36.082924, 38.771545, 21.146009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473949, 38.855640, 21.140699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112796, 0.469173, -0.875873,
		-0.177912, 0.857716, 0.482359,
		0.977561, 0.210236, -0.013276,
		36.767216, 38.918713, 21.136717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127010, 39.519333, 21.100044>,  <36.082924, 38.771545, 21.146009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127010, 39.519333, 21.100044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 39.386662, 20.973820>,  <36.695999, 39.307056, 20.898085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 39.386662, 20.973820>,  <36.127010, 39.519333, 21.100044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482628, 39.386662, 20.973820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021242, 0.658654, -0.752146,
		0.457320, 0.675397, 0.578530,
		0.889048, -0.331682, -0.315562,
		36.749344, 39.287155, 20.879150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517929, 40.037693, 20.926365>,  <36.127010, 39.519333, 21.100044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517929, 40.037693, 20.926365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724850, 39.759880, 20.726355>,  <36.849003, 39.593193, 20.606348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724850, 39.759880, 20.726355>,  <36.517929, 40.037693, 20.926365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724850, 39.759880, 20.726355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222743, 0.673408, -0.704916,
		0.826307, 0.253278, 0.503058,
		0.517303, -0.694530, -0.500026,
		36.880039, 39.551521, 20.576347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372684, 40.590336, 21.360003>,  <36.517929, 40.037693, 20.926365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372684, 40.590336, 21.360003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102123, 40.839325, 21.202518>,  <35.939785, 40.988716, 21.108028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102123, 40.839325, 21.202518>,  <36.372684, 40.590336, 21.360003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102123, 40.839325, 21.202518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709308, -0.406546, 0.575849,
		0.198387, 0.668770, 0.716512,
		-0.676406, 0.622469, -0.393710,
		35.899200, 41.026066, 21.084406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035172, 40.918846, 21.975296>,  <36.372684, 40.590336, 21.360003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035172, 40.918846, 21.975296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808163, 40.934128, 21.646307>,  <35.671959, 40.943298, 21.448914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808163, 40.934128, 21.646307>,  <36.035172, 40.918846, 21.975296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808163, 40.934128, 21.646307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801405, -0.254772, 0.541148,
		-0.188868, 0.966246, 0.175207,
		-0.567520, 0.038206, -0.822473,
		35.637905, 40.945591, 21.399565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463699, 41.136253, 22.278852>,  <36.035172, 40.918846, 21.975296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463699, 41.136253, 22.278852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352207, 40.998615, 21.920208>,  <35.285313, 40.916031, 21.705021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352207, 40.998615, 21.920208>,  <35.463699, 41.136253, 22.278852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352207, 40.998615, 21.920208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877206, -0.288812, 0.383533,
		-0.390923, 0.893412, -0.221344,
		-0.278726, -0.344096, -0.896610,
		35.268589, 40.895386, 21.651224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906281, 41.470875, 22.070768>,  <35.463699, 41.136253, 22.278852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906281, 41.470875, 22.070768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898773, 41.116524, 21.885351>,  <34.894268, 40.903915, 21.774101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898773, 41.116524, 21.885351>,  <34.906281, 41.470875, 22.070768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898773, 41.116524, 21.885351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804164, -0.262117, 0.533493,
		-0.594111, 0.382779, -0.707469,
		-0.018770, -0.885875, -0.463544,
		34.893143, 40.850761, 21.746288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235260, 41.391361, 21.986677>,  <34.906281, 41.470875, 22.070768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235260, 41.391361, 21.986677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347721, 41.019669, 21.890774>,  <34.415199, 40.796654, 21.833231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347721, 41.019669, 21.890774>,  <34.235260, 41.391361, 21.986677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347721, 41.019669, 21.890774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636695, -0.367549, 0.677884,
		-0.718034, -0.037936, -0.694974,
		0.281153, -0.929230, -0.239759,
		34.432068, 40.740898, 21.818846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655457, 41.054497, 21.930429>,  <34.235260, 41.391361, 21.986677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655457, 41.054497, 21.930429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932262, 40.777195, 22.010950>,  <34.098347, 40.610813, 22.059263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932262, 40.777195, 22.010950>,  <33.655457, 41.054497, 21.930429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932262, 40.777195, 22.010950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577718, -0.364637, 0.730261,
		-0.432850, -0.621648, -0.652836,
		0.692013, -0.693249, 0.201304,
		34.139866, 40.569221, 22.071341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276836, 40.394802, 22.150684>,  <33.655457, 41.054497, 21.930429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276836, 40.394802, 22.150684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647755, 40.324097, 22.282669>,  <33.870304, 40.281673, 22.361860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647755, 40.324097, 22.282669>,  <33.276836, 40.394802, 22.150684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647755, 40.324097, 22.282669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371748, -0.538181, 0.756415,
		0.043871, -0.824084, -0.564766,
		0.927297, -0.176766, 0.329962,
		33.925945, 40.271069, 22.381657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.724380, 42.875736, 20.148779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970417, 42.608505, 20.316275>,  <40.118038, 42.448166, 20.416771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970417, 42.608505, 20.316275>,  <39.724380, 42.875736, 20.148779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970417, 42.608505, 20.316275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447518, 0.141435, 0.883019,
		-0.649147, -0.730529, -0.211981,
		0.615090, -0.668075, 0.418737,
		40.154945, 42.408081, 20.441896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289383, 42.310478, 20.492041>,  <39.724380, 42.875736, 20.148779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289383, 42.310478, 20.492041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650940, 42.322521, 20.662724>,  <39.867874, 42.329746, 20.765133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650940, 42.322521, 20.662724>,  <39.289383, 42.310478, 20.492041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650940, 42.322521, 20.662724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427755, 0.056524, 0.902126,
		0.003032, -0.997948, 0.063966,
		0.903890, 0.030097, 0.426705,
		39.922108, 42.331551, 20.790735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250286, 41.813782, 21.018993>,  <39.289383, 42.310478, 20.492041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250286, 41.813782, 21.018993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558060, 42.044086, 21.129610>,  <39.742722, 42.182270, 21.195980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.558060, 42.044086, 21.129610>,  <39.250286, 41.813782, 21.018993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558060, 42.044086, 21.129610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391995, 0.083822, 0.916141,
		0.504299, -0.813309, 0.290191,
		0.769430, 0.575762, 0.276542,
		39.788887, 42.216816, 21.212572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232285, 41.756172, 21.612499>,  <39.250286, 41.813782, 21.018993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232285, 41.756172, 21.612499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.486778, 42.064766, 21.613935>,  <39.639477, 42.249924, 21.614798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.486778, 42.064766, 21.613935>,  <39.232285, 41.756172, 21.612499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486778, 42.064766, 21.613935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265462, 0.214551, 0.939946,
		0.724384, -0.598982, 0.341306,
		0.636238, 0.771485, 0.003590,
		39.677650, 42.296211, 21.615013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749065, 41.678555, 22.226797>,  <39.232285, 41.756172, 21.612499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749065, 41.678555, 22.226797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.687859, 42.059155, 22.120041>,  <39.651134, 42.287514, 22.055988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.687859, 42.059155, 22.120041>,  <39.749065, 41.678555, 22.226797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687859, 42.059155, 22.120041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121720, 0.249867, 0.960599,
		0.980699, 0.179471, 0.077584,
		-0.153014, 0.951502, -0.266890,
		39.641953, 42.344604, 22.039974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100967, 42.102547, 22.694841>,  <39.749065, 41.678555, 22.226797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100967, 42.102547, 22.694841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.836342, 42.359795, 22.540583>,  <39.677567, 42.514145, 22.448027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.836342, 42.359795, 22.540583>,  <40.100967, 42.102547, 22.694841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836342, 42.359795, 22.540583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171310, 0.371059, 0.912671,
		0.730059, 0.669855, -0.135306,
		-0.661564, 0.643124, -0.385648,
		39.637875, 42.552731, 22.424889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224239, 42.823479, 23.024925>,  <40.100967, 42.102547, 22.694841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224239, 42.823479, 23.024925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856716, 42.871796, 22.874615>,  <39.636204, 42.900787, 22.784430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856716, 42.871796, 22.874615>,  <40.224239, 42.823479, 23.024925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856716, 42.871796, 22.874615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243793, 0.575046, 0.780953,
		0.310424, 0.809154, -0.498905,
		-0.918805, 0.120796, -0.375774,
		39.581074, 42.908035, 22.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052650, 43.515965, 23.068203>,  <40.224239, 42.823479, 23.024925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052650, 43.515965, 23.068203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697456, 43.332966, 23.049528>,  <39.484341, 43.223167, 23.038322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697456, 43.332966, 23.049528>,  <40.052650, 43.515965, 23.068203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697456, 43.332966, 23.049528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302131, 0.503848, 0.809231,
		-0.346692, 0.732693, -0.585633,
		-0.887987, -0.457492, -0.046689,
		39.431061, 43.195717, 23.035521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652477, 43.989979, 23.437937>,  <40.052650, 43.515965, 23.068203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652477, 43.989979, 23.437937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378868, 43.702568, 23.387606>,  <39.214703, 43.530121, 23.357407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378868, 43.702568, 23.387606>,  <39.652477, 43.989979, 23.437937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378868, 43.702568, 23.387606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404962, 0.230576, 0.884783,
		-0.606725, 0.656169, -0.448695,
		-0.684025, -0.718525, -0.125827,
		39.173660, 43.487011, 23.349857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991066, 44.259270, 23.713600>,  <39.652477, 43.989979, 23.437937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991066, 44.259270, 23.713600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958290, 43.860741, 23.703629>,  <38.938625, 43.621624, 23.697645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.958290, 43.860741, 23.703629>,  <38.991066, 44.259270, 23.713600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958290, 43.860741, 23.703629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411961, 0.011084, 0.911134,
		-0.907510, 0.084929, -0.411356,
		-0.081941, -0.996325, -0.024928,
		38.933708, 43.561844, 23.696150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281174, 44.079651, 23.647829>,  <38.991066, 44.259270, 23.713600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281174, 44.079651, 23.647829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485596, 43.798092, 23.845152>,  <38.608250, 43.629158, 23.963547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485596, 43.798092, 23.845152>,  <38.281174, 44.079651, 23.647829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485596, 43.798092, 23.845152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533184, 0.190554, 0.824260,
		-0.674197, -0.684264, -0.277924,
		0.511052, -0.703898, 0.493309,
		38.638912, 43.586922, 23.993145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809746, 43.887043, 24.112526>,  <38.281174, 44.079651, 23.647829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809746, 43.887043, 24.112526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140965, 43.708168, 24.247799>,  <38.339695, 43.600845, 24.328962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140965, 43.708168, 24.247799>,  <37.809746, 43.887043, 24.112526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140965, 43.708168, 24.247799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210600, 0.310929, 0.926807,
		-0.519603, -0.838660, 0.163287,
		0.828046, -0.447183, 0.338182,
		38.389378, 43.574013, 24.349253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313843, 43.423439, 24.147150>,  <37.809746, 43.887043, 24.112526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313843, 43.423439, 24.147150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982021, 43.646194, 24.163717>,  <36.782928, 43.779850, 24.173656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982021, 43.646194, 24.163717>,  <37.313843, 43.423439, 24.147150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982021, 43.646194, 24.163717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122093, 0.253242, -0.959668,
		-0.544919, -0.791038, -0.278069,
		-0.829552, 0.556891, 0.041416,
		36.733154, 43.813263, 24.176142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939621, 43.220207, 23.542965>,  <37.313843, 43.423439, 24.147150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939621, 43.220207, 23.542965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783195, 43.565121, 23.671669>,  <36.689339, 43.772068, 23.748892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.783195, 43.565121, 23.671669>,  <36.939621, 43.220207, 23.542965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783195, 43.565121, 23.671669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017854, 0.342426, -0.939375,
		-0.920191, -0.373100, -0.118516,
		-0.391064, 0.862288, 0.321759,
		36.665874, 43.823807, 23.768196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556587, 43.320728, 23.019823>,  <36.939621, 43.220207, 23.542965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556587, 43.320728, 23.019823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596024, 43.684074, 23.182377>,  <36.619686, 43.902084, 23.279909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.596024, 43.684074, 23.182377>,  <36.556587, 43.320728, 23.019823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596024, 43.684074, 23.182377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131948, 0.392837, -0.910093,
		-0.986342, 0.143347, -0.081128,
		0.098589, 0.908367, 0.406385,
		36.625599, 43.956585, 23.304293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119831, 43.770035, 22.629284>,  <36.556587, 43.320728, 23.019823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119831, 43.770035, 22.629284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367672, 44.022503, 22.815922>,  <36.516376, 44.173985, 22.927904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367672, 44.022503, 22.815922>,  <36.119831, 43.770035, 22.629284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367672, 44.022503, 22.815922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176506, 0.467189, -0.866360,
		-0.764811, 0.619158, 0.178067,
		0.619605, 0.631172, 0.466596,
		36.553555, 44.211853, 22.955900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033607, 44.387100, 22.266815>,  <36.119831, 43.770035, 22.629284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033607, 44.387100, 22.266815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.365173, 44.460522, 22.478176>,  <36.564114, 44.504574, 22.604992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.365173, 44.460522, 22.478176>,  <36.033607, 44.387100, 22.266815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365173, 44.460522, 22.478176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393514, 0.480003, -0.784056,
		-0.397548, 0.857850, 0.325652,
		0.828916, 0.183551, 0.528400,
		36.613850, 44.515587, 22.636696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068329, 45.155632, 22.278477>,  <36.033607, 44.387100, 22.266815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068329, 45.155632, 22.278477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404968, 44.944172, 22.322727>,  <36.606953, 44.817295, 22.349277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.404968, 44.944172, 22.322727>,  <36.068329, 45.155632, 22.278477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404968, 44.944172, 22.322727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450006, 0.573080, -0.684889,
		0.298668, 0.626186, 0.720200,
		0.841601, -0.528649, 0.110627,
		36.657448, 44.785576, 22.355915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574722, 45.616604, 22.150259>,  <36.068329, 45.155632, 22.278477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574722, 45.616604, 22.150259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.750313, 45.257412, 22.138073>,  <36.855667, 45.041897, 22.130762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.750313, 45.257412, 22.138073>,  <36.574722, 45.616604, 22.150259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750313, 45.257412, 22.138073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480700, 0.263362, -0.836401,
		0.759098, 0.352514, 0.547270,
		0.438973, -0.897983, -0.030464,
		36.882004, 44.988018, 22.128933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268242, 45.769073, 21.938309>,  <36.574722, 45.616604, 22.150259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268242, 45.769073, 21.938309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.286591, 45.375626, 21.868584>,  <37.297600, 45.139557, 21.826750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.286591, 45.375626, 21.868584>,  <37.268242, 45.769073, 21.938309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286591, 45.375626, 21.868584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645974, 0.162311, -0.745904,
		0.761980, -0.078382, 0.642840,
		0.045875, -0.983622, -0.174311,
		37.300354, 45.080540, 21.816290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976784, 45.473999, 21.874996>,  <37.268242, 45.769073, 21.938309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976784, 45.473999, 21.874996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751881, 45.204830, 21.682728>,  <37.616940, 45.043331, 21.567366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751881, 45.204830, 21.682728>,  <37.976784, 45.473999, 21.874996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751881, 45.204830, 21.682728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579118, 0.094528, -0.809745,
		0.590330, -0.733652, 0.336550,
		-0.562258, -0.672919, -0.480673,
		37.583202, 45.002956, 21.538527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438007, 44.955811, 21.543413>,  <37.976784, 45.473999, 21.874996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438007, 44.955811, 21.543413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.099720, 44.889843, 21.340414>,  <37.896748, 44.850262, 21.218615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.099720, 44.889843, 21.340414>,  <38.438007, 44.955811, 21.543413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099720, 44.889843, 21.340414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486741, 0.151388, -0.860328,
		0.218716, -0.974619, -0.047759,
		-0.845722, -0.164921, -0.507498,
		37.846004, 44.840366, 21.188164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674721, 44.500488, 20.975756>,  <38.438007, 44.955811, 21.543413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674721, 44.500488, 20.975756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327484, 44.657646, 20.854399>,  <38.119141, 44.751942, 20.781586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327484, 44.657646, 20.854399>,  <38.674721, 44.500488, 20.975756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327484, 44.657646, 20.854399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433829, 0.303440, -0.848361,
		-0.241254, -0.868078, -0.433863,
		-0.868095, 0.392893, -0.303391,
		38.067055, 44.775513, 20.763382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683662, 44.327602, 20.267929>,  <38.674721, 44.500488, 20.975756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683662, 44.327602, 20.267929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427921, 44.632648, 20.307205>,  <38.274475, 44.815678, 20.330770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427921, 44.632648, 20.307205>,  <38.683662, 44.327602, 20.267929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427921, 44.632648, 20.307205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376368, 0.421743, -0.824912,
		-0.670505, -0.490454, -0.556667,
		-0.639352, 0.762619, 0.098190,
		38.236115, 44.861435, 20.336662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229282, 44.339939, 19.665970>,  <38.683662, 44.327602, 20.267929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229282, 44.339939, 19.665970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278324, 44.694008, 19.845495>,  <38.307751, 44.906448, 19.953211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278324, 44.694008, 19.845495>,  <38.229282, 44.339939, 19.665970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278324, 44.694008, 19.845495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199875, 0.420935, -0.884796,
		-0.972120, 0.198189, -0.125315,
		0.122607, 0.885175, 0.448812,
		38.315105, 44.959560, 19.980139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898296, 43.811996, 19.989412>,  <38.229282, 44.339939, 19.665970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898296, 43.811996, 19.989412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819729, 43.556793, 19.691587>,  <37.772591, 43.403671, 19.512892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.819729, 43.556793, 19.691587>,  <37.898296, 43.811996, 19.989412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819729, 43.556793, 19.691587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749579, -0.391823, 0.533485,
		-0.632102, 0.662892, -0.401274,
		-0.196415, -0.638004, -0.744562,
		37.760803, 43.365391, 19.468220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166832, 43.637123, 20.049282>,  <37.898296, 43.811996, 19.989412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166832, 43.637123, 20.049282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.248013, 43.335701, 19.799171>,  <37.296722, 43.154850, 19.649105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.248013, 43.335701, 19.799171>,  <37.166832, 43.637123, 20.049282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248013, 43.335701, 19.799171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682454, -0.566776, 0.461543,
		-0.702188, 0.333051, -0.629292,
		0.202950, -0.753553, -0.625275,
		37.308899, 43.109634, 19.611589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527676, 43.349258, 19.786972>,  <37.166832, 43.637123, 20.049282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527676, 43.349258, 19.786972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.786583, 43.048496, 19.736897>,  <36.941929, 42.868038, 19.706850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.786583, 43.048496, 19.736897>,  <36.527676, 43.349258, 19.786972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786583, 43.048496, 19.736897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600202, -0.603982, 0.524369,
		-0.469889, -0.264272, -0.842238,
		0.647273, -0.751909, -0.125188,
		36.980766, 42.822922, 19.699339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109505, 42.735622, 19.431269>,  <36.527676, 43.349258, 19.786972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109505, 42.735622, 19.431269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433853, 42.589687, 19.614304>,  <36.628460, 42.502125, 19.724125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433853, 42.589687, 19.614304>,  <36.109505, 42.735622, 19.431269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433853, 42.589687, 19.614304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550255, -0.741547, 0.383832,
		0.199284, -0.563026, -0.802052,
		0.810867, -0.364842, 0.457587,
		36.677113, 42.480236, 19.751579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082451, 42.013203, 19.322735>,  <36.109505, 42.735622, 19.431269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082451, 42.013203, 19.322735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.317741, 42.071999, 19.640825>,  <36.458916, 42.107277, 19.831680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.317741, 42.071999, 19.640825>,  <36.082451, 42.013203, 19.322735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317741, 42.071999, 19.640825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389866, -0.809984, 0.438098,
		0.708516, -0.567732, -0.419149,
		0.588226, 0.146987, 0.795226,
		36.494209, 42.116096, 19.879393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414024, 41.308670, 19.526876>,  <36.082451, 42.013203, 19.322735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414024, 41.308670, 19.526876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.456692, 41.539036, 19.851084>,  <36.482292, 41.677258, 20.045609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.456692, 41.539036, 19.851084>,  <36.414024, 41.308670, 19.526876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456692, 41.539036, 19.851084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448601, -0.699610, 0.556151,
		0.887344, -0.422923, 0.183730,
		0.106670, 0.575918, 0.810518,
		36.488693, 41.711811, 20.094238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337261, 40.848320, 20.016895>,  <36.414024, 41.308670, 19.526876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337261, 40.848320, 20.016895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.319588, 41.189751, 20.224531>,  <36.308983, 41.394608, 20.349112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.319588, 41.189751, 20.224531>,  <36.337261, 40.848320, 20.016895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319588, 41.189751, 20.224531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446767, -0.481624, 0.753948,
		0.893559, -0.198602, 0.402629,
		-0.044180, 0.853578, 0.519088,
		36.306335, 41.445824, 20.380257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635815, 40.705551, 20.679749>,  <36.337261, 40.848320, 20.016895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635815, 40.705551, 20.679749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348431, 40.983566, 20.690659>,  <36.175999, 41.150375, 20.697205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348431, 40.983566, 20.690659>,  <36.635815, 40.705551, 20.679749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348431, 40.983566, 20.690659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528801, -0.571257, 0.627723,
		0.451871, 0.436569, 0.777959,
		-0.718459, 0.695035, 0.027276,
		36.132893, 41.192078, 20.698841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069752, 40.289188, 20.507845>,  <36.635815, 40.705551, 20.679749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069752, 40.289188, 20.507845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109158, 39.937439, 20.321514>,  <37.132801, 39.726391, 20.209715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109158, 39.937439, 20.321514>,  <37.069752, 40.289188, 20.507845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109158, 39.937439, 20.321514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304332, 0.472303, -0.827232,
		0.947458, -0.060271, 0.314151,
		0.098517, -0.879374, -0.465829,
		37.138714, 39.673626, 20.181765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744747, 40.305855, 20.115856>,  <37.069752, 40.289188, 20.507845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744747, 40.305855, 20.115856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.513550, 40.020760, 19.956896>,  <37.374832, 39.849701, 19.861521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.513550, 40.020760, 19.956896>,  <37.744747, 40.305855, 20.115856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513550, 40.020760, 19.956896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338511, 0.233696, -0.911480,
		0.742518, -0.661355, 0.106194,
		-0.577995, -0.712738, -0.397399,
		37.340153, 39.806938, 19.837675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201298, 39.950272, 19.619871>,  <37.744747, 40.305855, 20.115856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201298, 39.950272, 19.619871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.816959, 39.878677, 19.535263>,  <37.586357, 39.835720, 19.484499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.816959, 39.878677, 19.535263>,  <38.201298, 39.950272, 19.619871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816959, 39.878677, 19.535263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190418, 0.128030, -0.973319,
		0.201292, -0.975485, -0.088935,
		-0.960845, -0.178986, -0.211521,
		37.528706, 39.824982, 19.471807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222519, 39.552563, 19.064178>,  <38.201298, 39.950272, 19.619871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222519, 39.552563, 19.064178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845592, 39.686134, 19.055004>,  <37.619434, 39.766277, 19.049500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.845592, 39.686134, 19.055004>,  <38.222519, 39.552563, 19.064178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845592, 39.686134, 19.055004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072126, 0.135670, -0.988125,
		-0.326849, -0.932785, -0.151929,
		-0.942320, 0.333926, -0.022934,
		37.562897, 39.786312, 19.048124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996948, 39.274361, 18.448149>,  <38.222519, 39.552563, 19.064178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996948, 39.274361, 18.448149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765369, 39.586395, 18.543049>,  <37.626423, 39.773617, 18.599989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765369, 39.586395, 18.543049>,  <37.996948, 39.274361, 18.448149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765369, 39.586395, 18.543049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072135, 0.240830, -0.967883,
		-0.812165, -0.577470, -0.083157,
		-0.578951, 0.780083, 0.237249,
		37.591682, 39.820419, 18.614223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389271, 39.333973, 17.938799>,  <37.996948, 39.274361, 18.448149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389271, 39.333973, 17.938799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409500, 39.691170, 18.117689>,  <37.421638, 39.905487, 18.225023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409500, 39.691170, 18.117689>,  <37.389271, 39.333973, 17.938799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409500, 39.691170, 18.117689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084260, 0.450018, -0.889035,
		-0.995159, 0.007281, 0.098004,
		0.050576, 0.892990, 0.447226,
		37.424671, 39.959068, 18.251858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924675, 39.762341, 17.611231>,  <37.389271, 39.333973, 17.938799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924675, 39.762341, 17.611231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.231640, 39.962254, 17.771877>,  <37.415817, 40.082203, 17.868265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.231640, 39.962254, 17.771877>,  <36.924675, 39.762341, 17.611231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231640, 39.962254, 17.771877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233828, 0.365088, -0.901130,
		-0.596995, 0.785447, 0.163309,
		0.767412, 0.499784, 0.401616,
		37.461864, 40.112190, 17.892363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082390, 40.281963, 17.170732>,  <36.924675, 39.762341, 17.611231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082390, 40.281963, 17.170732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407276, 40.311188, 17.402237>,  <37.602207, 40.328720, 17.541140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407276, 40.311188, 17.402237>,  <37.082390, 40.281963, 17.170732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407276, 40.311188, 17.402237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508786, 0.396619, -0.764088,
		-0.285369, 0.915072, 0.284970,
		0.812220, 0.073058, 0.578759,
		37.650944, 40.333107, 17.575865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284225, 41.034512, 17.022696>,  <37.082390, 40.281963, 17.170732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284225, 41.034512, 17.022696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583172, 40.799057, 17.145956>,  <37.762539, 40.657784, 17.219912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583172, 40.799057, 17.145956>,  <37.284225, 41.034512, 17.022696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583172, 40.799057, 17.145956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538431, 0.264836, -0.799971,
		0.389283, 0.763786, 0.514868,
		0.747363, -0.588636, 0.308150,
		37.807381, 40.622467, 17.238401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.854691, 35.509029, 32.226105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152260, 35.711472, 32.400658>,  <35.330803, 35.832939, 32.505390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152260, 35.711472, 32.400658>,  <34.854691, 35.509029, 32.226105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152260, 35.711472, 32.400658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029515, 0.627491, -0.778064,
		-0.667613, 0.591700, 0.451868,
		0.743923, 0.506109, 0.436385,
		35.375439, 35.863304, 32.531574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809490, 36.305607, 32.414948>,  <34.854691, 35.509029, 32.226105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809490, 36.305607, 32.414948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180595, 36.189995, 32.320538>,  <35.403259, 36.120628, 32.263889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180595, 36.189995, 32.320538>,  <34.809490, 36.305607, 32.414948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180595, 36.189995, 32.320538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039974, 0.551892, -0.832957,
		0.371013, 0.782225, 0.500474,
		0.927767, -0.289032, -0.236028,
		35.458927, 36.103287, 32.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157574, 36.936752, 32.248810>,  <34.809490, 36.305607, 32.414948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157574, 36.936752, 32.248810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377487, 36.645386, 32.085281>,  <35.509438, 36.470566, 31.987164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377487, 36.645386, 32.085281>,  <35.157574, 36.936752, 32.248810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377487, 36.645386, 32.085281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009335, 0.484044, -0.874994,
		0.835252, 0.484877, 0.259322,
		0.549788, -0.728420, -0.408825,
		35.542423, 36.426861, 31.962633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757217, 37.230194, 31.959715>,  <35.157574, 36.936752, 32.248810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757217, 37.230194, 31.959715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691902, 36.889275, 31.760946>,  <35.652714, 36.684723, 31.641685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691902, 36.889275, 31.760946>,  <35.757217, 37.230194, 31.959715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691902, 36.889275, 31.760946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170607, 0.471698, -0.865098,
		0.971716, -0.226036, 0.068386,
		-0.163286, -0.852296, -0.496920,
		35.642918, 36.633587, 31.611870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130795, 37.361618, 31.405134>,  <35.757217, 37.230194, 31.959715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130795, 37.361618, 31.405134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934750, 37.026951, 31.307331>,  <35.817123, 36.826153, 31.248650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934750, 37.026951, 31.307331>,  <36.130795, 37.361618, 31.405134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934750, 37.026951, 31.307331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159450, 0.189722, -0.968804,
		0.856954, -0.513805, 0.040422,
		-0.490107, -0.836666, -0.244509,
		35.787716, 36.775951, 31.233978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509075, 36.936413, 30.847704>,  <36.130795, 37.361618, 31.405134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509075, 36.936413, 30.847704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132591, 36.808090, 30.805355>,  <35.906700, 36.731098, 30.779945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132591, 36.808090, 30.805355>,  <36.509075, 36.936413, 30.847704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132591, 36.808090, 30.805355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019333, 0.261736, -0.964946,
		0.337270, -0.910263, -0.240146,
		-0.941209, -0.320805, -0.105874,
		35.850227, 36.711849, 30.773594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543579, 36.538307, 30.230978>,  <36.509075, 36.936413, 30.847704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543579, 36.538307, 30.230978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162609, 36.649094, 30.281860>,  <35.934029, 36.715565, 30.312389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162609, 36.649094, 30.281860>,  <36.543579, 36.538307, 30.230978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162609, 36.649094, 30.281860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056795, 0.248767, -0.966897,
		-0.299445, -0.928118, -0.221201,
		-0.952421, 0.276970, 0.127204,
		35.876884, 36.732185, 30.320021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180626, 36.188782, 29.717085>,  <36.543579, 36.538307, 30.230978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180626, 36.188782, 29.717085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948380, 36.495167, 29.827492>,  <35.809032, 36.678997, 29.893736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948380, 36.495167, 29.827492>,  <36.180626, 36.188782, 29.717085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948380, 36.495167, 29.827492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211154, 0.185748, -0.959641,
		-0.786321, -0.615464, 0.053888,
		-0.580615, 0.765964, 0.276015,
		35.774197, 36.724957, 29.910295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479752, 36.104713, 29.363302>,  <36.180626, 36.188782, 29.717085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479752, 36.104713, 29.363302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516838, 36.483189, 29.487328>,  <35.539089, 36.710274, 29.561743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516838, 36.483189, 29.487328>,  <35.479752, 36.104713, 29.363302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516838, 36.483189, 29.487328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393164, 0.320890, -0.861657,
		-0.914782, -0.042014, 0.401758,
		0.092719, 0.946184, 0.310062,
		35.544655, 36.767044, 29.580347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944016, 36.392078, 29.084579>,  <35.479752, 36.104713, 29.363302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944016, 36.392078, 29.084579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192219, 36.698662, 29.150936>,  <35.341141, 36.882610, 29.190750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192219, 36.698662, 29.150936>,  <34.944016, 36.392078, 29.084579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192219, 36.698662, 29.150936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251684, 0.394992, -0.883536,
		-0.742717, 0.506486, 0.437999,
		0.620505, 0.766455, 0.165893,
		35.378372, 36.928596, 29.200705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575703, 36.988365, 28.783148>,  <34.944016, 36.392078, 29.084579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575703, 36.988365, 28.783148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953640, 37.117638, 28.804430>,  <35.180401, 37.195202, 28.817200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953640, 37.117638, 28.804430>,  <34.575703, 36.988365, 28.783148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953640, 37.117638, 28.804430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112254, 0.472127, -0.874354,
		-0.307691, 0.820154, 0.482363,
		0.944842, 0.323178, 0.053204,
		35.237091, 37.214592, 28.820391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556774, 37.693935, 28.428179>,  <34.575703, 36.988365, 28.783148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556774, 37.693935, 28.428179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932747, 37.557709, 28.418879>,  <35.158329, 37.475971, 28.413300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932747, 37.557709, 28.418879>,  <34.556774, 37.693935, 28.428179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932747, 37.557709, 28.418879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055362, 0.219288, -0.974088,
		0.336843, 0.914289, 0.224970,
		0.939932, -0.340570, -0.023249,
		35.214725, 37.455536, 28.411903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231945, 38.278366, 28.402987>,  <34.556774, 37.693935, 28.428179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231945, 38.278366, 28.402987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908836, 38.497192, 28.315145>,  <33.714970, 38.628487, 28.262440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908836, 38.497192, 28.315145>,  <34.231945, 38.278366, 28.402987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908836, 38.497192, 28.315145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167894, 0.143597, 0.975290,
		0.565082, 0.824681, -0.024145,
		-0.807771, 0.547065, -0.219603,
		33.666504, 38.661312, 28.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172615, 38.573330, 29.093544>,  <34.231945, 38.278366, 28.402987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172615, 38.573330, 29.093544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831646, 38.605038, 28.886818>,  <33.627064, 38.624062, 28.762783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831646, 38.605038, 28.886818>,  <34.172615, 38.573330, 29.093544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831646, 38.605038, 28.886818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505257, 0.129427, 0.853208,
		0.134520, 0.988416, -0.070277,
		-0.852420, 0.079266, -0.516814,
		33.575920, 38.628819, 28.731773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862057, 39.086040, 29.437363>,  <34.172615, 38.573330, 29.093544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862057, 39.086040, 29.437363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561161, 38.910622, 29.240665>,  <33.380623, 38.805370, 29.122646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561161, 38.910622, 29.240665>,  <33.862057, 39.086040, 29.437363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561161, 38.910622, 29.240665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578153, 0.081365, 0.811861,
		-0.316027, 0.895019, -0.314753,
		-0.752241, -0.438545, -0.491744,
		33.335487, 38.779057, 29.093142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242046, 39.494392, 29.591581>,  <33.862057, 39.086040, 29.437363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242046, 39.494392, 29.591581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127556, 39.133373, 29.462904>,  <33.058861, 38.916763, 29.385698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127556, 39.133373, 29.462904>,  <33.242046, 39.494392, 29.591581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127556, 39.133373, 29.462904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664472, -0.054915, 0.745292,
		-0.690326, 0.427079, -0.583998,
		-0.286228, -0.902546, -0.321691,
		33.041687, 38.862610, 29.366396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419643, 39.448730, 29.524591>,  <33.242046, 39.494392, 29.591581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419643, 39.448730, 29.524591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551552, 39.071918, 29.549347>,  <32.630695, 38.845829, 29.564199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551552, 39.071918, 29.549347>,  <32.419643, 39.448730, 29.524591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551552, 39.071918, 29.549347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594953, -0.156475, 0.788382,
		-0.732997, -0.296803, -0.612065,
		0.329767, -0.942032, 0.061888,
		32.650482, 38.789310, 29.567913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813541, 39.107590, 29.559296>,  <32.419643, 39.448730, 29.524591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813541, 39.107590, 29.559296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084293, 38.846836, 29.696045>,  <32.246742, 38.690384, 29.778095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084293, 38.846836, 29.696045>,  <31.813541, 39.107590, 29.559296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084293, 38.846836, 29.696045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638157, -0.288211, 0.713926,
		-0.366870, -0.701408, -0.611092,
		0.676877, -0.651890, 0.341872,
		32.287357, 38.651268, 29.798607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463573, 38.450058, 29.687569>,  <31.813541, 39.107590, 29.559296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463573, 38.450058, 29.687569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803026, 38.432537, 29.898434>,  <32.006699, 38.422024, 30.024954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803026, 38.432537, 29.898434>,  <31.463573, 38.450058, 29.687569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803026, 38.432537, 29.898434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483150, -0.469939, 0.738731,
		0.215377, -0.881611, -0.419969,
		0.848634, -0.043803, 0.527164,
		32.057617, 38.419395, 30.056583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599985, 37.785336, 29.931999>,  <31.463573, 38.450058, 29.687569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599985, 37.785336, 29.931999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755966, 38.060638, 30.176699>,  <31.849554, 38.225822, 30.323519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755966, 38.060638, 30.176699>,  <31.599985, 37.785336, 29.931999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755966, 38.060638, 30.176699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401171, -0.471001, 0.785633,
		0.828855, -0.551774, 0.092443,
		0.389951, 0.688261, 0.611747,
		31.872952, 38.267117, 30.360224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725536, 37.459419, 30.623856>,  <31.599985, 37.785336, 29.931999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725536, 37.459419, 30.623856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726061, 37.836613, 30.756987>,  <31.726376, 38.062931, 30.836864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726061, 37.836613, 30.756987>,  <31.725536, 37.459419, 30.623856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726061, 37.836613, 30.756987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327944, -0.314016, 0.890981,
		0.944696, -0.110318, 0.308834,
		0.001313, 0.942987, 0.332828,
		31.726454, 38.119507, 30.856834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988020, 37.452724, 31.351286>,  <31.725536, 37.459419, 30.623856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988020, 37.452724, 31.351286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821774, 37.814598, 31.313753>,  <31.722025, 38.031723, 31.291233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.821774, 37.814598, 31.313753>,  <31.988020, 37.452724, 31.351286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821774, 37.814598, 31.313753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292741, -0.035379, 0.955537,
		0.861142, 0.424605, 0.279543,
		-0.415616, 0.904687, -0.093832,
		31.697088, 38.086002, 31.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157368, 37.615891, 31.985569>,  <31.988020, 37.452724, 31.351286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157368, 37.615891, 31.985569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896441, 37.896778, 31.871469>,  <31.739883, 38.065311, 31.803011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896441, 37.896778, 31.871469>,  <32.157368, 37.615891, 31.985569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896441, 37.896778, 31.871469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235875, 0.169575, 0.956873,
		0.720305, 0.691472, 0.055018,
		-0.652322, 0.702218, -0.285247,
		31.700745, 38.107445, 31.785896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210396, 38.046375, 32.459602>,  <32.157368, 37.615891, 31.985569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210396, 38.046375, 32.459602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856577, 38.142597, 32.299747>,  <31.644287, 38.200333, 32.203835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856577, 38.142597, 32.299747>,  <32.210396, 38.046375, 32.459602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856577, 38.142597, 32.299747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357666, 0.200189, 0.912140,
		0.299427, 0.949766, -0.091036,
		-0.884544, 0.240559, -0.399641,
		31.591213, 38.214764, 32.179855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988546, 38.691975, 32.767052>,  <32.210396, 38.046375, 32.459602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988546, 38.691975, 32.767052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649170, 38.519306, 32.644539>,  <31.445543, 38.415707, 32.571030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649170, 38.519306, 32.644539>,  <31.988546, 38.691975, 32.767052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649170, 38.519306, 32.644539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419941, 0.196770, 0.885964,
		-0.322176, 0.880309, -0.348223,
		-0.848441, -0.431669, -0.306283,
		31.394638, 38.389805, 32.552654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463579, 39.139500, 32.988251>,  <31.988546, 38.691975, 32.767052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463579, 39.139500, 32.988251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296251, 38.784992, 32.908718>,  <31.195854, 38.572289, 32.861000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.296251, 38.784992, 32.908718>,  <31.463579, 39.139500, 32.988251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296251, 38.784992, 32.908718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517934, 0.052922, 0.853782,
		-0.746158, 0.460137, -0.481167,
		-0.418321, -0.886270, -0.198832,
		31.170755, 38.519112, 32.849068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159910, 39.765129, 33.241337>,  <31.463579, 39.139500, 32.988251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159910, 39.765129, 33.241337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463299, 39.935211, 33.438892>,  <31.645332, 40.037258, 33.557426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463299, 39.935211, 33.438892>,  <31.159910, 39.765129, 33.241337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463299, 39.935211, 33.438892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333189, 0.398305, -0.854598,
		-0.560095, 0.812746, 0.160430,
		0.758471, 0.425203, 0.493887,
		31.690840, 40.062771, 33.587059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246960, 40.454620, 32.952858>,  <31.159910, 39.765129, 33.241337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246960, 40.454620, 32.952858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.595320, 40.370907, 33.130730>,  <31.804337, 40.320679, 33.237453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.595320, 40.370907, 33.130730>,  <31.246960, 40.454620, 32.952858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595320, 40.370907, 33.130730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479387, 0.561074, -0.674821,
		-0.108270, 0.800873, 0.588965,
		0.870899, -0.209279, 0.444676,
		31.856590, 40.308125, 33.264133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615444, 41.074150, 33.288139>,  <31.246960, 40.454620, 32.952858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615444, 41.074150, 33.288139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846437, 40.791229, 33.125050>,  <31.985033, 40.621479, 33.027195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846437, 40.791229, 33.125050>,  <31.615444, 41.074150, 33.288139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846437, 40.791229, 33.125050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271215, 0.637259, -0.721349,
		0.770036, 0.305987, 0.559837,
		0.577484, -0.707300, -0.407724,
		32.019684, 40.579041, 33.002731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107468, 41.498310, 32.916817>,  <31.615444, 41.074150, 33.288139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107468, 41.498310, 32.916817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142773, 41.126534, 32.773518>,  <32.163956, 40.903465, 32.687538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142773, 41.126534, 32.773518>,  <32.107468, 41.498310, 32.916817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142773, 41.126534, 32.773518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304543, 0.367608, -0.878703,
		0.948400, -0.031542, 0.315503,
		0.088266, -0.929446, -0.358245,
		32.169250, 40.847698, 32.666042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683830, 41.657352, 32.429985>,  <32.107468, 41.498310, 32.916817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683830, 41.657352, 32.429985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535053, 41.299911, 32.329472>,  <32.445789, 41.085449, 32.269165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535053, 41.299911, 32.329472>,  <32.683830, 41.657352, 32.429985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535053, 41.299911, 32.329472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217933, 0.179071, -0.959395,
		0.902311, -0.411600, 0.128140,
		-0.371940, -0.893599, -0.251279,
		32.423470, 41.031834, 32.254089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233517, 41.265110, 32.224571>,  <32.683830, 41.657352, 32.429985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233517, 41.265110, 32.224571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902767, 41.116444, 32.055740>,  <32.704319, 41.027245, 31.954443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902767, 41.116444, 32.055740>,  <33.233517, 41.265110, 32.224571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902767, 41.116444, 32.055740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423040, 0.083456, -0.902259,
		0.370561, -0.924609, 0.088220,
		-0.826874, -0.371663, -0.422073,
		32.654705, 41.004944, 31.929119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420700, 40.747833, 31.771378>,  <33.233517, 41.265110, 32.224571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420700, 40.747833, 31.771378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051800, 40.804909, 31.627663>,  <32.830460, 40.839153, 31.541433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051800, 40.804909, 31.627663>,  <33.420700, 40.747833, 31.771378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051800, 40.804909, 31.627663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383120, 0.213237, -0.898748,
		-0.051629, -0.966524, -0.251326,
		-0.922255, 0.142690, -0.359286,
		32.775124, 40.847717, 31.519876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379009, 40.219181, 31.169754>,  <33.420700, 40.747833, 31.771378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379009, 40.219181, 31.169754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099918, 40.498974, 31.107918>,  <32.932465, 40.666851, 31.070816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099918, 40.498974, 31.107918>,  <33.379009, 40.219181, 31.169754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099918, 40.498974, 31.107918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169204, -0.048774, -0.984374,
		-0.696090, -0.712985, -0.084324,
		-0.697731, 0.699481, -0.154591,
		32.890598, 40.708817, 31.061541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971901, 40.085876, 30.466543>,  <33.379009, 40.219181, 31.169754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971901, 40.085876, 30.466543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896255, 40.473743, 30.528496>,  <32.850868, 40.706463, 30.565666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896255, 40.473743, 30.528496>,  <32.971901, 40.085876, 30.466543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896255, 40.473743, 30.528496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195284, 0.191713, -0.961826,
		-0.962341, -0.151646, -0.225616,
		-0.189111, 0.969665, 0.154880,
		32.839523, 40.764645, 30.574959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424549, 40.244175, 29.946972>,  <32.971901, 40.085876, 30.466543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424549, 40.244175, 29.946972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607960, 40.577587, 30.070244>,  <32.718006, 40.777634, 30.144207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607960, 40.577587, 30.070244>,  <32.424549, 40.244175, 29.946972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607960, 40.577587, 30.070244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066903, 0.313420, -0.947255,
		-0.886159, 0.454959, 0.087945,
		0.458526, 0.833535, 0.308178,
		32.745518, 40.827648, 30.162697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129547, 40.854904, 29.599506>,  <32.424549, 40.244175, 29.946972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129547, 40.854904, 29.599506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489273, 40.983604, 29.717972>,  <32.705109, 41.060825, 29.789051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489273, 40.983604, 29.717972>,  <32.129547, 40.854904, 29.599506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489273, 40.983604, 29.717972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208746, 0.279258, -0.937251,
		-0.384265, 0.904706, 0.183977,
		0.899314, 0.321748, 0.296163,
		32.759068, 41.080128, 29.806820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248417, 41.296154, 28.992760>,  <32.129547, 40.854904, 29.599506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248417, 41.296154, 28.992760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586750, 41.318851, 29.204929>,  <32.789749, 41.332470, 29.332232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586750, 41.318851, 29.204929>,  <32.248417, 41.296154, 28.992760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586750, 41.318851, 29.204929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445904, 0.470588, -0.761391,
		-0.292816, 0.880527, 0.372735,
		0.845830, 0.056744, 0.530426,
		32.840500, 41.335876, 29.364058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570374, 41.976303, 28.832972>,  <32.248417, 41.296154, 28.992760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570374, 41.976303, 28.832972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845463, 41.716770, 28.963236>,  <33.010517, 41.561050, 29.041393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845463, 41.716770, 28.963236>,  <32.570374, 41.976303, 28.832972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845463, 41.716770, 28.963236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632740, 0.315790, -0.707048,
		0.355915, 0.692311, 0.627718,
		0.687724, -0.648831, 0.325658,
		33.051781, 41.522121, 29.060934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222492, 42.287777, 28.794352>,  <32.570374, 41.976303, 28.832972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222492, 42.287777, 28.794352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349480, 41.908569, 28.803005>,  <33.425674, 41.681046, 28.808197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349480, 41.908569, 28.803005>,  <33.222492, 42.287777, 28.794352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349480, 41.908569, 28.803005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553564, 0.166757, -0.815940,
		0.769921, 0.271013, 0.577731,
		0.317472, -0.948021, 0.021633,
		33.444721, 41.624165, 28.809496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949299, 42.301685, 28.818848>,  <33.222492, 42.287777, 28.794352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949299, 42.301685, 28.818848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862743, 41.940239, 28.670980>,  <33.810810, 41.723370, 28.582260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862743, 41.940239, 28.670980>,  <33.949299, 42.301685, 28.818848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862743, 41.940239, 28.670980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742367, 0.093628, -0.663420,
		0.634088, -0.417986, 0.650554,
		-0.216390, -0.903616, -0.369667,
		33.797825, 41.669155, 28.560080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572807, 41.884666, 28.792639>,  <33.949299, 42.301685, 28.818848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572807, 41.884666, 28.792639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316048, 41.746319, 28.518898>,  <34.161991, 41.663311, 28.354654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316048, 41.746319, 28.518898>,  <34.572807, 41.884666, 28.792639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316048, 41.746319, 28.518898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679631, 0.156631, -0.716637,
		0.355053, -0.925117, 0.134521,
		-0.641903, -0.345868, -0.684350,
		34.123478, 41.642559, 28.313593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929852, 41.354321, 28.400305>,  <34.572807, 41.884666, 28.792639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929852, 41.354321, 28.400305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640862, 41.469761, 28.148993>,  <34.467468, 41.539024, 27.998205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640862, 41.469761, 28.148993>,  <34.929852, 41.354321, 28.400305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640862, 41.469761, 28.148993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672427, 0.081894, -0.735619,
		-0.160851, -0.953939, -0.253232,
		-0.722474, 0.288606, -0.628282,
		34.424118, 41.556343, 27.960508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110546, 41.003933, 27.856434>,  <34.929852, 41.354321, 28.400305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110546, 41.003933, 27.856434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858875, 41.288467, 27.731125>,  <34.707874, 41.459187, 27.655939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858875, 41.288467, 27.731125>,  <35.110546, 41.003933, 27.856434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858875, 41.288467, 27.731125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624204, 0.222254, -0.748981,
		-0.463152, -0.666785, -0.583856,
		-0.629174, 0.711337, -0.313273,
		34.670124, 41.501869, 27.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121502, 40.887871, 27.094374>,  <35.110546, 41.003933, 27.856434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121502, 40.887871, 27.094374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983170, 41.259708, 27.145380>,  <34.900169, 41.482811, 27.175983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983170, 41.259708, 27.145380>,  <35.121502, 40.887871, 27.094374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983170, 41.259708, 27.145380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569262, 0.315901, -0.759044,
		-0.745883, -0.189911, -0.638430,
		-0.345831, 0.929591, 0.127516,
		34.879421, 41.538586, 27.183634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051319, 41.073326, 26.437160>,  <35.121502, 40.887871, 27.094374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051319, 41.073326, 26.437160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056004, 41.412834, 26.648613>,  <35.058815, 41.616539, 26.775484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056004, 41.412834, 26.648613>,  <35.051319, 41.073326, 26.437160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056004, 41.412834, 26.648613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423089, 0.474805, -0.771723,
		-0.906012, 0.232695, -0.353546,
		0.011710, 0.848772, 0.528630,
		35.059517, 41.667465, 26.807201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804348, 41.549438, 25.982014>,  <35.051319, 41.073326, 26.437160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804348, 41.549438, 25.982014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016857, 41.764996, 26.243500>,  <35.144363, 41.894329, 26.400393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016857, 41.764996, 26.243500>,  <34.804348, 41.549438, 25.982014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016857, 41.764996, 26.243500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414843, 0.507310, -0.755342,
		-0.738685, 0.672481, 0.045964,
		0.531272, 0.538893, 0.653716,
		35.176239, 41.926662, 26.439615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634708, 42.271275, 25.716904>,  <34.804348, 41.549438, 25.982014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634708, 42.271275, 25.716904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971855, 42.254200, 25.931477>,  <35.174141, 42.243958, 26.060221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971855, 42.254200, 25.931477>,  <34.634708, 42.271275, 25.716904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971855, 42.254200, 25.931477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447784, 0.608489, -0.655157,
		-0.298451, 0.792413, 0.531985,
		0.842862, -0.042682, 0.536434,
		35.224712, 42.241394, 26.092407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767159, 42.924328, 26.013901>,  <34.634708, 42.271275, 25.716904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767159, 42.924328, 26.013901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128368, 42.752743, 26.004725>,  <35.345097, 42.649792, 25.999220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128368, 42.752743, 26.004725>,  <34.767159, 42.924328, 26.013901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128368, 42.752743, 26.004725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368319, 0.800628, -0.472584,
		0.221089, 0.418308, 0.880987,
		0.903029, -0.428967, -0.022940,
		35.399277, 42.624054, 25.997843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196705, 43.496838, 26.063114>,  <34.767159, 42.924328, 26.013901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196705, 43.496838, 26.063114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451416, 43.213852, 25.940466>,  <35.604240, 43.044060, 25.866877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451416, 43.213852, 25.940466>,  <35.196705, 43.496838, 26.063114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451416, 43.213852, 25.940466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527469, 0.689741, -0.496019,
		0.562403, 0.154120, 0.812373,
		0.636773, -0.707464, -0.306619,
		35.642448, 43.001614, 25.848480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893570, 43.780865, 26.148481>,  <35.196705, 43.496838, 26.063114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893570, 43.780865, 26.148481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938091, 43.483665, 25.884491>,  <35.964806, 43.305347, 25.726097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938091, 43.483665, 25.884491>,  <35.893570, 43.780865, 26.148481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938091, 43.483665, 25.884491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313850, 0.656397, -0.686033,
		0.942926, -0.130775, 0.306249,
		0.111305, -0.742995, -0.659977,
		35.971481, 43.260769, 25.686499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344776, 44.010933, 25.783186>,  <35.893570, 43.780865, 26.148481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344776, 44.010933, 25.783186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244160, 43.707668, 25.542549>,  <36.183788, 43.525711, 25.398167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244160, 43.707668, 25.542549>,  <36.344776, 44.010933, 25.783186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244160, 43.707668, 25.542549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280171, 0.537926, -0.795072,
		0.926407, -0.368545, 0.077103,
		-0.251544, -0.758163, -0.601594,
		36.168697, 43.480221, 25.362070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922947, 43.919964, 25.356947>,  <36.344776, 44.010933, 25.783186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922947, 43.919964, 25.356947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613544, 43.772762, 25.150545>,  <36.427902, 43.684441, 25.026705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613544, 43.772762, 25.150545>,  <36.922947, 43.919964, 25.356947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613544, 43.772762, 25.150545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296555, 0.509385, -0.807825,
		0.560129, -0.777882, -0.284878,
		-0.773505, -0.368004, -0.516006,
		36.381493, 43.662361, 24.995743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301861, 43.701839, 24.803169>,  <36.922947, 43.919964, 25.356947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301861, 43.701839, 24.803169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916721, 43.726723, 24.698055>,  <36.685638, 43.741653, 24.634987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916721, 43.726723, 24.698055>,  <37.301861, 43.701839, 24.803169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916721, 43.726723, 24.698055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258078, 0.498452, -0.827612,
		0.079501, -0.864683, -0.495987,
		-0.962847, 0.062208, -0.262783,
		36.627869, 43.745384, 24.619221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597927, 43.103951, 24.838167>,  <37.301861, 43.701839, 24.803169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597927, 43.103951, 24.838167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.985600, 43.199207, 24.863401>,  <38.218201, 43.256363, 24.878542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.985600, 43.199207, 24.863401>,  <37.597927, 43.103951, 24.838167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985600, 43.199207, 24.863401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023419, -0.165856, 0.985872,
		0.245244, -0.956963, -0.155167,
		0.969179, 0.238145, 0.063086,
		38.276352, 43.270649, 24.882328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962860, 42.546402, 25.138191>,  <37.597927, 43.103951, 24.838167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962860, 42.546402, 25.138191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155251, 42.885757, 25.226641>,  <38.270683, 43.089371, 25.279711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155251, 42.885757, 25.226641>,  <37.962860, 42.546402, 25.138191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155251, 42.885757, 25.226641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047857, -0.226429, 0.972851,
		0.875426, -0.478501, -0.068306,
		0.480977, 0.848391, 0.221122,
		38.299545, 43.140274, 25.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392418, 42.352409, 25.628134>,  <37.962860, 42.546402, 25.138191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392418, 42.352409, 25.628134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342297, 42.746735, 25.672791>,  <38.312225, 42.983330, 25.699585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342297, 42.746735, 25.672791>,  <38.392418, 42.352409, 25.628134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342297, 42.746735, 25.672791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094456, -0.100162, 0.990477,
		0.987612, 0.134652, -0.080566,
		-0.125301, 0.985817, 0.111640,
		38.304707, 43.042480, 25.706282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794632, 42.490395, 26.211155>,  <38.392418, 42.352409, 25.628134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794632, 42.490395, 26.211155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.549503, 42.802654, 26.162113>,  <38.402428, 42.990009, 26.132689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.549503, 42.802654, 26.162113>,  <38.794632, 42.490395, 26.211155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549503, 42.802654, 26.162113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226488, -0.024873, 0.973696,
		0.757069, 0.624470, 0.192051,
		-0.612821, 0.780653, -0.122604,
		38.365658, 43.036850, 26.125332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965923, 43.037003, 26.747868>,  <38.794632, 42.490395, 26.211155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965923, 43.037003, 26.747868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588470, 43.126705, 26.650486>,  <38.362000, 43.180527, 26.592058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588470, 43.126705, 26.650486>,  <38.965923, 43.037003, 26.747868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588470, 43.126705, 26.650486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222172, 0.116080, 0.968073,
		0.245361, 0.967591, -0.059712,
		-0.943630, 0.224260, -0.243453,
		38.305382, 43.193985, 26.577450>
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
