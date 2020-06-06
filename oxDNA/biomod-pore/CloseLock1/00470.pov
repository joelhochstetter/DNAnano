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
	<24.264818, 34.904003, 35.011032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366476, 35.093594, 34.673805>,  <24.427471, 35.207348, 34.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366476, 35.093594, 34.673805>,  <24.264818, 34.904003, 35.011032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366476, 35.093594, 34.673805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864454, -0.502241, -0.021770,
		-0.433741, -0.723259, -0.537368,
		0.254143, 0.473972, -0.843067,
		24.442719, 35.235786, 34.420887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791950, 34.416809, 34.883137>,  <24.264818, 34.904003, 35.011032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791950, 34.416809, 34.883137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821594, 34.685223, 34.588051>,  <24.839380, 34.846272, 34.410999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821594, 34.685223, 34.588051>,  <24.791950, 34.416809, 34.883137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821594, 34.685223, 34.588051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871728, -0.402878, -0.278888,
		-0.484352, -0.622419, -0.614815,
		0.074110, 0.671032, -0.737716,
		24.843826, 34.886532, 34.366737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831442, 34.069031, 34.225487>,  <24.791950, 34.416809, 34.883137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831442, 34.069031, 34.225487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025276, 34.409912, 34.146568>,  <25.141577, 34.614441, 34.099216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025276, 34.409912, 34.146568>,  <24.831442, 34.069031, 34.225487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025276, 34.409912, 34.146568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763896, -0.522164, -0.379220,
		-0.426194, 0.033052, -0.904028,
		0.484584, 0.852205, -0.197295,
		25.170652, 34.665573, 34.087379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085297, 34.019634, 33.582577>,  <24.831442, 34.069031, 34.225487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085297, 34.019634, 33.582577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316721, 34.255413, 33.808079>,  <25.455576, 34.396881, 33.943378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316721, 34.255413, 33.808079>,  <25.085297, 34.019634, 33.582577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316721, 34.255413, 33.808079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774186, -0.614411, -0.152102,
		0.256721, 0.524451, -0.811816,
		0.578559, 0.589449, 0.563755,
		25.490288, 34.432247, 33.977203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580048, 34.272453, 33.187283>,  <25.085297, 34.019634, 33.582577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580048, 34.272453, 33.187283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714855, 34.267971, 33.563854>,  <25.795740, 34.265282, 33.789799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714855, 34.267971, 33.563854>,  <25.580048, 34.272453, 33.187283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714855, 34.267971, 33.563854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756073, -0.592642, -0.277720,
		0.561044, 0.805388, -0.191258,
		0.337020, -0.011208, 0.941431,
		25.815962, 34.264610, 33.846283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330715, 34.446228, 33.102474>,  <25.580048, 34.272453, 33.187283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330715, 34.446228, 33.102474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234585, 34.176949, 33.382202>,  <26.176907, 34.015381, 33.550037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234585, 34.176949, 33.382202>,  <26.330715, 34.446228, 33.102474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234585, 34.176949, 33.382202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620380, -0.660616, -0.422747,
		0.746574, 0.332247, 0.576402,
		-0.240325, -0.673200, 0.699318,
		26.162487, 33.974987, 33.591999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943146, 34.258984, 33.472988>,  <26.330715, 34.446228, 33.102474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943146, 34.258984, 33.472988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670401, 33.968025, 33.503860>,  <26.506754, 33.793449, 33.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670401, 33.968025, 33.503860>,  <26.943146, 34.258984, 33.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670401, 33.968025, 33.503860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731184, -0.674771, 0.100272,
		-0.020861, 0.124802, 0.991962,
		-0.681861, -0.727399, 0.077177,
		26.465841, 33.749805, 33.527012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044800, 34.225761, 32.688953>,  <26.943146, 34.258984, 33.472988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044800, 34.225761, 32.688953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403347, 34.255669, 32.514168>,  <27.618475, 34.273613, 32.409298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403347, 34.255669, 32.514168>,  <27.044800, 34.225761, 32.688953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403347, 34.255669, 32.514168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443192, 0.173957, -0.879386,
		0.010263, 0.981911, 0.189065,
		0.896368, 0.074767, -0.436961,
		27.672256, 34.278099, 32.383080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992573, 34.692131, 32.134907>,  <27.044800, 34.225761, 32.688953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992573, 34.692131, 32.134907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317806, 34.483265, 32.031960>,  <27.512947, 34.357944, 31.970192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317806, 34.483265, 32.031960>,  <26.992573, 34.692131, 32.134907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317806, 34.483265, 32.031960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340255, -0.067545, -0.937904,
		0.472356, 0.850166, -0.232589,
		0.813084, -0.522165, -0.257368,
		27.561731, 34.326614, 31.954750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048168, 35.035240, 31.523132>,  <26.992573, 34.692131, 32.134907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048168, 35.035240, 31.523132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243687, 34.686516, 31.510355>,  <27.360998, 34.477280, 31.502689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243687, 34.686516, 31.510355>,  <27.048168, 35.035240, 31.523132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243687, 34.686516, 31.510355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309285, -0.138937, -0.940765,
		0.815733, 0.469722, -0.337551,
		0.488797, -0.871813, -0.031942,
		27.390326, 34.424973, 31.500772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458244, 35.034081, 30.868372>,  <27.048168, 35.035240, 31.523132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458244, 35.034081, 30.868372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431465, 34.643963, 30.952574>,  <27.415398, 34.409893, 31.003096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431465, 34.643963, 30.952574>,  <27.458244, 35.034081, 30.868372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431465, 34.643963, 30.952574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451659, -0.158500, -0.877999,
		0.889675, -0.153858, -0.429890,
		-0.066950, -0.975297, 0.210505,
		27.411381, 34.351372, 31.015726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495842, 34.712162, 30.239651>,  <27.458244, 35.034081, 30.868372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495842, 34.712162, 30.239651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366154, 34.416595, 30.475914>,  <27.288340, 34.239254, 30.617672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366154, 34.416595, 30.475914>,  <27.495842, 34.712162, 30.239651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366154, 34.416595, 30.475914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524976, -0.378872, -0.762139,
		0.786944, -0.557184, -0.265076,
		-0.324222, -0.738919, 0.590659,
		27.268887, 34.194920, 30.653112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605362, 34.013874, 29.944811>,  <27.495842, 34.712162, 30.239651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605362, 34.013874, 29.944811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291899, 33.969906, 30.189365>,  <27.103821, 33.943523, 30.336098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291899, 33.969906, 30.189365>,  <27.605362, 34.013874, 29.944811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291899, 33.969906, 30.189365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536796, -0.375472, -0.755560,
		0.312613, -0.920292, 0.235236,
		-0.783660, -0.109924, 0.611386,
		27.056801, 33.936928, 30.372782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429064, 33.411648, 29.661903>,  <27.605362, 34.013874, 29.944811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429064, 33.411648, 29.661903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122257, 33.558659, 29.872280>,  <26.938173, 33.646866, 29.998507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122257, 33.558659, 29.872280>,  <27.429064, 33.411648, 29.661903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122257, 33.558659, 29.872280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630086, -0.276658, -0.725570,
		-0.121160, -0.887911, 0.443773,
		-0.767015, 0.367525, 0.525941,
		26.892153, 33.668919, 30.030062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901836, 32.958839, 29.568523>,  <27.429064, 33.411648, 29.661903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901836, 32.958839, 29.568523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698009, 33.276127, 29.701878>,  <26.575714, 33.466499, 29.781891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698009, 33.276127, 29.701878>,  <26.901836, 32.958839, 29.568523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698009, 33.276127, 29.701878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752396, -0.222805, -0.619886,
		-0.417427, -0.566709, 0.710349,
		-0.509564, 0.793221, 0.333384,
		26.545139, 33.514091, 29.801893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269114, 32.730469, 29.696280>,  <26.901836, 32.958839, 29.568523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269114, 32.730469, 29.696280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229481, 33.124912, 29.642950>,  <26.205700, 33.361580, 29.610952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229481, 33.124912, 29.642950>,  <26.269114, 32.730469, 29.696280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229481, 33.124912, 29.642950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703497, -0.164175, -0.691476,
		-0.703757, 0.025278, 0.709991,
		-0.099083, 0.986108, -0.133322,
		26.199757, 33.420746, 29.602953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557770, 32.867222, 29.639126>,  <26.269114, 32.730469, 29.696280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557770, 32.867222, 29.639126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760500, 33.152115, 29.444870>,  <25.882139, 33.323051, 29.328318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760500, 33.152115, 29.444870>,  <25.557770, 32.867222, 29.639126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760500, 33.152115, 29.444870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559811, -0.156468, -0.813713,
		-0.655543, 0.684278, 0.319416,
		0.506827, 0.712237, -0.485638,
		25.912548, 33.365788, 29.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035801, 33.307163, 29.462851>,  <25.557770, 32.867222, 29.639126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035801, 33.307163, 29.462851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346111, 33.393040, 29.225506>,  <25.532297, 33.444565, 29.083099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346111, 33.393040, 29.225506>,  <25.035801, 33.307163, 29.462851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346111, 33.393040, 29.225506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620223, 0.086334, -0.779660,
		-0.116159, 0.972859, 0.200132,
		0.775777, 0.214691, -0.593361,
		25.578844, 33.457447, 29.047497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727468, 33.543877, 28.866365>,  <25.035801, 33.307163, 29.462851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727468, 33.543877, 28.866365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104723, 33.506180, 28.738861>,  <25.331076, 33.483562, 28.662357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104723, 33.506180, 28.738861>,  <24.727468, 33.543877, 28.866365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104723, 33.506180, 28.738861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321813, -0.018757, -0.946618,
		0.083231, 0.995373, -0.048018,
		0.943138, -0.094241, -0.318762,
		25.387665, 33.477909, 28.643232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741518, 34.028610, 28.352936>,  <24.727468, 33.543877, 28.866365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741518, 34.028610, 28.352936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018250, 33.745720, 28.294689>,  <25.184288, 33.575985, 28.259741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018250, 33.745720, 28.294689>,  <24.741518, 34.028610, 28.352936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018250, 33.745720, 28.294689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419440, -0.229463, -0.878303,
		0.587747, 0.668712, -0.455388,
		0.691827, -0.707228, -0.145618,
		25.225798, 33.533550, 28.251003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018494, 34.092224, 27.704256>,  <24.741518, 34.028610, 28.352936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018494, 34.092224, 27.704256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130779, 33.718552, 27.792356>,  <25.198151, 33.494350, 27.845217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130779, 33.718552, 27.792356>,  <25.018494, 34.092224, 27.704256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130779, 33.718552, 27.792356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185225, -0.277891, -0.942586,
		0.941749, 0.223801, -0.251041,
		0.280714, -0.934179, 0.220250,
		25.214993, 33.438297, 27.858431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593761, 33.766205, 27.218088>,  <25.018494, 34.092224, 27.704256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593761, 33.766205, 27.218088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386776, 33.461884, 27.374758>,  <25.262585, 33.279289, 27.468760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386776, 33.461884, 27.374758>,  <25.593761, 33.766205, 27.218088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386776, 33.461884, 27.374758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041375, -0.434941, -0.899508,
		0.854703, -0.481669, 0.193589,
		-0.517465, -0.760803, 0.391675,
		25.231537, 33.233643, 27.492260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916718, 33.253201, 26.854200>,  <25.593761, 33.766205, 27.218088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916718, 33.253201, 26.854200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593376, 33.086411, 27.020428>,  <25.399370, 32.986336, 27.120165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593376, 33.086411, 27.020428>,  <25.916718, 33.253201, 26.854200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593376, 33.086411, 27.020428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102526, -0.595410, -0.796854,
		0.579699, -0.686747, 0.438552,
		-0.808355, -0.416972, 0.415568,
		25.350870, 32.961319, 27.145098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979885, 32.542213, 26.827503>,  <25.916718, 33.253201, 26.854200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979885, 32.542213, 26.827503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591167, 32.636364, 26.833294>,  <25.357937, 32.692856, 26.836769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591167, 32.636364, 26.833294>,  <25.979885, 32.542213, 26.827503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591167, 32.636364, 26.833294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149134, -0.565839, -0.810916,
		-0.182682, -0.790204, 0.584983,
		-0.971796, 0.235381, 0.014477,
		25.299629, 32.706978, 26.837637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599455, 31.864983, 26.662500>,  <25.979885, 32.542213, 26.827503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599455, 31.864983, 26.662500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323595, 32.150776, 26.615347>,  <25.158079, 32.322250, 26.587055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323595, 32.150776, 26.615347>,  <25.599455, 31.864983, 26.662500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323595, 32.150776, 26.615347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331694, -0.456391, -0.825643,
		-0.643710, -0.530303, 0.551739,
		-0.689650, 0.714483, -0.117885,
		25.116699, 32.365120, 26.579981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961290, 31.512974, 26.619070>,  <25.599455, 31.864983, 26.662500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961290, 31.512974, 26.619070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973610, 31.873302, 26.445833>,  <24.981003, 32.089500, 26.341890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973610, 31.873302, 26.445833>,  <24.961290, 31.512974, 26.619070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973610, 31.873302, 26.445833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230324, -0.415242, -0.880071,
		-0.972626, 0.126858, 0.194691,
		0.030801, 0.900822, -0.433094,
		24.982849, 32.143551, 26.315905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.341810, 31.685900, 26.307293>,  <24.961290, 31.512974, 26.619070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.341810, 31.685900, 26.307293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671997, 31.804922, 26.115435>,  <24.870110, 31.876335, 26.000319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671997, 31.804922, 26.115435>,  <24.341810, 31.685900, 26.307293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671997, 31.804922, 26.115435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240805, -0.582907, -0.776036,
		-0.510503, 0.756095, -0.409519,
		0.825469, 0.297555, -0.479648,
		24.919638, 31.894188, 25.971540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121431, 31.752590, 25.575140>,  <24.341810, 31.685900, 26.307293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121431, 31.752590, 25.575140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507654, 31.650393, 25.594814>,  <24.739388, 31.589075, 25.606619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507654, 31.650393, 25.594814>,  <24.121431, 31.752590, 25.575140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507654, 31.650393, 25.594814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142665, -0.677985, -0.721098,
		0.217583, 0.689246, -0.691085,
		0.965559, -0.255493, 0.049187,
		24.797321, 31.573744, 25.609570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508789, 31.646196, 24.846775>,  <24.121431, 31.752590, 25.575140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508789, 31.646196, 24.846775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716879, 31.433437, 25.114044>,  <24.841732, 31.305782, 25.274405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716879, 31.433437, 25.114044>,  <24.508789, 31.646196, 24.846775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716879, 31.433437, 25.114044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063994, -0.755897, -0.651556,
		0.851630, 0.381713, -0.359196,
		0.520223, -0.531898, 0.668171,
		24.872946, 31.273869, 25.314495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188150, 31.393042, 24.543648>,  <24.508789, 31.646196, 24.846775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188150, 31.393042, 24.543648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113506, 31.173716, 24.869722>,  <25.068720, 31.042120, 25.065367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113506, 31.173716, 24.869722>,  <25.188150, 31.393042, 24.543648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113506, 31.173716, 24.869722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361197, -0.733356, -0.575956,
		0.913627, -0.401922, -0.061199,
		-0.186609, -0.548314, 0.815187,
		25.057524, 31.009222, 25.114279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586405, 30.690027, 24.612823>,  <25.188150, 31.393042, 24.543648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586405, 30.690027, 24.612823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222399, 30.699341, 24.778391>,  <25.003994, 30.704929, 24.877731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222399, 30.699341, 24.778391>,  <25.586405, 30.690027, 24.612823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222399, 30.699341, 24.778391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268355, -0.794114, -0.545314,
		0.316001, -0.607322, 0.728905,
		-0.910016, 0.023285, 0.413919,
		24.949394, 30.706327, 24.902567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798855, 31.020107, 23.972139>,  <25.586405, 30.690027, 24.612823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798855, 31.020107, 23.972139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814503, 30.665106, 23.788485>,  <25.823893, 30.452105, 23.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814503, 30.665106, 23.788485>,  <25.798855, 31.020107, 23.972139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814503, 30.665106, 23.788485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882067, -0.246566, 0.401451,
		-0.469497, 0.389285, -0.792484,
		0.039121, -0.887503, -0.459137,
		25.826239, 30.398855, 23.650743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463799, 30.933174, 23.570631>,  <25.798855, 31.020107, 23.972139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463799, 30.933174, 23.570631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404316, 31.308170, 23.696486>,  <26.368626, 31.533169, 23.771997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404316, 31.308170, 23.696486>,  <26.463799, 30.933174, 23.570631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404316, 31.308170, 23.696486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883171, 0.017222, -0.468734,
		-0.444853, -0.347580, 0.825405,
		-0.148708, 0.937492, 0.314634,
		26.359703, 31.589418, 23.790876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157597, 31.233326, 23.575695>,  <26.463799, 30.933174, 23.570631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157597, 31.233326, 23.575695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543205, 31.206734, 23.472746>,  <27.774570, 31.190779, 23.410976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543205, 31.206734, 23.472746>,  <27.157597, 31.233326, 23.575695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543205, 31.206734, 23.472746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209349, 0.786544, 0.580966,
		0.163813, -0.613945, 0.772164,
		0.964022, -0.066482, -0.257375,
		27.832413, 31.186789, 23.395533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644659, 31.080536, 24.202780>,  <27.157597, 31.233326, 23.575695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644659, 31.080536, 24.202780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811180, 31.307220, 23.918377>,  <27.911093, 31.443232, 23.747736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811180, 31.307220, 23.918377>,  <27.644659, 31.080536, 24.202780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811180, 31.307220, 23.918377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265961, 0.671887, 0.691254,
		0.869458, -0.476871, 0.128985,
		0.416303, 0.566711, -0.711007,
		27.936071, 31.477234, 23.705074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428890, 31.078289, 24.213642>,  <27.644659, 31.080536, 24.202780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428890, 31.078289, 24.213642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229342, 31.402418, 24.090675>,  <28.109612, 31.596895, 24.016895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229342, 31.402418, 24.090675>,  <28.428890, 31.078289, 24.213642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229342, 31.402418, 24.090675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296599, 0.492914, 0.817964,
		0.814344, 0.316880, -0.486242,
		-0.498872, 0.810322, -0.307415,
		28.079679, 31.645515, 23.998451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912905, 31.619986, 24.258854>,  <28.428890, 31.078289, 24.213642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912905, 31.619986, 24.258854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541817, 31.768375, 24.275415>,  <28.319164, 31.857409, 24.285353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541817, 31.768375, 24.275415>,  <28.912905, 31.619986, 24.258854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541817, 31.768375, 24.275415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247825, 0.529185, 0.811508,
		0.279139, 0.763113, -0.582872,
		-0.927720, 0.370974, 0.041402,
		28.263500, 31.879667, 24.287836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008789, 32.333691, 24.424269>,  <28.912905, 31.619986, 24.258854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008789, 32.333691, 24.424269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630100, 32.234261, 24.506172>,  <28.402887, 32.174603, 24.555315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630100, 32.234261, 24.506172>,  <29.008789, 32.333691, 24.424269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630100, 32.234261, 24.506172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021366, 0.585919, 0.810088,
		-0.321341, 0.771303, -0.549392,
		-0.946722, -0.248577, 0.204759,
		28.346083, 32.159687, 24.567600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673342, 32.910862, 24.587727>,  <29.008789, 32.333691, 24.424269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673342, 32.910862, 24.587727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458681, 32.620934, 24.760536>,  <28.329885, 32.446976, 24.864222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458681, 32.620934, 24.760536>,  <28.673342, 32.910862, 24.587727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458681, 32.620934, 24.760536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053186, 0.540034, 0.839961,
		-0.842127, 0.427787, -0.328359,
		-0.536650, -0.724818, 0.432025,
		28.297686, 32.403488, 24.890144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075144, 33.241062, 24.777826>,  <28.673342, 32.910862, 24.587727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075144, 33.241062, 24.777826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125093, 32.908657, 24.994650>,  <28.155064, 32.709213, 25.124744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125093, 32.908657, 24.994650>,  <28.075144, 33.241062, 24.777826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125093, 32.908657, 24.994650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003755, 0.545933, 0.837820,
		-0.992166, -0.106657, 0.065052,
		0.124873, -0.831012, 0.542057,
		28.162556, 32.659355, 25.157267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760679, 33.381088, 25.341780>,  <28.075144, 33.241062, 24.777826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760679, 33.381088, 25.341780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989262, 33.085625, 25.484783>,  <28.126411, 32.908344, 25.570585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989262, 33.085625, 25.484783>,  <27.760679, 33.381088, 25.341780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989262, 33.085625, 25.484783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119570, 0.505950, 0.854235,
		-0.811874, -0.445411, 0.377451,
		0.571457, -0.738663, 0.357510,
		28.160700, 32.864025, 25.592035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586462, 33.384441, 26.056299>,  <27.760679, 33.381088, 25.341780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586462, 33.384441, 26.056299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940815, 33.200779, 26.029800>,  <28.153427, 33.090580, 26.013901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940815, 33.200779, 26.029800>,  <27.586462, 33.384441, 26.056299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940815, 33.200779, 26.029800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311063, 0.481974, 0.819110,
		-0.344170, -0.746242, 0.569798,
		0.885882, -0.459157, -0.066247,
		28.206579, 33.063030, 26.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569481, 33.069664, 26.674635>,  <27.586462, 33.384441, 26.056299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569481, 33.069664, 26.674635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942663, 33.098804, 26.533619>,  <28.166573, 33.116291, 26.449009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942663, 33.098804, 26.533619>,  <27.569481, 33.069664, 26.674635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942663, 33.098804, 26.533619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320857, 0.275763, 0.906093,
		0.163229, -0.958461, 0.233900,
		0.932956, 0.072852, -0.352542,
		28.222549, 33.120659, 26.427856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029366, 32.788643, 27.228828>,  <27.569481, 33.069664, 26.674635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029366, 32.788643, 27.228828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261497, 33.019299, 26.998798>,  <28.400776, 33.157692, 26.860781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261497, 33.019299, 26.998798>,  <28.029366, 32.788643, 27.228828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261497, 33.019299, 26.998798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459214, 0.351473, 0.815836,
		0.672563, -0.737536, -0.060829,
		0.580329, 0.576635, -0.575074,
		28.435596, 33.192287, 26.826277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732973, 32.762775, 27.546175>,  <28.029366, 32.788643, 27.228828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732973, 32.762775, 27.546175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756248, 33.070019, 27.291109>,  <28.770214, 33.254364, 27.138069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756248, 33.070019, 27.291109>,  <28.732973, 32.762775, 27.546175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756248, 33.070019, 27.291109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589013, 0.489306, 0.643151,
		0.806026, -0.413018, -0.423956,
		0.058188, 0.768112, -0.637666,
		28.773705, 33.300453, 27.099810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475760, 32.940163, 27.513872>,  <28.732973, 32.762775, 27.546175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475760, 32.940163, 27.513872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272015, 33.266884, 27.405518>,  <29.149767, 33.462917, 27.340504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272015, 33.266884, 27.405518>,  <29.475760, 32.940163, 27.513872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272015, 33.266884, 27.405518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497065, 0.536219, 0.682199,
		0.702478, 0.212838, -0.679135,
		-0.509363, 0.816804, -0.270888,
		29.119205, 33.511925, 27.324251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995466, 33.385468, 27.315449>,  <29.475760, 32.940163, 27.513872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995466, 33.385468, 27.315449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666994, 33.584915, 27.426470>,  <29.469910, 33.704586, 27.493082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666994, 33.584915, 27.426470>,  <29.995466, 33.385468, 27.315449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666994, 33.584915, 27.426470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524564, 0.468036, 0.711178,
		0.224705, 0.729601, -0.645902,
		-0.821182, 0.498623, 0.277552,
		29.420639, 33.734501, 27.509735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254242, 34.022186, 27.475275>,  <29.995466, 33.385468, 27.315449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254242, 34.022186, 27.475275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895514, 34.032848, 27.651909>,  <29.680277, 34.039246, 27.757889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895514, 34.032848, 27.651909>,  <30.254242, 34.022186, 27.475275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895514, 34.032848, 27.651909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379843, 0.558086, 0.737739,
		-0.226780, 0.829355, -0.510629,
		-0.896823, 0.026654, 0.441587,
		29.626467, 34.040844, 27.784386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247005, 34.594429, 27.869715>,  <30.254242, 34.022186, 27.475275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247005, 34.594429, 27.869715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914408, 34.444996, 28.034180>,  <29.714849, 34.355335, 28.132858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914408, 34.444996, 28.034180>,  <30.247005, 34.594429, 27.869715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914408, 34.444996, 28.034180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224236, 0.451448, 0.863663,
		-0.508268, 0.810327, -0.291605,
		-0.831494, -0.373584, 0.411161,
		29.664959, 34.332920, 28.157528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758179, 35.093834, 28.095957>,  <30.247005, 34.594429, 27.869715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758179, 35.093834, 28.095957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697199, 34.774811, 28.329424>,  <29.660610, 34.583397, 28.469503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697199, 34.774811, 28.329424>,  <29.758179, 35.093834, 28.095957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697199, 34.774811, 28.329424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175886, 0.559248, 0.810127,
		-0.972534, 0.226162, 0.055022,
		-0.152450, -0.797554, 0.583666,
		29.651464, 34.535545, 28.504524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344580, 35.362125, 28.652430>,  <29.758179, 35.093834, 28.095957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344580, 35.362125, 28.652430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499495, 35.032799, 28.818399>,  <29.592443, 34.835205, 28.917982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499495, 35.032799, 28.818399>,  <29.344580, 35.362125, 28.652430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499495, 35.032799, 28.818399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034215, 0.462573, 0.885921,
		-0.921325, -0.328908, 0.207318,
		0.387286, -0.823314, 0.414926,
		29.615681, 34.785805, 28.942877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019949, 35.356525, 29.315058>,  <29.344580, 35.362125, 28.652430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019949, 35.356525, 29.315058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304420, 35.079845, 29.365294>,  <29.475103, 34.913837, 29.395435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304420, 35.079845, 29.365294>,  <29.019949, 35.356525, 29.315058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304420, 35.079845, 29.365294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228369, 0.396263, 0.889283,
		-0.664886, -0.603757, 0.439777,
		0.711178, -0.691703, 0.125590,
		29.517775, 34.872334, 29.402971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892914, 35.104282, 30.013130>,  <29.019949, 35.356525, 29.315058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892914, 35.104282, 30.013130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260529, 34.974415, 29.923723>,  <29.481098, 34.896496, 29.870079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260529, 34.974415, 29.923723>,  <28.892914, 35.104282, 30.013130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260529, 34.974415, 29.923723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299917, 0.208031, 0.931006,
		-0.255769, -0.922667, 0.288562,
		0.919038, -0.324667, -0.223515,
		29.536240, 34.877014, 29.856668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111904, 34.568962, 30.384726>,  <28.892914, 35.104282, 30.013130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111904, 34.568962, 30.384726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459309, 34.742584, 30.288990>,  <29.667751, 34.846756, 30.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459309, 34.742584, 30.288990>,  <29.111904, 34.568962, 30.384726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459309, 34.742584, 30.288990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193965, 0.146736, 0.969972,
		0.456142, -0.888856, 0.043250,
		0.868512, 0.434056, -0.239339,
		29.719862, 34.872803, 30.217188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557209, 34.258190, 30.912655>,  <29.111904, 34.568962, 30.384726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557209, 34.258190, 30.912655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745543, 34.577965, 30.763405>,  <29.858541, 34.769829, 30.673855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745543, 34.577965, 30.763405>,  <29.557209, 34.258190, 30.912655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745543, 34.577965, 30.763405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470163, 0.130499, 0.872878,
		0.746501, -0.586409, -0.314421,
		0.470832, 0.799434, -0.373125,
		29.886793, 34.817795, 30.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239784, 34.096958, 31.059874>,  <29.557209, 34.258190, 30.912655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239784, 34.096958, 31.059874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190800, 34.493427, 31.039587>,  <30.161409, 34.731308, 31.027416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190800, 34.493427, 31.039587>,  <30.239784, 34.096958, 31.059874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190800, 34.493427, 31.039587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340026, 0.089909, 0.936108,
		0.932408, 0.097393, -0.348036,
		-0.122462, 0.991176, -0.050715,
		30.154060, 34.790779, 31.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838905, 34.298046, 31.193865>,  <30.239784, 34.096958, 31.059874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838905, 34.298046, 31.193865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573568, 34.583961, 31.282457>,  <30.414366, 34.755512, 31.335613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573568, 34.583961, 31.282457>,  <30.838905, 34.298046, 31.193865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573568, 34.583961, 31.282457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342424, 0.026775, 0.939164,
		0.665375, 0.698826, -0.262522,
		-0.663341, 0.714791, 0.221479,
		30.374565, 34.798397, 31.348902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200695, 34.785767, 31.454433>,  <30.838905, 34.298046, 31.193865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200695, 34.785767, 31.454433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836432, 34.865807, 31.599022>,  <30.617872, 34.913830, 31.685774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836432, 34.865807, 31.599022>,  <31.200695, 34.785767, 31.454433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836432, 34.865807, 31.599022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354277, -0.071952, 0.932368,
		0.212571, 0.977131, -0.005365,
		-0.910660, 0.200095, 0.361470,
		30.563234, 34.925835, 31.707462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197554, 35.519028, 31.433674>,  <31.200695, 34.785767, 31.454433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197554, 35.519028, 31.433674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561653, 35.565262, 31.592714>,  <31.780113, 35.593002, 31.688139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561653, 35.565262, 31.592714>,  <31.197554, 35.519028, 31.433674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561653, 35.565262, 31.592714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394794, -0.047250, 0.917554,
		0.124843, -0.992173, 0.002624,
		0.910248, 0.115586, 0.397602,
		31.834728, 35.599937, 31.711994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380295, 36.214050, 31.562166>,  <31.197554, 35.519028, 31.433674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380295, 36.214050, 31.562166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493738, 36.569691, 31.705868>,  <31.561806, 36.783073, 31.792088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493738, 36.569691, 31.705868>,  <31.380295, 36.214050, 31.562166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493738, 36.569691, 31.705868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480701, -0.192349, 0.855528,
		0.829754, -0.415329, 0.372840,
		0.283611, 0.889103, 0.359252,
		31.578821, 36.836422, 31.813643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695749, 36.138657, 32.257362>,  <31.380295, 36.214050, 31.562166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695749, 36.138657, 32.257362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528454, 36.496586, 32.194927>,  <31.428076, 36.711342, 32.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528454, 36.496586, 32.194927>,  <31.695749, 36.138657, 32.257362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528454, 36.496586, 32.194927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344130, 0.002936, 0.938917,
		0.840624, 0.446409, 0.306708,
		-0.418241, 0.894824, -0.156091,
		31.402981, 36.765034, 32.148098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940506, 36.686634, 32.712357>,  <31.695749, 36.138657, 32.257362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940506, 36.686634, 32.712357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555029, 36.743320, 32.621834>,  <31.323744, 36.777332, 32.567520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555029, 36.743320, 32.621834>,  <31.940506, 36.686634, 32.712357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555029, 36.743320, 32.621834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239392, -0.083131, 0.967358,
		0.118279, 0.986410, 0.114039,
		-0.963692, 0.141718, -0.226306,
		31.265921, 36.785835, 32.553944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652176, 37.296734, 33.126568>,  <31.940506, 36.686634, 32.712357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652176, 37.296734, 33.126568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406502, 37.003956, 33.008564>,  <31.259098, 36.828289, 32.937763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406502, 37.003956, 33.008564>,  <31.652176, 37.296734, 33.126568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406502, 37.003956, 33.008564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194387, -0.221988, 0.955476,
		-0.764848, 0.644183, -0.005940,
		-0.614183, -0.731949, -0.295007,
		31.222246, 36.784370, 32.920063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926981, 37.401272, 33.374645>,  <31.652176, 37.296734, 33.126568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926981, 37.401272, 33.374645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013729, 37.011272, 33.355309>,  <31.065777, 36.777271, 33.343708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013729, 37.011272, 33.355309>,  <30.926981, 37.401272, 33.374645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013729, 37.011272, 33.355309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305161, -0.114750, 0.945362,
		-0.927278, -0.190268, -0.322418,
		0.216869, -0.975003, -0.048343,
		31.078791, 36.718773, 33.340805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637865, 37.151192, 34.150726>,  <30.926981, 37.401272, 33.374645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637865, 37.151192, 34.150726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891260, 36.884186, 33.994202>,  <31.043297, 36.723984, 33.900288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891260, 36.884186, 33.994202>,  <30.637865, 37.151192, 34.150726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891260, 36.884186, 33.994202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343099, -0.210961, 0.915303,
		-0.693527, -0.714089, 0.095381,
		0.633485, -0.667512, -0.391310,
		31.081306, 36.683933, 33.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578598, 36.533199, 34.611794>,  <30.637865, 37.151192, 34.150726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578598, 36.533199, 34.611794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923460, 36.457066, 34.423981>,  <31.130377, 36.411385, 34.311291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923460, 36.457066, 34.423981>,  <30.578598, 36.533199, 34.611794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923460, 36.457066, 34.423981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431564, -0.209590, 0.877397,
		-0.265416, -0.959084, -0.098554,
		0.862153, -0.190343, -0.469534,
		31.182106, 36.399963, 34.283119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847033, 36.043964, 34.985317>,  <30.578598, 36.533199, 34.611794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847033, 36.043964, 34.985317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178951, 36.151390, 34.789639>,  <31.378103, 36.215843, 34.672234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178951, 36.151390, 34.789639>,  <30.847033, 36.043964, 34.985317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178951, 36.151390, 34.789639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552233, -0.268780, 0.789175,
		0.080456, -0.925004, -0.371341,
		0.829799, 0.268560, -0.489193,
		31.427891, 36.231956, 34.642879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273129, 35.440964, 35.012524>,  <30.847033, 36.043964, 34.985317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273129, 35.440964, 35.012524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511381, 35.753887, 34.939617>,  <31.654333, 35.941643, 34.895874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511381, 35.753887, 34.939617>,  <31.273129, 35.440964, 35.012524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511381, 35.753887, 34.939617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570371, -0.252140, 0.781730,
		0.565597, -0.569579, -0.596388,
		0.595631, 0.782307, -0.182262,
		31.690071, 35.988579, 34.884937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845892, 35.240410, 35.173737>,  <31.273129, 35.440964, 35.012524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845892, 35.240410, 35.173737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880632, 35.638294, 35.195705>,  <31.901476, 35.877026, 35.208889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880632, 35.638294, 35.195705>,  <31.845892, 35.240410, 35.173737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880632, 35.638294, 35.195705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490602, -0.090688, 0.866651,
		0.867045, -0.048322, -0.495882,
		0.086849, 0.994706, 0.054924,
		31.906687, 35.936707, 35.212181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559109, 35.438400, 35.368793>,  <31.845892, 35.240410, 35.173737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559109, 35.438400, 35.368793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348938, 35.765430, 35.463020>,  <32.222836, 35.961651, 35.519554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348938, 35.765430, 35.463020>,  <32.559109, 35.438400, 35.368793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348938, 35.765430, 35.463020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414751, 0.004374, 0.909924,
		0.742905, 0.575799, -0.341390,
		-0.525427, 0.817580, 0.235564,
		32.191311, 36.010704, 35.533688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054207, 35.726559, 35.792866>,  <32.559109, 35.438400, 35.368793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054207, 35.726559, 35.792866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712292, 35.922115, 35.862522>,  <32.507141, 36.039448, 35.904316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712292, 35.922115, 35.862522>,  <33.054207, 35.726559, 35.792866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712292, 35.922115, 35.862522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222151, 0.041437, 0.974131,
		0.469029, 0.871360, -0.144027,
		-0.854787, 0.488891, 0.174138,
		32.455856, 36.068783, 35.914764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204247, 36.357254, 36.142254>,  <33.054207, 35.726559, 35.792866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204247, 36.357254, 36.142254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838600, 36.223351, 36.233761>,  <32.619213, 36.143009, 36.288666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838600, 36.223351, 36.233761>,  <33.204247, 36.357254, 36.142254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838600, 36.223351, 36.233761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177204, 0.177641, 0.968009,
		-0.364684, 0.925410, -0.103065,
		-0.914114, -0.334754, 0.228770,
		32.564365, 36.122925, 36.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095005, 36.680939, 36.748108>,  <33.204247, 36.357254, 36.142254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095005, 36.680939, 36.748108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797626, 36.413784, 36.761993>,  <32.619198, 36.253490, 36.770325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797626, 36.413784, 36.761993>,  <33.095005, 36.680939, 36.748108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797626, 36.413784, 36.761993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127211, -0.090262, 0.987760,
		-0.656582, 0.738766, 0.152069,
		-0.743450, -0.667890, 0.034715,
		32.574593, 36.213417, 36.772408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668423, 36.835350, 37.325245>,  <33.095005, 36.680939, 36.748108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668423, 36.835350, 37.325245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598969, 36.447102, 37.258625>,  <32.557297, 36.214153, 37.218655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598969, 36.447102, 37.258625>,  <32.668423, 36.835350, 37.325245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598969, 36.447102, 37.258625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114521, -0.187870, 0.975495,
		-0.978128, 0.150311, 0.143779,
		-0.173640, -0.970624, -0.166547,
		32.546875, 36.155914, 37.208660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420280, 36.616676, 37.902973>,  <32.668423, 36.835350, 37.325245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420280, 36.616676, 37.902973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461056, 36.247360, 37.754841>,  <32.485523, 36.025772, 37.665962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461056, 36.247360, 37.754841>,  <32.420280, 36.616676, 37.902973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461056, 36.247360, 37.754841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125594, -0.357349, 0.925488,
		-0.986830, -0.140857, 0.079531,
		0.101941, -0.923288, -0.370334,
		32.491638, 35.970375, 37.643742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089260, 36.309685, 38.426750>,  <32.420280, 36.616676, 37.902973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089260, 36.309685, 38.426750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310249, 36.037758, 38.233826>,  <32.442844, 35.874603, 38.118073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310249, 36.037758, 38.233826>,  <32.089260, 36.309685, 38.426750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310249, 36.037758, 38.233826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024728, -0.591750, 0.805742,
		-0.833161, -0.433228, -0.343739,
		0.552478, -0.679813, -0.482310,
		32.475994, 35.833813, 38.089134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681334, 35.586277, 38.333286>,  <32.089260, 36.309685, 38.426750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681334, 35.586277, 38.333286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076118, 35.521969, 38.330269>,  <32.312988, 35.483383, 38.328457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076118, 35.521969, 38.330269>,  <31.681334, 35.586277, 38.333286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076118, 35.521969, 38.330269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112845, -0.724660, 0.679804,
		-0.114758, -0.670090, -0.733355,
		0.986963, -0.160769, -0.007544,
		32.372208, 35.473740, 38.328007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781429, 34.860935, 38.534813>,  <31.681334, 35.586277, 38.333286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781429, 34.860935, 38.534813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157391, 34.989742, 38.580215>,  <32.382969, 35.067024, 38.607456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157391, 34.989742, 38.580215>,  <31.781429, 34.860935, 38.534813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157391, 34.989742, 38.580215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109320, -0.598771, 0.793424,
		0.323461, -0.733334, -0.597991,
		0.939905, 0.322014, 0.113511,
		32.439362, 35.086346, 38.614269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157883, 34.315651, 38.492962>,  <31.781429, 34.860935, 38.534813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157883, 34.315651, 38.492962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372284, 34.585682, 38.695728>,  <32.500923, 34.747700, 38.817390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372284, 34.585682, 38.695728>,  <32.157883, 34.315651, 38.492962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372284, 34.585682, 38.695728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031190, -0.615888, 0.787216,
		0.843641, -0.406138, -0.351173,
		0.536002, 0.675081, 0.506920,
		32.533085, 34.788208, 38.847805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745483, 33.950985, 38.848381>,  <32.157883, 34.315651, 38.492962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745483, 33.950985, 38.848381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715714, 34.298565, 39.044094>,  <32.697849, 34.507111, 39.161522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715714, 34.298565, 39.044094>,  <32.745483, 33.950985, 38.848381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715714, 34.298565, 39.044094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030588, -0.488419, 0.872073,
		0.996757, 0.079873, 0.009773,
		-0.074428, 0.868946, 0.489279,
		32.693386, 34.559250, 39.190876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192276, 33.825512, 39.397224>,  <32.745483, 33.950985, 38.848381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192276, 33.825512, 39.397224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989365, 34.144894, 39.526928>,  <32.867619, 34.336521, 39.604748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989365, 34.144894, 39.526928>,  <33.192276, 33.825512, 39.397224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989365, 34.144894, 39.526928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100931, -0.318625, 0.942492,
		0.855854, 0.510829, 0.081041,
		-0.507274, 0.798456, 0.324255,
		32.837181, 34.384430, 39.624203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647778, 34.242496, 39.854549>,  <33.192276, 33.825512, 39.397224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647778, 34.242496, 39.854549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272144, 34.359123, 39.927338>,  <33.046764, 34.429100, 39.971012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272144, 34.359123, 39.927338>,  <33.647778, 34.242496, 39.854549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272144, 34.359123, 39.927338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138783, -0.162685, 0.976869,
		0.314428, 0.942614, 0.112310,
		-0.939082, 0.291568, 0.181972,
		32.990421, 34.446594, 39.981930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693863, 34.622486, 40.444035>,  <33.647778, 34.242496, 39.854549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693863, 34.622486, 40.444035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317047, 34.489521, 40.425880>,  <33.090958, 34.409740, 40.414989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317047, 34.489521, 40.425880>,  <33.693863, 34.622486, 40.444035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317047, 34.489521, 40.425880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010598, -0.105717, 0.994340,
		-0.335327, 0.937191, 0.096067,
		-0.942042, -0.332411, -0.045383,
		33.034435, 34.389797, 40.412266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373146, 35.027134, 40.863941>,  <33.693863, 34.622486, 40.444035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373146, 35.027134, 40.863941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123299, 34.715652, 40.840363>,  <32.973389, 34.528763, 40.826214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123299, 34.715652, 40.840363>,  <33.373146, 35.027134, 40.863941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123299, 34.715652, 40.840363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108277, 0.011602, 0.994053,
		-0.773385, 0.627289, -0.091562,
		-0.624621, -0.778700, -0.058948,
		32.935913, 34.482044, 40.822678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666065, 35.224602, 40.969074>,  <33.373146, 35.027134, 40.863941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666065, 35.224602, 40.969074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691597, 34.837234, 41.065483>,  <32.706917, 34.604813, 41.123329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691597, 34.837234, 41.065483>,  <32.666065, 35.224602, 40.969074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691597, 34.837234, 41.065483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008411, 0.242028, 0.970233,
		-0.997925, -0.059904, 0.023595,
		0.063832, -0.968418, 0.241022,
		32.710747, 34.546707, 41.137791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349998, 35.239651, 41.634441>,  <32.666065, 35.224602, 40.969074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349998, 35.239651, 41.634441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516972, 34.877033, 41.609352>,  <32.617157, 34.659462, 41.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516972, 34.877033, 41.609352>,  <32.349998, 35.239651, 41.634441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516972, 34.877033, 41.609352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134085, -0.006822, 0.990946,
		-0.898760, -0.422065, 0.118705,
		0.417434, -0.906540, -0.062724,
		32.642200, 34.605072, 41.590534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972776, 34.684143, 41.993950>,  <32.349998, 35.239651, 41.634441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972776, 34.684143, 41.993950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343521, 34.535976, 41.969543>,  <32.565968, 34.447079, 41.954899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343521, 34.535976, 41.969543>,  <31.972776, 34.684143, 41.993950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343521, 34.535976, 41.969543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061881, -0.009559, 0.998038,
		-0.370271, -0.928818, 0.014062,
		0.926860, -0.370414, -0.061015,
		32.621578, 34.424850, 41.951241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843174, 34.198196, 42.408504>,  <31.972776, 34.684143, 41.993950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843174, 34.198196, 42.408504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233299, 34.282108, 42.380928>,  <32.467373, 34.332455, 42.364384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233299, 34.282108, 42.380928>,  <31.843174, 34.198196, 42.408504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233299, 34.282108, 42.380928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072280, -0.008285, 0.997350,
		0.208657, -0.977713, -0.023243,
		0.975314, 0.209784, -0.068940,
		32.525894, 34.345043, 42.360245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159668, 33.691040, 42.826462>,  <31.843174, 34.198196, 42.408504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159668, 33.691040, 42.826462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422947, 33.989761, 42.788380>,  <32.580914, 34.168995, 42.765530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422947, 33.989761, 42.788380>,  <32.159668, 33.691040, 42.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422947, 33.989761, 42.788380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119003, 0.021660, 0.992658,
		0.743384, -0.664690, -0.074616,
		0.658193, 0.746805, -0.095202,
		32.620403, 34.213802, 42.759819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727547, 33.406685, 43.264599>,  <32.159668, 33.691040, 42.826462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727547, 33.406685, 43.264599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784527, 33.796833, 43.197227>,  <32.818714, 34.030922, 43.156807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784527, 33.796833, 43.197227>,  <32.727547, 33.406685, 43.264599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784527, 33.796833, 43.197227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088049, 0.156999, 0.983666,
		0.985878, -0.154951, -0.063516,
		0.142448, 0.975367, -0.168425,
		32.827263, 34.089443, 43.146702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296726, 33.573185, 43.612854>,  <32.727547, 33.406685, 43.264599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296726, 33.573185, 43.612854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139946, 33.936481, 43.554234>,  <33.045879, 34.154457, 43.519062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139946, 33.936481, 43.554234>,  <33.296726, 33.573185, 43.612854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139946, 33.936481, 43.554234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157788, 0.223305, 0.961893,
		0.906355, 0.353889, -0.230834,
		-0.391950, 0.908239, -0.146554,
		33.022362, 34.208954, 43.510265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696774, 34.048176, 43.892925>,  <33.296726, 33.573185, 43.612854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696774, 34.048176, 43.892925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326469, 34.199318, 43.887283>,  <33.104286, 34.290001, 43.883900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326469, 34.199318, 43.887283>,  <33.696774, 34.048176, 43.892925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326469, 34.199318, 43.887283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028443, 0.106791, 0.993875,
		0.377045, 0.919686, -0.109610,
		-0.925758, 0.377853, -0.014106,
		33.048740, 34.312675, 43.883053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763126, 34.550522, 44.372803>,  <33.696774, 34.048176, 43.892925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763126, 34.550522, 44.372803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366039, 34.539902, 44.325817>,  <33.127785, 34.533531, 44.297626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366039, 34.539902, 44.325817>,  <33.763126, 34.550522, 44.372803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366039, 34.539902, 44.325817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120028, 0.138723, 0.983031,
		-0.009804, 0.989975, -0.140900,
		-0.992722, -0.026549, -0.117464,
		33.068222, 34.531937, 44.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460388, 35.099129, 44.658394>,  <33.763126, 34.550522, 44.372803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460388, 35.099129, 44.658394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165581, 34.829716, 44.680901>,  <32.988697, 34.668068, 44.694405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165581, 34.829716, 44.680901>,  <33.460388, 35.099129, 44.658394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165581, 34.829716, 44.680901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086725, 0.176803, 0.980418,
		-0.670287, 0.717705, -0.188719,
		-0.737017, -0.673528, 0.056266,
		32.944477, 34.627659, 44.697781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957375, 35.329609, 45.047913>,  <33.460388, 35.099129, 44.658394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957375, 35.329609, 45.047913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798523, 34.962513, 45.045086>,  <32.703213, 34.742256, 45.043388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798523, 34.962513, 45.045086>,  <32.957375, 35.329609, 45.047913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798523, 34.962513, 45.045086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140876, 0.053349, 0.988589,
		-0.906886, 0.393594, -0.150474,
		-0.397130, -0.917735, -0.007067,
		32.679382, 34.687191, 45.042965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282299, 35.406040, 45.398403>,  <32.957375, 35.329609, 45.047913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282299, 35.406040, 45.398403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402382, 35.024639, 45.409035>,  <32.474430, 34.795799, 45.415413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402382, 35.024639, 45.409035>,  <32.282299, 35.406040, 45.398403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402382, 35.024639, 45.409035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156577, -0.021774, 0.987426,
		-0.940935, -0.300594, -0.155833,
		0.300207, -0.953504, 0.026578,
		32.492443, 34.738586, 45.417007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687107, 34.970398, 45.630604>,  <32.282299, 35.406040, 45.398403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687107, 34.970398, 45.630604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035305, 34.793770, 45.717564>,  <32.244225, 34.687794, 45.769737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035305, 34.793770, 45.717564>,  <31.687107, 34.970398, 45.630604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035305, 34.793770, 45.717564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252957, -0.022483, 0.967216,
		-0.422203, -0.896947, -0.131269,
		0.870493, -0.441567, 0.217396,
		32.296452, 34.661301, 45.782784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577852, 34.774166, 46.218674>,  <31.687107, 34.970398, 45.630604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577852, 34.774166, 46.218674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953964, 34.638004, 46.218964>,  <32.179630, 34.556309, 46.219135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953964, 34.638004, 46.218964>,  <31.577852, 34.774166, 46.218674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953964, 34.638004, 46.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072464, -0.198098, 0.977500,
		-0.332601, -0.919175, -0.210935,
		0.940279, -0.340402, 0.000720,
		32.236050, 34.535885, 46.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662992, 33.957359, 46.358398>,  <31.577852, 34.774166, 46.218674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662992, 33.957359, 46.358398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977961, 34.169640, 46.483826>,  <32.166943, 34.297009, 46.559082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977961, 34.169640, 46.483826>,  <31.662992, 33.957359, 46.358398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977961, 34.169640, 46.483826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150463, -0.327826, 0.932680,
		0.597771, -0.781591, -0.178286,
		0.787421, 0.530703, 0.313565,
		32.214188, 34.328850, 46.577896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931475, 33.494247, 46.863708>,  <31.662992, 33.957359, 46.358398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931475, 33.494247, 46.863708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174889, 33.807373, 46.915688>,  <32.320938, 33.995247, 46.946877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174889, 33.807373, 46.915688>,  <31.931475, 33.494247, 46.863708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174889, 33.807373, 46.915688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248146, -0.343275, 0.905862,
		0.753731, -0.519002, -0.403146,
		0.608534, 0.782815, 0.129949,
		32.357449, 34.042217, 46.954674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609741, 33.246265, 47.002865>,  <31.931475, 33.494247, 46.863708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609741, 33.246265, 47.002865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483143, 33.589870, 47.163826>,  <32.407185, 33.796032, 47.260403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483143, 33.589870, 47.163826>,  <32.609741, 33.246265, 47.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483143, 33.589870, 47.163826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010775, -0.420925, 0.907031,
		0.948531, 0.291412, 0.123967,
		-0.316501, 0.859012, 0.402401,
		32.388191, 33.847572, 47.284546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919918, 33.254917, 47.537289>,  <32.609741, 33.246265, 47.002865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919918, 33.254917, 47.537289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626942, 33.508877, 47.635624>,  <32.451157, 33.661251, 47.694626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626942, 33.508877, 47.635624>,  <32.919918, 33.254917, 47.537289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626942, 33.508877, 47.635624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007131, -0.368222, 0.929711,
		0.680793, 0.679205, 0.274228,
		-0.732441, 0.634896, 0.245840,
		32.407211, 33.699345, 47.709377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879887, 33.471867, 48.193169>,  <32.919918, 33.254917, 47.537289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879887, 33.471867, 48.193169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491646, 33.555145, 48.144867>,  <32.258701, 33.605110, 48.115887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491646, 33.555145, 48.144867>,  <32.879887, 33.471867, 48.193169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491646, 33.555145, 48.144867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174072, -0.260784, 0.949574,
		0.166206, 0.942681, 0.289359,
		-0.970605, 0.208194, -0.120751,
		32.200462, 33.617603, 48.108643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614048, 33.810848, 48.850880>,  <32.879887, 33.471867, 48.193169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614048, 33.810848, 48.850880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298962, 33.655300, 48.659763>,  <32.109909, 33.561974, 48.545094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298962, 33.655300, 48.659763>,  <32.614048, 33.810848, 48.850880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298962, 33.655300, 48.659763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403173, -0.260999, 0.877115,
		-0.465784, 0.883551, 0.048812,
		-0.787716, -0.388867, -0.477793,
		32.062645, 33.538639, 48.516426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037392, 34.079041, 49.218082>,  <32.614048, 33.810848, 48.850880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037392, 34.079041, 49.218082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899166, 33.772541, 49.001400>,  <31.816231, 33.588642, 48.871391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899166, 33.772541, 49.001400>,  <32.037392, 34.079041, 49.218082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899166, 33.772541, 49.001400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601798, -0.261974, 0.754459,
		-0.720017, 0.586713, -0.370599,
		-0.345564, -0.766249, -0.541708,
		31.795496, 33.542667, 48.838886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376804, 34.180412, 48.973118>,  <32.037392, 34.079041, 49.218082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376804, 34.180412, 48.973118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463715, 33.799957, 49.060871>,  <31.515860, 33.571686, 49.113522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463715, 33.799957, 49.060871>,  <31.376804, 34.180412, 48.973118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463715, 33.799957, 49.060871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786254, -0.037348, 0.616773,
		-0.578443, -0.306499, -0.755951,
		0.217274, -0.951137, 0.219383,
		31.528896, 33.514614, 49.126686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726067, 33.811699, 48.843479>,  <31.376804, 34.180412, 48.973118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726067, 33.811699, 48.843479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884348, 33.666000, 49.180702>,  <30.979317, 33.578579, 49.383034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884348, 33.666000, 49.180702>,  <30.726067, 33.811699, 48.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884348, 33.666000, 49.180702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829108, 0.253109, 0.498514,
		-0.394968, -0.896247, -0.201845,
		0.395702, -0.364249, 0.843056,
		31.003059, 33.556725, 49.433620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162434, 33.676929, 49.338097>,  <30.726067, 33.811699, 48.843479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162434, 33.676929, 49.338097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475075, 33.631481, 49.583435>,  <30.662659, 33.604214, 49.730637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475075, 33.631481, 49.583435>,  <30.162434, 33.676929, 49.338097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475075, 33.631481, 49.583435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603837, 0.108803, 0.789647,
		-0.156452, -0.987549, 0.016433,
		0.781603, -0.113619, 0.613341,
		30.709557, 33.597397, 49.767437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062366, 33.055264, 49.773628>,  <30.162434, 33.676929, 49.338097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062366, 33.055264, 49.773628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274134, 33.359196, 49.924557>,  <30.401194, 33.541557, 50.015114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274134, 33.359196, 49.924557>,  <30.062366, 33.055264, 49.773628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274134, 33.359196, 49.924557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576009, -0.004584, 0.817430,
		0.622842, -0.650100, 0.435245,
		0.529416, 0.759834, 0.377319,
		30.432959, 33.587147, 50.037754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969402, 32.698223, 50.419025>,  <30.062366, 33.055264, 49.773628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969402, 32.698223, 50.419025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320667, 32.777878, 50.245049>,  <30.531425, 32.825668, 50.140663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320667, 32.777878, 50.245049>,  <29.969402, 32.698223, 50.419025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320667, 32.777878, 50.245049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238391, -0.970464, 0.037006,
		-0.414728, -0.136184, -0.899697,
		0.878163, 0.199132, -0.434944,
		30.584116, 32.837616, 50.114567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117027, 32.262905, 49.821392>,  <29.969402, 32.698223, 50.419025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117027, 32.262905, 49.821392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446857, 32.388184, 50.009850>,  <30.644756, 32.463352, 50.122925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446857, 32.388184, 50.009850>,  <30.117027, 32.262905, 49.821392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446857, 32.388184, 50.009850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355369, -0.934726, -0.000578,
		0.440213, 0.167907, -0.882054,
		0.824576, 0.313200, 0.471147,
		30.694231, 32.482143, 50.151196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777775, 32.089340, 49.429623>,  <30.117027, 32.262905, 49.821392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777775, 32.089340, 49.429623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844162, 32.082409, 49.824013>,  <30.883995, 32.078251, 50.060646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844162, 32.082409, 49.824013>,  <30.777775, 32.089340, 49.429623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844162, 32.082409, 49.824013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312660, -0.947335, -0.069278,
		0.935253, 0.319774, -0.151810,
		0.165968, -0.017328, 0.985979,
		30.893953, 32.077209, 50.119808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969786, 32.605206, 48.918751>,  <30.777775, 32.089340, 49.429623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969786, 32.605206, 48.918751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605883, 32.572414, 48.755966>,  <30.387541, 32.552738, 48.658295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605883, 32.572414, 48.755966>,  <30.969786, 32.605206, 48.918751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605883, 32.572414, 48.755966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411180, -0.042906, -0.910544,
		0.057188, -0.995710, 0.072744,
		-0.909759, -0.081983, -0.406962,
		30.332954, 32.547821, 48.633877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879742, 31.953485, 48.577003>,  <30.969786, 32.605206, 48.918751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879742, 31.953485, 48.577003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675940, 32.250980, 48.403908>,  <30.553659, 32.429478, 48.300053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675940, 32.250980, 48.403908>,  <30.879742, 31.953485, 48.577003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675940, 32.250980, 48.403908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315523, -0.306395, -0.898091,
		-0.800532, -0.594119, -0.078557,
		-0.509503, 0.743737, -0.432737,
		30.523088, 32.474102, 48.274086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401463, 31.661472, 48.095795>,  <30.879742, 31.953485, 48.577003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401463, 31.661472, 48.095795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480555, 32.042080, 48.001549>,  <30.528009, 32.270443, 47.945000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480555, 32.042080, 48.001549>,  <30.401463, 31.661472, 48.095795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480555, 32.042080, 48.001549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398065, -0.297593, -0.867746,
		-0.895794, 0.077790, -0.437609,
		0.197732, 0.951518, -0.235616,
		30.539873, 32.327534, 47.930862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178709, 31.700294, 47.439968>,  <30.401463, 31.661472, 48.095795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178709, 31.700294, 47.439968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461069, 31.973965, 47.513302>,  <30.630486, 32.138168, 47.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461069, 31.973965, 47.513302>,  <30.178709, 31.700294, 47.439968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461069, 31.973965, 47.513302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415467, -0.190310, -0.889477,
		-0.573669, 0.704049, -0.418592,
		0.705898, 0.684176, 0.183334,
		30.672838, 32.179218, 47.568302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234806, 32.053158, 46.848934>,  <30.178709, 31.700294, 47.439968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234806, 32.053158, 46.848934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582911, 32.133598, 47.028805>,  <30.791773, 32.181862, 47.136726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582911, 32.133598, 47.028805>,  <30.234806, 32.053158, 46.848934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582911, 32.133598, 47.028805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483580, -0.174948, -0.857638,
		-0.093802, 0.963822, -0.249498,
		0.870259, 0.201100, 0.449675,
		30.843988, 32.193928, 47.163708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600611, 32.339382, 46.315659>,  <30.234806, 32.053158, 46.848934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600611, 32.339382, 46.315659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878878, 32.217934, 46.576077>,  <31.045837, 32.145065, 46.732327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878878, 32.217934, 46.576077>,  <30.600611, 32.339382, 46.315659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878878, 32.217934, 46.576077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554082, -0.350026, -0.755298,
		0.457210, 0.886168, -0.075269,
		0.695667, -0.303625, 0.651045,
		31.087578, 32.126846, 46.771389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070824, 32.041824, 45.942184>,  <30.600611, 32.339382, 46.315659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070824, 32.041824, 45.942184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294729, 32.032578, 46.273518>,  <31.429073, 32.027027, 46.472317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294729, 32.032578, 46.273518>,  <31.070824, 32.041824, 45.942184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294729, 32.032578, 46.273518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768917, -0.358159, -0.529612,
		0.308919, 0.933374, -0.182706,
		0.559764, -0.023122, 0.828330,
		31.462658, 32.025642, 46.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673994, 32.651882, 45.977882>,  <31.070824, 32.041824, 45.942184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673994, 32.651882, 45.977882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708904, 32.282471, 46.127266>,  <31.729851, 32.060822, 46.216896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708904, 32.282471, 46.127266>,  <31.673994, 32.651882, 45.977882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708904, 32.282471, 46.127266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673806, -0.221397, -0.704960,
		0.733736, 0.313165, 0.602959,
		0.087276, -0.923532, 0.373459,
		31.735086, 32.005409, 46.239304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445385, 32.537979, 45.973633>,  <31.673994, 32.651882, 45.977882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445385, 32.537979, 45.973633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241478, 32.193924, 45.980572>,  <32.119133, 31.987492, 45.984734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241478, 32.193924, 45.980572>,  <32.445385, 32.537979, 45.973633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241478, 32.193924, 45.980572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633456, -0.388917, -0.668937,
		0.582124, -0.330015, 0.743116,
		-0.509770, -0.860136, 0.017348,
		32.088547, 31.935883, 45.985775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965607, 32.090870, 45.897171>,  <32.445385, 32.537979, 45.973633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965607, 32.090870, 45.897171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630180, 31.901625, 45.789112>,  <32.428925, 31.788078, 45.724277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630180, 31.901625, 45.789112>,  <32.965607, 32.090870, 45.897171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630180, 31.901625, 45.789112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445332, -0.309616, -0.840129,
		0.313834, -0.824805, 0.470324,
		-0.838563, -0.473112, -0.270144,
		32.378613, 31.759691, 45.708069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167389, 31.380693, 45.770340>,  <32.965607, 32.090870, 45.897171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167389, 31.380693, 45.770340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830437, 31.438295, 45.562622>,  <32.628265, 31.472857, 45.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830437, 31.438295, 45.562622>,  <33.167389, 31.380693, 45.770340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830437, 31.438295, 45.562622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410975, -0.451633, -0.791914,
		-0.348569, -0.880505, 0.321262,
		-0.842377, 0.144006, -0.519291,
		32.577724, 31.481497, 45.406834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011631, 30.656887, 45.430492>,  <33.167389, 31.380693, 45.770340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011631, 30.656887, 45.430492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824303, 30.951384, 45.235092>,  <32.711906, 31.128080, 45.117851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824303, 30.951384, 45.235092>,  <33.011631, 30.656887, 45.430492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824303, 30.951384, 45.235092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192367, -0.454649, -0.869649,
		-0.862365, -0.501242, 0.071292,
		-0.468318, 0.736241, -0.488496,
		32.683807, 31.172256, 45.088543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696178, 30.356485, 44.864464>,  <33.011631, 30.656887, 45.430492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696178, 30.356485, 44.864464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665718, 30.739658, 44.753784>,  <32.647442, 30.969563, 44.687374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665718, 30.739658, 44.753784>,  <32.696178, 30.356485, 44.864464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665718, 30.739658, 44.753784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262836, -0.248407, -0.932315,
		-0.961831, -0.143723, -0.232864,
		-0.076151, 0.957934, -0.276701,
		32.642872, 31.027039, 44.670773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340790, 30.390795, 44.260414>,  <32.696178, 30.356485, 44.864464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340790, 30.390795, 44.260414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552799, 30.729202, 44.283493>,  <32.680004, 30.932247, 44.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552799, 30.729202, 44.283493>,  <32.340790, 30.390795, 44.260414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552799, 30.729202, 44.283493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179210, -0.045251, -0.982770,
		-0.828832, 0.531227, -0.175599,
		0.530020, 0.846020, 0.057696,
		32.711803, 30.983007, 44.300800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176186, 30.755018, 43.501431>,  <32.340790, 30.390795, 44.260414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176186, 30.755018, 43.501431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489418, 30.937338, 43.670681>,  <32.677357, 31.046730, 43.772232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489418, 30.937338, 43.670681>,  <32.176186, 30.755018, 43.501431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489418, 30.937338, 43.670681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415326, 0.123145, -0.901299,
		-0.462918, 0.881522, -0.092873,
		0.783078, 0.455800, 0.423125,
		32.724342, 31.074078, 43.797619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084660, 31.465200, 43.329151>,  <32.176186, 30.755018, 43.501431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084660, 31.465200, 43.329151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467117, 31.370281, 43.397823>,  <32.696590, 31.313330, 43.439026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467117, 31.370281, 43.397823>,  <32.084660, 31.465200, 43.329151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467117, 31.370281, 43.397823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215511, 0.173041, -0.961047,
		0.198348, 0.955900, 0.216593,
		0.956145, -0.237300, 0.171685,
		32.753960, 31.299091, 43.449329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537849, 31.940832, 42.939312>,  <32.084660, 31.465200, 43.329151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537849, 31.940832, 42.939312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772072, 31.623383, 43.005386>,  <32.912605, 31.432913, 43.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772072, 31.623383, 43.005386>,  <32.537849, 31.940832, 42.939312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772072, 31.623383, 43.005386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456805, 0.154703, -0.876012,
		0.669671, 0.588408, 0.453119,
		0.585551, -0.793626, 0.165188,
		32.947739, 31.385294, 43.054943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179646, 32.205116, 42.931458>,  <32.537849, 31.940832, 42.939312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179646, 32.205116, 42.931458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213165, 31.820316, 42.827507>,  <33.233276, 31.589436, 42.765137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213165, 31.820316, 42.827507>,  <33.179646, 32.205116, 42.931458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213165, 31.820316, 42.827507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479615, 0.267533, -0.835701,
		0.873469, -0.054610, 0.483809,
		0.083797, -0.962000, -0.259873,
		33.238304, 31.531715, 42.749546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922020, 32.125298, 42.571182>,  <33.179646, 32.205116, 42.931458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922020, 32.125298, 42.571182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744545, 31.783228, 42.463982>,  <33.638062, 31.577986, 42.399662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744545, 31.783228, 42.463982>,  <33.922020, 32.125298, 42.571182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744545, 31.783228, 42.463982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260084, 0.163304, -0.951676,
		0.857613, -0.491947, 0.149961,
		-0.443685, -0.855173, -0.267999,
		33.611439, 31.526676, 42.383583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464363, 31.728853, 42.129375>,  <33.922020, 32.125298, 42.571182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464363, 31.728853, 42.129375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116631, 31.540804, 42.068398>,  <33.907990, 31.427975, 42.031811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116631, 31.540804, 42.068398>,  <34.464363, 31.728853, 42.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116631, 31.540804, 42.068398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150641, 0.041729, -0.987707,
		0.470708, -0.881613, 0.034544,
		-0.869334, -0.470125, -0.152449,
		33.855831, 31.399767, 42.022663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597095, 31.231985, 41.586330>,  <34.464363, 31.728853, 42.129375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597095, 31.231985, 41.586330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208321, 31.325823, 41.579262>,  <33.975056, 31.382126, 41.575020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208321, 31.325823, 41.579262>,  <34.597095, 31.231985, 41.586330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208321, 31.325823, 41.579262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015294, -0.011940, -0.999812,
		-0.234764, -0.972019, 0.008017,
		-0.971932, 0.234597, -0.017669,
		33.916740, 31.396202, 41.573959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402496, 31.049967, 40.948830>,  <34.597095, 31.231985, 41.586330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402496, 31.049967, 40.948830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078140, 31.263765, 41.044132>,  <33.883526, 31.392044, 41.101315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078140, 31.263765, 41.044132>,  <34.402496, 31.049967, 40.948830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078140, 31.263765, 41.044132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126970, 0.236747, -0.963239,
		-0.571253, -0.811336, -0.124112,
		-0.810894, 0.534495, 0.238258,
		33.834873, 31.424114, 41.115608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895832, 30.770365, 40.570793>,  <34.402496, 31.049967, 40.948830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895832, 30.770365, 40.570793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776222, 31.141359, 40.660553>,  <33.704456, 31.363956, 40.714409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776222, 31.141359, 40.660553>,  <33.895832, 30.770365, 40.570793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776222, 31.141359, 40.660553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158344, 0.183669, -0.970151,
		-0.941017, -0.325629, 0.091941,
		-0.299023, 0.927486, 0.224397,
		33.686516, 31.419605, 40.727871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362682, 30.900202, 40.102489>,  <33.895832, 30.770365, 40.570793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362682, 30.900202, 40.102489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443378, 31.265703, 40.243546>,  <33.491795, 31.485004, 40.328178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443378, 31.265703, 40.243546>,  <33.362682, 30.900202, 40.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443378, 31.265703, 40.243546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266959, 0.397707, -0.877817,
		-0.942356, 0.082950, 0.324168,
		0.201739, 0.913755, 0.352637,
		33.503899, 31.539829, 40.349339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723785, 31.312485, 40.145054>,  <33.362682, 30.900202, 40.102489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723785, 31.312485, 40.145054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009434, 31.592491, 40.146206>,  <33.180824, 31.760494, 40.146896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009434, 31.592491, 40.146206>,  <32.723785, 31.312485, 40.145054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009434, 31.592491, 40.146206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474482, 0.487057, -0.733241,
		-0.514683, 0.522257, 0.679962,
		0.714121, 0.700016, 0.002878,
		33.223671, 31.802496, 40.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383949, 31.988201, 40.054165>,  <32.723785, 31.312485, 40.145054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383949, 31.988201, 40.054165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763424, 32.039185, 39.938408>,  <32.991108, 32.069775, 39.868954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763424, 32.039185, 39.938408>,  <32.383949, 31.988201, 40.054165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763424, 32.039185, 39.938408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310079, 0.554426, -0.772310,
		0.062011, 0.822415, 0.565498,
		0.948686, 0.127457, -0.289394,
		33.048031, 32.077423, 39.851589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451984, 32.673382, 39.890755>,  <32.383949, 31.988201, 40.054165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451984, 32.673382, 39.890755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727978, 32.474648, 39.680202>,  <32.893574, 32.355408, 39.553871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727978, 32.474648, 39.680202>,  <32.451984, 32.673382, 39.890755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727978, 32.474648, 39.680202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397290, 0.347938, -0.849176,
		0.605051, 0.795042, 0.042682,
		0.689981, -0.496837, -0.526383,
		32.934971, 32.325596, 39.522289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513287, 33.117859, 39.273994>,  <32.451984, 32.673382, 39.890755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513287, 33.117859, 39.273994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676460, 32.771027, 39.159615>,  <32.774364, 32.562927, 39.090988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676460, 32.771027, 39.159615>,  <32.513287, 33.117859, 39.273994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676460, 32.771027, 39.159615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121425, 0.258886, -0.958245,
		0.904902, 0.425620, 0.000323,
		0.407932, -0.867079, -0.285947,
		32.798840, 32.510902, 39.073830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046886, 33.243080, 38.842999>,  <32.513287, 33.117859, 39.273994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046886, 33.243080, 38.842999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903778, 32.878857, 38.760166>,  <32.817913, 32.660324, 38.710468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903778, 32.878857, 38.760166>,  <33.046886, 33.243080, 38.842999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903778, 32.878857, 38.760166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100579, 0.258045, -0.960883,
		0.928376, -0.322950, -0.183904,
		-0.357773, -0.910558, -0.207081,
		32.796448, 32.605690, 38.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226517, 33.074123, 38.169598>,  <33.046886, 33.243080, 38.842999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226517, 33.074123, 38.169598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942001, 32.803635, 38.246315>,  <32.771294, 32.641342, 38.292347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942001, 32.803635, 38.246315>,  <33.226517, 33.074123, 38.169598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942001, 32.803635, 38.246315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230130, -0.033784, -0.972573,
		0.664159, -0.735919, -0.131589,
		-0.711290, -0.676226, 0.191795,
		32.728615, 32.600765, 38.303852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161346, 32.798172, 37.510548>,  <33.226517, 33.074123, 38.169598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161346, 32.798172, 37.510548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844467, 32.654057, 37.707573>,  <32.654339, 32.567589, 37.825787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844467, 32.654057, 37.707573>,  <33.161346, 32.798172, 37.510548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844467, 32.654057, 37.707573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584811, 0.217512, -0.781463,
		0.174405, -0.907132, -0.383008,
		-0.792199, -0.360278, 0.492566,
		32.606808, 32.545971, 37.855343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944962, 32.258450, 37.065323>,  <33.161346, 32.798172, 37.510548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944962, 32.258450, 37.065323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629005, 32.359726, 37.288738>,  <32.439434, 32.420494, 37.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629005, 32.359726, 37.288738>,  <32.944962, 32.258450, 37.065323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629005, 32.359726, 37.288738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576232, 0.005215, -0.817270,
		-0.209843, -0.967401, 0.141781,
		-0.789888, 0.253197, 0.558541,
		32.392040, 32.435684, 37.456299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492966, 31.855732, 36.831860>,  <32.944962, 32.258450, 37.065323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492966, 31.855732, 36.831860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286995, 32.147449, 37.012074>,  <32.163414, 32.322479, 37.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286995, 32.147449, 37.012074>,  <32.492966, 31.855732, 36.831860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286995, 32.147449, 37.012074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615982, 0.050720, -0.786125,
		-0.596168, -0.682318, 0.423115,
		-0.514927, 0.729294, 0.450534,
		32.132515, 32.366238, 37.147232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767229, 31.809652, 36.502811>,  <32.492966, 31.855732, 36.831860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767229, 31.809652, 36.502811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737650, 32.170601, 36.672638>,  <31.719902, 32.387169, 36.774532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737650, 32.170601, 36.672638>,  <31.767229, 31.809652, 36.502811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737650, 32.170601, 36.672638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467565, 0.344669, -0.813994,
		-0.880860, -0.258705, 0.396430,
		-0.073947, 0.902372, 0.424567,
		31.715466, 32.441311, 36.800007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103191, 32.061211, 36.348133>,  <31.767229, 31.809652, 36.502811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103191, 32.061211, 36.348133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331795, 32.377567, 36.435654>,  <31.468956, 32.567379, 36.488167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331795, 32.377567, 36.435654>,  <31.103191, 32.061211, 36.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331795, 32.377567, 36.435654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414035, 0.508125, -0.755238,
		-0.708488, 0.341033, 0.617853,
		0.571507, 0.790889, 0.218801,
		31.503246, 32.614834, 36.501293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674583, 32.636810, 36.333359>,  <31.103191, 32.061211, 36.348133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674583, 32.636810, 36.333359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052000, 32.755951, 36.275375>,  <31.278450, 32.827435, 36.240585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052000, 32.755951, 36.275375>,  <30.674583, 32.636810, 36.333359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052000, 32.755951, 36.275375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249757, 0.352204, -0.901983,
		-0.217599, 0.887265, 0.406709,
		0.943542, 0.297849, -0.144961,
		31.335062, 32.845306, 36.231888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539413, 33.324039, 36.009525>,  <30.674583, 32.636810, 36.333359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539413, 33.324039, 36.009525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921326, 33.225868, 35.942402>,  <31.150473, 33.166965, 35.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921326, 33.225868, 35.942402>,  <30.539413, 33.324039, 36.009525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921326, 33.225868, 35.942402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059673, 0.394739, -0.916853,
		0.291263, 0.885407, 0.362244,
		0.954780, -0.245430, -0.167808,
		31.207760, 33.152241, 35.892059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857462, 33.928787, 35.826004>,  <30.539413, 33.324039, 36.009525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857462, 33.928787, 35.826004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115129, 33.659481, 35.680809>,  <31.269730, 33.497898, 35.593693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115129, 33.659481, 35.680809>,  <30.857462, 33.928787, 35.826004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115129, 33.659481, 35.680809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122937, 0.377267, -0.917909,
		0.754940, 0.635912, 0.160254,
		0.644167, -0.673265, -0.362991,
		31.308380, 33.457500, 35.571911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283325, 34.341843, 35.352871>,  <30.857462, 33.928787, 35.826004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283325, 34.341843, 35.352871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296970, 33.954758, 35.252979>,  <31.305157, 33.722507, 35.193043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296970, 33.954758, 35.252979>,  <31.283325, 34.341843, 35.352871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296970, 33.954758, 35.252979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166501, 0.240884, -0.956165,
		0.985451, 0.074198, -0.152908,
		0.034112, -0.967714, -0.249733,
		31.307203, 33.664444, 35.178059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795326, 34.281914, 34.841854>,  <31.283325, 34.341843, 35.352871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795326, 34.281914, 34.841854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603642, 33.939816, 34.762955>,  <31.488630, 33.734554, 34.715614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603642, 33.939816, 34.762955>,  <31.795326, 34.281914, 34.841854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603642, 33.939816, 34.762955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057758, 0.193517, -0.979395,
		0.875796, -0.480731, -0.043339,
		-0.479212, -0.855248, -0.197248,
		31.459877, 33.683243, 34.703781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149460, 33.942242, 34.330730>,  <31.795326, 34.281914, 34.841854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149460, 33.942242, 34.330730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792637, 33.763302, 34.305096>,  <31.578543, 33.655937, 34.289715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792637, 33.763302, 34.305096>,  <32.149460, 33.942242, 34.330730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792637, 33.763302, 34.305096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009197, 0.123801, -0.992265,
		0.451823, -0.885749, -0.106323,
		-0.892061, -0.447350, -0.064083,
		31.525019, 33.629097, 34.285870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306625, 33.401173, 33.845650>,  <32.149460, 33.942242, 34.330730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306625, 33.401173, 33.845650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912220, 33.467640, 33.850712>,  <31.675575, 33.507523, 33.853748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912220, 33.467640, 33.850712>,  <32.306625, 33.401173, 33.845650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912220, 33.467640, 33.850712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044951, 0.338324, -0.939955,
		-0.160475, -0.926242, -0.341062,
		-0.986016, 0.166170, 0.012657,
		31.616415, 33.517490, 33.854507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921246, 33.658859, 34.191582>,  <32.306625, 33.401173, 33.845650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921246, 33.658859, 34.191582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058792, 33.336147, 33.999386>,  <33.141319, 33.142521, 33.884068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058792, 33.336147, 33.999386>,  <32.921246, 33.658859, 34.191582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058792, 33.336147, 33.999386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388723, -0.343485, 0.854934,
		-0.854780, -0.480761, 0.195498,
		0.343869, -0.806775, -0.480487,
		33.161953, 33.094116, 33.855240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918400, 33.106945, 34.632183>,  <32.921246, 33.658859, 34.191582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918400, 33.106945, 34.632183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172539, 32.955208, 34.363129>,  <33.325020, 32.864166, 34.201694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172539, 32.955208, 34.363129>,  <32.918400, 33.106945, 34.632183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172539, 32.955208, 34.363129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465016, -0.507466, 0.725423,
		-0.616523, -0.773679, -0.146016,
		0.635342, -0.379340, -0.672637,
		33.363140, 32.841408, 34.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971046, 32.276859, 34.656124>,  <32.918400, 33.106945, 34.632183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971046, 32.276859, 34.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303047, 32.456524, 34.523853>,  <33.502247, 32.564323, 34.444489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303047, 32.456524, 34.523853>,  <32.971046, 32.276859, 34.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303047, 32.456524, 34.523853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544412, -0.523467, 0.655437,
		0.121300, -0.724039, -0.679009,
		0.830001, 0.449165, -0.330679,
		33.552048, 32.591274, 34.424648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463432, 31.809416, 34.597404>,  <32.971046, 32.276859, 34.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463432, 31.809416, 34.597404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684132, 32.140388, 34.639217>,  <33.816551, 32.338970, 34.664303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684132, 32.140388, 34.639217>,  <33.463432, 31.809416, 34.597404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684132, 32.140388, 34.639217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605363, -0.483542, 0.632236,
		0.573676, -0.285560, -0.767692,
		0.551753, 0.827431, 0.104528,
		33.849659, 32.388618, 34.670574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016769, 31.530188, 34.916500>,  <33.463432, 31.809416, 34.597404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016769, 31.530188, 34.916500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115570, 31.916178, 34.951847>,  <34.174850, 32.147774, 34.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115570, 31.916178, 34.951847>,  <34.016769, 31.530188, 34.916500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115570, 31.916178, 34.951847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697857, -0.240417, 0.674681,
		0.672298, -0.104977, -0.732800,
		0.247004, 0.964976, 0.088372,
		34.189671, 32.205669, 34.978359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784943, 31.514565, 34.913631>,  <34.016769, 31.530188, 34.916500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784943, 31.514565, 34.913631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644882, 31.844393, 35.091385>,  <34.560848, 32.042290, 35.198036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644882, 31.844393, 35.091385>,  <34.784943, 31.514565, 34.913631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644882, 31.844393, 35.091385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423112, -0.284030, 0.860408,
		0.835686, 0.489297, -0.249433,
		-0.350149, 0.824570, 0.444388,
		34.539837, 32.091763, 35.224701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339321, 31.868629, 35.171947>,  <34.784943, 31.514565, 34.913631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339321, 31.868629, 35.171947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022652, 32.004040, 35.375381>,  <34.832649, 32.085285, 35.497440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022652, 32.004040, 35.375381>,  <35.339321, 31.868629, 35.171947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022652, 32.004040, 35.375381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415355, -0.312241, 0.854392,
		0.448035, 0.887640, 0.106584,
		-0.791672, 0.338527, 0.508581,
		34.785149, 32.105598, 35.527954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658436, 32.161537, 35.779202>,  <35.339321, 31.868629, 35.171947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658436, 32.161537, 35.779202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272823, 32.132675, 35.881531>,  <35.041458, 32.115356, 35.942928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272823, 32.132675, 35.881531>,  <35.658436, 32.161537, 35.779202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272823, 32.132675, 35.881531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265543, -0.303838, 0.914969,
		0.011707, 0.949987, 0.312069,
		-0.964028, -0.072156, 0.255820,
		34.983616, 32.111027, 35.958279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693073, 32.344692, 36.440498>,  <35.658436, 32.161537, 35.779202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693073, 32.344692, 36.440498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363266, 32.128010, 36.375103>,  <35.165382, 31.997999, 36.335865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363266, 32.128010, 36.375103>,  <35.693073, 32.344692, 36.440498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363266, 32.128010, 36.375103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096346, -0.419106, 0.902811,
		-0.557579, 0.728629, 0.397751,
		-0.824514, -0.541710, -0.163485,
		35.115913, 31.965496, 36.326057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255512, 32.479881, 36.980591>,  <35.693073, 32.344692, 36.440498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255512, 32.479881, 36.980591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141907, 32.120792, 36.845875>,  <35.073742, 31.905338, 36.765045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141907, 32.120792, 36.845875>,  <35.255512, 32.479881, 36.980591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141907, 32.120792, 36.845875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046281, -0.363684, 0.930372,
		-0.957703, 0.248650, 0.144838,
		-0.284012, -0.897723, -0.336793,
		35.056702, 31.851475, 36.744835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935436, 32.272411, 37.548748>,  <35.255512, 32.479881, 36.980591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935436, 32.272411, 37.548748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986046, 31.948694, 37.319298>,  <35.016411, 31.754465, 37.181629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986046, 31.948694, 37.319298>,  <34.935436, 32.272411, 37.548748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986046, 31.948694, 37.319298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071355, -0.569346, 0.818996,
		-0.989394, -0.144552, -0.014288,
		0.126522, -0.809290, -0.573622,
		35.024002, 31.705908, 37.147213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551327, 31.877760, 37.836948>,  <34.935436, 32.272411, 37.548748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551327, 31.877760, 37.836948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810295, 31.633032, 37.655170>,  <34.965675, 31.486195, 37.546104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810295, 31.633032, 37.655170>,  <34.551327, 31.877760, 37.836948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810295, 31.633032, 37.655170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041115, -0.623450, 0.780781,
		-0.761019, -0.486813, -0.428792,
		0.647425, -0.611820, -0.454442,
		35.004524, 31.449486, 37.518837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233715, 31.200201, 37.826897>,  <34.551327, 31.877760, 37.836948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233715, 31.200201, 37.826897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631104, 31.164785, 37.798130>,  <34.869537, 31.143536, 37.780869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631104, 31.164785, 37.798130>,  <34.233715, 31.200201, 37.826897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631104, 31.164785, 37.798130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000867, -0.636317, 0.771427,
		-0.114064, -0.766330, -0.632240,
		0.993473, -0.088540, -0.071917,
		34.929146, 31.138224, 37.776554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318367, 30.554298, 37.892117>,  <34.233715, 31.200201, 37.826897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318367, 30.554298, 37.892117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663425, 30.712399, 38.018368>,  <34.870461, 30.807259, 38.094120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663425, 30.712399, 38.018368>,  <34.318367, 30.554298, 37.892117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663425, 30.712399, 38.018368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067683, -0.708593, 0.702364,
		0.501264, -0.584527, -0.638014,
		0.862643, 0.395252, 0.315630,
		34.922218, 30.830975, 38.113056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702827, 29.945545, 38.059685>,  <34.318367, 30.554298, 37.892117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702827, 29.945545, 38.059685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921528, 30.230766, 38.235237>,  <35.052750, 30.401899, 38.340569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921528, 30.230766, 38.235237>,  <34.702827, 29.945545, 38.059685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921528, 30.230766, 38.235237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032218, -0.541698, 0.839955,
		0.836674, -0.445108, -0.319148,
		0.546753, 0.713051, 0.438885,
		35.085552, 30.444681, 38.366901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248688, 29.577623, 38.364048>,  <34.702827, 29.945545, 38.059685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248688, 29.577623, 38.364048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216579, 29.923643, 38.562138>,  <35.197315, 30.131256, 38.680992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216579, 29.923643, 38.562138>,  <35.248688, 29.577623, 38.364048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216579, 29.923643, 38.562138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071974, -0.490497, 0.868465,
		0.994171, 0.105355, -0.022889,
		-0.080270, 0.865051, 0.495221,
		35.192497, 30.183159, 38.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761467, 29.577602, 38.965130>,  <35.248688, 29.577623, 38.364048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761467, 29.577602, 38.965130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519913, 29.876242, 39.076786>,  <35.374981, 30.055426, 39.143780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519913, 29.876242, 39.076786>,  <35.761467, 29.577602, 38.965130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519913, 29.876242, 39.076786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038287, -0.376969, 0.925434,
		0.796153, 0.548166, 0.256230,
		-0.603882, 0.746598, 0.279137,
		35.338749, 30.100222, 39.160526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062614, 29.899384, 39.567528>,  <35.761467, 29.577602, 38.965130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062614, 29.899384, 39.567528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676579, 30.003454, 39.579575>,  <35.444958, 30.065897, 39.586803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676579, 30.003454, 39.579575>,  <36.062614, 29.899384, 39.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676579, 30.003454, 39.579575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052747, -0.305717, 0.950660,
		0.256547, 0.915885, 0.308768,
		-0.965091, 0.260175, 0.030121,
		35.387051, 30.081507, 39.588612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005840, 30.333391, 40.199421>,  <36.062614, 29.899384, 39.567528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005840, 30.333391, 40.199421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644470, 30.206337, 40.084229>,  <35.427650, 30.130104, 40.015114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644470, 30.206337, 40.084229>,  <36.005840, 30.333391, 40.199421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644470, 30.206337, 40.084229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195713, -0.292105, 0.936147,
		-0.381474, 0.902099, 0.201729,
		-0.903423, -0.317635, -0.287983,
		35.373444, 30.111046, 39.997833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573345, 30.567854, 40.732952>,  <36.005840, 30.333391, 40.199421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573345, 30.567854, 40.732952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382919, 30.266518, 40.551476>,  <35.268665, 30.085716, 40.442589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382919, 30.266518, 40.551476>,  <35.573345, 30.567854, 40.732952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382919, 30.266518, 40.551476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236638, -0.387138, 0.891137,
		-0.846974, 0.531601, 0.006033,
		-0.476065, -0.753342, -0.453693,
		35.240101, 30.040514, 40.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023869, 30.523085, 41.054668>,  <35.573345, 30.567854, 40.732952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023869, 30.523085, 41.054668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023796, 30.152950, 40.903011>,  <35.023754, 29.930870, 40.812016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023796, 30.152950, 40.903011>,  <35.023869, 30.523085, 41.054668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023796, 30.152950, 40.903011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252934, -0.366775, 0.895265,
		-0.967484, 0.096061, -0.233983,
		-0.000181, -0.925337, -0.379146,
		35.023743, 29.875349, 40.789268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350143, 30.207409, 41.328682>,  <35.023869, 30.523085, 41.054668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350143, 30.207409, 41.328682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598461, 29.922155, 41.198421>,  <34.747452, 29.751003, 41.120266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598461, 29.922155, 41.198421>,  <34.350143, 30.207409, 41.328682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598461, 29.922155, 41.198421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240662, -0.568682, 0.786563,
		-0.746118, -0.409925, -0.524662,
		0.620798, -0.713135, -0.325650,
		34.784702, 29.708216, 41.100727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010044, 29.671228, 41.305428>,  <34.350143, 30.207409, 41.328682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010044, 29.671228, 41.305428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389496, 29.553675, 41.352295>,  <34.617168, 29.483143, 41.380417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389496, 29.553675, 41.352295>,  <34.010044, 29.671228, 41.305428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389496, 29.553675, 41.352295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250307, -0.470647, 0.846072,
		-0.193501, -0.831940, -0.520032,
		0.948633, -0.293883, 0.117169,
		34.674088, 29.465509, 41.387447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023132, 28.956909, 41.584999>,  <34.010044, 29.671228, 41.305428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023132, 28.956909, 41.584999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405350, 29.050201, 41.657146>,  <34.634682, 29.106176, 41.700436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405350, 29.050201, 41.657146>,  <34.023132, 28.956909, 41.584999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405350, 29.050201, 41.657146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113699, -0.272942, 0.955288,
		0.272031, -0.933331, -0.234291,
		0.955548, 0.233229, 0.180368,
		34.692013, 29.120171, 41.711258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139030, 28.608980, 42.175739>,  <34.023132, 28.956909, 41.584999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139030, 28.608980, 42.175739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467827, 28.836588, 42.185074>,  <34.665104, 28.973152, 42.190674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467827, 28.836588, 42.185074>,  <34.139030, 28.608980, 42.175739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467827, 28.836588, 42.185074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021631, -0.072141, 0.997160,
		0.569088, -0.819153, -0.071608,
		0.821992, 0.569021, 0.023335,
		34.714424, 29.007294, 42.192074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554443, 28.258415, 42.609074>,  <34.139030, 28.608980, 42.175739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554443, 28.258415, 42.609074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650452, 28.646717, 42.606949>,  <34.708057, 28.879698, 42.605675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650452, 28.646717, 42.606949>,  <34.554443, 28.258415, 42.609074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650452, 28.646717, 42.606949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060735, -0.009555, 0.998108,
		0.968865, -0.239892, -0.061252,
		0.240024, 0.970752, -0.005312,
		34.722458, 28.937943, 42.605354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023655, 28.343948, 43.156155>,  <34.554443, 28.258415, 42.609074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023655, 28.343948, 43.156155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932106, 28.727442, 43.088692>,  <34.877174, 28.957539, 43.048214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932106, 28.727442, 43.088692>,  <35.023655, 28.343948, 43.156155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932106, 28.727442, 43.088692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080149, 0.191232, 0.978267,
		0.970150, 0.210385, -0.120610,
		-0.228877, 0.958733, -0.168662,
		34.863441, 29.015062, 43.038094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605438, 28.836586, 43.458492>,  <35.023655, 28.343948, 43.156155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605438, 28.836586, 43.458492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241203, 29.001072, 43.441868>,  <35.022663, 29.099764, 43.431892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241203, 29.001072, 43.441868>,  <35.605438, 28.836586, 43.458492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241203, 29.001072, 43.441868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097057, 0.310500, 0.945605,
		0.401752, 0.857026, -0.322650,
		-0.910591, 0.411214, -0.041563,
		34.968025, 29.124435, 43.429398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761612, 29.497421, 43.614517>,  <35.605438, 28.836586, 43.458492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761612, 29.497421, 43.614517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371876, 29.509497, 43.703728>,  <35.138035, 29.516743, 43.757256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371876, 29.509497, 43.703728>,  <35.761612, 29.497421, 43.614517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371876, 29.509497, 43.703728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193908, 0.615626, 0.763810,
		-0.114242, 0.787460, -0.605685,
		-0.974345, 0.030188, 0.223026,
		35.079571, 29.518553, 43.770634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673035, 30.180027, 43.883224>,  <35.761612, 29.497421, 43.614517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673035, 30.180027, 43.883224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375443, 29.944216, 44.009045>,  <35.196888, 29.802729, 44.084538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375443, 29.944216, 44.009045>,  <35.673035, 30.180027, 43.883224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375443, 29.944216, 44.009045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058684, 0.411284, 0.909616,
		-0.665616, 0.695199, -0.271392,
		-0.743984, -0.589529, 0.314554,
		35.152248, 29.767357, 44.103413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305916, 30.642792, 44.374424>,  <35.673035, 30.180027, 43.883224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305916, 30.642792, 44.374424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116180, 30.297745, 44.444729>,  <35.002338, 30.090717, 44.486912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116180, 30.297745, 44.444729>,  <35.305916, 30.642792, 44.374424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116180, 30.297745, 44.444729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160061, 0.280830, 0.946316,
		-0.865667, 0.420746, -0.271281,
		-0.474342, -0.862617, 0.175761,
		34.973877, 30.038960, 44.497456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667149, 30.813097, 44.624001>,  <35.305916, 30.642792, 44.374424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667149, 30.813097, 44.624001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759960, 30.453741, 44.773163>,  <34.815647, 30.238127, 44.862659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759960, 30.453741, 44.773163>,  <34.667149, 30.813097, 44.624001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759960, 30.453741, 44.773163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261710, 0.311572, 0.913472,
		-0.936840, -0.309547, -0.162823,
		0.232031, -0.898389, 0.372905,
		34.829571, 30.184225, 44.885033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042000, 30.617405, 44.995750>,  <34.667149, 30.813097, 44.624001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042000, 30.617405, 44.995750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360195, 30.426748, 45.145420>,  <34.551113, 30.312355, 45.235222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360195, 30.426748, 45.145420>,  <34.042000, 30.617405, 44.995750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360195, 30.426748, 45.145420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310354, 0.209880, 0.927163,
		-0.520457, -0.853676, 0.019030,
		0.795491, -0.476643, 0.374175,
		34.598843, 30.283756, 45.257671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661518, 30.249060, 45.430962>,  <34.042000, 30.617405, 44.995750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661518, 30.249060, 45.430962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047596, 30.267912, 45.533863>,  <34.279243, 30.279222, 45.595604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047596, 30.267912, 45.533863>,  <33.661518, 30.249060, 45.430962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047596, 30.267912, 45.533863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260918, 0.106036, 0.959520,
		0.017939, -0.993245, 0.114641,
		0.965194, 0.047125, 0.257253,
		34.337154, 30.282051, 45.611038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668221, 29.853050, 46.037876>,  <33.661518, 30.249060, 45.430962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668221, 29.853050, 46.037876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011768, 30.055859, 46.008846>,  <34.217899, 30.177544, 45.991428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011768, 30.055859, 46.008846>,  <33.668221, 29.853050, 46.037876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011768, 30.055859, 46.008846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174253, 0.422503, 0.889453,
		0.481637, -0.751279, 0.451226,
		0.858872, 0.507022, -0.072580,
		34.269432, 30.207964, 45.987072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935440, 29.703068, 46.671337>,  <33.668221, 29.853050, 46.037876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935440, 29.703068, 46.671337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117081, 30.037294, 46.547646>,  <34.226067, 30.237829, 46.473431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117081, 30.037294, 46.547646>,  <33.935440, 29.703068, 46.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117081, 30.037294, 46.547646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152698, 0.414934, 0.896947,
		0.877767, -0.360085, 0.316011,
		0.454101, 0.835565, -0.309231,
		34.253311, 30.287964, 46.454876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526474, 29.851963, 47.178940>,  <33.935440, 29.703068, 46.671337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526474, 29.851963, 47.178940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406975, 30.187410, 46.996742>,  <34.335278, 30.388678, 46.887424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406975, 30.187410, 46.996742>,  <34.526474, 29.851963, 47.178940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406975, 30.187410, 46.996742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031644, 0.468322, 0.882991,
		0.953808, 0.278203, -0.113372,
		-0.298746, 0.838617, -0.455492,
		34.317352, 30.438995, 46.860096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948601, 30.220818, 47.526817>,  <34.526474, 29.851963, 47.178940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948601, 30.220818, 47.526817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668858, 30.455593, 47.363647>,  <34.501011, 30.596458, 47.265747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668858, 30.455593, 47.363647>,  <34.948601, 30.220818, 47.526817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668858, 30.455593, 47.363647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136015, 0.450993, 0.882103,
		0.701711, 0.672389, -0.235573,
		-0.699358, 0.586940, -0.407922,
		34.459049, 30.631676, 47.241272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163460, 30.883146, 47.600952>,  <34.948601, 30.220818, 47.526817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163460, 30.883146, 47.600952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766037, 30.880892, 47.555687>,  <34.527584, 30.879539, 47.528526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766037, 30.880892, 47.555687>,  <35.163460, 30.883146, 47.600952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766037, 30.880892, 47.555687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096534, 0.565004, 0.819421,
		0.059318, 0.825069, -0.561910,
		-0.993561, -0.005637, -0.113162,
		34.467968, 30.879200, 47.521740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026043, 31.616407, 47.636185>,  <35.163460, 30.883146, 47.600952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026043, 31.616407, 47.636185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736206, 31.357634, 47.731209>,  <34.562302, 31.202370, 47.788223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736206, 31.357634, 47.731209>,  <35.026043, 31.616407, 47.636185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736206, 31.357634, 47.731209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213613, 0.538555, 0.815063,
		-0.655233, 0.539845, -0.528429,
		-0.724596, -0.646936, 0.237561,
		34.518826, 31.163553, 47.802479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483196, 32.248661, 47.675625>,  <35.026043, 31.616407, 47.636185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483196, 32.248661, 47.675625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785820, 32.510216, 47.678509>,  <35.967396, 32.667149, 47.680241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785820, 32.510216, 47.678509>,  <35.483196, 32.248661, 47.675625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785820, 32.510216, 47.678509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150054, 0.184328, -0.971343,
		-0.636474, 0.733799, 0.237573,
		0.756561, 0.653883, 0.007210,
		36.012787, 32.706379, 47.680672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337700, 32.838448, 47.235611>,  <35.483196, 32.248661, 47.675625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337700, 32.838448, 47.235611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735638, 32.807678, 47.262058>,  <35.974400, 32.789215, 47.277927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735638, 32.807678, 47.262058>,  <35.337700, 32.838448, 47.235611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735638, 32.807678, 47.262058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066246, -0.000893, -0.997803,
		0.076813, 0.997037, 0.004207,
		0.994842, -0.076923, 0.066118,
		36.034092, 32.784603, 47.281895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672268, 33.425129, 46.850712>,  <35.337700, 32.838448, 47.235611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672268, 33.425129, 46.850712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939457, 33.131241, 46.898045>,  <36.099770, 32.954910, 46.926445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939457, 33.131241, 46.898045>,  <35.672268, 33.425129, 46.850712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939457, 33.131241, 46.898045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128525, -0.042719, -0.990786,
		0.733003, 0.677026, 0.065895,
		0.667973, -0.734718, 0.118328,
		36.139851, 32.910824, 46.933544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403122, 33.655685, 46.688381>,  <35.672268, 33.425129, 46.850712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403122, 33.655685, 46.688381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358578, 33.262493, 46.629944>,  <36.331852, 33.026577, 46.594883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358578, 33.262493, 46.629944>,  <36.403122, 33.655685, 46.688381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358578, 33.262493, 46.629944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294696, 0.107730, -0.949499,
		0.949080, -0.148794, 0.277684,
		-0.111365, -0.982983, -0.146093,
		36.325169, 32.967598, 46.586117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970562, 33.476341, 46.286423>,  <36.403122, 33.655685, 46.688381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970562, 33.476341, 46.286423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723927, 33.167286, 46.225964>,  <36.575947, 32.981853, 46.189686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723927, 33.167286, 46.225964>,  <36.970562, 33.476341, 46.286423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723927, 33.167286, 46.225964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227453, 0.008981, -0.973748,
		0.753716, -0.634779, 0.170202,
		-0.616586, -0.772642, -0.151152,
		36.538952, 32.935493, 46.180618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117279, 33.261669, 45.651989>,  <36.970562, 33.476341, 46.286423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117279, 33.261669, 45.651989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790855, 33.038231, 45.711338>,  <36.595001, 32.904167, 45.746948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790855, 33.038231, 45.711338>,  <37.117279, 33.261669, 45.651989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790855, 33.038231, 45.711338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064733, -0.166759, -0.983871,
		0.574327, -0.812505, 0.099926,
		-0.816063, -0.558595, 0.148370,
		36.546036, 32.870651, 45.755848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198402, 32.538418, 45.415867>,  <37.117279, 33.261669, 45.651989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198402, 32.538418, 45.415867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807785, 32.623928, 45.405567>,  <36.573414, 32.675236, 45.399387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807785, 32.623928, 45.405567>,  <37.198402, 32.538418, 45.415867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807785, 32.623928, 45.405567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050257, -0.342587, -0.938141,
		-0.209375, -0.914840, 0.345295,
		-0.976543, 0.213777, -0.025752,
		36.514824, 32.688061, 45.397842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941765, 32.101517, 45.013653>,  <37.198402, 32.538418, 45.415867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941765, 32.101517, 45.013653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646469, 32.371067, 45.001667>,  <36.469292, 32.532799, 44.994476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646469, 32.371067, 45.001667>,  <36.941765, 32.101517, 45.013653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646469, 32.371067, 45.001667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006266, -0.051275, -0.998665,
		-0.674515, -0.737062, 0.042075,
		-0.738235, 0.673878, -0.029967,
		36.424999, 32.573231, 44.992676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443138, 31.875458, 44.560337>,  <36.941765, 32.101517, 45.013653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443138, 31.875458, 44.560337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377159, 32.269650, 44.576466>,  <36.337570, 32.506165, 44.586143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377159, 32.269650, 44.576466>,  <36.443138, 31.875458, 44.560337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377159, 32.269650, 44.576466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214943, 0.003986, -0.976619,
		-0.962597, -0.169757, 0.211164,
		-0.164946, 0.985478, 0.040325,
		36.327675, 32.565292, 44.588562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758137, 31.987942, 44.217072>,  <36.443138, 31.875458, 44.560337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758137, 31.987942, 44.217072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930447, 32.348694, 44.204102>,  <36.033833, 32.565144, 44.196320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930447, 32.348694, 44.204102>,  <35.758137, 31.987942, 44.217072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930447, 32.348694, 44.204102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312969, 0.115591, -0.942703,
		-0.846456, 0.416237, 0.332053,
		0.430770, 0.901879, -0.032427,
		36.059677, 32.619259, 44.194374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349831, 32.433498, 43.846416>,  <35.758137, 31.987942, 44.217072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349831, 32.433498, 43.846416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691830, 32.638412, 43.814072>,  <35.897030, 32.761360, 43.794662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691830, 32.638412, 43.814072>,  <35.349831, 32.433498, 43.846416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691830, 32.638412, 43.814072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207472, 0.194943, -0.958620,
		-0.475326, 0.836395, 0.272962,
		0.854997, 0.512289, -0.080867,
		35.948330, 32.792099, 43.789810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166653, 33.096737, 43.457439>,  <35.349831, 32.433498, 43.846416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166653, 33.096737, 43.457439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553219, 33.017620, 43.391815>,  <35.785160, 32.970150, 43.352440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553219, 33.017620, 43.391815>,  <35.166653, 33.096737, 43.457439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553219, 33.017620, 43.391815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126920, 0.187742, -0.973984,
		0.223447, 0.962098, 0.156333,
		0.966418, -0.197792, -0.164060,
		35.843143, 32.958282, 43.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368378, 33.512589, 42.885143>,  <35.166653, 33.096737, 43.457439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368378, 33.512589, 42.885143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648258, 33.226864, 42.879917>,  <35.816189, 33.055428, 42.876781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648258, 33.226864, 42.879917>,  <35.368378, 33.512589, 42.885143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648258, 33.226864, 42.879917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001312, 0.017000, -0.999855,
		0.714430, 0.699621, 0.010958,
		0.699705, -0.714312, -0.013063,
		35.858170, 33.012569, 42.875999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756100, 33.693073, 42.303982>,  <35.368378, 33.512589, 42.885143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756100, 33.693073, 42.303982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889053, 33.328056, 42.399300>,  <35.968826, 33.109047, 42.456490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889053, 33.328056, 42.399300>,  <35.756100, 33.693073, 42.303982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889053, 33.328056, 42.399300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381675, -0.100904, -0.918772,
		0.862465, 0.396335, 0.314757,
		0.332381, -0.912544, 0.238297,
		35.988770, 33.054295, 42.470787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344929, 33.730740, 42.047314>,  <35.756100, 33.693073, 42.303982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344929, 33.730740, 42.047314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269470, 33.340515, 42.092365>,  <36.224194, 33.106380, 42.119396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269470, 33.340515, 42.092365>,  <36.344929, 33.730740, 42.047314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269470, 33.340515, 42.092365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358548, -0.175193, -0.916925,
		0.914251, -0.132593, 0.382837,
		-0.188648, -0.975565, 0.112630,
		36.212875, 33.047844, 42.126156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890007, 33.303963, 41.735081>,  <36.344929, 33.730740, 42.047314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890007, 33.303963, 41.735081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544861, 33.102207, 41.748070>,  <36.337772, 32.981152, 41.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544861, 33.102207, 41.748070>,  <36.890007, 33.303963, 41.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544861, 33.102207, 41.748070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047043, -0.144116, -0.988442,
		0.503242, -0.851363, 0.148081,
		-0.862864, -0.504392, 0.032474,
		36.286003, 32.950890, 41.757812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104507, 32.811253, 41.375908>,  <36.890007, 33.303963, 41.735081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104507, 32.811253, 41.375908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705650, 32.781590, 41.370037>,  <36.466335, 32.763790, 41.366512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705650, 32.781590, 41.370037>,  <37.104507, 32.811253, 41.375908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705650, 32.781590, 41.370037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041334, -0.372217, -0.927225,
		0.063301, -0.925178, 0.374217,
		-0.997139, -0.074162, -0.014679,
		36.406509, 32.759342, 41.365635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994198, 32.211494, 41.162399>,  <37.104507, 32.811253, 41.375908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994198, 32.211494, 41.162399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664303, 32.420330, 41.075470>,  <36.466366, 32.545631, 41.023312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664303, 32.420330, 41.075470>,  <36.994198, 32.211494, 41.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664303, 32.420330, 41.075470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089658, -0.258711, -0.961785,
		-0.558359, -0.812707, 0.166560,
		-0.824740, 0.522088, -0.217319,
		36.416882, 32.576958, 41.010273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756886, 31.797163, 40.689205>,  <36.994198, 32.211494, 41.162399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756886, 31.797163, 40.689205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563667, 32.139339, 40.614498>,  <36.447735, 32.344646, 40.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563667, 32.139339, 40.614498>,  <36.756886, 31.797163, 40.689205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563667, 32.139339, 40.614498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017140, -0.222498, -0.974782,
		-0.875425, -0.467667, 0.122140,
		-0.483049, 0.855442, -0.186765,
		36.418751, 32.395973, 40.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330540, 31.667875, 40.112171>,  <36.756886, 31.797163, 40.689205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330540, 31.667875, 40.112171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304790, 32.066933, 40.102688>,  <36.289341, 32.306366, 40.096996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304790, 32.066933, 40.102688>,  <36.330540, 31.667875, 40.112171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304790, 32.066933, 40.102688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023595, -0.025277, -0.999402,
		-0.997647, -0.063772, 0.025167,
		-0.064370, 0.997645, -0.023713,
		36.285480, 32.366226, 40.095573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797146, 31.868721, 39.684204>,  <36.330540, 31.667875, 40.112171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797146, 31.868721, 39.684204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048683, 32.179455, 39.697372>,  <36.199604, 32.365894, 39.705273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048683, 32.179455, 39.697372>,  <35.797146, 31.868721, 39.684204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048683, 32.179455, 39.697372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099908, -0.038741, -0.994242,
		-0.771087, 0.628511, -0.101974,
		0.628843, 0.776835, 0.032920,
		36.237335, 32.412506, 39.707249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503098, 32.274681, 39.163742>,  <35.797146, 31.868721, 39.684204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503098, 32.274681, 39.163742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866737, 32.438023, 39.196678>,  <36.084923, 32.536026, 39.216438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866737, 32.438023, 39.196678>,  <35.503098, 32.274681, 39.163742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866737, 32.438023, 39.196678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094712, -0.010135, -0.995453,
		-0.405662, 0.912768, -0.047889,
		0.909103, 0.408353, 0.082339,
		36.139469, 32.560528, 39.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510574, 32.705639, 38.633678>,  <35.503098, 32.274681, 39.163742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510574, 32.705639, 38.633678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895466, 32.644821, 38.724010>,  <36.126400, 32.608330, 38.778210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895466, 32.644821, 38.724010>,  <35.510574, 32.705639, 38.633678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895466, 32.644821, 38.724010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243662, 0.110969, -0.963491,
		0.121431, 0.982125, 0.143824,
		0.962228, -0.152042, 0.225832,
		36.184135, 32.599209, 38.791759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832108, 33.188362, 38.196480>,  <35.510574, 32.705639, 38.633678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832108, 33.188362, 38.196480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123592, 32.946495, 38.325077>,  <36.298481, 32.801373, 38.402233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123592, 32.946495, 38.325077>,  <35.832108, 33.188362, 38.196480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123592, 32.946495, 38.325077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445429, 0.061920, -0.893173,
		0.520171, 0.794064, 0.314460,
		0.728708, -0.604672, 0.321490,
		36.342205, 32.765095, 38.421524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473763, 33.442497, 37.989178>,  <35.832108, 33.188362, 38.196480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473763, 33.442497, 37.989178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535278, 33.050163, 38.037025>,  <36.572186, 32.814762, 38.065735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535278, 33.050163, 38.037025>,  <36.473763, 33.442497, 37.989178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535278, 33.050163, 38.037025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601687, -0.003075, -0.798726,
		0.783788, 0.194809, 0.589683,
		0.153786, -0.980836, 0.119624,
		36.581413, 32.755913, 38.072914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197071, 33.350716, 38.024952>,  <36.473763, 33.442497, 37.989178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197071, 33.350716, 38.024952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040920, 32.998802, 37.916443>,  <36.947231, 32.787655, 37.851337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040920, 32.998802, 37.916443>,  <37.197071, 33.350716, 38.024952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040920, 32.998802, 37.916443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622676, -0.035266, -0.781685,
		0.678145, -0.474067, 0.561586,
		-0.390376, -0.879782, -0.271275,
		36.923809, 32.734867, 37.835060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746284, 32.909229, 37.852665>,  <37.197071, 33.350716, 38.024952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746284, 32.909229, 37.852665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430626, 32.755074, 37.661366>,  <37.241230, 32.662579, 37.546585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430626, 32.755074, 37.661366>,  <37.746284, 32.909229, 37.852665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430626, 32.755074, 37.661366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530644, -0.035694, -0.846843,
		0.309293, -0.922063, 0.232673,
		-0.789148, -0.385389, -0.478247,
		37.193882, 32.639458, 37.517891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997700, 32.273689, 37.551750>,  <37.746284, 32.909229, 37.852665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997700, 32.273689, 37.551750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682228, 32.378452, 37.329258>,  <37.492947, 32.441311, 37.195763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682228, 32.378452, 37.329258>,  <37.997700, 32.273689, 37.551750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682228, 32.378452, 37.329258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551309, -0.099159, -0.828387,
		-0.272119, -0.959985, -0.066189,
		-0.788676, 0.261910, -0.556231,
		37.445625, 32.457024, 37.162388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996365, 31.763062, 36.999149>,  <37.997700, 32.273689, 37.551750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996365, 31.763062, 36.999149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787445, 32.083385, 36.881905>,  <37.662094, 32.275581, 36.811558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787445, 32.083385, 36.881905>,  <37.996365, 31.763062, 36.999149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787445, 32.083385, 36.881905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548958, 0.052708, -0.834186,
		-0.652574, -0.596597, -0.467139,
		-0.522295, 0.800808, -0.293110,
		37.630756, 32.323627, 36.793972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865005, 31.679810, 36.279213>,  <37.996365, 31.763062, 36.999149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865005, 31.679810, 36.279213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830261, 32.069523, 36.362381>,  <37.809414, 32.303349, 36.412281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830261, 32.069523, 36.362381>,  <37.865005, 31.679810, 36.279213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830261, 32.069523, 36.362381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665011, 0.212106, -0.716080,
		-0.741765, 0.076076, -0.666331,
		-0.086857, 0.974281, 0.207924,
		37.804203, 32.361809, 36.424759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961483, 31.979126, 35.609333>,  <37.865005, 31.679810, 36.279213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961483, 31.979126, 35.609333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977730, 32.291187, 35.859039>,  <37.987476, 32.478424, 36.008865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977730, 32.291187, 35.859039>,  <37.961483, 31.979126, 35.609333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977730, 32.291187, 35.859039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502061, 0.524247, -0.687823,
		-0.863878, 0.341358, -0.370391,
		0.040618, 0.780154, 0.624268,
		37.989914, 32.525234, 36.046318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756367, 32.557835, 35.166840>,  <37.961483, 31.979126, 35.609333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756367, 32.557835, 35.166840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959152, 32.691277, 35.484756>,  <38.080826, 32.771343, 35.675507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959152, 32.691277, 35.484756>,  <37.756367, 32.557835, 35.166840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959152, 32.691277, 35.484756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585600, 0.543303, -0.601576,
		-0.632501, 0.770409, 0.080077,
		0.506966, 0.333605, 0.794791,
		38.111240, 32.791359, 35.723194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836979, 33.243366, 35.064606>,  <37.756367, 32.557835, 35.166840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836979, 33.243366, 35.064606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141075, 33.119686, 35.293140>,  <38.323532, 33.045479, 35.430264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141075, 33.119686, 35.293140>,  <37.836979, 33.243366, 35.064606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141075, 33.119686, 35.293140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649540, 0.377311, -0.660102,
		-0.011467, 0.872944, 0.487686,
		0.760241, -0.309202, 0.571339,
		38.369148, 33.026924, 35.464542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318520, 33.746872, 35.009918>,  <37.836979, 33.243366, 35.064606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318520, 33.746872, 35.009918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546181, 33.454521, 35.160591>,  <38.682777, 33.279110, 35.250996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546181, 33.454521, 35.160591>,  <38.318520, 33.746872, 35.009918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546181, 33.454521, 35.160591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804579, 0.400626, -0.438351,
		0.169473, 0.552556, 0.816064,
		0.569150, -0.730877, 0.376679,
		38.716927, 33.235260, 35.273594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976135, 34.046310, 35.181286>,  <38.318520, 33.746872, 35.009918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976135, 34.046310, 35.181286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045284, 33.655315, 35.132893>,  <39.086773, 33.420719, 35.103859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045284, 33.655315, 35.132893>,  <38.976135, 34.046310, 35.181286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045284, 33.655315, 35.132893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832925, 0.210641, -0.511728,
		0.525691, -0.012304, 0.850587,
		0.172872, -0.977486, -0.120981,
		39.097145, 33.362068, 35.096600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599724, 33.946518, 35.500923>,  <38.976135, 34.046310, 35.181286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599724, 33.946518, 35.500923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538834, 33.654564, 35.234364>,  <39.502300, 33.479389, 35.074429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538834, 33.654564, 35.234364>,  <39.599724, 33.946518, 35.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538834, 33.654564, 35.234364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874068, 0.215310, -0.435486,
		0.461339, -0.648770, 0.605197,
		-0.152225, -0.729890, -0.666400,
		39.493168, 33.435596, 35.034443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161491, 33.533573, 35.458809>,  <39.599724, 33.946518, 35.500923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161491, 33.533573, 35.458809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985939, 33.462811, 35.106426>,  <39.880608, 33.420353, 34.894997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985939, 33.462811, 35.106426>,  <40.161491, 33.533573, 35.458809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985939, 33.462811, 35.106426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860630, 0.199037, -0.468722,
		0.258262, -0.963893, 0.064895,
		-0.438882, -0.176904, -0.880959,
		39.854275, 33.409740, 34.842140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650448, 33.180668, 35.104511>,  <40.161491, 33.533573, 35.458809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650448, 33.180668, 35.104511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417522, 33.339794, 34.820919>,  <40.277767, 33.435272, 34.650764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417522, 33.339794, 34.820919>,  <40.650448, 33.180668, 35.104511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417522, 33.339794, 34.820919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812840, 0.269561, -0.516360,
		-0.014305, -0.876969, -0.480333,
		-0.582311, 0.397821, -0.708980,
		40.242828, 33.459141, 34.608227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836330, 33.938766, 34.979095>,  <40.650448, 33.180668, 35.104511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836330, 33.938766, 34.979095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839775, 34.332508, 35.049492>,  <40.841843, 34.568752, 35.091728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839775, 34.332508, 35.049492>,  <40.836330, 33.938766, 34.979095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839775, 34.332508, 35.049492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973938, -0.048150, 0.221643,
		0.226649, 0.169496, -0.959115,
		0.008614, 0.984354, 0.175991,
		40.842358, 34.627815, 35.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296898, 34.341183, 34.502178>,  <40.836330, 33.938766, 34.979095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296898, 34.341183, 34.502178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256084, 34.436237, 34.888569>,  <41.231598, 34.493271, 35.120403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256084, 34.436237, 34.888569>,  <41.296898, 34.341183, 34.502178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256084, 34.436237, 34.888569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970386, -0.189951, 0.149228,
		0.218951, 0.952601, -0.211214,
		-0.102034, 0.237632, 0.965981,
		41.225475, 34.507526, 35.178364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663132, 34.924522, 34.702923>,  <41.296898, 34.341183, 34.502178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663132, 34.924522, 34.702923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603992, 34.626064, 34.962585>,  <41.568508, 34.446987, 35.118382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603992, 34.626064, 34.962585>,  <41.663132, 34.924522, 34.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603992, 34.626064, 34.962585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969195, -0.240037, -0.055163,
		0.196981, 0.621004, 0.758652,
		-0.147848, -0.746148, 0.649157,
		41.559639, 34.402222, 35.157333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113167, 34.935776, 35.264866>,  <41.663132, 34.924522, 34.702923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113167, 34.935776, 35.264866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009773, 34.567635, 35.147472>,  <41.947735, 34.346748, 35.077038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009773, 34.567635, 35.147472>,  <42.113167, 34.935776, 35.264866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009773, 34.567635, 35.147472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943944, -0.176071, -0.279230,
		0.205316, -0.349208, 0.914275,
		-0.258487, -0.920355, -0.293482,
		41.932228, 34.291527, 35.059429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501648, 34.348824, 35.546719>,  <42.113167, 34.935776, 35.264866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501648, 34.348824, 35.546719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401321, 34.239685, 35.175201>,  <42.341125, 34.174202, 34.952293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401321, 34.239685, 35.175201>,  <42.501648, 34.348824, 35.546719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401321, 34.239685, 35.175201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931359, -0.329612, -0.154682,
		-0.263936, -0.903832, 0.336787,
		-0.250815, -0.272843, -0.928789,
		42.326077, 34.157833, 34.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903301, 33.726624, 35.352795>,  <42.501648, 34.348824, 35.546719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903301, 33.726624, 35.352795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835995, 33.917469, 35.007763>,  <42.795612, 34.031979, 34.800743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835995, 33.917469, 35.007763>,  <42.903301, 33.726624, 35.352795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835995, 33.917469, 35.007763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876212, -0.328493, -0.352625,
		-0.451595, -0.815140, -0.362780,
		-0.168267, 0.477116, -0.862581,
		42.785515, 34.060604, 34.748989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981754, 33.290291, 34.882000>,  <42.903301, 33.726624, 35.352795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981754, 33.290291, 34.882000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025055, 33.630733, 34.676514>,  <43.051033, 33.834999, 34.553223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025055, 33.630733, 34.676514>,  <42.981754, 33.290291, 34.882000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025055, 33.630733, 34.676514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874394, -0.327374, -0.358135,
		-0.472987, -0.410419, -0.779640,
		0.108249, 0.851106, -0.513712,
		43.057529, 33.886066, 34.522400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596733, 33.154484, 34.304947>,  <42.981754, 33.290291, 34.882000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596733, 33.154484, 34.304947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916798, 33.387356, 34.362659>,  <43.108837, 33.527081, 34.397285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916798, 33.387356, 34.362659>,  <42.596733, 33.154484, 34.304947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916798, 33.387356, 34.362659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152777, 0.034785, -0.987648,
		-0.580007, 0.812316, -0.061110,
		0.800157, 0.582179, 0.144278,
		43.156845, 33.562008, 34.405941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550747, 33.618176, 33.726345>,  <42.596733, 33.154484, 34.304947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550747, 33.618176, 33.726345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930305, 33.607437, 33.852119>,  <43.158043, 33.600994, 33.927582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930305, 33.607437, 33.852119>,  <42.550747, 33.618176, 33.726345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930305, 33.607437, 33.852119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313967, -0.020196, -0.949219,
		0.031834, 0.999436, -0.010735,
		0.948900, -0.026847, 0.314433,
		43.214977, 33.599384, 33.946449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918491, 34.259140, 33.470524>,  <42.550747, 33.618176, 33.726345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918491, 34.259140, 33.470524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190147, 33.968979, 33.515350>,  <43.353142, 33.794884, 33.542244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190147, 33.968979, 33.515350>,  <42.918491, 34.259140, 33.470524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190147, 33.968979, 33.515350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327412, 0.162745, -0.930761,
		0.656940, 0.668807, 0.348032,
		0.679140, -0.725404, 0.112062,
		43.393890, 33.751358, 33.548969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617489, 34.429958, 33.083363>,  <42.918491, 34.259140, 33.470524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617489, 34.429958, 33.083363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640709, 34.033665, 33.132477>,  <43.654640, 33.795887, 33.161945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640709, 34.033665, 33.132477>,  <43.617489, 34.429958, 33.083363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640709, 34.033665, 33.132477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344978, -0.095504, -0.933739,
		0.936814, 0.096561, 0.336238,
		0.058051, -0.990735, 0.122781,
		43.658123, 33.736443, 33.169312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263382, 34.268810, 32.972336>,  <43.617489, 34.429958, 33.083363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263382, 34.268810, 32.972336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074776, 33.922417, 32.905716>,  <43.961613, 33.714581, 32.865742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074776, 33.922417, 32.905716>,  <44.263382, 34.268810, 32.972336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074776, 33.922417, 32.905716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601642, -0.177817, -0.778722,
		0.644746, -0.467388, 0.604857,
		-0.471519, -0.865985, -0.166554,
		43.933319, 33.662621, 32.855751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786297, 33.896461, 32.618965>,  <44.263382, 34.268810, 32.972336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786297, 33.896461, 32.618965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448895, 33.711174, 32.510208>,  <44.246452, 33.600002, 32.444954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448895, 33.711174, 32.510208>,  <44.786297, 33.896461, 32.618965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448895, 33.711174, 32.510208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381240, -0.159758, -0.910568,
		0.378358, -0.871724, 0.311355,
		-0.843506, -0.463221, -0.271890,
		44.195843, 33.572208, 32.428642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971786, 33.202343, 32.375729>,  <44.786297, 33.896461, 32.618965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971786, 33.202343, 32.375729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617588, 33.305710, 32.221264>,  <44.405067, 33.367729, 32.128586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617588, 33.305710, 32.221264>,  <44.971786, 33.202343, 32.375729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617588, 33.305710, 32.221264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271146, -0.387526, -0.881081,
		-0.377335, -0.884898, 0.273083,
		-0.885493, 0.258417, -0.386164,
		44.351940, 33.383232, 32.105415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645588, 32.603584, 32.070881>,  <44.971786, 33.202343, 32.375729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645588, 32.603584, 32.070881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495895, 32.933926, 31.902163>,  <44.406078, 33.132130, 31.800930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.495895, 32.933926, 31.902163>,  <44.645588, 32.603584, 32.070881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495895, 32.933926, 31.902163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228603, -0.358655, -0.905045,
		-0.898717, -0.435121, -0.054573,
		-0.374231, 0.825855, -0.421799,
		44.383625, 33.181683, 31.775623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284363, 32.379860, 31.560312>,  <44.645588, 32.603584, 32.070881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284363, 32.379860, 31.560312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333824, 32.770615, 31.490562>,  <44.363503, 33.005066, 31.448713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333824, 32.770615, 31.490562>,  <44.284363, 32.379860, 31.560312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333824, 32.770615, 31.490562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046269, -0.181208, -0.982356,
		-0.991246, 0.113406, -0.067607,
		0.123656, 0.976884, -0.174375,
		44.370922, 33.063679, 31.438250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637856, 32.589622, 31.089792>,  <44.284363, 32.379860, 31.560312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637856, 32.589622, 31.089792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932018, 32.860119, 31.072515>,  <44.108517, 33.022419, 31.062149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932018, 32.860119, 31.072515>,  <43.637856, 32.589622, 31.089792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932018, 32.860119, 31.072515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070271, -0.139506, -0.987725,
		-0.673969, 0.723347, -0.150114,
		0.735410, 0.676245, -0.043193,
		44.152641, 33.062992, 31.059557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476162, 32.983063, 30.510468>,  <43.637856, 32.589622, 31.089792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476162, 32.983063, 30.510468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859081, 33.080433, 30.572847>,  <44.088833, 33.138855, 30.610275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859081, 33.080433, 30.572847>,  <43.476162, 32.983063, 30.510468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859081, 33.080433, 30.572847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148127, 0.050231, -0.987692,
		-0.248264, 0.968618, 0.012028,
		0.957300, 0.243427, 0.155949,
		44.146271, 33.153461, 30.619633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518406, 33.574516, 30.211744>,  <43.476162, 32.983063, 30.510468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518406, 33.574516, 30.211744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877472, 33.399239, 30.230396>,  <44.092911, 33.294071, 30.241587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877472, 33.399239, 30.230396>,  <43.518406, 33.574516, 30.211744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877472, 33.399239, 30.230396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115810, 0.132489, -0.984396,
		0.425182, 0.889061, 0.169679,
		0.897668, -0.438198, 0.046630,
		44.146774, 33.267780, 30.244385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016754, 34.061806, 29.774818>,  <43.518406, 33.574516, 30.211744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016754, 34.061806, 29.774818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180454, 33.698776, 29.812386>,  <44.278675, 33.480957, 29.834925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180454, 33.698776, 29.812386>,  <44.016754, 34.061806, 29.774818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180454, 33.698776, 29.812386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185306, -0.018112, -0.982514,
		0.893408, 0.419494, 0.160767,
		0.409247, -0.907577, 0.093916,
		44.303226, 33.426502, 29.840561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603657, 34.046543, 29.409348>,  <44.016754, 34.061806, 29.774818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603657, 34.046543, 29.409348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515839, 33.656342, 29.403936>,  <44.463146, 33.422218, 29.400690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515839, 33.656342, 29.403936>,  <44.603657, 34.046543, 29.409348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515839, 33.656342, 29.403936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462102, -0.091767, -0.882066,
		0.859221, -0.199906, 0.470931,
		-0.219546, -0.975509, -0.013529,
		44.449974, 33.363689, 29.399878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223297, 33.693577, 29.205908>,  <44.603657, 34.046543, 29.409348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223297, 33.693577, 29.205908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916695, 33.444668, 29.142361>,  <44.732731, 33.295322, 29.104233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916695, 33.444668, 29.142361>,  <45.223297, 33.693577, 29.205908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916695, 33.444668, 29.142361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284098, -0.106690, -0.952841,
		0.575978, -0.775496, 0.258565,
		-0.766510, -0.622273, -0.158866,
		44.686741, 33.257984, 29.094702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493858, 33.235382, 28.592237>,  <45.223297, 33.693577, 29.205908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493858, 33.235382, 28.592237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105068, 33.141888, 28.602318>,  <44.871796, 33.085793, 28.608366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105068, 33.141888, 28.602318>,  <45.493858, 33.235382, 28.592237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105068, 33.141888, 28.602318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014259, -0.165620, -0.986087,
		0.234658, -0.958091, 0.164311,
		-0.971973, -0.233736, 0.025203,
		44.813477, 33.071766, 28.609879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420570, 32.606022, 28.255363>,  <45.493858, 33.235382, 28.592237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420570, 32.606022, 28.255363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063038, 32.779583, 28.210136>,  <44.848518, 32.883720, 28.183001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063038, 32.779583, 28.210136>,  <45.420570, 32.606022, 28.255363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063038, 32.779583, 28.210136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009765, -0.233261, -0.972365,
		-0.448288, -0.870239, 0.204260,
		-0.893836, 0.433905, -0.113066,
		44.794888, 32.909756, 28.176216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051762, 32.137848, 27.805910>,  <45.420570, 32.606022, 28.255363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051762, 32.137848, 27.805910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883423, 32.500526, 27.794647>,  <44.782417, 32.718132, 27.787889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883423, 32.500526, 27.794647>,  <45.051762, 32.137848, 27.805910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883423, 32.500526, 27.794647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083470, -0.069615, -0.994076,
		-0.903282, -0.416005, 0.104979,
		-0.420849, 0.906694, -0.028158,
		44.757168, 32.772533, 27.786200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535126, 32.075359, 27.317415>,  <45.051762, 32.137848, 27.805910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535126, 32.075359, 27.317415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599770, 32.470047, 27.323925>,  <44.638557, 32.706860, 27.327831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599770, 32.470047, 27.323925>,  <44.535126, 32.075359, 27.317415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599770, 32.470047, 27.323925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108965, -0.001454, -0.994044,
		-0.980820, 0.162423, -0.107753,
		0.161613, 0.986720, 0.016272,
		44.648254, 32.766064, 27.328806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024384, 32.379738, 26.978878>,  <44.535126, 32.075359, 27.317415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024384, 32.379738, 26.978878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337929, 32.627991, 26.971134>,  <44.526054, 32.776943, 26.966488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337929, 32.627991, 26.971134>,  <44.024384, 32.379738, 26.978878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337929, 32.627991, 26.971134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083191, -0.135867, -0.987228,
		-0.615336, 0.772241, -0.158132,
		0.783863, 0.620632, -0.019361,
		44.573086, 32.814182, 26.965326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913910, 32.798164, 26.382318>,  <44.024384, 32.379738, 26.978878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913910, 32.798164, 26.382318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299530, 32.863003, 26.466545>,  <44.530903, 32.901905, 26.517080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299530, 32.863003, 26.466545>,  <43.913910, 32.798164, 26.382318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299530, 32.863003, 26.466545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219245, -0.037449, -0.974951,
		-0.150153, 0.986064, -0.071642,
		0.964046, 0.162099, 0.210566,
		44.588745, 32.911633, 26.529715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232227, 33.335140, 26.194183>,  <43.913910, 32.798164, 26.382318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232227, 33.335140, 26.194183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531483, 33.069759, 26.198494>,  <44.711037, 32.910530, 26.201080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531483, 33.069759, 26.198494>,  <44.232227, 33.335140, 26.194183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531483, 33.069759, 26.198494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077170, 0.070865, -0.994496,
		0.659035, 0.744857, 0.104216,
		0.748143, -0.663450, 0.010778,
		44.755924, 32.870724, 26.201727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780060, 33.686935, 25.947416>,  <44.232227, 33.335140, 26.194183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780060, 33.686935, 25.947416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892281, 33.307632, 25.887966>,  <44.959614, 33.080048, 25.852295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892281, 33.307632, 25.887966>,  <44.780060, 33.686935, 25.947416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892281, 33.307632, 25.887966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164335, 0.200013, -0.965913,
		0.945666, 0.246564, 0.211947,
		0.280551, -0.948262, -0.148627,
		44.976444, 33.023155, 25.843378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530846, 33.488941, 25.917418>,  <44.780060, 33.686935, 25.947416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530846, 33.488941, 25.917418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272312, 33.304882, 25.673939>,  <45.117191, 33.194447, 25.527851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272312, 33.304882, 25.673939>,  <45.530846, 33.488941, 25.917418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272312, 33.304882, 25.673939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425481, 0.444850, -0.788082,
		0.633414, -0.768356, -0.091738,
		-0.646337, -0.460149, -0.608696,
		45.078411, 33.166836, 25.491329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834888, 33.174774, 25.302303>,  <45.530846, 33.488941, 25.917418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834888, 33.174774, 25.302303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462521, 33.319923, 25.285795>,  <45.239098, 33.407013, 25.275890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462521, 33.319923, 25.285795>,  <45.834888, 33.174774, 25.302303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462521, 33.319923, 25.285795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237351, 0.515235, -0.823527,
		-0.277574, -0.776436, -0.565773,
		-0.930923, 0.362877, -0.041272,
		45.183243, 33.428787, 25.273413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552120, 32.933151, 24.759964>,  <45.834888, 33.174774, 25.302303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552120, 32.933151, 24.759964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428791, 33.298649, 24.865807>,  <45.354794, 33.517948, 24.929312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428791, 33.298649, 24.865807>,  <45.552120, 32.933151, 24.759964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428791, 33.298649, 24.865807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422586, 0.380765, -0.822459,
		-0.852266, -0.141764, -0.503533,
		-0.308323, 0.913740, 0.264606,
		45.336292, 33.572769, 24.945189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786385, 32.354633, 25.169090>,  <45.552120, 32.933151, 24.759964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786385, 32.354633, 25.169090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829941, 32.224636, 25.544861>,  <45.856075, 32.146637, 25.770323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829941, 32.224636, 25.544861>,  <45.786385, 32.354633, 25.169090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829941, 32.224636, 25.544861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694478, -0.651291, -0.305811,
		0.711226, 0.685712, 0.154779,
		0.108892, -0.324991, 0.939427,
		45.862610, 32.127140, 25.826689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518536, 32.705048, 25.138990>,  <45.786385, 32.354633, 25.169090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518536, 32.705048, 25.138990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541145, 33.059162, 24.954351>,  <46.554710, 33.271629, 24.843567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541145, 33.059162, 24.954351>,  <46.518536, 32.705048, 25.138990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541145, 33.059162, 24.954351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791158, 0.321730, 0.520152,
		0.608994, 0.335795, 0.718588,
		0.056527, 0.885286, -0.461599,
		46.558102, 33.324749, 24.815872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921444, 32.080532, 25.186941>,  <46.518536, 32.705048, 25.138990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921444, 32.080532, 25.186941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254047, 32.283386, 25.096241>,  <47.453609, 32.405098, 25.041821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254047, 32.283386, 25.096241>,  <46.921444, 32.080532, 25.186941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254047, 32.283386, 25.096241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039643, 0.461305, 0.886356,
		0.554103, -0.728019, 0.403681,
		0.831504, 0.507136, -0.226749,
		47.503498, 32.435528, 25.028217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.573067, 31.898582, 25.531170>,  <46.921444, 32.080532, 25.186941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.573067, 31.898582, 25.531170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521931, 32.288849, 25.459913>,  <47.491249, 32.523010, 25.417160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521931, 32.288849, 25.459913>,  <47.573067, 31.898582, 25.531170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.521931, 32.288849, 25.459913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011531, 0.178141, 0.983937,
		0.991727, 0.127844, -0.011524,
		-0.127843, 0.975665, -0.178142,
		47.483578, 32.581547, 25.406471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.083179, 32.290379, 26.096653>,  <47.573067, 31.898582, 25.531170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.083179, 32.290379, 26.096653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799831, 32.527241, 25.942995>,  <47.629822, 32.669357, 25.850800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799831, 32.527241, 25.942995>,  <48.083179, 32.290379, 26.096653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799831, 32.527241, 25.942995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289528, 0.252582, 0.923242,
		0.643728, 0.765218, -0.007477,
		-0.708370, 0.592152, -0.384146,
		47.587322, 32.704887, 25.827751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.075989, 32.985378, 26.398014>,  <48.083179, 32.290379, 26.096653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.075989, 32.985378, 26.398014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707050, 32.919170, 26.258369>,  <47.485687, 32.879444, 26.174582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707050, 32.919170, 26.258369>,  <48.075989, 32.985378, 26.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707050, 32.919170, 26.258369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386192, 0.421965, 0.820245,
		0.011544, 0.891374, -0.453121,
		-0.922346, -0.165522, -0.349113,
		47.430347, 32.869514, 26.153635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.602768, 33.644764, 26.174097>,  <48.075989, 32.985378, 26.398014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.602768, 33.644764, 26.174097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418236, 33.321339, 26.320192>,  <47.307518, 33.127285, 26.407850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418236, 33.321339, 26.320192>,  <47.602768, 33.644764, 26.174097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418236, 33.321339, 26.320192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208375, 0.498892, 0.841241,
		-0.862411, 0.311984, -0.398639,
		-0.461331, -0.808562, 0.365240,
		47.279835, 33.078770, 26.429764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941799, 33.893177, 26.391462>,  <47.602768, 33.644764, 26.174097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941799, 33.893177, 26.391462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038815, 33.562172, 26.594007>,  <47.097023, 33.363571, 26.715534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038815, 33.562172, 26.594007>,  <46.941799, 33.893177, 26.391462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038815, 33.562172, 26.594007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149234, 0.483911, 0.862299,
		-0.958595, -0.284706, -0.006126,
		0.242537, -0.827510, 0.506363,
		47.111576, 33.313919, 26.745916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502247, 33.869602, 26.837664>,  <46.941799, 33.893177, 26.391462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502247, 33.869602, 26.837664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774685, 33.626568, 27.001099>,  <46.938148, 33.480747, 27.099159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774685, 33.626568, 27.001099>,  <46.502247, 33.869602, 26.837664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774685, 33.626568, 27.001099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229312, 0.352951, 0.907106,
		-0.695357, -0.711522, 0.101068,
		0.681098, -0.607587, 0.408588,
		46.979015, 33.444290, 27.123674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457088, 34.077293, 27.514904>,  <46.502247, 33.869602, 26.837664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457088, 34.077293, 27.514904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745632, 33.802620, 27.550924>,  <46.918758, 33.637817, 27.572536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745632, 33.802620, 27.550924>,  <46.457088, 34.077293, 27.514904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745632, 33.802620, 27.550924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001281, 0.128702, 0.991682,
		-0.692563, -0.715471, 0.091961,
		0.721356, -0.686685, 0.090051,
		46.962040, 33.596615, 27.577940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264118, 33.640896, 28.045881>,  <46.457088, 34.077293, 27.514904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264118, 33.640896, 28.045881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.663387, 33.641312, 28.021734>,  <46.902950, 33.641563, 28.007246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.663387, 33.641312, 28.021734>,  <46.264118, 33.640896, 28.045881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663387, 33.641312, 28.021734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059186, 0.180551, 0.981783,
		0.011924, -0.983565, 0.180160,
		0.998176, 0.001044, -0.060366,
		46.962841, 33.641624, 28.003624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362663, 33.314930, 28.604668>,  <46.264118, 33.640896, 28.045881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362663, 33.314930, 28.604668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712612, 33.487736, 28.517069>,  <46.922581, 33.591419, 28.464510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712612, 33.487736, 28.517069>,  <46.362663, 33.314930, 28.604668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712612, 33.487736, 28.517069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211601, 0.065806, 0.975138,
		0.435684, -0.899464, -0.033843,
		0.874874, 0.432013, -0.218998,
		46.975075, 33.617340, 28.451370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880318, 32.977726, 28.973648>,  <46.362663, 33.314930, 28.604668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880318, 32.977726, 28.973648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021061, 33.346783, 28.910507>,  <47.105507, 33.568218, 28.872623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021061, 33.346783, 28.910507>,  <46.880318, 32.977726, 28.973648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021061, 33.346783, 28.910507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049186, 0.150176, 0.987435,
		0.934759, -0.355205, 0.007460,
		0.351862, 0.922646, -0.157850,
		47.126621, 33.623577, 28.863152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326500, 32.954090, 29.442667>,  <46.880318, 32.977726, 28.973648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326500, 32.954090, 29.442667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268883, 33.341473, 29.361334>,  <47.234314, 33.573902, 29.312534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268883, 33.341473, 29.361334>,  <47.326500, 32.954090, 29.442667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268883, 33.341473, 29.361334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024516, 0.201922, 0.979095,
		0.989268, 0.146014, -0.005342,
		-0.144040, 0.968456, -0.203335,
		47.225670, 33.632011, 29.300333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.810143, 33.383862, 29.949047>,  <47.326500, 32.954090, 29.442667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.810143, 33.383862, 29.949047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527420, 33.641712, 29.832510>,  <47.357784, 33.796421, 29.762589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527420, 33.641712, 29.832510>,  <47.810143, 33.383862, 29.949047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527420, 33.641712, 29.832510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225258, 0.185315, 0.956513,
		0.670581, 0.741700, 0.014224,
		-0.706810, 0.644623, -0.291343,
		47.315376, 33.835098, 29.745108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.966305, 34.094093, 30.256788>,  <47.810143, 33.383862, 29.949047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.966305, 34.094093, 30.256788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576550, 34.084606, 30.167337>,  <47.342697, 34.078915, 30.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576550, 34.084606, 30.167337>,  <47.966305, 34.094093, 30.256788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576550, 34.084606, 30.167337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223527, 0.211141, 0.951554,
		0.024646, 0.977168, -0.211035,
		-0.974386, -0.023720, -0.223627,
		47.284233, 34.077492, 30.100248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702892, 34.630077, 30.551159>,  <47.966305, 34.094093, 30.256788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702892, 34.630077, 30.551159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362923, 34.422787, 30.513060>,  <47.158943, 34.298412, 30.490200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362923, 34.422787, 30.513060>,  <47.702892, 34.630077, 30.551159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362923, 34.422787, 30.513060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218282, 0.181772, 0.958808,
		-0.479570, 0.835701, -0.267612,
		-0.849921, -0.518230, -0.095246,
		47.107944, 34.267319, 30.484486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032547, 35.022907, 30.833231>,  <47.702892, 34.630077, 30.551159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032547, 35.022907, 30.833231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926849, 34.637127, 30.834911>,  <46.863430, 34.405659, 30.835920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926849, 34.637127, 30.834911>,  <47.032547, 35.022907, 30.833231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926849, 34.637127, 30.834911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320809, 0.092002, 0.942665,
		-0.909537, 0.247746, -0.333714,
		-0.264244, -0.964447, 0.004201,
		46.847576, 34.347794, 30.836172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533779, 35.119057, 31.264149>,  <47.032547, 35.022907, 30.833231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533779, 35.119057, 31.264149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592834, 34.724312, 31.237909>,  <46.628269, 34.487465, 31.222166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592834, 34.724312, 31.237909>,  <46.533779, 35.119057, 31.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592834, 34.724312, 31.237909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350066, -0.114173, 0.929741,
		-0.925017, -0.114303, -0.362324,
		0.147640, -0.986863, -0.065598,
		46.637127, 34.428253, 31.218229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861217, 34.756588, 31.359661>,  <46.533779, 35.119057, 31.264149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861217, 34.756588, 31.359661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159355, 34.498997, 31.428667>,  <46.338238, 34.344440, 31.470070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159355, 34.498997, 31.428667>,  <45.861217, 34.756588, 31.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159355, 34.498997, 31.428667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402412, -0.228259, 0.886545,
		-0.531538, -0.730199, -0.429275,
		0.745340, -0.643978, 0.172512,
		46.382957, 34.305805, 31.480421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581642, 34.070980, 31.619862>,  <45.861217, 34.756588, 31.359661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581642, 34.070980, 31.619862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959076, 34.070824, 31.752314>,  <46.185535, 34.070732, 31.831785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959076, 34.070824, 31.752314>,  <45.581642, 34.070980, 31.619862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.959076, 34.070824, 31.752314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311512, -0.340138, 0.887280,
		0.112288, -0.940376, -0.321069,
		0.943584, -0.000386, 0.331132,
		46.242153, 34.070709, 31.851654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697639, 33.434883, 32.035149>,  <45.581642, 34.070980, 31.619862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697639, 33.434883, 32.035149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984745, 33.683998, 32.159695>,  <46.157009, 33.833469, 32.234421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984745, 33.683998, 32.159695>,  <45.697639, 33.434883, 32.035149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984745, 33.683998, 32.159695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169956, -0.276947, 0.945735,
		0.675227, -0.731732, -0.092935,
		0.717763, 0.622791, 0.311364,
		46.200073, 33.870834, 32.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950474, 33.076126, 32.531143>,  <45.697639, 33.434883, 32.035149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950474, 33.076126, 32.531143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104702, 33.433392, 32.623749>,  <46.197239, 33.647751, 32.679314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104702, 33.433392, 32.623749>,  <45.950474, 33.076126, 32.531143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104702, 33.433392, 32.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093341, -0.211875, 0.972829,
		0.917945, -0.396703, 0.001676,
		0.385569, 0.893160, 0.231519,
		46.220371, 33.701340, 32.693203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503864, 32.941399, 33.078770>,  <45.950474, 33.076126, 32.531143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503864, 32.941399, 33.078770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384575, 33.322258, 33.105530>,  <46.313000, 33.550774, 33.121586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384575, 33.322258, 33.105530>,  <46.503864, 32.941399, 33.078770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384575, 33.322258, 33.105530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177235, -0.124112, 0.976311,
		0.937897, 0.279302, 0.205767,
		-0.298224, 0.952148, 0.066902,
		46.295109, 33.607903, 33.125599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976936, 33.218662, 33.652008>,  <46.503864, 32.941399, 33.078770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976936, 33.218662, 33.652008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664841, 33.466095, 33.614933>,  <46.477585, 33.614555, 33.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.664841, 33.466095, 33.614933>,  <46.976936, 33.218662, 33.652008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664841, 33.466095, 33.614933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096163, 0.027791, 0.994978,
		0.618046, 0.785232, 0.037801,
		-0.780238, 0.618577, -0.092687,
		46.430771, 33.651669, 33.587128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123566, 33.617516, 34.176682>,  <46.976936, 33.218662, 33.652008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123566, 33.617516, 34.176682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731876, 33.654057, 34.104259>,  <46.496864, 33.675983, 34.060806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731876, 33.654057, 34.104259>,  <47.123566, 33.617516, 34.176682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731876, 33.654057, 34.104259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185154, -0.038535, 0.981954,
		0.082730, 0.995073, 0.054649,
		-0.979221, 0.091355, -0.181053,
		46.438110, 33.681461, 34.049942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854973, 34.122711, 34.593250>,  <47.123566, 33.617516, 34.176682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854973, 34.122711, 34.593250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589771, 33.830914, 34.526009>,  <46.430649, 33.655834, 34.485664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589771, 33.830914, 34.526009>,  <46.854973, 34.122711, 34.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589771, 33.830914, 34.526009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072256, -0.161152, 0.984281,
		-0.745119, 0.664731, 0.054135,
		-0.663006, -0.729495, -0.168108,
		46.390869, 33.612064, 34.475574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470715, 34.585114, 34.321243>,  <46.854973, 34.122711, 34.593250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470715, 34.585114, 34.321243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554996, 34.818123, 34.635258>,  <46.605564, 34.957928, 34.823666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554996, 34.818123, 34.635258>,  <46.470715, 34.585114, 34.321243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554996, 34.818123, 34.635258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931569, -0.363048, 0.019363,
		0.296284, 0.727233, -0.619151,
		0.210700, 0.582519, 0.785033,
		46.618206, 34.992878, 34.870770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100468, 34.878101, 34.170280>,  <46.470715, 34.585114, 34.321243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100468, 34.878101, 34.170280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048515, 34.873928, 34.566872>,  <47.017342, 34.871426, 34.804825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.048515, 34.873928, 34.566872>,  <47.100468, 34.878101, 34.170280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048515, 34.873928, 34.566872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937086, -0.328079, 0.119305,
		0.324037, 0.944593, 0.052390,
		-0.129883, -0.010435, 0.991474,
		47.009552, 34.870796, 34.864315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.606827, 35.329063, 34.567471>,  <47.100468, 34.878101, 34.170280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.606827, 35.329063, 34.567471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.457642, 34.995186, 34.729553>,  <47.368130, 34.794861, 34.826801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.457642, 34.995186, 34.729553>,  <47.606827, 35.329063, 34.567471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.457642, 34.995186, 34.729553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911374, -0.411485, -0.008782,
		0.174066, 0.366019, 0.914183,
		-0.372958, -0.834692, 0.405205,
		47.345753, 34.744778, 34.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788036, 35.208920, 35.285275>,  <47.606827, 35.329063, 34.567471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788036, 35.208920, 35.285275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736572, 34.862934, 35.091251>,  <47.705696, 34.655342, 34.974838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736572, 34.862934, 35.091251>,  <47.788036, 35.208920, 35.285275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.736572, 34.862934, 35.091251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950724, -0.246712, 0.187770,
		-0.282085, -0.436997, 0.854085,
		-0.128658, -0.864966, -0.485057,
		47.697975, 34.603443, 34.945736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.194431, 37.380440, 42.341793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.842030, 37.218845, 42.243305>,  <34.630589, 37.121887, 42.184212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.842030, 37.218845, 42.243305>,  <35.194431, 37.380440, 42.341793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842030, 37.218845, 42.243305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334133, -0.162858, -0.928349,
		0.334941, -0.900151, 0.278463,
		-0.881005, -0.403986, -0.246223,
		34.577728, 37.097649, 42.169437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437881, 36.967430, 41.785206>,  <35.194431, 37.380440, 42.341793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437881, 36.967430, 41.785206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040241, 36.983414, 41.744884>,  <34.801655, 36.993004, 41.720692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.040241, 36.983414, 41.744884>,  <35.437881, 36.967430, 41.785206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040241, 36.983414, 41.744884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090757, -0.202181, -0.975134,
		-0.059344, -0.978533, 0.197362,
		-0.994104, 0.039957, -0.100807,
		34.742012, 36.995399, 41.714642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363869, 36.406460, 41.449757>,  <35.437881, 36.967430, 41.785206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363869, 36.406460, 41.449757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048477, 36.645809, 41.392853>,  <34.859241, 36.789421, 41.358711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048477, 36.645809, 41.392853>,  <35.363869, 36.406460, 41.449757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048477, 36.645809, 41.392853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073031, -0.138581, -0.987655,
		-0.610706, -0.789139, 0.065568,
		-0.788483, 0.598378, -0.142264,
		34.811932, 36.825321, 41.350174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953564, 35.904686, 40.956375>,  <35.363869, 36.406460, 41.449757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953564, 35.904686, 40.956375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828056, 36.284153, 40.940491>,  <34.752750, 36.511833, 40.930962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828056, 36.284153, 40.940491>,  <34.953564, 35.904686, 40.956375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828056, 36.284153, 40.940491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143769, -0.088808, -0.985618,
		-0.938552, -0.303547, 0.164254,
		-0.313769, 0.948669, -0.039710,
		34.733925, 36.568752, 40.928577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384109, 35.826454, 40.558941>,  <34.953564, 35.904686, 40.956375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384109, 35.826454, 40.558941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481308, 36.212872, 40.523811>,  <34.539627, 36.444721, 40.502735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481308, 36.212872, 40.523811>,  <34.384109, 35.826454, 40.558941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481308, 36.212872, 40.523811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364752, 0.007103, -0.931078,
		-0.898838, 0.258279, 0.354093,
		0.242993, 0.966044, -0.087823,
		34.554207, 36.502686, 40.497463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773411, 36.188400, 40.155041>,  <34.384109, 35.826454, 40.558941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773411, 36.188400, 40.155041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107800, 36.402569, 40.106930>,  <34.308434, 36.531071, 40.078064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107800, 36.402569, 40.106930>,  <33.773411, 36.188400, 40.155041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107800, 36.402569, 40.106930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111174, -0.049396, -0.992572,
		-0.537389, 0.843137, 0.018231,
		0.835974, 0.535425, -0.120280,
		34.358593, 36.563198, 40.070847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636761, 36.669487, 39.562199>,  <33.773411, 36.188400, 40.155041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636761, 36.669487, 39.562199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034920, 36.647575, 39.593674>,  <34.273815, 36.634426, 39.612556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034920, 36.647575, 39.593674>,  <33.636761, 36.669487, 39.562199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034920, 36.647575, 39.593674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060645, -0.275897, -0.959272,
		0.074259, 0.959625, -0.271304,
		0.995393, -0.054782, 0.078684,
		34.333538, 36.631142, 39.617279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820259, 37.198940, 39.025921>,  <33.636761, 36.669487, 39.562199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820259, 37.198940, 39.025921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135151, 36.969913, 39.117508>,  <34.324085, 36.832497, 39.172459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135151, 36.969913, 39.117508>,  <33.820259, 37.198940, 39.025921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135151, 36.969913, 39.117508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125720, -0.214483, -0.968603,
		0.603704, 0.791302, -0.096864,
		0.787233, -0.572571, 0.228966,
		34.371323, 36.798141, 39.186199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319527, 37.352879, 38.584347>,  <33.820259, 37.198940, 39.025921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319527, 37.352879, 38.584347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.408657, 36.986942, 38.719051>,  <34.462135, 36.767380, 38.799873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.408657, 36.986942, 38.719051>,  <34.319527, 37.352879, 38.584347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408657, 36.986942, 38.719051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247097, -0.281163, -0.927303,
		0.943023, 0.289838, 0.163405,
		0.222824, -0.914845, 0.336762,
		34.475506, 36.712490, 38.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903751, 37.298145, 38.370747>,  <34.319527, 37.352879, 38.584347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903751, 37.298145, 38.370747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788197, 36.922611, 38.445728>,  <34.718864, 36.697292, 38.490715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788197, 36.922611, 38.445728>,  <34.903751, 37.298145, 38.370747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788197, 36.922611, 38.445728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291432, -0.272745, -0.916885,
		0.911928, -0.210247, 0.352398,
		-0.288887, -0.938833, 0.187451,
		34.701530, 36.640961, 38.501965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502522, 36.822662, 38.587955>,  <34.903751, 37.298145, 38.370747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502522, 36.822662, 38.587955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201622, 36.614403, 38.426437>,  <35.021084, 36.489449, 38.329525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201622, 36.614403, 38.426437>,  <35.502522, 36.822662, 38.587955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201622, 36.614403, 38.426437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593384, -0.268952, -0.758657,
		0.286392, -0.810303, 0.511262,
		-0.752247, -0.520648, -0.403795,
		34.975948, 36.458210, 38.305298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823502, 36.369698, 38.258972>,  <35.502522, 36.822662, 38.587955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823502, 36.369698, 38.258972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470177, 36.285465, 38.091442>,  <35.258183, 36.234928, 37.990925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470177, 36.285465, 38.091442>,  <35.823502, 36.369698, 38.258972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470177, 36.285465, 38.091442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456773, -0.185645, -0.869997,
		0.105449, -0.959788, 0.260169,
		-0.883311, -0.210578, -0.418828,
		35.205185, 36.222290, 37.965794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924118, 35.754631, 37.879219>,  <35.823502, 36.369698, 38.258972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924118, 35.754631, 37.879219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603745, 35.938210, 37.725399>,  <35.411522, 36.048359, 37.633106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603745, 35.938210, 37.725399>,  <35.924118, 35.754631, 37.879219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603745, 35.938210, 37.725399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306253, -0.237874, -0.921751,
		-0.514511, -0.856027, 0.049965,
		-0.800929, 0.458949, -0.384550,
		35.363464, 36.075893, 37.610035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534149, 35.323242, 37.306004>,  <35.924118, 35.754631, 37.879219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534149, 35.323242, 37.306004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440765, 35.702637, 37.220341>,  <35.384735, 35.930275, 37.168941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440765, 35.702637, 37.220341>,  <35.534149, 35.323242, 37.306004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440765, 35.702637, 37.220341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257750, -0.151998, -0.954181,
		-0.937582, -0.277965, -0.208988,
		-0.233463, 0.948490, -0.214156,
		35.370728, 35.987183, 37.156094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261490, 35.320103, 36.638275>,  <35.534149, 35.323242, 37.306004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261490, 35.320103, 36.638275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350437, 35.707375, 36.684181>,  <35.403805, 35.939739, 36.711723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350437, 35.707375, 36.684181>,  <35.261490, 35.320103, 36.638275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350437, 35.707375, 36.684181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398572, 0.017154, -0.916977,
		-0.889771, 0.249649, -0.382077,
		0.222368, 0.968184, 0.114766,
		35.417149, 35.997829, 36.718613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994976, 35.549725, 35.964745>,  <35.261490, 35.320103, 36.638275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994976, 35.549725, 35.964745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232426, 35.844353, 36.094406>,  <35.374897, 36.021130, 36.172203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232426, 35.844353, 36.094406>,  <34.994976, 35.549725, 35.964745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232426, 35.844353, 36.094406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403830, 0.075764, -0.911691,
		-0.696082, 0.672106, -0.252473,
		0.593625, 0.736568, 0.324155,
		35.410515, 36.065323, 36.191654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949898, 36.141190, 35.494408>,  <34.994976, 35.549725, 35.964745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949898, 36.141190, 35.494408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299721, 36.205914, 35.677258>,  <35.509617, 36.244747, 35.786968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299721, 36.205914, 35.677258>,  <34.949898, 36.141190, 35.494408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299721, 36.205914, 35.677258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462796, 0.002942, -0.886460,
		-0.144779, 0.986818, -0.072310,
		0.874562, 0.161806, 0.457122,
		35.562088, 36.254456, 35.814396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224163, 36.791889, 35.233345>,  <34.949898, 36.141190, 35.494408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224163, 36.791889, 35.233345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526707, 36.558483, 35.351624>,  <35.708233, 36.418442, 35.422592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526707, 36.558483, 35.351624>,  <35.224163, 36.791889, 35.233345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526707, 36.558483, 35.351624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453820, 0.142486, -0.879628,
		0.471141, 0.799507, 0.372579,
		0.756356, -0.583512, 0.295701,
		35.753613, 36.383430, 35.440334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821793, 37.071854, 34.905956>,  <35.224163, 36.791889, 35.233345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821793, 37.071854, 34.905956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979385, 36.729614, 35.040253>,  <36.073940, 36.524269, 35.120831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979385, 36.729614, 35.040253>,  <35.821793, 37.071854, 34.905956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979385, 36.729614, 35.040253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643599, -0.003973, -0.765353,
		0.656172, 0.517617, 0.549100,
		0.393978, -0.855603, 0.335745,
		36.097580, 36.472935, 35.140976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428635, 37.251030, 34.722569>,  <35.821793, 37.071854, 34.905956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428635, 37.251030, 34.722569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474606, 36.858883, 34.786663>,  <36.502190, 36.623596, 34.825119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474606, 36.858883, 34.786663>,  <36.428635, 37.251030, 34.722569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474606, 36.858883, 34.786663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768686, -0.014404, -0.639464,
		0.629217, 0.196666, 0.751937,
		0.114930, -0.980365, 0.160238,
		36.509083, 36.564774, 34.834736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119057, 37.203232, 34.823425>,  <36.428635, 37.251030, 34.722569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119057, 37.203232, 34.823425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983147, 36.839977, 34.725578>,  <36.901600, 36.622025, 34.666870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983147, 36.839977, 34.725578>,  <37.119057, 37.203232, 34.823425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983147, 36.839977, 34.725578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853690, -0.188656, -0.485410,
		0.394672, -0.373756, 0.839369,
		-0.339777, -0.908138, -0.244615,
		36.881214, 36.567535, 34.652195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649399, 36.718800, 34.988602>,  <37.119057, 37.203232, 34.823425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649399, 36.718800, 34.988602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437771, 36.577667, 34.679901>,  <37.310795, 36.492989, 34.494682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437771, 36.577667, 34.679901>,  <37.649399, 36.718800, 34.988602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437771, 36.577667, 34.679901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848201, -0.192694, -0.493380,
		0.025369, -0.915630, 0.401220,
		-0.529067, -0.352832, -0.771750,
		37.279053, 36.471817, 34.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815418, 36.048946, 34.607380>,  <37.649399, 36.718800, 34.988602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815418, 36.048946, 34.607380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171276, 35.897762, 34.709892>,  <38.384792, 35.807053, 34.771400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171276, 35.897762, 34.709892>,  <37.815418, 36.048946, 34.607380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171276, 35.897762, 34.709892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217051, 0.143788, 0.965512,
		-0.401772, -0.914589, 0.045884,
		0.889645, -0.377957, 0.256283,
		38.438171, 35.784374, 34.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668785, 35.558762, 35.162487>,  <37.815418, 36.048946, 34.607380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668785, 35.558762, 35.162487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061146, 35.630112, 35.193527>,  <38.296562, 35.672920, 35.212151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061146, 35.630112, 35.193527>,  <37.668785, 35.558762, 35.162487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061146, 35.630112, 35.193527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076807, -0.011361, 0.996981,
		0.178721, -0.983896, 0.002557,
		0.980897, 0.178378, 0.077600,
		38.355415, 35.683624, 35.216808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909157, 35.102879, 35.637093>,  <37.668785, 35.558762, 35.162487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909157, 35.102879, 35.637093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173706, 35.402882, 35.633732>,  <38.332436, 35.582882, 35.631714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173706, 35.402882, 35.633732>,  <37.909157, 35.102879, 35.637093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173706, 35.402882, 35.633732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128867, 0.124662, 0.983795,
		0.738901, -0.649576, 0.179100,
		0.661376, 0.750007, -0.008404,
		38.372120, 35.627884, 35.631210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309887, 34.953648, 36.261642>,  <37.909157, 35.102879, 35.637093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309887, 34.953648, 36.261642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380970, 35.336258, 36.169151>,  <38.423622, 35.565826, 36.113655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380970, 35.336258, 36.169151>,  <38.309887, 34.953648, 36.261642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380970, 35.336258, 36.169151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136947, 0.256724, 0.956733,
		0.974507, -0.138356, 0.176616,
		0.177711, 0.956531, -0.231232,
		38.434284, 35.623219, 36.099781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844967, 35.076466, 36.655754>,  <38.309887, 34.953648, 36.261642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844967, 35.076466, 36.655754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.652672, 35.411839, 36.553051>,  <38.537292, 35.613060, 36.491428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.652672, 35.411839, 36.553051>,  <38.844967, 35.076466, 36.655754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652672, 35.411839, 36.553051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050237, 0.318672, 0.946533,
		0.875423, 0.442138, -0.195319,
		-0.480740, 0.838428, -0.256761,
		38.508450, 35.663368, 36.476021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184288, 35.555172, 37.054905>,  <38.844967, 35.076466, 36.655754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184288, 35.555172, 37.054905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837440, 35.716171, 36.937534>,  <38.629330, 35.812771, 36.867111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837440, 35.716171, 36.937534>,  <39.184288, 35.555172, 37.054905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837440, 35.716171, 36.937534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098171, 0.439433, 0.892895,
		0.488327, 0.803053, -0.341529,
		-0.867121, 0.402496, -0.293424,
		38.577305, 35.836922, 36.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162155, 36.326992, 37.219685>,  <39.184288, 35.555172, 37.054905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162155, 36.326992, 37.219685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780800, 36.207005, 37.206596>,  <38.551987, 36.135014, 37.198742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780800, 36.207005, 37.206596>,  <39.162155, 36.326992, 37.219685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780800, 36.207005, 37.206596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193429, 0.524306, 0.829270,
		-0.231598, 0.796946, -0.557889,
		-0.953387, -0.299969, -0.032724,
		38.494785, 36.117012, 37.196777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737118, 37.042759, 37.396904>,  <39.162155, 36.326992, 37.219685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737118, 37.042759, 37.396904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482952, 36.737221, 37.442127>,  <38.330452, 36.553898, 37.469261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482952, 36.737221, 37.442127>,  <38.737118, 37.042759, 37.396904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482952, 36.737221, 37.442127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306667, 0.384008, 0.870915,
		-0.708663, 0.518721, -0.478252,
		-0.635415, -0.763850, 0.113057,
		38.292328, 36.508064, 37.476044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977909, 37.362514, 37.507225>,  <38.737118, 37.042759, 37.396904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977909, 37.362514, 37.507225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038204, 37.007847, 37.682079>,  <38.074383, 36.795044, 37.786991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038204, 37.007847, 37.682079>,  <37.977909, 37.362514, 37.507225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038204, 37.007847, 37.682079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393737, 0.351757, 0.849257,
		-0.906779, -0.300135, -0.296092,
		0.150739, -0.886671, 0.437140,
		38.083427, 36.741844, 37.813221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426003, 37.364788, 37.918289>,  <37.977909, 37.362514, 37.507225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426003, 37.364788, 37.918289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606056, 37.031097, 38.045685>,  <37.714088, 36.830883, 38.122120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606056, 37.031097, 38.045685>,  <37.426003, 37.364788, 37.918289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606056, 37.031097, 38.045685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538385, 0.030998, 0.842129,
		-0.712402, -0.550543, -0.435184,
		0.450139, -0.834231, 0.318487,
		37.741096, 36.780827, 38.141232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942867, 36.948765, 38.220505>,  <37.426003, 37.364788, 37.918289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942867, 36.948765, 38.220505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.297657, 36.855698, 38.380074>,  <37.510532, 36.799858, 38.475815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.297657, 36.855698, 38.380074>,  <36.942867, 36.948765, 38.220505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297657, 36.855698, 38.380074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375224, 0.140501, 0.916224,
		-0.269222, -0.962355, 0.037320,
		0.886976, -0.232664, 0.398924,
		37.563751, 36.785900, 38.499752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789200, 36.495914, 38.744934>,  <36.942867, 36.948765, 38.220505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789200, 36.495914, 38.744934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154564, 36.630184, 38.837029>,  <37.373783, 36.710747, 38.892284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154564, 36.630184, 38.837029>,  <36.789200, 36.495914, 38.744934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154564, 36.630184, 38.837029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263657, 0.056975, 0.962932,
		0.310116, -0.940253, 0.140545,
		0.913407, 0.335676, 0.230235,
		37.428585, 36.730888, 38.906097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007500, 36.106445, 39.296719>,  <36.789200, 36.495914, 38.744934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007500, 36.106445, 39.296719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229824, 36.438244, 39.318668>,  <37.363220, 36.637321, 39.331837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229824, 36.438244, 39.318668>,  <37.007500, 36.106445, 39.296719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229824, 36.438244, 39.318668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222965, 0.085161, 0.971100,
		0.800847, -0.551986, 0.232282,
		0.555815, 0.829493, 0.054872,
		37.396568, 36.687092, 39.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426498, 36.065022, 39.828037>,  <37.007500, 36.106445, 39.296719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426498, 36.065022, 39.828037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401260, 36.457687, 39.756084>,  <37.386120, 36.693287, 39.712914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401260, 36.457687, 39.756084>,  <37.426498, 36.065022, 39.828037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401260, 36.457687, 39.756084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169537, 0.167082, 0.971258,
		0.983502, 0.091775, 0.155887,
		-0.063091, 0.981663, -0.179884,
		37.382332, 36.752186, 39.702118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751373, 36.242966, 40.389610>,  <37.426498, 36.065022, 39.828037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751373, 36.242966, 40.389610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561161, 36.566414, 40.251041>,  <37.447033, 36.760483, 40.167900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561161, 36.566414, 40.251041>,  <37.751373, 36.242966, 40.389610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561161, 36.566414, 40.251041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104411, 0.339132, 0.934927,
		0.873479, 0.480760, -0.076840,
		-0.475534, 0.808616, -0.346421,
		37.418499, 36.808998, 40.147114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074848, 36.823879, 40.597382>,  <37.751373, 36.242966, 40.389610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074848, 36.823879, 40.597382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704914, 36.963741, 40.537479>,  <37.482956, 37.047657, 40.501537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704914, 36.963741, 40.537479>,  <38.074848, 36.823879, 40.597382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704914, 36.963741, 40.537479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029029, 0.457432, 0.888771,
		0.379264, 0.817617, -0.433199,
		-0.924833, 0.349654, -0.149753,
		37.427464, 37.068638, 40.492554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093452, 37.362774, 40.946697>,  <38.074848, 36.823879, 40.597382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093452, 37.362774, 40.946697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700710, 37.315140, 40.887672>,  <37.465065, 37.286560, 40.852257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700710, 37.315140, 40.887672>,  <38.093452, 37.362774, 40.946697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700710, 37.315140, 40.887672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175114, 0.270892, 0.946548,
		-0.072750, 0.955215, -0.286831,
		-0.981857, -0.119090, -0.147564,
		37.406155, 37.279411, 40.843403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824097, 37.907890, 41.320641>,  <38.093452, 37.362774, 40.946697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824097, 37.907890, 41.320641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534664, 37.638546, 41.259953>,  <37.361004, 37.476940, 41.223541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534664, 37.638546, 41.259953>,  <37.824097, 37.907890, 41.320641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534664, 37.638546, 41.259953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306785, 0.116835, 0.944581,
		-0.618313, 0.730028, -0.291115,
		-0.723583, -0.673356, -0.151721,
		37.317589, 37.436539, 41.214436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.953320, 38.177540, 41.756203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977486, 37.783985, 41.688900>,  <36.991985, 37.547852, 41.648518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.977486, 37.783985, 41.688900>,  <36.953320, 38.177540, 41.756203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977486, 37.783985, 41.688900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463694, -0.176931, 0.868149,
		-0.883933, 0.025572, -0.466913,
		0.060411, -0.983891, -0.168253,
		36.995609, 37.488819, 41.638424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426506, 37.878727, 42.071095>,  <36.953320, 38.177540, 41.756203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426506, 37.878727, 42.071095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639141, 37.541580, 42.037659>,  <36.766724, 37.339291, 42.017597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639141, 37.541580, 42.037659>,  <36.426506, 37.878727, 42.071095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639141, 37.541580, 42.037659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308248, -0.284433, 0.907789,
		-0.788921, -0.456806, -0.411014,
		0.531590, -0.842868, -0.083585,
		36.798618, 37.288719, 42.012585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977608, 37.371914, 42.287182>,  <36.426506, 37.878727, 42.071095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977608, 37.371914, 42.287182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336262, 37.197327, 42.316940>,  <36.551456, 37.092575, 42.334793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336262, 37.197327, 42.316940>,  <35.977608, 37.371914, 42.287182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336262, 37.197327, 42.316940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313101, -0.506248, 0.803543,
		-0.313058, -0.743781, -0.590580,
		0.896639, -0.436467, 0.074394,
		36.605255, 37.066387, 42.339260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856842, 36.718193, 42.496452>,  <35.977608, 37.371914, 42.287182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856842, 36.718193, 42.496452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245865, 36.743889, 42.585903>,  <36.479279, 36.759308, 42.639576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245865, 36.743889, 42.585903>,  <35.856842, 36.718193, 42.496452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245865, 36.743889, 42.585903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192249, -0.319540, 0.927866,
		0.131065, -0.945393, -0.298420,
		0.972555, 0.064240, 0.223631,
		36.537632, 36.763161, 42.652992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074032, 36.159554, 42.930660>,  <35.856842, 36.718193, 42.496452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074032, 36.159554, 42.930660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377617, 36.404964, 43.017895>,  <36.559769, 36.552212, 43.070236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377617, 36.404964, 43.017895>,  <36.074032, 36.159554, 42.930660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377617, 36.404964, 43.017895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072923, -0.252730, 0.964785,
		0.647036, -0.748141, -0.147073,
		0.758964, 0.613525, 0.218082,
		36.605305, 36.589024, 43.083321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582336, 35.691826, 43.229263>,  <36.074032, 36.159554, 42.930660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582336, 35.691826, 43.229263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637257, 36.075211, 43.329266>,  <36.670208, 36.305241, 43.389267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637257, 36.075211, 43.329266>,  <36.582336, 35.691826, 43.229263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637257, 36.075211, 43.329266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112412, -0.235684, 0.965306,
		0.984130, -0.160640, 0.075383,
		0.137301, 0.958461, 0.250001,
		36.678448, 36.362747, 43.404266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026791, 35.661880, 43.692776>,  <36.582336, 35.691826, 43.229263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026791, 35.661880, 43.692776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856579, 36.015774, 43.768845>,  <36.754452, 36.228111, 43.814487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856579, 36.015774, 43.768845>,  <37.026791, 35.661880, 43.692776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856579, 36.015774, 43.768845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068807, -0.241174, 0.968040,
		0.902326, 0.398841, 0.163502,
		-0.425526, 0.884738, 0.190174,
		36.728920, 36.281197, 43.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314766, 35.887600, 44.279205>,  <37.026791, 35.661880, 43.692776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314766, 35.887600, 44.279205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981113, 36.107563, 44.262142>,  <36.780922, 36.239540, 44.251904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981113, 36.107563, 44.262142>,  <37.314766, 35.887600, 44.279205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981113, 36.107563, 44.262142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139347, -0.135277, 0.980960,
		0.533670, 0.824196, 0.189467,
		-0.834133, 0.549911, -0.042656,
		36.730873, 36.272537, 44.249344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405029, 36.583591, 44.671253>,  <37.314766, 35.887600, 44.279205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405029, 36.583591, 44.671253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024334, 36.465904, 44.636326>,  <36.795918, 36.395294, 44.615368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.024334, 36.465904, 44.636326>,  <37.405029, 36.583591, 44.671253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024334, 36.465904, 44.636326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106392, 0.049425, 0.993095,
		-0.287868, 0.954460, -0.078342,
		-0.951742, -0.294215, -0.087319,
		36.738811, 36.377640, 44.610130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222328, 36.834629, 45.244087>,  <37.405029, 36.583591, 44.671253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222328, 36.834629, 45.244087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922447, 36.595989, 45.129536>,  <36.742519, 36.452805, 45.060806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922447, 36.595989, 45.129536>,  <37.222328, 36.834629, 45.244087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922447, 36.595989, 45.129536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266705, -0.123656, 0.955813,
		-0.605650, 0.792955, -0.066411,
		-0.749705, -0.596600, -0.286377,
		36.697536, 36.417007, 45.043621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736000, 36.930435, 45.793110>,  <37.222328, 36.834629, 45.244087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736000, 36.930435, 45.793110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594700, 36.616112, 45.590042>,  <36.509922, 36.427517, 45.468201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594700, 36.616112, 45.590042>,  <36.736000, 36.930435, 45.793110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594700, 36.616112, 45.590042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340520, -0.397429, 0.852113,
		-0.871357, 0.473877, -0.127192,
		-0.353247, -0.785806, -0.507667,
		36.488728, 36.380371, 45.437740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060192, 36.847618, 45.944908>,  <36.736000, 36.930435, 45.793110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060192, 36.847618, 45.944908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162224, 36.479736, 45.825527>,  <36.223442, 36.259007, 45.753899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.162224, 36.479736, 45.825527>,  <36.060192, 36.847618, 45.944908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162224, 36.479736, 45.825527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362142, -0.377066, 0.852452,
		-0.896543, -0.109358, -0.429245,
		0.255076, -0.919708, -0.298453,
		36.238747, 36.203823, 45.735992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533131, 36.473129, 46.121254>,  <36.060192, 36.847618, 45.944908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533131, 36.473129, 46.121254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801418, 36.182865, 46.059868>,  <35.962391, 36.008709, 46.023037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801418, 36.182865, 46.059868>,  <35.533131, 36.473129, 46.121254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801418, 36.182865, 46.059868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170059, -0.351853, 0.920478,
		-0.721949, -0.591287, -0.359400,
		0.670723, -0.725657, -0.153467,
		36.002636, 35.965168, 46.013828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296406, 35.780441, 46.313305>,  <35.533131, 36.473129, 46.121254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296406, 35.780441, 46.313305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691433, 35.727982, 46.347954>,  <35.928452, 35.696507, 46.368744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691433, 35.727982, 46.347954>,  <35.296406, 35.780441, 46.313305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691433, 35.727982, 46.347954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129890, -0.370667, 0.919638,
		-0.088501, -0.919460, -0.383095,
		0.987571, -0.131149, 0.086624,
		35.987705, 35.688637, 46.373940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418488, 35.226063, 46.794502>,  <35.296406, 35.780441, 46.313305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418488, 35.226063, 46.794502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778660, 35.400055, 46.793354>,  <35.994762, 35.504452, 46.792664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778660, 35.400055, 46.793354>,  <35.418488, 35.226063, 46.794502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778660, 35.400055, 46.793354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119062, -0.240098, 0.963420,
		0.418382, -0.867838, -0.267982,
		0.900434, 0.434984, -0.002874,
		36.048790, 35.530548, 46.792492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897186, 34.708652, 47.065376>,  <35.418488, 35.226063, 46.794502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897186, 34.708652, 47.065376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053726, 35.071873, 47.125084>,  <36.147652, 35.289806, 47.160908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053726, 35.071873, 47.125084>,  <35.897186, 34.708652, 47.065376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053726, 35.071873, 47.125084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076981, -0.129338, 0.988608,
		0.917015, -0.398386, 0.019286,
		0.391354, 0.908053, 0.149273,
		36.171131, 35.344288, 47.169865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442852, 34.619320, 47.620445>,  <35.897186, 34.708652, 47.065376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442852, 34.619320, 47.620445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438610, 35.019226, 47.612850>,  <36.436066, 35.259171, 47.608295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438610, 35.019226, 47.612850>,  <36.442852, 34.619320, 47.620445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438610, 35.019226, 47.612850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051532, 0.019507, 0.998481,
		0.998615, 0.009608, -0.051726,
		-0.010602, 0.999763, -0.018985,
		36.435429, 35.319157, 47.607155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030582, 34.778538, 48.067387>,  <36.442852, 34.619320, 47.620445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030582, 34.778538, 48.067387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774513, 35.085644, 48.056698>,  <36.620872, 35.269905, 48.050285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774513, 35.085644, 48.056698>,  <37.030582, 34.778538, 48.067387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774513, 35.085644, 48.056698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019522, 0.051033, 0.998506,
		0.767980, 0.638698, -0.047658,
		-0.640176, 0.767763, -0.026724,
		36.582462, 35.315971, 48.048679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293842, 35.130543, 48.533779>,  <37.030582, 34.778538, 48.067387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293842, 35.130543, 48.533779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934727, 35.302040, 48.493473>,  <36.719257, 35.404938, 48.469288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934727, 35.302040, 48.493473>,  <37.293842, 35.130543, 48.533779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934727, 35.302040, 48.493473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202121, -0.197805, 0.959177,
		0.391305, 0.881508, 0.264245,
		-0.897790, 0.428740, -0.100770,
		36.665390, 35.430660, 48.463242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216160, 35.573406, 49.075729>,  <37.293842, 35.130543, 48.533779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216160, 35.573406, 49.075729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835068, 35.508167, 48.973190>,  <36.606415, 35.469025, 48.911667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835068, 35.508167, 48.973190>,  <37.216160, 35.573406, 49.075729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835068, 35.508167, 48.973190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242504, -0.100093, 0.964973,
		-0.183042, 0.981520, 0.055809,
		-0.952726, -0.163097, -0.256344,
		36.549252, 35.459240, 48.896286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900272, 35.947124, 49.599327>,  <37.216160, 35.573406, 49.075729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900272, 35.947124, 49.599327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638054, 35.686665, 49.446354>,  <36.480721, 35.530388, 49.354568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638054, 35.686665, 49.446354>,  <36.900272, 35.947124, 49.599327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638054, 35.686665, 49.446354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275078, -0.265726, 0.923971,
		-0.703269, 0.710907, -0.004921,
		-0.655549, -0.651154, -0.382432,
		36.441391, 35.491318, 49.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313896, 36.136322, 49.837109>,  <36.900272, 35.947124, 49.599327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313896, 36.136322, 49.837109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276962, 35.748516, 49.746323>,  <36.254803, 35.515831, 49.691849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276962, 35.748516, 49.746323>,  <36.313896, 36.136322, 49.837109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276962, 35.748516, 49.746323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499712, -0.152039, 0.852744,
		-0.861256, 0.192159, -0.470439,
		-0.092337, -0.969515, -0.226969,
		36.249260, 35.457661, 49.678230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563137, 35.883865, 49.925068>,  <36.313896, 36.136322, 49.837109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563137, 35.883865, 49.925068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835880, 35.603653, 50.009285>,  <35.999527, 35.435528, 50.059814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835880, 35.603653, 50.009285>,  <35.563137, 35.883865, 49.925068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835880, 35.603653, 50.009285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587046, -0.352346, 0.728855,
		-0.436401, -0.620573, -0.651493,
		0.681859, -0.700529, 0.210540,
		36.040440, 35.393494, 50.072449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272682, 35.254124, 49.865692>,  <35.563137, 35.883865, 49.925068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272682, 35.254124, 49.865692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572929, 35.236305, 50.129387>,  <35.753078, 35.225616, 50.287601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572929, 35.236305, 50.129387>,  <35.272682, 35.254124, 49.865692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572929, 35.236305, 50.129387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614069, -0.415340, 0.671127,
		0.243912, -0.908575, -0.339114,
		0.750617, -0.044543, 0.659235,
		35.798115, 35.222942, 50.327156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621132, 35.607231, 50.135475>,  <35.272682, 35.254124, 49.865692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621132, 35.607231, 50.135475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227859, 35.572422, 50.071247>,  <33.991898, 35.551537, 50.032711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227859, 35.572422, 50.071247>,  <34.621132, 35.607231, 50.135475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227859, 35.572422, 50.071247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134771, 0.247700, -0.959417,
		0.123260, -0.964921, -0.231807,
		-0.983181, -0.087017, -0.160574,
		33.932907, 35.546318, 50.023075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561947, 35.286938, 49.479420>,  <34.621132, 35.607231, 50.135475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561947, 35.286938, 49.479420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184059, 35.414577, 49.509556>,  <33.957325, 35.491161, 49.527637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184059, 35.414577, 49.509556>,  <34.561947, 35.286938, 49.479420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184059, 35.414577, 49.509556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054206, 0.074606, -0.995739,
		-0.323359, -0.944781, -0.053185,
		-0.944722, 0.319098, 0.075337,
		33.900642, 35.510307, 49.532158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150772, 34.876545, 49.085609>,  <34.561947, 35.286938, 49.479420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150772, 34.876545, 49.085609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936630, 35.209038, 49.145554>,  <33.808147, 35.408531, 49.181519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936630, 35.209038, 49.145554>,  <34.150772, 34.876545, 49.085609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936630, 35.209038, 49.145554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269438, 0.000086, -0.963018,
		-0.800501, -0.555931, 0.223918,
		-0.535352, 0.831228, 0.149857,
		33.776024, 35.458405, 49.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579681, 34.796299, 48.657139>,  <34.150772, 34.876545, 49.085609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579681, 34.796299, 48.657139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.608810, 35.191990, 48.707943>,  <33.626289, 35.429405, 48.738426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.608810, 35.191990, 48.707943>,  <33.579681, 34.796299, 48.657139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608810, 35.191990, 48.707943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049395, 0.130767, -0.990182,
		-0.996121, 0.065833, 0.058385,
		0.072822, 0.989225, 0.127008,
		33.630657, 35.488758, 48.746044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130180, 35.076733, 48.255917>,  <33.579681, 34.796299, 48.657139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130180, 35.076733, 48.255917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357307, 35.401630, 48.309353>,  <33.493584, 35.596569, 48.341415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357307, 35.401630, 48.309353>,  <33.130180, 35.076733, 48.255917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357307, 35.401630, 48.309353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219580, 0.305864, -0.926408,
		-0.793329, 0.496695, 0.352027,
		0.567815, 0.812244, 0.133587,
		33.527653, 35.645302, 48.349430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829556, 35.572803, 47.930546>,  <33.130180, 35.076733, 48.255917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829556, 35.572803, 47.930546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200748, 35.719460, 47.957176>,  <33.423462, 35.807453, 47.973156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.200748, 35.719460, 47.957176>,  <32.829556, 35.572803, 47.930546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200748, 35.719460, 47.957176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016794, 0.219631, -0.975438,
		-0.372257, 0.904067, 0.209971,
		0.927978, 0.366640, 0.066576,
		33.479141, 35.829453, 47.977150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884502, 36.372944, 47.854534>,  <32.829556, 35.572803, 47.930546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884502, 36.372944, 47.854534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245358, 36.222862, 47.769333>,  <33.461872, 36.132812, 47.718212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245358, 36.222862, 47.769333>,  <32.884502, 36.372944, 47.854534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245358, 36.222862, 47.769333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018535, 0.459521, -0.887974,
		0.431052, 0.805022, 0.407596,
		0.902137, -0.375208, -0.212998,
		33.515999, 36.110298, 47.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274582, 36.772598, 47.417645>,  <32.884502, 36.372944, 47.854534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274582, 36.772598, 47.417645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498077, 36.445213, 47.364071>,  <33.632175, 36.248783, 47.331924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498077, 36.445213, 47.364071>,  <33.274582, 36.772598, 47.417645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498077, 36.445213, 47.364071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030716, 0.140963, -0.989538,
		0.828776, 0.557005, 0.053622,
		0.558737, -0.818458, -0.133936,
		33.665699, 36.199677, 47.323891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783073, 37.010956, 47.004269>,  <33.274582, 36.772598, 47.417645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783073, 37.010956, 47.004269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787636, 36.613148, 46.962711>,  <33.790371, 36.374462, 46.937778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787636, 36.613148, 46.962711>,  <33.783073, 37.010956, 47.004269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787636, 36.613148, 46.962711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142288, 0.104458, -0.984298,
		0.989760, -0.003558, 0.142700,
		0.011404, -0.994523, -0.103894,
		33.791058, 36.314793, 46.931541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316250, 36.934109, 46.579205>,  <33.783073, 37.010956, 47.004269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316250, 36.934109, 46.579205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.150307, 36.574627, 46.522327>,  <34.050739, 36.358936, 46.488201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.150307, 36.574627, 46.522327>,  <34.316250, 36.934109, 46.579205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150307, 36.574627, 46.522327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048101, 0.134390, -0.989760,
		0.908613, -0.417451, -0.012525,
		-0.414859, -0.898707, -0.142188,
		34.025848, 36.305016, 46.479671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822060, 36.450546, 46.176418>,  <34.316250, 36.934109, 46.579205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822060, 36.450546, 46.176418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443035, 36.333843, 46.124252>,  <34.215622, 36.263821, 46.092953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443035, 36.333843, 46.124252>,  <34.822060, 36.450546, 46.176418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443035, 36.333843, 46.124252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095587, 0.130657, -0.986809,
		0.304954, -0.947525, -0.095916,
		-0.947558, -0.291763, -0.130415,
		34.158768, 36.246315, 46.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825661, 35.874905, 45.678116>,  <34.822060, 36.450546, 46.176418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825661, 35.874905, 45.678116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454842, 36.024879, 45.678261>,  <34.232349, 36.114864, 45.678349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454842, 36.024879, 45.678261>,  <34.825661, 35.874905, 45.678116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454842, 36.024879, 45.678261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044859, 0.111870, -0.992710,
		-0.372242, -0.920277, -0.120529,
		-0.927051, 0.374935, 0.000360,
		34.176727, 36.137360, 45.678368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583328, 35.511887, 45.079075>,  <34.825661, 35.874905, 45.678116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583328, 35.511887, 45.079075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.337002, 35.818226, 45.153107>,  <34.189205, 36.002029, 45.197525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.337002, 35.818226, 45.153107>,  <34.583328, 35.511887, 45.079075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337002, 35.818226, 45.153107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015300, 0.223235, -0.974645,
		-0.787744, -0.603031, -0.125753,
		-0.615813, 0.765846, 0.185079,
		34.152256, 36.047981, 45.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072884, 35.452393, 44.572647>,  <34.583328, 35.511887, 45.079075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072884, 35.452393, 44.572647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009392, 35.827953, 44.694809>,  <33.971294, 36.053288, 44.768108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009392, 35.827953, 44.694809>,  <34.072884, 35.452393, 44.572647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009392, 35.827953, 44.694809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189158, 0.274680, -0.942746,
		-0.969032, -0.207415, 0.133999,
		-0.158732, 0.938898, 0.305408,
		33.961773, 36.109623, 44.786430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463009, 35.742043, 44.186264>,  <34.072884, 35.452393, 44.572647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463009, 35.742043, 44.186264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688797, 36.049873, 44.305683>,  <33.824268, 36.234570, 44.377335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688797, 36.049873, 44.305683>,  <33.463009, 35.742043, 44.186264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688797, 36.049873, 44.305683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013248, 0.370081, -0.928905,
		-0.825348, 0.520382, 0.219094,
		0.564468, 0.769573, 0.298552,
		33.858139, 36.280746, 44.395248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261219, 36.280704, 43.884281>,  <33.463009, 35.742043, 44.186264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261219, 36.280704, 43.884281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630997, 36.409023, 43.966724>,  <33.852863, 36.486015, 44.016190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630997, 36.409023, 43.966724>,  <33.261219, 36.280704, 43.884281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630997, 36.409023, 43.966724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091858, 0.337260, -0.936919,
		-0.370077, 0.885067, 0.282311,
		0.924449, 0.320800, 0.206113,
		33.908333, 36.505264, 44.028557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211933, 36.961098, 43.687973>,  <33.261219, 36.280704, 43.884281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211933, 36.961098, 43.687973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.603828, 36.881229, 43.694241>,  <33.838966, 36.833309, 43.698002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.603828, 36.881229, 43.694241>,  <33.211933, 36.961098, 43.687973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603828, 36.881229, 43.694241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106671, 0.453996, -0.884596,
		0.169517, 0.868342, 0.466096,
		0.979737, -0.199673, 0.015667,
		33.897751, 36.821327, 43.698940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564690, 37.540218, 43.562534>,  <33.211933, 36.961098, 43.687973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564690, 37.540218, 43.562534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829086, 37.255608, 43.467186>,  <33.987724, 37.084843, 43.409977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829086, 37.255608, 43.467186>,  <33.564690, 37.540218, 43.562534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829086, 37.255608, 43.467186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102946, 0.400643, -0.910433,
		0.743295, 0.577252, 0.338071,
		0.660995, -0.711524, -0.238370,
		34.027386, 37.042149, 43.395676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989655, 37.835152, 43.107800>,  <33.564690, 37.540218, 43.562534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989655, 37.835152, 43.107800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083584, 37.450909, 43.048336>,  <34.139942, 37.220364, 43.012657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083584, 37.450909, 43.048336>,  <33.989655, 37.835152, 43.107800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083584, 37.450909, 43.048336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410443, 0.236623, -0.880651,
		0.881133, 0.145777, 0.449837,
		0.234820, -0.960603, -0.148663,
		34.154030, 37.162727, 43.003738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629047, 37.861610, 42.676304>,  <33.989655, 37.835152, 43.107800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629047, 37.861610, 42.676304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493916, 37.491222, 42.608841>,  <34.412834, 37.268990, 42.568363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493916, 37.491222, 42.608841>,  <34.629047, 37.861610, 42.676304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493916, 37.491222, 42.608841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306280, 0.061280, -0.949967,
		0.889978, -0.372586, 0.262904,
		-0.337834, -0.925972, -0.168653,
		34.392567, 37.213432, 42.558247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.608715, 32.578403, 26.505552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335800, 32.838516, 26.371922>,  <45.172050, 32.994583, 26.291744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335800, 32.838516, 26.371922>,  <45.608715, 32.578403, 26.505552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335800, 32.838516, 26.371922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282924, 0.186494, 0.940837,
		0.674116, 0.736443, 0.056738,
		-0.682292, 0.650286, -0.334076,
		45.131111, 33.033604, 26.271698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844379, 33.203827, 26.747765>,  <45.608715, 32.578403, 26.505552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844379, 33.203827, 26.747765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465885, 33.090679, 26.684994>,  <45.238789, 33.022789, 26.647331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465885, 33.090679, 26.684994>,  <45.844379, 33.203827, 26.747765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465885, 33.090679, 26.684994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162316, -0.004446, 0.986729,
		-0.279816, 0.959147, -0.041708,
		-0.946233, -0.282873, -0.156929,
		45.182014, 33.005817, 26.637915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471298, 33.753716, 27.088648>,  <45.844379, 33.203827, 26.747765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471298, 33.753716, 27.088648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197647, 33.466198, 27.039150>,  <45.033459, 33.293686, 27.009453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197647, 33.466198, 27.039150>,  <45.471298, 33.753716, 27.088648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197647, 33.466198, 27.039150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339059, 0.163205, 0.926501,
		-0.645766, 0.675797, -0.355365,
		-0.684123, -0.718793, -0.123743,
		44.992409, 33.250561, 27.002028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836899, 34.052059, 27.373940>,  <45.471298, 33.753716, 27.088648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836899, 34.052059, 27.373940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797676, 33.654274, 27.358786>,  <44.774143, 33.415604, 27.349693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797676, 33.654274, 27.358786>,  <44.836899, 34.052059, 27.373940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797676, 33.654274, 27.358786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478909, 0.013782, 0.877756,
		-0.872371, 0.104211, -0.477607,
		-0.098055, -0.994460, -0.037885,
		44.768261, 33.355938, 27.347420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087849, 33.872257, 27.653532>,  <44.836899, 34.052059, 27.373940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087849, 33.872257, 27.653532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299942, 33.537655, 27.708824>,  <44.427200, 33.336895, 27.742001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299942, 33.537655, 27.708824>,  <44.087849, 33.872257, 27.653532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299942, 33.537655, 27.708824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367331, -0.079710, 0.926668,
		-0.764145, -0.542130, -0.349540,
		0.530237, -0.836506, 0.138231,
		44.459015, 33.286705, 27.750294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634533, 33.364994, 27.955994>,  <44.087849, 33.872257, 27.653532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634533, 33.364994, 27.955994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003166, 33.236420, 28.043039>,  <44.224346, 33.159275, 28.095266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.003166, 33.236420, 28.043039>,  <43.634533, 33.364994, 27.955994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003166, 33.236420, 28.043039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269104, -0.125027, 0.954962,
		-0.279753, -0.938641, -0.201723,
		0.921587, -0.321438, 0.217615,
		44.279644, 33.139988, 28.108324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508118, 32.905884, 28.589048>,  <43.634533, 33.364994, 27.955994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508118, 32.905884, 28.589048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906357, 32.942596, 28.596704>,  <44.145298, 32.964626, 28.601299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906357, 32.942596, 28.596704>,  <43.508118, 32.905884, 28.589048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906357, 32.942596, 28.596704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012984, -0.067216, 0.997654,
		0.092858, -0.993507, -0.065728,
		0.995595, 0.091787, 0.019141,
		44.205036, 32.970131, 28.602448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745827, 32.298523, 28.984348>,  <43.508118, 32.905884, 28.589048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745827, 32.298523, 28.984348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022976, 32.585838, 29.009604>,  <44.189266, 32.758228, 29.024757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.022976, 32.585838, 29.009604>,  <43.745827, 32.298523, 28.984348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022976, 32.585838, 29.009604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017663, -0.070630, 0.997346,
		0.720841, -0.692151, -0.036251,
		0.692875, 0.718288, 0.063138,
		44.230839, 32.801323, 29.028545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177597, 32.112720, 29.540678>,  <43.745827, 32.298523, 28.984348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177597, 32.112720, 29.540678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284252, 32.495937, 29.498611>,  <44.348244, 32.725868, 29.473372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284252, 32.495937, 29.498611>,  <44.177597, 32.112720, 29.540678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284252, 32.495937, 29.498611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274844, 0.029003, 0.961051,
		0.923777, -0.285158, -0.255578,
		0.266639, 0.958042, -0.105166,
		44.364243, 32.783348, 29.467062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826096, 32.237396, 29.962196>,  <44.177597, 32.112720, 29.540678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826096, 32.237396, 29.962196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684891, 32.609116, 29.918749>,  <44.600170, 32.832146, 29.892681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684891, 32.609116, 29.918749>,  <44.826096, 32.237396, 29.962196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684891, 32.609116, 29.918749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143018, 0.168323, 0.975302,
		0.924625, 0.328756, -0.192325,
		-0.353009, 0.929294, -0.108617,
		44.578987, 32.887905, 29.886164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320339, 32.729897, 30.316818>,  <44.826096, 32.237396, 29.962196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320339, 32.729897, 30.316818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952225, 32.884659, 30.293554>,  <44.731358, 32.977516, 30.279596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952225, 32.884659, 30.293554>,  <45.320339, 32.729897, 30.316818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952225, 32.884659, 30.293554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045534, 0.253545, 0.966251,
		0.388597, 0.886576, -0.250950,
		-0.920282, 0.386909, -0.058158,
		44.676140, 33.000732, 30.276108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425831, 33.441608, 30.655209>,  <45.320339, 32.729897, 30.316818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425831, 33.441608, 30.655209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035744, 33.353226, 30.659729>,  <44.801693, 33.300198, 30.662441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035744, 33.353226, 30.659729>,  <45.425831, 33.441608, 30.655209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035744, 33.353226, 30.659729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068899, 0.351834, 0.933523,
		-0.210245, 0.909610, -0.358339,
		-0.975218, -0.220957, 0.011300,
		44.743179, 33.286938, 30.663118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006435, 34.023582, 30.836971>,  <45.425831, 33.441608, 30.655209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006435, 34.023582, 30.836971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.766171, 33.712540, 30.911295>,  <44.622009, 33.525913, 30.955889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.766171, 33.712540, 30.911295>,  <45.006435, 34.023582, 30.836971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766171, 33.712540, 30.911295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245124, 0.400331, 0.882978,
		-0.760996, 0.484829, -0.431075,
		-0.600666, -0.777609, 0.185807,
		44.585972, 33.479256, 30.967037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381721, 34.309387, 31.095327>,  <45.006435, 34.023582, 30.836971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381721, 34.309387, 31.095327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376476, 33.922024, 31.194931>,  <44.373329, 33.689606, 31.254692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376476, 33.922024, 31.194931>,  <44.381721, 34.309387, 31.095327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376476, 33.922024, 31.194931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234156, 0.245077, 0.940802,
		-0.972111, -0.045972, -0.229973,
		-0.013111, -0.968413, 0.249007,
		44.372543, 33.631500, 31.269632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708668, 34.205742, 31.338415>,  <44.381721, 34.309387, 31.095327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708668, 34.205742, 31.338415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908318, 33.883812, 31.466873>,  <44.028107, 33.690655, 31.543947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908318, 33.883812, 31.466873>,  <43.708668, 34.205742, 31.338415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908318, 33.883812, 31.466873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446717, 0.078579, 0.891218,
		-0.742507, -0.588291, -0.320307,
		0.499126, -0.804822, 0.321145,
		44.058056, 33.642365, 31.563217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168850, 33.626377, 31.598858>,  <43.708668, 34.205742, 31.338415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168850, 33.626377, 31.598858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529026, 33.573479, 31.764612>,  <43.745132, 33.541740, 31.864065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529026, 33.573479, 31.764612>,  <43.168850, 33.626377, 31.598858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529026, 33.573479, 31.764612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424574, -0.060092, 0.903397,
		-0.094571, -0.989393, -0.110258,
		0.900441, -0.132248, 0.414388,
		43.799160, 33.533806, 31.888929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147137, 33.024914, 31.988722>,  <43.168850, 33.626377, 31.598858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147137, 33.024914, 31.988722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463448, 33.211182, 32.147633>,  <43.653233, 33.322941, 32.242981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463448, 33.211182, 32.147633>,  <43.147137, 33.024914, 31.988722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463448, 33.211182, 32.147633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385232, -0.125764, 0.914210,
		0.475680, -0.875979, 0.079939,
		0.790775, 0.465666, 0.397278,
		43.700680, 33.350880, 32.266815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277725, 32.621181, 32.607597>,  <43.147137, 33.024914, 31.988722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277725, 32.621181, 32.607597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.495220, 32.940929, 32.709850>,  <43.625717, 33.132778, 32.771202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.495220, 32.940929, 32.709850>,  <43.277725, 32.621181, 32.607597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495220, 32.940929, 32.709850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189351, -0.179887, 0.965291,
		0.817613, -0.573272, 0.053551,
		0.543742, 0.799374, 0.255628,
		43.658344, 33.180740, 32.786537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846050, 32.445766, 33.226109>,  <43.277725, 32.621181, 32.607597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846050, 32.445766, 33.226109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748077, 32.833546, 33.220745>,  <43.689293, 33.066212, 33.217529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748077, 32.833546, 33.220745>,  <43.846050, 32.445766, 33.226109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748077, 32.833546, 33.220745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028730, 0.021079, 0.999365,
		0.969113, 0.244396, -0.033016,
		-0.244937, 0.969446, -0.013406,
		43.674595, 33.124378, 33.216724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122536, 32.704685, 33.809380>,  <43.846050, 32.445766, 33.226109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122536, 32.704685, 33.809380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871532, 33.005756, 33.729660>,  <43.720932, 33.186398, 33.681828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871532, 33.005756, 33.729660>,  <44.122536, 32.704685, 33.809380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871532, 33.005756, 33.729660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274032, 0.026097, 0.961366,
		0.728798, 0.657875, 0.189881,
		-0.627504, 0.752675, -0.199298,
		43.683281, 33.231560, 33.669872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221272, 33.390800, 34.220093>,  <44.122536, 32.704685, 33.809380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221272, 33.390800, 34.220093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837536, 33.325790, 34.127777>,  <43.607296, 33.286785, 34.072388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837536, 33.325790, 34.127777>,  <44.221272, 33.390800, 34.220093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837536, 33.325790, 34.127777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235258, 0.008560, 0.971895,
		-0.155978, 0.986668, -0.046446,
		-0.959336, -0.162521, -0.230786,
		43.549736, 33.277035, 34.058540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040043, 33.535233, 34.219753>,  <44.221272, 33.390800, 34.220093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040043, 33.535233, 34.219753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.425018, 33.635742, 34.260895>,  <45.656002, 33.696049, 34.285580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.425018, 33.635742, 34.260895>,  <45.040043, 33.535233, 34.219753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425018, 33.635742, 34.260895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045069, 0.225718, -0.973150,
		-0.267748, 0.941228, 0.205914,
		0.962434, 0.251278, 0.102856,
		45.713749, 33.711124, 34.291752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204880, 34.097618, 33.719704>,  <45.040043, 33.535233, 34.219753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204880, 34.097618, 33.719704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581211, 33.987629, 33.798927>,  <45.807011, 33.921635, 33.846462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.581211, 33.987629, 33.798927>,  <45.204880, 34.097618, 33.719704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581211, 33.987629, 33.798927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285305, 0.327343, -0.900804,
		0.182862, 0.904012, 0.386425,
		0.940831, -0.274972, 0.198060,
		45.863461, 33.905136, 33.858345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453403, 34.619774, 33.457523>,  <45.204880, 34.097618, 33.719704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453403, 34.619774, 33.457523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750362, 34.353977, 33.491711>,  <45.928535, 34.194500, 33.512222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750362, 34.353977, 33.491711>,  <45.453403, 34.619774, 33.457523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750362, 34.353977, 33.491711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304257, 0.220746, -0.926660,
		0.596889, 0.713951, 0.366056,
		0.742396, -0.664488, 0.085464,
		45.973080, 34.154633, 33.517349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163826, 34.929306, 33.273911>,  <45.453403, 34.619774, 33.457523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163826, 34.929306, 33.273911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.171612, 34.532475, 33.224285>,  <46.176285, 34.294376, 33.194508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.171612, 34.532475, 33.224285>,  <46.163826, 34.929306, 33.273911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171612, 34.532475, 33.224285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338636, 0.123299, -0.932804,
		0.940716, -0.023855, 0.338355,
		0.019466, -0.992083, -0.124067,
		46.177452, 34.234848, 33.187065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829220, 34.821400, 33.049713>,  <46.163826, 34.929306, 33.273911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829220, 34.821400, 33.049713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602791, 34.509914, 32.941517>,  <46.466934, 34.323025, 32.876598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602791, 34.509914, 32.941517>,  <46.829220, 34.821400, 33.049713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602791, 34.509914, 32.941517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392147, 0.034249, -0.919265,
		0.725106, -0.626447, 0.285981,
		-0.566077, -0.778711, -0.270494,
		46.432968, 34.276302, 32.860371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234844, 34.470631, 32.632439>,  <46.829220, 34.821400, 33.049713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234844, 34.470631, 32.632439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.879288, 34.334736, 32.509502>,  <46.665955, 34.253201, 32.435741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.879288, 34.334736, 32.509502>,  <47.234844, 34.470631, 32.632439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879288, 34.334736, 32.509502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311278, 0.044338, -0.949284,
		0.336131, -0.939476, 0.066340,
		-0.888888, -0.339734, -0.307342,
		46.612621, 34.232815, 32.417301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.444656, 34.003307, 32.226261>,  <47.234844, 34.470631, 32.632439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.444656, 34.003307, 32.226261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.062611, 34.049267, 32.117043>,  <46.833382, 34.076843, 32.051510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.062611, 34.049267, 32.117043>,  <47.444656, 34.003307, 32.226261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062611, 34.049267, 32.117043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260920, -0.110170, -0.959053,
		-0.140277, -0.987249, 0.075245,
		-0.955114, 0.114900, -0.273047,
		46.776077, 34.083736, 32.035130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364574, 33.488407, 31.782158>,  <47.444656, 34.003307, 32.226261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364574, 33.488407, 31.782158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.057457, 33.731632, 31.701414>,  <46.873184, 33.877567, 31.652967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.057457, 33.731632, 31.701414>,  <47.364574, 33.488407, 31.782158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057457, 33.731632, 31.701414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072996, -0.229994, -0.970451,
		-0.636520, -0.759845, 0.132203,
		-0.767798, 0.608061, -0.201861,
		46.827118, 33.914051, 31.640856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842442, 33.147533, 31.425058>,  <47.364574, 33.488407, 31.782158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842442, 33.147533, 31.425058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.784214, 33.535934, 31.349199>,  <46.749279, 33.768974, 31.303684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.784214, 33.535934, 31.349199>,  <46.842442, 33.147533, 31.425058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784214, 33.535934, 31.349199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091325, -0.204059, -0.974689,
		-0.985124, -0.124565, 0.118382,
		-0.145570, 0.971001, -0.189648,
		46.740543, 33.827236, 31.292305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313293, 33.180328, 30.886049>,  <46.842442, 33.147533, 31.425058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313293, 33.180328, 30.886049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.489597, 33.538849, 30.866560>,  <46.595379, 33.753960, 30.854866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.489597, 33.538849, 30.866560>,  <46.313293, 33.180328, 30.886049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489597, 33.538849, 30.866560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163313, -0.133447, -0.977507,
		-0.882644, 0.422887, -0.205196,
		0.440758, 0.896303, -0.048723,
		46.621826, 33.807739, 30.851944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186184, 33.415154, 30.185228>,  <46.313293, 33.180328, 30.886049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186184, 33.415154, 30.185228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452755, 33.698856, 30.277164>,  <46.612698, 33.869080, 30.332327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.452755, 33.698856, 30.277164>,  <46.186184, 33.415154, 30.185228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452755, 33.698856, 30.277164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245458, 0.082374, -0.965901,
		-0.704008, 0.700118, -0.119197,
		0.666426, 0.709260, 0.229841,
		46.652683, 33.911633, 30.346117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032261, 33.903534, 29.770983>,  <46.186184, 33.415154, 30.185228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032261, 33.903534, 29.770983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.409615, 33.992161, 29.869724>,  <46.636024, 34.045338, 29.928968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.409615, 33.992161, 29.869724>,  <46.032261, 33.903534, 29.770983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409615, 33.992161, 29.869724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238282, 0.065049, -0.969015,
		-0.230763, 0.972972, 0.008569,
		0.943382, 0.221571, 0.246853,
		46.692631, 34.058632, 29.943781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274300, 34.527126, 29.371365>,  <46.032261, 33.903534, 29.770983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274300, 34.527126, 29.371365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594112, 34.314564, 29.483335>,  <46.785999, 34.187027, 29.550518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594112, 34.314564, 29.483335>,  <46.274300, 34.527126, 29.371365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594112, 34.314564, 29.483335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362562, 0.055434, -0.930309,
		0.478857, 0.845299, 0.236990,
		0.799527, -0.531409, 0.279929,
		46.833969, 34.155140, 29.567314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951290, 34.865871, 29.139757>,  <46.274300, 34.527126, 29.371365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951290, 34.865871, 29.139757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.059109, 34.482800, 29.180149>,  <47.123798, 34.252956, 29.204384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.059109, 34.482800, 29.180149>,  <46.951290, 34.865871, 29.139757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059109, 34.482800, 29.180149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439881, 0.029164, -0.897583,
		0.856650, 0.286360, 0.429125,
		0.269547, -0.957678, 0.100981,
		47.139973, 34.195496, 29.210443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.498417, 34.812645, 28.654690>,  <46.951290, 34.865871, 29.139757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.498417, 34.812645, 28.654690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.385014, 34.438499, 28.739277>,  <47.316971, 34.214012, 28.790030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.385014, 34.438499, 28.739277>,  <47.498417, 34.812645, 28.654690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385014, 34.438499, 28.739277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267637, -0.288930, -0.919179,
		0.920864, -0.204002, 0.332253,
		-0.283512, -0.935362, 0.211467,
		47.299961, 34.157890, 28.802717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.036964, 34.358120, 28.295441>,  <47.498417, 34.812645, 28.654690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.036964, 34.358120, 28.295441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.696114, 34.155899, 28.349550>,  <47.491604, 34.034565, 28.382015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.696114, 34.155899, 28.349550>,  <48.036964, 34.358120, 28.295441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696114, 34.155899, 28.349550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103936, -0.416815, -0.903030,
		0.512914, -0.755434, 0.407723,
		-0.852125, -0.505554, 0.135274,
		47.440475, 34.004234, 28.390133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.220795, 33.648342, 27.979582>,  <48.036964, 34.358120, 28.295441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.220795, 33.648342, 27.979582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.821575, 33.648201, 28.004532>,  <47.582043, 33.648117, 28.019503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.821575, 33.648201, 28.004532>,  <48.220795, 33.648342, 27.979582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.821575, 33.648201, 28.004532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054419, -0.483825, -0.873471,
		0.030490, -0.875164, 0.482864,
		-0.998053, -0.000355, 0.062377,
		47.522160, 33.648094, 28.023245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.059772, 33.046429, 27.906300>,  <48.220795, 33.648342, 27.979582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.059772, 33.046429, 27.906300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.729298, 33.231144, 27.777197>,  <47.531013, 33.341972, 27.699736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.729298, 33.231144, 27.777197>,  <48.059772, 33.046429, 27.906300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729298, 33.231144, 27.777197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011372, -0.586425, -0.809923,
		-0.563281, -0.665478, 0.489749,
		-0.826188, 0.461783, -0.322754,
		47.481441, 33.369682, 27.680368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.809124, 32.532650, 27.579262>,  <48.059772, 33.046429, 27.906300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.809124, 32.532650, 27.579262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.576157, 32.829304, 27.446135>,  <47.436375, 33.007294, 27.366259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.576157, 32.829304, 27.446135>,  <47.809124, 32.532650, 27.579262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576157, 32.829304, 27.446135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068257, -0.452600, -0.889097,
		-0.810016, -0.495112, 0.314226,
		-0.582422, 0.741631, -0.332818,
		47.401428, 33.051792, 27.346289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.402431, 32.158352, 27.297695>,  <47.809124, 32.532650, 27.579262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.402431, 32.158352, 27.297695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.294994, 32.508862, 27.137693>,  <47.230534, 32.719166, 27.041693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.294994, 32.508862, 27.137693>,  <47.402431, 32.158352, 27.297695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294994, 32.508862, 27.137693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099293, -0.438240, -0.893357,
		-0.958123, -0.200229, 0.204714,
		-0.268590, 0.876273, -0.400007,
		47.214417, 32.771744, 27.017691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782467, 31.982265, 26.945751>,  <47.402431, 32.158352, 27.297695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782467, 31.982265, 26.945751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.933380, 32.321205, 26.796270>,  <47.023926, 32.524570, 26.706581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.933380, 32.321205, 26.796270>,  <46.782467, 31.982265, 26.945751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.933380, 32.321205, 26.796270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060820, -0.425324, -0.902995,
		-0.924100, 0.317954, -0.212002,
		0.377281, 0.847351, -0.373704,
		47.046566, 32.575409, 26.684158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.707306, 37.057186, 39.102928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320457, 36.962212, 39.066471>,  <38.088348, 36.905228, 39.044598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320457, 36.962212, 39.066471>,  <38.707306, 37.057186, 39.102928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320457, 36.962212, 39.066471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213752, -0.564637, -0.797180,
		0.137820, -0.790448, 0.596823,
		-0.967117, -0.237439, -0.091141,
		38.030323, 36.890980, 39.039127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597721, 36.290421, 39.089695>,  <38.707306, 37.057186, 39.102928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597721, 36.290421, 39.089695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285614, 36.444897, 38.892902>,  <38.098351, 36.537582, 38.774826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285614, 36.444897, 38.892902>,  <38.597721, 36.290421, 39.089695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285614, 36.444897, 38.892902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226164, -0.559164, -0.797612,
		-0.583134, -0.733614, 0.348949,
		-0.780259, 0.386195, -0.491985,
		38.051533, 36.560753, 38.745308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377609, 35.793625, 38.603680>,  <38.597721, 36.290421, 39.089695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377609, 35.793625, 38.603680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177162, 36.106361, 38.455299>,  <38.056896, 36.294003, 38.366272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177162, 36.106361, 38.455299>,  <38.377609, 35.793625, 38.603680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177162, 36.106361, 38.455299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076232, -0.387108, -0.918878,
		-0.862017, -0.488740, 0.134384,
		-0.501113, 0.781844, -0.370951,
		38.026829, 36.340916, 38.344013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720779, 35.632820, 38.299191>,  <38.377609, 35.793625, 38.603680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720779, 35.632820, 38.299191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871571, 35.964218, 38.133553>,  <37.962044, 36.163059, 38.034168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871571, 35.964218, 38.133553>,  <37.720779, 35.632820, 38.299191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871571, 35.964218, 38.133553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074325, -0.418583, -0.905132,
		-0.923235, 0.371993, -0.096219,
		0.376979, 0.828498, -0.414099,
		37.984665, 36.212769, 38.009323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395061, 35.664024, 37.652393>,  <37.720779, 35.632820, 38.299191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395061, 35.664024, 37.652393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699341, 35.919468, 37.605888>,  <37.881908, 36.072735, 37.577984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699341, 35.919468, 37.605888>,  <37.395061, 35.664024, 37.652393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699341, 35.919468, 37.605888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071921, -0.260934, -0.962674,
		-0.645106, 0.723945, -0.244422,
		0.760700, 0.638606, -0.116263,
		37.927551, 36.111050, 37.571011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268871, 35.905640, 37.005436>,  <37.395061, 35.664024, 37.652393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268871, 35.905640, 37.005436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660191, 35.952370, 37.073883>,  <37.894981, 35.980408, 37.114952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660191, 35.952370, 37.073883>,  <37.268871, 35.905640, 37.005436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660191, 35.952370, 37.073883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178157, -0.052703, -0.982590,
		-0.105775, 0.991753, -0.072373,
		0.978300, 0.116827, 0.171114,
		37.953682, 35.987419, 37.125217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468708, 36.328884, 36.451508>,  <37.268871, 35.905640, 37.005436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468708, 36.328884, 36.451508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817863, 36.202187, 36.599964>,  <38.027355, 36.126167, 36.689037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817863, 36.202187, 36.599964>,  <37.468708, 36.328884, 36.451508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817863, 36.202187, 36.599964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438004, 0.173487, -0.882074,
		0.215000, 0.932511, 0.290168,
		0.872885, -0.316740, 0.371144,
		38.079727, 36.107166, 36.711308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982059, 36.798920, 36.157375>,  <37.468708, 36.328884, 36.451508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982059, 36.798920, 36.157375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156326, 36.461552, 36.283131>,  <38.260887, 36.259132, 36.358585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156326, 36.461552, 36.283131>,  <37.982059, 36.798920, 36.157375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156326, 36.461552, 36.283131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494501, -0.067579, -0.866546,
		0.752108, 0.532988, 0.387631,
		0.435663, -0.843420, 0.314390,
		38.287025, 36.208527, 36.377449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656147, 36.836220, 36.020855>,  <37.982059, 36.798920, 36.157375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656147, 36.836220, 36.020855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592716, 36.442165, 36.047256>,  <38.554657, 36.205730, 36.063099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592716, 36.442165, 36.047256>,  <38.656147, 36.836220, 36.020855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592716, 36.442165, 36.047256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408823, -0.126366, -0.903823,
		0.898731, -0.116342, 0.422785,
		-0.158578, -0.985138, 0.066006,
		38.545143, 36.146626, 36.067059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202087, 36.615490, 35.684368>,  <38.656147, 36.836220, 36.020855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202087, 36.615490, 35.684368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936539, 36.316353, 35.683411>,  <38.777210, 36.136871, 35.682835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936539, 36.316353, 35.683411>,  <39.202087, 36.615490, 35.684368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936539, 36.316353, 35.683411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291588, -0.255893, -0.921680,
		0.688659, -0.612576, 0.387942,
		-0.663871, -0.747843, -0.002397,
		38.737377, 36.091999, 35.682690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614708, 35.999371, 35.542389>,  <39.202087, 36.615490, 35.684368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614708, 35.999371, 35.542389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234188, 35.928650, 35.441383>,  <39.005875, 35.886215, 35.380779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234188, 35.928650, 35.441383>,  <39.614708, 35.999371, 35.542389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234188, 35.928650, 35.441383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302763, -0.381845, -0.873229,
		0.057969, -0.907157, 0.416780,
		-0.951301, -0.176805, -0.252518,
		38.948799, 35.875607, 35.365627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654762, 35.469067, 35.229828>,  <39.614708, 35.999371, 35.542389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654762, 35.469067, 35.229828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283138, 35.547676, 35.104465>,  <39.060162, 35.594841, 35.029247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283138, 35.547676, 35.104465>,  <39.654762, 35.469067, 35.229828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283138, 35.547676, 35.104465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241075, -0.320949, -0.915901,
		-0.280576, -0.926484, 0.250808,
		-0.929064, 0.196516, -0.313402,
		39.004417, 35.606632, 35.010445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302242, 34.930332, 34.832729>,  <39.654762, 35.469067, 35.229828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302242, 34.930332, 34.832729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148544, 35.264267, 34.675041>,  <39.056328, 35.464626, 34.580429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148544, 35.264267, 34.675041>,  <39.302242, 34.930332, 34.832729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148544, 35.264267, 34.675041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279511, -0.301771, -0.911487,
		-0.879905, -0.460420, -0.117393,
		-0.384241, 0.834834, -0.394222,
		39.033272, 35.514717, 34.556774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771091, 34.772530, 34.354095>,  <39.302242, 34.930332, 34.832729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771091, 34.772530, 34.354095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932541, 35.128056, 34.267288>,  <39.029411, 35.341370, 34.215202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932541, 35.128056, 34.267288>,  <38.771091, 34.772530, 34.354095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932541, 35.128056, 34.267288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348393, -0.368640, -0.861816,
		-0.845997, 0.272239, -0.458448,
		0.403622, 0.888814, -0.217023,
		39.053627, 35.394699, 34.202183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160080, 34.188736, 34.136902>,  <38.771091, 34.772530, 34.354095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160080, 34.188736, 34.136902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131435, 34.193451, 33.737957>,  <39.114250, 34.196278, 33.498589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131435, 34.193451, 33.737957>,  <39.160080, 34.188736, 34.136902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131435, 34.193451, 33.737957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816465, -0.573679, -0.065398,
		-0.572937, -0.818995, 0.031460,
		-0.071609, 0.011783, -0.997363,
		39.109951, 34.196987, 33.438747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484509, 33.713551, 33.570210>,  <39.160080, 34.188736, 34.136902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484509, 33.713551, 33.570210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713394, 33.608906, 33.881115>,  <39.850723, 33.546120, 34.067657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713394, 33.608906, 33.881115>,  <39.484509, 33.713551, 33.570210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713394, 33.608906, 33.881115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782670, -0.457286, 0.422276,
		0.244956, -0.849969, -0.466422,
		0.572210, -0.261615, 0.777260,
		39.885056, 33.530422, 34.114292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058193, 33.095345, 33.884495>,  <39.484509, 33.713551, 33.570210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058193, 33.095345, 33.884495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337666, 33.160748, 34.163094>,  <39.505348, 33.199989, 34.330254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337666, 33.160748, 34.163094>,  <39.058193, 33.095345, 33.884495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337666, 33.160748, 34.163094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587628, -0.424162, 0.689043,
		0.408095, -0.890702, -0.200269,
		0.698678, 0.163511, 0.696500,
		39.547268, 33.209801, 34.372044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266586, 32.444935, 34.242466>,  <39.058193, 33.095345, 33.884495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266586, 32.444935, 34.242466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355545, 32.734543, 34.503643>,  <39.408920, 32.908306, 34.660351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355545, 32.734543, 34.503643>,  <39.266586, 32.444935, 34.242466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355545, 32.734543, 34.503643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678274, -0.366179, 0.637070,
		0.700345, -0.584557, 0.409646,
		0.222400, 0.724021, 0.652941,
		39.422264, 32.951748, 34.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252655, 32.141781, 34.870571>,  <39.266586, 32.444935, 34.242466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252655, 32.141781, 34.870571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226795, 32.532673, 34.951412>,  <39.211277, 32.767208, 34.999916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226795, 32.532673, 34.951412>,  <39.252655, 32.141781, 34.870571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226795, 32.532673, 34.951412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691965, -0.189828, 0.696527,
		0.719030, -0.094814, 0.688481,
		-0.064652, 0.977229, 0.202100,
		39.207401, 32.825840, 35.012043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441277, 32.263271, 35.680847>,  <39.252655, 32.141781, 34.870571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441277, 32.263271, 35.680847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205421, 32.565693, 35.567207>,  <39.063908, 32.747147, 35.499023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205421, 32.565693, 35.567207>,  <39.441277, 32.263271, 35.680847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205421, 32.565693, 35.567207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609622, -0.185872, 0.770592,
		0.529799, 0.627567, 0.570502,
		-0.589638, 0.756050, -0.284104,
		39.028530, 32.792507, 35.481976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318943, 32.769672, 36.305557>,  <39.441277, 32.263271, 35.680847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318943, 32.769672, 36.305557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005272, 32.818813, 36.062260>,  <38.817070, 32.848297, 35.916279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005272, 32.818813, 36.062260>,  <39.318943, 32.769672, 36.305557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005272, 32.818813, 36.062260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616889, -0.048287, 0.785568,
		0.067140, 0.991250, 0.113654,
		-0.784181, 0.122855, -0.608249,
		38.770016, 32.855671, 35.879784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925293, 33.184425, 36.670406>,  <39.318943, 32.769672, 36.305557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925293, 33.184425, 36.670406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676609, 33.075191, 36.376766>,  <38.527401, 33.009651, 36.200581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676609, 33.075191, 36.376766>,  <38.925293, 33.184425, 36.670406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676609, 33.075191, 36.376766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764171, 0.005869, 0.644987,
		-0.171829, 0.961972, -0.212334,
		-0.621705, -0.273087, -0.734102,
		38.490097, 32.993267, 36.156536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237766, 33.630589, 36.729141>,  <38.925293, 33.184425, 36.670406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237766, 33.630589, 36.729141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138519, 33.292824, 36.539230>,  <38.078972, 33.090164, 36.425285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138519, 33.292824, 36.539230>,  <38.237766, 33.630589, 36.729141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138519, 33.292824, 36.539230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797286, -0.100384, 0.595196,
		-0.550248, 0.526212, -0.648327,
		-0.248117, -0.844407, -0.474777,
		38.064083, 33.039501, 36.396797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488640, 33.620670, 36.613632>,  <38.237766, 33.630589, 36.729141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488640, 33.620670, 36.613632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596966, 33.237488, 36.575714>,  <37.661961, 33.007580, 36.552963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596966, 33.237488, 36.575714>,  <37.488640, 33.620670, 36.613632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596966, 33.237488, 36.575714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711559, -0.265531, 0.650521,
		-0.648340, -0.108716, -0.753549,
		0.270813, -0.957953, -0.094797,
		37.678211, 32.950104, 36.547276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841648, 33.313000, 36.454651>,  <37.488640, 33.620670, 36.613632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841648, 33.313000, 36.454651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087719, 33.006447, 36.528641>,  <37.235363, 32.822517, 36.573036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087719, 33.006447, 36.528641>,  <36.841648, 33.313000, 36.454651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087719, 33.006447, 36.528641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653800, -0.364810, 0.662918,
		-0.440566, -0.528750, -0.725483,
		0.615180, -0.766379, 0.184973,
		37.272274, 32.776535, 36.584133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343826, 32.707870, 36.539635>,  <36.841648, 33.313000, 36.454651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343826, 32.707870, 36.539635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694973, 32.638966, 36.718372>,  <36.905663, 32.597622, 36.825615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694973, 32.638966, 36.718372>,  <36.343826, 32.707870, 36.539635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694973, 32.638966, 36.718372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478778, -0.337108, 0.810635,
		0.010993, -0.925572, -0.378413,
		0.877867, -0.172265, 0.446849,
		36.958332, 32.587284, 36.852428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342190, 32.006115, 36.818142>,  <36.343826, 32.707870, 36.539635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342190, 32.006115, 36.818142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601055, 32.217354, 37.038067>,  <36.756374, 32.344097, 37.170021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601055, 32.217354, 37.038067>,  <36.342190, 32.006115, 36.818142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601055, 32.217354, 37.038067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436776, -0.334250, 0.835167,
		0.624824, -0.780633, 0.014346,
		0.647164, 0.528099, 0.549810,
		36.795204, 32.375782, 37.203011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519623, 31.571560, 37.424557>,  <36.342190, 32.006115, 36.818142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519623, 31.571560, 37.424557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613579, 31.944891, 37.533173>,  <36.669952, 32.168888, 37.598343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613579, 31.944891, 37.533173>,  <36.519623, 31.571560, 37.424557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613579, 31.944891, 37.533173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358529, -0.176466, 0.916688,
		0.903485, -0.312672, 0.293175,
		0.234887, 0.933325, 0.271536,
		36.684044, 32.224888, 37.614632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218697, 30.985392, 37.617664>,  <36.519623, 31.571560, 37.424557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218697, 30.985392, 37.617664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824497, 31.030756, 37.668159>,  <35.587978, 31.057974, 37.698456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824497, 31.030756, 37.668159>,  <36.218697, 30.985392, 37.617664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824497, 31.030756, 37.668159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066460, 0.426531, -0.902028,
		-0.156145, -0.897334, -0.412807,
		-0.985496, 0.113412, 0.126238,
		35.528847, 31.064779, 37.706032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879005, 30.771610, 36.880886>,  <36.218697, 30.985392, 37.617664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879005, 30.771610, 36.880886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605328, 30.977236, 37.087814>,  <35.441120, 31.100611, 37.211971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605328, 30.977236, 37.087814>,  <35.879005, 30.771610, 36.880886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605328, 30.977236, 37.087814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414201, 0.309932, -0.855792,
		-0.600264, -0.799801, 0.000872,
		-0.684193, 0.514062, 0.517320,
		35.400070, 31.131454, 37.243011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212612, 30.586260, 36.572487>,  <35.879005, 30.771610, 36.880886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212612, 30.586260, 36.572487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169502, 30.950659, 36.731716>,  <35.143639, 31.169298, 36.827255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169502, 30.950659, 36.731716>,  <35.212612, 30.586260, 36.572487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169502, 30.950659, 36.731716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306215, 0.350525, -0.885079,
		-0.945842, -0.217284, 0.241184,
		-0.107772, 0.910999, 0.398077,
		35.137169, 31.223959, 36.851139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663742, 30.767456, 36.223343>,  <35.212612, 30.586260, 36.572487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663742, 30.767456, 36.223343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766281, 31.108263, 36.405926>,  <34.827805, 31.312748, 36.515476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766281, 31.108263, 36.405926>,  <34.663742, 30.767456, 36.223343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766281, 31.108263, 36.405926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302088, 0.519199, -0.799484,
		-0.918167, 0.067053, 0.390479,
		0.256344, 0.852019, 0.456456,
		34.843185, 31.363869, 36.542862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079365, 31.153212, 36.164940>,  <34.663742, 30.767456, 36.223343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079365, 31.153212, 36.164940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381996, 31.409023, 36.219486>,  <34.563576, 31.562511, 36.252213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381996, 31.409023, 36.219486>,  <34.079365, 31.153212, 36.164940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381996, 31.409023, 36.219486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385937, 0.605056, -0.696390,
		-0.527871, 0.474244, 0.704589,
		0.756574, 0.639531, 0.136363,
		34.608967, 31.600883, 36.260395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742550, 31.776468, 36.219769>,  <34.079365, 31.153212, 36.164940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742550, 31.776468, 36.219769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119007, 31.869558, 36.121723>,  <34.344883, 31.925413, 36.062897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119007, 31.869558, 36.121723>,  <33.742550, 31.776468, 36.219769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119007, 31.869558, 36.121723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337938, 0.661730, -0.669262,
		0.006447, 0.712707, 0.701432,
		0.941146, 0.232726, -0.245117,
		34.401352, 31.939377, 36.048187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715363, 32.470348, 36.123142>,  <33.742550, 31.776468, 36.219769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715363, 32.470348, 36.123142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053638, 32.354191, 35.944046>,  <34.256603, 32.284496, 35.836590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053638, 32.354191, 35.944046>,  <33.715363, 32.470348, 36.123142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053638, 32.354191, 35.944046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187585, 0.623693, -0.758827,
		0.499615, 0.725725, 0.472979,
		0.845693, -0.290398, -0.447741,
		34.307346, 32.267071, 35.809723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977566, 33.064758, 35.896778>,  <33.715363, 32.470348, 36.123142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977566, 33.064758, 35.896778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157333, 32.783558, 35.676300>,  <34.265194, 32.614838, 35.544014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157333, 32.783558, 35.676300>,  <33.977566, 33.064758, 35.896778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157333, 32.783558, 35.676300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193724, 0.525642, -0.828354,
		0.872065, 0.479056, 0.100044,
		0.449415, -0.702998, -0.551199,
		34.292156, 32.572659, 35.510941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119907, 33.446869, 35.271629>,  <33.977566, 33.064758, 35.896778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119907, 33.446869, 35.271629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197277, 33.062256, 35.193619>,  <34.243698, 32.831486, 35.146812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197277, 33.062256, 35.193619>,  <34.119907, 33.446869, 35.271629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197277, 33.062256, 35.193619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320928, 0.125833, -0.938707,
		0.927142, 0.244160, -0.284244,
		0.193427, -0.961536, -0.195023,
		34.255306, 32.773796, 35.135113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572136, 33.462837, 34.681602>,  <34.119907, 33.446869, 35.271629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572136, 33.462837, 34.681602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358452, 33.125023, 34.696487>,  <34.230240, 32.922337, 34.705418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358452, 33.125023, 34.696487>,  <34.572136, 33.462837, 34.681602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358452, 33.125023, 34.696487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393300, 0.209336, -0.895262,
		0.748287, -0.492894, -0.443984,
		-0.534211, -0.844532, 0.037212,
		34.198189, 32.871662, 34.707649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634640, 33.162067, 33.982853>,  <34.572136, 33.462837, 34.681602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634640, 33.162067, 33.982853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298180, 33.000717, 34.126934>,  <34.096302, 32.903908, 34.213383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298180, 33.000717, 34.126934>,  <34.634640, 33.162067, 33.982853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298180, 33.000717, 34.126934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440852, 0.125674, -0.888738,
		0.313231, -0.906361, -0.283542,
		-0.841151, -0.403380, 0.360207,
		34.045834, 32.879704, 34.234997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501457, 32.578228, 33.605228>,  <34.634640, 33.162067, 33.982853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501457, 32.578228, 33.605228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146004, 32.694668, 33.746979>,  <33.932732, 32.764530, 33.832031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146004, 32.694668, 33.746979>,  <34.501457, 32.578228, 33.605228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146004, 32.694668, 33.746979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366440, 0.013944, -0.930337,
		-0.275761, -0.956592, 0.094279,
		-0.888638, 0.291099, 0.354378,
		33.879414, 32.781998, 33.853291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.415512, 28.628424, 40.731522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.227005, 28.964842, 40.837765>,  <35.113899, 29.166693, 40.901512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.227005, 28.964842, 40.837765>,  <35.415512, 28.628424, 40.731522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227005, 28.964842, 40.837765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020746, 0.311635, -0.949976,
		-0.881746, -0.442183, -0.164312,
		-0.471268, 0.841046, 0.265609,
		35.085625, 29.217155, 40.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989494, 28.758272, 40.178829>,  <35.415512, 28.628424, 40.731522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989494, 28.758272, 40.178829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002411, 29.105310, 40.377319>,  <35.010159, 29.313534, 40.496414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002411, 29.105310, 40.377319>,  <34.989494, 28.758272, 40.178829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002411, 29.105310, 40.377319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021700, 0.495757, -0.868190,
		-0.999243, 0.038800, -0.002820,
		0.032288, 0.867594, 0.496223,
		35.012096, 29.365589, 40.526188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385685, 29.125233, 39.860115>,  <34.989494, 28.758272, 40.178829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385685, 29.125233, 39.860115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.630947, 29.390478, 40.031849>,  <34.778103, 29.549625, 40.134888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.630947, 29.390478, 40.031849>,  <34.385685, 29.125233, 39.860115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630947, 29.390478, 40.031849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030821, 0.563152, -0.825778,
		-0.789364, 0.493095, 0.365735,
		0.613152, 0.663111, 0.429334,
		34.814892, 29.589411, 40.160648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170982, 29.729918, 39.745270>,  <34.385685, 29.125233, 39.860115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170982, 29.729918, 39.745270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534248, 29.865194, 39.843948>,  <34.752209, 29.946360, 39.903156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534248, 29.865194, 39.843948>,  <34.170982, 29.729918, 39.745270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534248, 29.865194, 39.843948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057135, 0.483662, -0.873388,
		-0.414688, 0.807278, 0.419924,
		0.908168, 0.338191, 0.246693,
		34.806698, 29.966652, 39.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154015, 30.379892, 39.504276>,  <34.170982, 29.729918, 39.745270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154015, 30.379892, 39.504276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.541859, 30.293140, 39.549561>,  <34.774567, 30.241089, 39.576733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.541859, 30.293140, 39.549561>,  <34.154015, 30.379892, 39.504276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541859, 30.293140, 39.549561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211644, 0.511469, -0.832830,
		0.122720, 0.831482, 0.541827,
		0.969611, -0.216880, 0.113211,
		34.832741, 30.228077, 39.583523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545494, 31.037941, 39.531105>,  <34.154015, 30.379892, 39.504276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545494, 31.037941, 39.531105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784744, 30.742365, 39.407028>,  <34.928295, 30.565020, 39.332584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784744, 30.742365, 39.407028>,  <34.545494, 31.037941, 39.531105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784744, 30.742365, 39.407028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137364, 0.475857, -0.868730,
		0.789545, 0.476998, 0.386124,
		0.598122, -0.738941, -0.310188,
		34.964180, 30.520683, 39.313972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146091, 31.292582, 39.390911>,  <34.545494, 31.037941, 39.531105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146091, 31.292582, 39.390911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.156681, 30.959133, 39.170231>,  <35.163036, 30.759064, 39.037823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.156681, 30.959133, 39.170231>,  <35.146091, 31.292582, 39.390911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156681, 30.959133, 39.170231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248107, 0.540108, -0.804193,
		0.968371, -0.115589, 0.221128,
		0.026477, -0.833620, -0.551703,
		35.164623, 30.709047, 39.004719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594696, 31.488422, 38.926575>,  <35.146091, 31.292582, 39.390911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594696, 31.488422, 38.926575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457840, 31.156179, 38.750832>,  <35.375725, 30.956835, 38.645386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457840, 31.156179, 38.750832>,  <35.594696, 31.488422, 38.926575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457840, 31.156179, 38.750832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282249, 0.355137, -0.891187,
		0.896257, -0.428918, 0.112932,
		-0.342140, -0.830607, -0.439355,
		35.355198, 30.906998, 38.619026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068775, 31.249796, 38.470745>,  <35.594696, 31.488422, 38.926575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068775, 31.249796, 38.470745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721157, 31.108507, 38.332188>,  <35.512585, 31.023733, 38.249054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721157, 31.108507, 38.332188>,  <36.068775, 31.249796, 38.470745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721157, 31.108507, 38.332188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169768, 0.444733, -0.879427,
		0.464688, -0.823070, -0.326528,
		-0.869048, -0.353225, -0.346393,
		35.460442, 31.002541, 38.228271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711346, 31.515066, 38.304020>,  <36.068775, 31.249796, 38.470745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711346, 31.515066, 38.304020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670578, 31.904959, 38.224514>,  <36.646118, 32.138893, 38.176811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670578, 31.904959, 38.224514>,  <36.711346, 31.515066, 38.304020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670578, 31.904959, 38.224514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004834, 0.199317, 0.979923,
		0.994781, 0.100838, -0.015603,
		-0.101923, 0.974733, -0.198764,
		36.639999, 32.197380, 38.164886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235481, 31.895260, 38.649445>,  <36.711346, 31.515066, 38.304020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235481, 31.895260, 38.649445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951630, 32.171673, 38.594444>,  <36.781319, 32.337521, 38.561443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951630, 32.171673, 38.594444>,  <37.235481, 31.895260, 38.649445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951630, 32.171673, 38.594444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048641, 0.146643, 0.987993,
		0.702898, 0.707793, -0.070450,
		-0.709626, 0.691031, -0.137503,
		36.738743, 32.378983, 38.553192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421440, 32.319046, 39.088848>,  <37.235481, 31.895260, 38.649445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421440, 32.319046, 39.088848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.047947, 32.436626, 39.007141>,  <36.823849, 32.507175, 38.958118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.047947, 32.436626, 39.007141>,  <37.421440, 32.319046, 39.088848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047947, 32.436626, 39.007141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107253, 0.314685, 0.943117,
		0.341514, 0.902532, -0.262305,
		-0.933737, 0.293955, -0.204269,
		36.767826, 32.524815, 38.945862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322155, 33.042797, 39.309513>,  <37.421440, 32.319046, 39.088848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322155, 33.042797, 39.309513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949890, 32.897381, 39.292973>,  <36.726532, 32.810131, 39.283047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949890, 32.897381, 39.292973>,  <37.322155, 33.042797, 39.309513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949890, 32.897381, 39.292973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142587, 0.256273, 0.956030,
		-0.336958, 0.895635, -0.290340,
		-0.930660, -0.363540, -0.041353,
		36.670692, 32.788319, 39.280567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991901, 33.503235, 39.787937>,  <37.322155, 33.042797, 39.309513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991901, 33.503235, 39.787937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744019, 33.191227, 39.753239>,  <36.595287, 33.004021, 39.732418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744019, 33.191227, 39.753239>,  <36.991901, 33.503235, 39.787937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744019, 33.191227, 39.753239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287377, 0.122674, 0.949929,
		-0.730324, 0.613610, -0.300183,
		-0.619710, -0.780022, -0.086745,
		36.558105, 32.957222, 39.727215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562248, 33.621372, 40.251469>,  <36.991901, 33.503235, 39.787937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562248, 33.621372, 40.251469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455883, 33.238384, 40.206676>,  <36.392063, 33.008591, 40.179802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455883, 33.238384, 40.206676>,  <36.562248, 33.621372, 40.251469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455883, 33.238384, 40.206676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272349, -0.036811, 0.961494,
		-0.924726, 0.286167, -0.250978,
		-0.265909, -0.957472, -0.111978,
		36.376110, 32.951141, 40.173084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831924, 33.555405, 40.475704>,  <36.562248, 33.621372, 40.251469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831924, 33.555405, 40.475704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.996372, 33.190819, 40.481514>,  <36.095039, 32.972065, 40.485001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.996372, 33.190819, 40.481514>,  <35.831924, 33.555405, 40.475704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996372, 33.190819, 40.481514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267308, -0.105306, 0.957840,
		-0.871509, -0.397667, -0.286935,
		0.411118, -0.911467, 0.014524,
		36.119709, 32.917377, 40.485870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274693, 33.140099, 40.818947>,  <35.831924, 33.555405, 40.475704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274693, 33.140099, 40.818947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627094, 32.958977, 40.873806>,  <35.838535, 32.850304, 40.906719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627094, 32.958977, 40.873806>,  <35.274693, 33.140099, 40.818947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627094, 32.958977, 40.873806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196693, -0.086905, 0.976606,
		-0.430291, -0.887366, -0.165626,
		0.881000, -0.452802, 0.137145,
		35.891396, 32.823135, 40.914951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102039, 32.668564, 41.268105>,  <35.274693, 33.140099, 40.818947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102039, 32.668564, 41.268105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.499222, 32.684483, 41.312748>,  <35.737530, 32.694035, 41.339535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.499222, 32.684483, 41.312748>,  <35.102039, 32.668564, 41.268105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499222, 32.684483, 41.312748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107400, -0.095577, 0.989611,
		0.050050, -0.994626, -0.090629,
		0.992955, 0.039797, 0.111607,
		35.797108, 32.696423, 41.346230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205254, 32.238361, 41.786636>,  <35.102039, 32.668564, 41.268105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205254, 32.238361, 41.786636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553581, 32.434650, 41.774872>,  <35.762577, 32.552425, 41.767815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553581, 32.434650, 41.774872>,  <35.205254, 32.238361, 41.786636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553581, 32.434650, 41.774872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052895, -0.034051, 0.998020,
		0.488752, -0.870649, -0.055609,
		0.870818, 0.490725, -0.029410,
		35.814827, 32.581867, 41.766048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649754, 31.901999, 42.220127>,  <35.205254, 32.238361, 41.786636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649754, 31.901999, 42.220127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826077, 32.259319, 42.185017>,  <35.931870, 32.473713, 42.163952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826077, 32.259319, 42.185017>,  <35.649754, 31.901999, 42.220127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826077, 32.259319, 42.185017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041022, 0.077636, 0.996137,
		0.896664, -0.442705, -0.002422,
		0.440807, 0.893300, -0.087774,
		35.958317, 32.527309, 42.158684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324581, 31.819767, 42.506203>,  <35.649754, 31.901999, 42.220127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324581, 31.819767, 42.506203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224434, 32.206886, 42.516659>,  <36.164345, 32.439159, 42.522930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224434, 32.206886, 42.516659>,  <36.324581, 31.819767, 42.506203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224434, 32.206886, 42.516659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262352, 0.041834, 0.964065,
		0.931926, 0.248232, -0.264377,
		-0.250372, 0.967797, 0.026138,
		36.149323, 32.497227, 42.524502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728851, 32.007919, 43.044827>,  <36.324581, 31.819767, 42.506203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728851, 32.007919, 43.044827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478897, 32.313591, 42.980900>,  <36.328922, 32.496994, 42.942543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.478897, 32.313591, 42.980900>,  <36.728851, 32.007919, 43.044827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478897, 32.313591, 42.980900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146593, 0.315915, 0.937394,
		0.766828, 0.562338, -0.309435,
		-0.624888, 0.764181, -0.159818,
		36.291431, 32.542847, 42.932953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063942, 32.625603, 43.082867>,  <36.728851, 32.007919, 43.044827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063942, 32.625603, 43.082867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685192, 32.713905, 43.176418>,  <36.457943, 32.766888, 43.232548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685192, 32.713905, 43.176418>,  <37.063942, 32.625603, 43.082867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685192, 32.713905, 43.176418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289555, 0.268666, 0.918682,
		0.139973, 0.937594, -0.318315,
		-0.946871, 0.220760, 0.233879,
		36.401131, 32.780132, 43.246582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.420628, 35.308861, 43.376545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614075, 34.962589, 43.428268>,  <32.730145, 34.754826, 43.459301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614075, 34.962589, 43.428268>,  <32.420628, 35.308861, 43.376545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614075, 34.962589, 43.428268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236356, -0.013082, -0.971578,
		0.842764, 0.500434, 0.198281,
		0.483617, -0.865676, 0.129306,
		32.759159, 34.702885, 43.467060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031609, 35.412907, 43.062809>,  <32.420628, 35.308861, 43.376545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031609, 35.412907, 43.062809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967133, 35.018597, 43.081886>,  <32.928448, 34.782013, 43.093334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.967133, 35.018597, 43.081886>,  <33.031609, 35.412907, 43.062809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967133, 35.018597, 43.081886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178258, -0.076611, -0.980997,
		0.970692, -0.149624, 0.188070,
		-0.161189, -0.985770, 0.047694,
		32.918777, 34.722866, 43.096195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592182, 35.033115, 42.759579>,  <33.031609, 35.412907, 43.062809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592182, 35.033115, 42.759579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.294155, 34.767399, 42.735573>,  <33.115341, 34.607971, 42.721169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.294155, 34.767399, 42.735573>,  <33.592182, 35.033115, 42.759579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294155, 34.767399, 42.735573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186473, -0.121061, -0.974973,
		0.640397, -0.737608, 0.214070,
		-0.745063, -0.664288, -0.060017,
		33.070637, 34.568111, 42.717567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845535, 34.525532, 42.256054>,  <33.592182, 35.033115, 42.759579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845535, 34.525532, 42.256054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448204, 34.491657, 42.287365>,  <33.209805, 34.471333, 42.306152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448204, 34.491657, 42.287365>,  <33.845535, 34.525532, 42.256054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448204, 34.491657, 42.287365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063291, -0.167089, -0.983908,
		0.096408, -0.982298, 0.160614,
		-0.993327, -0.084691, 0.078279,
		33.150208, 34.466251, 42.310848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765617, 33.922501, 41.789722>,  <33.845535, 34.525532, 42.256054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765617, 33.922501, 41.789722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396328, 34.059799, 41.858810>,  <33.174751, 34.142178, 41.900265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396328, 34.059799, 41.858810>,  <33.765617, 33.922501, 41.789722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396328, 34.059799, 41.858810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216906, -0.094503, -0.971608,
		-0.317178, -0.934479, 0.161699,
		-0.923228, 0.343246, 0.172720,
		33.119358, 34.162773, 41.910625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393795, 33.453712, 41.507069>,  <33.765617, 33.922501, 41.789722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393795, 33.453712, 41.507069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163036, 33.779655, 41.529697>,  <33.024582, 33.975220, 41.543274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.163036, 33.779655, 41.529697>,  <33.393795, 33.453712, 41.507069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163036, 33.779655, 41.529697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209921, -0.080967, -0.974360,
		-0.789383, -0.573980, 0.217764,
		-0.576894, 0.814857, 0.056576,
		32.989967, 34.024113, 41.546669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734196, 33.295033, 41.231953>,  <33.393795, 33.453712, 41.507069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734196, 33.295033, 41.231953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764050, 33.693008, 41.205040>,  <32.781960, 33.931793, 41.188892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764050, 33.693008, 41.205040>,  <32.734196, 33.295033, 41.231953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764050, 33.693008, 41.205040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335816, -0.038454, -0.941142,
		-0.938966, 0.092835, 0.331247,
		0.074633, 0.994939, -0.067283,
		32.786438, 33.991489, 41.184856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180828, 33.429985, 40.701145>,  <32.734196, 33.295033, 41.231953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180828, 33.429985, 40.701145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386131, 33.770916, 40.741356>,  <32.509315, 33.975475, 40.765480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386131, 33.770916, 40.741356>,  <32.180828, 33.429985, 40.701145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386131, 33.770916, 40.741356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060588, 0.152820, -0.986395,
		-0.856091, 0.500189, 0.130077,
		0.513262, 0.852325, 0.100523,
		32.540112, 34.026615, 40.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803576, 33.958454, 40.340775>,  <32.180828, 33.429985, 40.701145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803576, 33.958454, 40.340775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170986, 34.111183, 40.381790>,  <32.391434, 34.202820, 40.406399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170986, 34.111183, 40.381790>,  <31.803576, 33.958454, 40.340775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170986, 34.111183, 40.381790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136558, 0.549809, -0.824052,
		-0.371023, 0.742912, 0.557157,
		0.918528, 0.381827, 0.102542,
		32.446545, 34.225731, 40.412552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784504, 34.659794, 40.307594>,  <31.803576, 33.958454, 40.340775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784504, 34.659794, 40.307594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156147, 34.579597, 40.183296>,  <32.379131, 34.531479, 40.108719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156147, 34.579597, 40.183296>,  <31.784504, 34.659794, 40.307594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156147, 34.579597, 40.183296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120766, 0.629727, -0.767372,
		0.349534, 0.750498, 0.560873,
		0.929108, -0.200489, -0.310745,
		32.434879, 34.519451, 40.090073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124355, 35.292641, 40.154556>,  <31.784504, 34.659794, 40.307594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124355, 35.292641, 40.154556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369415, 35.023430, 39.988815>,  <32.516449, 34.861904, 39.889370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369415, 35.023430, 39.988815>,  <32.124355, 35.292641, 40.154556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369415, 35.023430, 39.988815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169072, 0.623732, -0.763134,
		0.772061, 0.397476, 0.495919,
		0.612647, -0.673032, -0.414357,
		32.553211, 34.821522, 39.864510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632084, 35.680168, 39.891212>,  <32.124355, 35.292641, 40.154556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632084, 35.680168, 39.891212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635696, 35.347042, 39.669823>,  <32.637863, 35.147167, 39.536987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635696, 35.347042, 39.669823>,  <32.632084, 35.680168, 39.891212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635696, 35.347042, 39.669823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162475, 0.547362, -0.820973,
		0.986671, -0.082515, 0.140253,
		0.009027, -0.832818, -0.553473,
		32.638405, 35.097198, 39.503780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249203, 35.752876, 39.394238>,  <32.632084, 35.680168, 39.891212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249203, 35.752876, 39.394238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.017590, 35.456707, 39.257710>,  <32.878624, 35.279007, 39.175793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.017590, 35.456707, 39.257710>,  <33.249203, 35.752876, 39.394238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017590, 35.456707, 39.257710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156967, 0.309568, -0.937832,
		0.800054, -0.596608, -0.063027,
		-0.579029, -0.740424, -0.341318,
		32.843880, 35.234581, 39.155315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609665, 35.660915, 38.833046>,  <33.249203, 35.752876, 39.394238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609665, 35.660915, 38.833046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250206, 35.500774, 38.761333>,  <33.034531, 35.404690, 38.718307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250206, 35.500774, 38.761333>,  <33.609665, 35.660915, 38.833046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250206, 35.500774, 38.761333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021231, 0.368514, -0.929380,
		0.438152, -0.838993, -0.322665,
		-0.898650, -0.400360, -0.179278,
		32.980610, 35.380669, 38.707550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325191, 35.427605, 38.943226>,  <33.609665, 35.660915, 38.833046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325191, 35.427605, 38.943226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491810, 35.755573, 38.786144>,  <34.591782, 35.952354, 38.691895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491810, 35.755573, 38.786144>,  <34.325191, 35.427605, 38.943226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491810, 35.755573, 38.786144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185765, 0.346087, 0.919628,
		0.889934, -0.456016, -0.008153,
		0.416544, 0.819922, -0.392707,
		34.616772, 36.001549, 38.668331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047421, 35.558174, 39.132633>,  <34.325191, 35.427605, 38.943226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047421, 35.558174, 39.132633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.861996, 35.904411, 39.056896>,  <34.750740, 36.112156, 39.011452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.861996, 35.904411, 39.056896>,  <35.047421, 35.558174, 39.132633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861996, 35.904411, 39.056896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239870, 0.328308, 0.913606,
		0.852979, 0.378094, -0.359822,
		-0.463561, 0.865597, -0.189346,
		34.722927, 36.164089, 39.000092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430832, 36.093231, 39.546638>,  <35.047421, 35.558174, 39.132633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430832, 36.093231, 39.546638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118614, 36.318638, 39.438416>,  <34.931286, 36.453884, 39.373482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118614, 36.318638, 39.438416>,  <35.430832, 36.093231, 39.546638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118614, 36.318638, 39.438416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003384, 0.436623, 0.899638,
		0.625095, 0.701289, -0.342709,
		-0.780541, 0.563519, -0.270558,
		34.884453, 36.487694, 39.357246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593945, 36.582005, 39.913288>,  <35.430832, 36.093231, 39.546638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593945, 36.582005, 39.913288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205406, 36.614349, 39.823883>,  <34.972282, 36.633755, 39.770241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205406, 36.614349, 39.823883>,  <35.593945, 36.582005, 39.913288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205406, 36.614349, 39.823883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164624, 0.449413, 0.878024,
		0.171446, 0.889657, -0.423222,
		-0.971342, 0.080861, -0.223509,
		34.914005, 36.638607, 39.756832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466526, 37.239132, 40.054356>,  <35.593945, 36.582005, 39.913288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466526, 37.239132, 40.054356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116627, 37.045315, 40.056835>,  <34.906689, 36.929024, 40.058323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116627, 37.045315, 40.056835>,  <35.466526, 37.239132, 40.054356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116627, 37.045315, 40.056835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151904, 0.286337, 0.946011,
		-0.460161, 0.826575, -0.324076,
		-0.874744, -0.484546, 0.006201,
		34.854202, 36.899952, 40.058697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850319, 37.723915, 40.313892>,  <35.466526, 37.239132, 40.054356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850319, 37.723915, 40.313892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810608, 37.332058, 40.383690>,  <34.786781, 37.096943, 40.425568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810608, 37.332058, 40.383690>,  <34.850319, 37.723915, 40.313892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810608, 37.332058, 40.383690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153640, 0.188346, 0.970011,
		-0.983127, 0.069491, -0.169211,
		-0.099277, -0.979641, 0.174491,
		34.780827, 37.038166, 40.436039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322380, 37.806072, 40.765690>,  <34.850319, 37.723915, 40.313892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322380, 37.806072, 40.765690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.455723, 37.432121, 40.814465>,  <34.535728, 37.207748, 40.843731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.455723, 37.432121, 40.814465>,  <34.322380, 37.806072, 40.765690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455723, 37.432121, 40.814465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286999, 0.022575, 0.957665,
		-0.898056, -0.354242, -0.260784,
		0.333358, -0.934881, 0.121941,
		34.555729, 37.151657, 40.851048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770824, 37.447151, 41.069981>,  <34.322380, 37.806072, 40.765690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770824, 37.447151, 41.069981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094978, 37.235779, 41.171200>,  <34.289471, 37.108955, 41.231930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.094978, 37.235779, 41.171200>,  <33.770824, 37.447151, 41.069981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094978, 37.235779, 41.171200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345896, -0.082907, 0.934603,
		-0.472892, -0.844920, -0.249968,
		0.810388, -0.528429, 0.253048,
		34.338097, 37.077251, 41.247116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496719, 36.917374, 41.413292>,  <33.770824, 37.447151, 41.069981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496719, 36.917374, 41.413292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878170, 36.951019, 41.528896>,  <34.107040, 36.971207, 41.598259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878170, 36.951019, 41.528896>,  <33.496719, 36.917374, 41.413292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878170, 36.951019, 41.528896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279778, -0.106435, 0.954147,
		0.111016, -0.990756, -0.077966,
		0.953624, 0.084112, 0.289008,
		34.164257, 36.976254, 41.615601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545017, 36.366001, 41.878971>,  <33.496719, 36.917374, 41.413292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545017, 36.366001, 41.878971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864296, 36.594185, 41.956387>,  <34.055862, 36.731094, 42.002838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864296, 36.594185, 41.956387>,  <33.545017, 36.366001, 41.878971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864296, 36.594185, 41.956387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093722, -0.199770, 0.975350,
		0.595061, -0.796661, -0.105991,
		0.798197, 0.570459, 0.193540,
		34.103756, 36.765324, 42.014450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008610, 35.977364, 42.351154>,  <33.545017, 36.366001, 41.878971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008610, 35.977364, 42.351154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121296, 36.354740, 42.421074>,  <34.188908, 36.581165, 42.463024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121296, 36.354740, 42.421074>,  <34.008610, 35.977364, 42.351154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121296, 36.354740, 42.421074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137975, -0.140452, 0.980426,
		0.949526, -0.300317, 0.090605,
		0.281713, 0.943442, 0.174800,
		34.205811, 36.637772, 42.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536255, 35.844860, 42.881569>,  <34.008610, 35.977364, 42.351154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536255, 35.844860, 42.881569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427807, 36.229855, 42.885677>,  <34.362740, 36.460854, 42.888142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427807, 36.229855, 42.885677>,  <34.536255, 35.844860, 42.881569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427807, 36.229855, 42.885677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198250, 0.045392, 0.979100,
		0.941908, 0.267492, -0.203121,
		-0.271122, 0.962490, 0.010276,
		34.346470, 36.518600, 42.888760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044380, 36.206642, 43.211201>,  <34.536255, 35.844860, 42.881569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044380, 36.206642, 43.211201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708786, 36.414742, 43.275013>,  <34.507431, 36.539600, 43.313301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708786, 36.414742, 43.275013>,  <35.044380, 36.206642, 43.211201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708786, 36.414742, 43.275013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150137, -0.060477, 0.986814,
		0.523034, 0.851872, -0.027369,
		-0.838984, 0.520246, 0.159529,
		34.457092, 36.570816, 43.322872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150612, 36.505039, 43.771938>,  <35.044380, 36.206642, 43.211201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150612, 36.505039, 43.771938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764805, 36.608749, 43.751980>,  <34.533321, 36.670975, 43.740005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764805, 36.608749, 43.751980>,  <35.150612, 36.505039, 43.771938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764805, 36.608749, 43.751980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078148, -0.099814, 0.991933,
		0.252205, 0.960631, 0.116534,
		-0.964513, 0.259277, -0.049897,
		34.475452, 36.686531, 43.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629845, 36.960476, 44.108524>,  <35.150612, 36.505039, 43.771938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629845, 36.960476, 44.108524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968998, 36.754223, 44.157871>,  <36.172489, 36.630470, 44.187477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968998, 36.754223, 44.157871>,  <35.629845, 36.960476, 44.108524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968998, 36.754223, 44.157871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346656, 0.363114, -0.864857,
		0.401150, 0.776063, 0.486625,
		0.847884, -0.515629, 0.123364,
		36.223362, 36.599533, 44.194881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234325, 37.394634, 44.127010>,  <35.629845, 36.960476, 44.108524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234325, 37.394634, 44.127010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380169, 37.044785, 43.999203>,  <36.467674, 36.834873, 43.922520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380169, 37.044785, 43.999203>,  <36.234325, 37.394634, 44.127010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380169, 37.044785, 43.999203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422907, 0.461249, -0.779999,
		0.829584, 0.149270, 0.538061,
		0.364610, -0.874624, -0.319518,
		36.489552, 36.782398, 43.903347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948524, 37.550346, 43.864666>,  <36.234325, 37.394634, 44.127010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948524, 37.550346, 43.864666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851330, 37.191051, 43.718174>,  <36.793015, 36.975475, 43.630280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851330, 37.191051, 43.718174>,  <36.948524, 37.550346, 43.864666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851330, 37.191051, 43.718174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350673, 0.270671, -0.896530,
		0.904426, -0.346273, 0.249218,
		-0.242988, -0.898238, -0.366231,
		36.778435, 36.921581, 43.608303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481014, 37.481079, 43.348454>,  <36.948524, 37.550346, 43.864666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481014, 37.481079, 43.348454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200253, 37.207581, 43.268639>,  <37.031796, 37.043480, 43.220749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200253, 37.207581, 43.268639>,  <37.481014, 37.481079, 43.348454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200253, 37.207581, 43.268639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173273, 0.107816, -0.978955,
		0.690870, -0.721712, 0.042798,
		-0.701909, -0.683746, -0.199540,
		36.989681, 37.002457, 43.208778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820503, 37.075779, 42.900452>,  <37.481014, 37.481079, 43.348454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820503, 37.075779, 42.900452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441067, 36.968987, 42.832458>,  <37.213406, 36.904911, 42.791660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441067, 36.968987, 42.832458>,  <37.820503, 37.075779, 42.900452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441067, 36.968987, 42.832458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161984, 0.051888, -0.985428,
		0.271914, -0.962303, -0.005973,
		-0.948591, -0.266984, -0.169986,
		37.156490, 36.888893, 42.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815647, 36.549465, 42.434486>,  <37.820503, 37.075779, 42.900452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815647, 36.549465, 42.434486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442963, 36.692924, 42.411537>,  <37.219353, 36.778999, 42.397770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442963, 36.692924, 42.411537>,  <37.815647, 36.549465, 42.434486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442963, 36.692924, 42.411537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088581, 0.071191, -0.993522,
		-0.352245, -0.930753, -0.098099,
		-0.931707, 0.358652, -0.057370,
		37.163452, 36.800522, 42.394325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544586, 36.218597, 41.866070>,  <37.815647, 36.549465, 42.434486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544586, 36.218597, 41.866070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310951, 36.538841, 41.919548>,  <37.170769, 36.730988, 41.951633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.310951, 36.538841, 41.919548>,  <37.544586, 36.218597, 41.866070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310951, 36.538841, 41.919548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049355, 0.129373, -0.990367,
		-0.810189, -0.585059, -0.036051,
		-0.584087, 0.800605, 0.133692,
		37.135727, 36.779022, 41.959656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035385, 36.222431, 41.362453>,  <37.544586, 36.218597, 41.866070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035385, 36.222431, 41.362453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051266, 36.608070, 41.467480>,  <37.060795, 36.839455, 41.530495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051266, 36.608070, 41.467480>,  <37.035385, 36.222431, 41.362453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051266, 36.608070, 41.467480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048402, 0.260605, -0.964231,
		-0.998039, 0.050987, -0.036319,
		0.039698, 0.964098, 0.262562,
		37.063175, 36.897301, 41.546249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446373, 36.497997, 41.009106>,  <37.035385, 36.222431, 41.362453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446373, 36.497997, 41.009106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704121, 36.797646, 41.070553>,  <36.858768, 36.977436, 41.107422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704121, 36.797646, 41.070553>,  <36.446373, 36.497997, 41.009106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704121, 36.797646, 41.070553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061334, 0.149608, -0.986841,
		-0.762248, 0.645316, 0.050457,
		0.644373, 0.749123, 0.153618,
		36.897434, 37.022381, 41.116638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144958, 37.154678, 40.626633>,  <36.446373, 36.497997, 41.009106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144958, 37.154678, 40.626633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535553, 37.198212, 40.701061>,  <36.769909, 37.224331, 40.745720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.535553, 37.198212, 40.701061>,  <36.144958, 37.154678, 40.626633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535553, 37.198212, 40.701061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170260, 0.140006, -0.975403,
		-0.132210, 0.984151, 0.118183,
		0.976490, 0.108836, 0.186072,
		36.828499, 37.230862, 40.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396328, 37.729488, 40.249470>,  <36.144958, 37.154678, 40.626633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396328, 37.729488, 40.249470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700729, 37.478828, 40.316620>,  <36.883369, 37.328434, 40.356911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700729, 37.478828, 40.316620>,  <36.396328, 37.729488, 40.249470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700729, 37.478828, 40.316620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209869, -0.007058, -0.977704,
		0.613863, 0.779269, 0.126143,
		0.761004, -0.626650, 0.167877,
		36.929031, 37.290833, 40.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747952, 37.845669, 39.628403>,  <36.396328, 37.729488, 40.249470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747952, 37.845669, 39.628403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958683, 37.546486, 39.789902>,  <37.085121, 37.366974, 39.886799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958683, 37.546486, 39.789902>,  <36.747952, 37.845669, 39.628403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958683, 37.546486, 39.789902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403620, -0.197891, -0.893269,
		0.748026, 0.633559, 0.197637,
		0.526828, -0.747959, 0.403744,
		37.116730, 37.322098, 39.911026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476570, 38.006134, 39.488216>,  <36.747952, 37.845669, 39.628403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476570, 38.006134, 39.488216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429012, 37.614506, 39.554295>,  <37.400478, 37.379528, 39.593941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429012, 37.614506, 39.554295>,  <37.476570, 38.006134, 39.488216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429012, 37.614506, 39.554295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593680, -0.203461, -0.778555,
		0.795869, 0.005505, 0.605444,
		-0.118898, -0.979068, 0.165196,
		37.393341, 37.320786, 39.603855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093098, 37.829216, 39.365929>,  <37.476570, 38.006134, 39.488216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093098, 37.829216, 39.365929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878540, 37.494015, 39.325848>,  <37.749805, 37.292896, 39.301800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878540, 37.494015, 39.325848>,  <38.093098, 37.829216, 39.365929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878540, 37.494015, 39.325848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455395, -0.187424, -0.870338,
		0.710561, -0.512475, 0.482153,
		-0.536394, -0.837999, -0.100202,
		37.717621, 37.242615, 39.295788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.204123, 33.312649, 26.342804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.476006, 33.027119, 26.410273>,  <24.639135, 32.855801, 26.450754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.476006, 33.027119, 26.410273>,  <24.204123, 33.312649, 26.342804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476006, 33.027119, 26.410273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079369, 0.157032, 0.984399,
		-0.729178, -0.682490, 0.050080,
		0.679706, -0.713827, 0.168673,
		24.679918, 32.812969, 26.460875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983398, 32.847500, 26.924944>,  <24.204123, 33.312649, 26.342804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983398, 32.847500, 26.924944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.380562, 32.814651, 26.890570>,  <24.618860, 32.794945, 26.869946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.380562, 32.814651, 26.890570>,  <23.983398, 32.847500, 26.924944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380562, 32.814651, 26.890570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105177, 0.270202, 0.957042,
		-0.055369, -0.959295, 0.276923,
		0.992911, -0.082117, -0.085935,
		24.678434, 32.790016, 26.864790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240358, 32.441444, 27.512514>,  <23.983398, 32.847500, 26.924944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240358, 32.441444, 27.512514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.592896, 32.593410, 27.400160>,  <24.804419, 32.684589, 27.332748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.592896, 32.593410, 27.400160>,  <24.240358, 32.441444, 27.512514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592896, 32.593410, 27.400160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206941, 0.224038, 0.952356,
		0.424744, -0.897480, 0.118835,
		0.881344, 0.379916, -0.280885,
		24.857300, 32.707386, 27.315895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752941, 32.157516, 28.057426>,  <24.240358, 32.441444, 27.512514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752941, 32.157516, 28.057426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.896164, 32.478848, 27.867077>,  <24.982098, 32.671646, 27.752867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.896164, 32.478848, 27.867077>,  <24.752941, 32.157516, 28.057426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896164, 32.478848, 27.867077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447967, 0.299374, 0.842437,
		0.819220, -0.514816, -0.252673,
		0.358056, 0.803331, -0.475873,
		25.003580, 32.719845, 27.724316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494574, 32.182693, 28.065645>,  <24.752941, 32.157516, 28.057426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494574, 32.182693, 28.065645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.394547, 32.567558, 28.022369>,  <25.334530, 32.798477, 27.996405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.394547, 32.567558, 28.022369>,  <25.494574, 32.182693, 28.065645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394547, 32.567558, 28.022369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669345, 0.252528, 0.698718,
		0.699603, 0.102311, -0.707169,
		-0.250066, 0.962165, -0.108188,
		25.319527, 32.856209, 27.989912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119331, 32.553417, 28.110367>,  <25.494574, 32.182693, 28.065645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119331, 32.553417, 28.110367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.837492, 32.833366, 28.157207>,  <25.668388, 33.001335, 28.185312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.837492, 32.833366, 28.157207>,  <26.119331, 32.553417, 28.110367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837492, 32.833366, 28.157207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508225, 0.382554, 0.771596,
		0.495224, 0.603180, -0.625242,
		-0.704600, 0.699876, 0.117101,
		25.626112, 33.043327, 28.192337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467079, 33.214455, 28.108137>,  <26.119331, 32.553417, 28.110367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467079, 33.214455, 28.108137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.122438, 33.267624, 28.304085>,  <25.915653, 33.299526, 28.421654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.122438, 33.267624, 28.304085>,  <26.467079, 33.214455, 28.108137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122438, 33.267624, 28.304085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501795, 0.368371, 0.782627,
		-0.076425, 0.920128, -0.384089,
		-0.861604, 0.132921, 0.489868,
		25.863956, 33.307499, 28.451046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615395, 33.872524, 28.437334>,  <26.467079, 33.214455, 28.108137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615395, 33.872524, 28.437334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298759, 33.711914, 28.621580>,  <26.108778, 33.615547, 28.732128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298759, 33.711914, 28.621580>,  <26.615395, 33.872524, 28.437334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298759, 33.711914, 28.621580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316845, 0.374839, 0.871266,
		-0.522494, 0.835626, -0.169495,
		-0.791587, -0.401528, 0.460615,
		26.061283, 33.591457, 28.759766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593849, 34.328075, 28.902981>,  <26.615395, 33.872524, 28.437334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593849, 34.328075, 28.902981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.324987, 34.057972, 29.024462>,  <26.163670, 33.895908, 29.097349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.324987, 34.057972, 29.024462>,  <26.593849, 34.328075, 28.902981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324987, 34.057972, 29.024462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233849, 0.195573, 0.952400,
		-0.702511, 0.711181, 0.026454,
		-0.672155, -0.675258, 0.303701,
		26.123341, 33.855396, 29.115572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221918, 34.691513, 29.454733>,  <26.593849, 34.328075, 28.902981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221918, 34.691513, 29.454733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198633, 34.296204, 29.511202>,  <26.184662, 34.059017, 29.545082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.198633, 34.296204, 29.511202>,  <26.221918, 34.691513, 29.454733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198633, 34.296204, 29.511202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250408, 0.122435, 0.960368,
		-0.966389, 0.091254, 0.240344,
		-0.058210, -0.988273, 0.141170,
		26.181170, 33.999722, 29.553553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853794, 34.605366, 30.077793>,  <26.221918, 34.691513, 29.454733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853794, 34.605366, 30.077793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.079157, 34.283192, 30.004206>,  <26.214375, 34.089886, 29.960052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.079157, 34.283192, 30.004206>,  <25.853794, 34.605366, 30.077793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079157, 34.283192, 30.004206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244441, -0.050197, 0.968364,
		-0.789190, -0.590553, 0.168600,
		0.563408, -0.805436, -0.183970,
		26.248178, 34.041561, 29.949015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854166, 34.095596, 30.724026>,  <25.853794, 34.605366, 30.077793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854166, 34.095596, 30.724026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166904, 33.987915, 30.499083>,  <26.354548, 33.923306, 30.364117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.166904, 33.987915, 30.499083>,  <25.854166, 34.095596, 30.724026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166904, 33.987915, 30.499083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532345, -0.181272, 0.826891,
		-0.324542, -0.945870, 0.001583,
		0.781845, -0.269203, -0.562360,
		26.401459, 33.907154, 30.330374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097715, 33.478653, 31.095316>,  <25.854166, 34.095596, 30.724026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097715, 33.478653, 31.095316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392385, 33.634758, 30.874407>,  <26.569187, 33.728420, 30.741861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392385, 33.634758, 30.874407>,  <26.097715, 33.478653, 31.095316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392385, 33.634758, 30.874407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571703, 0.076798, 0.816859,
		0.361204, -0.917495, -0.166540,
		0.736673, 0.390264, -0.552274,
		26.613388, 33.751839, 30.708725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682238, 33.475170, 31.557987>,  <26.097715, 33.478653, 31.095316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682238, 33.475170, 31.557987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892017, 33.644592, 31.262539>,  <27.017885, 33.746246, 31.085270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892017, 33.644592, 31.262539>,  <26.682238, 33.475170, 31.557987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892017, 33.644592, 31.262539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700586, 0.278328, 0.657049,
		0.483872, -0.862054, -0.150766,
		0.524449, 0.423552, -0.738618,
		27.049353, 33.771656, 31.040953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223261, 33.116444, 31.435699>,  <26.682238, 33.475170, 31.557987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223261, 33.116444, 31.435699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304646, 33.480854, 31.292236>,  <27.353477, 33.699501, 31.206158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304646, 33.480854, 31.292236>,  <27.223261, 33.116444, 31.435699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304646, 33.480854, 31.292236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741058, 0.096111, 0.664527,
		0.639872, -0.400992, -0.655568,
		0.203463, 0.911026, -0.358657,
		27.365685, 33.754162, 31.184639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901445, 33.203773, 31.422352>,  <27.223261, 33.116444, 31.435699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901445, 33.203773, 31.422352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767679, 33.580055, 31.445129>,  <27.687420, 33.805824, 31.458796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767679, 33.580055, 31.445129>,  <27.901445, 33.203773, 31.422352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767679, 33.580055, 31.445129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613846, 0.171575, 0.770555,
		0.715093, 0.292643, -0.634825,
		-0.334418, 0.940703, 0.056946,
		27.667355, 33.862267, 31.462214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533760, 33.701694, 31.468960>,  <27.901445, 33.203773, 31.422352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533760, 33.701694, 31.468960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.211254, 33.871468, 31.633783>,  <28.017750, 33.973331, 31.732677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.211254, 33.871468, 31.633783>,  <28.533760, 33.701694, 31.468960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211254, 33.871468, 31.633783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486412, 0.079239, 0.870129,
		0.336659, 0.901986, -0.270337,
		-0.806265, 0.424432, 0.412060,
		27.969374, 33.998798, 31.757401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828646, 34.279095, 31.813877>,  <28.533760, 33.701694, 31.468960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828646, 34.279095, 31.813877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467148, 34.196579, 31.963911>,  <28.250250, 34.147068, 32.053932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467148, 34.196579, 31.963911>,  <28.828646, 34.279095, 31.813877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467148, 34.196579, 31.963911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353977, 0.132597, 0.925807,
		-0.240722, 0.969465, -0.046812,
		-0.903744, -0.206292, 0.375087,
		28.196024, 34.134693, 32.076439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504288, 34.627159, 32.030376>,  <28.828646, 34.279095, 31.813877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504288, 34.627159, 32.030376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847111, 34.829060, 32.071712>,  <30.052805, 34.950199, 32.096516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.847111, 34.829060, 32.071712>,  <29.504288, 34.627159, 32.030376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847111, 34.829060, 32.071712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132136, 0.409204, -0.902825,
		-0.497989, 0.760117, 0.417407,
		0.857057, 0.504751, 0.103341,
		30.104227, 34.980484, 32.102715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399929, 35.314240, 31.938437>,  <29.504288, 34.627159, 32.030376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399929, 35.314240, 31.938437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789965, 35.258823, 31.869148>,  <30.023987, 35.225574, 31.827576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789965, 35.258823, 31.869148>,  <29.399929, 35.314240, 31.938437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789965, 35.258823, 31.869148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142652, 0.206325, -0.968029,
		0.169848, 0.968626, 0.181423,
		0.975091, -0.138537, -0.173221,
		30.082493, 35.217262, 31.817183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632318, 35.832935, 31.432657>,  <29.399929, 35.314240, 31.938437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632318, 35.832935, 31.432657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897249, 35.533504, 31.420286>,  <30.056208, 35.353848, 31.412865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897249, 35.533504, 31.420286>,  <29.632318, 35.832935, 31.432657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897249, 35.533504, 31.420286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007955, 0.048301, -0.998801,
		0.749173, 0.661287, 0.037945,
		0.662327, -0.748577, -0.030925,
		30.095947, 35.308933, 31.411009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113420, 36.063251, 30.949591>,  <29.632318, 35.832935, 31.432657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113420, 36.063251, 30.949591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.127228, 35.663525, 30.954815>,  <30.135511, 35.423687, 30.957949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.127228, 35.663525, 30.954815>,  <30.113420, 36.063251, 30.949591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127228, 35.663525, 30.954815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002707, -0.013159, -0.999910,
		0.999401, 0.034478, -0.003159,
		0.034516, -0.999319, 0.013058,
		30.137583, 35.363728, 30.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341883, 35.941254, 30.268940>,  <30.113420, 36.063251, 30.949591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341883, 35.941254, 30.268940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.232420, 35.576164, 30.390303>,  <30.166742, 35.357113, 30.463120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.232420, 35.576164, 30.390303>,  <30.341883, 35.941254, 30.268940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232420, 35.576164, 30.390303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182176, -0.260551, -0.948117,
		0.944417, -0.314733, -0.094974,
		-0.273657, -0.912719, 0.303405,
		30.150322, 35.302349, 30.481325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769564, 35.486557, 29.854193>,  <30.341883, 35.941254, 30.268940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769564, 35.486557, 29.854193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.432943, 35.295353, 29.954832>,  <30.230970, 35.180630, 30.015215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.432943, 35.295353, 29.954832>,  <30.769564, 35.486557, 29.854193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432943, 35.295353, 29.954832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118838, -0.290527, -0.949459,
		0.526943, -0.828917, 0.187688,
		-0.841551, -0.478006, 0.251598,
		30.180477, 35.151951, 30.030312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791504, 34.763454, 29.513340>,  <30.769564, 35.486557, 29.854193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791504, 34.763454, 29.513340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405666, 34.790157, 29.615398>,  <30.174164, 34.806179, 29.676634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405666, 34.790157, 29.615398>,  <30.791504, 34.763454, 29.513340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405666, 34.790157, 29.615398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255877, -0.471298, -0.844041,
		0.063902, -0.879444, 0.471694,
		-0.964595, 0.066759, 0.255146,
		30.116287, 34.810184, 29.691942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476572, 33.998302, 29.452543>,  <30.791504, 34.763454, 29.513340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476572, 33.998302, 29.452543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183609, 34.269878, 29.432041>,  <30.007832, 34.432823, 29.419739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183609, 34.269878, 29.432041>,  <30.476572, 33.998302, 29.452543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183609, 34.269878, 29.432041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423669, -0.513376, -0.746290,
		-0.533005, -0.524865, 0.663643,
		-0.732400, 0.678942, -0.051263,
		29.963886, 34.473560, 29.416664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916492, 33.613487, 29.432940>,  <30.476572, 33.998302, 29.452543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916492, 33.613487, 29.432940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793510, 33.960537, 29.276630>,  <29.719721, 34.168766, 29.182844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793510, 33.960537, 29.276630>,  <29.916492, 33.613487, 29.432940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793510, 33.960537, 29.276630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343859, -0.484216, -0.804547,
		-0.887260, -0.112993, 0.447216,
		-0.307457, 0.867621, -0.390772,
		29.701273, 34.220825, 29.159399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196867, 33.564533, 29.203283>,  <29.916492, 33.613487, 29.432940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196867, 33.564533, 29.203283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331842, 33.877964, 28.994614>,  <29.412828, 34.066021, 28.869411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331842, 33.877964, 28.994614>,  <29.196867, 33.564533, 29.203283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331842, 33.877964, 28.994614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413478, -0.374482, -0.829939,
		-0.845678, 0.495755, 0.197626,
		0.337439, 0.783575, -0.521675,
		29.433075, 34.113037, 28.838112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674204, 33.809719, 28.811855>,  <29.196867, 33.564533, 29.203283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674204, 33.809719, 28.811855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.990242, 33.941360, 28.604998>,  <29.179865, 34.020344, 28.480883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.990242, 33.941360, 28.604998>,  <28.674204, 33.809719, 28.811855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990242, 33.941360, 28.604998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431671, -0.300261, -0.850590,
		-0.435212, 0.895284, -0.095170,
		0.790096, 0.329105, -0.517145,
		29.227270, 34.040092, 28.449854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433744, 34.160397, 28.280966>,  <28.674204, 33.809719, 28.811855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433744, 34.160397, 28.280966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801907, 34.116032, 28.131006>,  <29.022804, 34.089413, 28.041031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801907, 34.116032, 28.131006>,  <28.433744, 34.160397, 28.280966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801907, 34.116032, 28.131006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388153, -0.144510, -0.910195,
		0.046775, 0.983268, -0.176059,
		0.920407, -0.110912, -0.374899,
		29.078030, 34.082756, 28.018536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274473, 34.385029, 27.702852>,  <28.433744, 34.160397, 28.280966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274473, 34.385029, 27.702852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639620, 34.234848, 27.638723>,  <28.858707, 34.144737, 27.600246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639620, 34.234848, 27.638723>,  <28.274473, 34.385029, 27.702852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639620, 34.234848, 27.638723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275113, -0.275595, -0.921065,
		0.301635, 0.884918, -0.354875,
		0.912869, -0.375456, -0.160323,
		28.913481, 34.122211, 27.590626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402073, 34.565838, 27.052738>,  <28.274473, 34.385029, 27.702852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402073, 34.565838, 27.052738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635332, 34.249454, 27.126839>,  <28.775288, 34.059624, 27.171299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.635332, 34.249454, 27.126839>,  <28.402073, 34.565838, 27.052738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635332, 34.249454, 27.126839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287233, -0.414065, -0.863740,
		0.759891, 0.450480, -0.468652,
		0.583150, -0.790960, 0.185252,
		28.810278, 34.012165, 27.182415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750042, 34.416756, 26.474396>,  <28.402073, 34.565838, 27.052738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750042, 34.416756, 26.474396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765261, 34.068825, 26.671152>,  <28.774391, 33.860065, 26.789206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765261, 34.068825, 26.671152>,  <28.750042, 34.416756, 26.474396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765261, 34.068825, 26.671152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343301, -0.473664, -0.811040,
		0.938454, -0.138009, -0.316633,
		0.038047, -0.869825, 0.491891,
		28.776674, 33.807877, 26.818720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255089, 33.929268, 26.162144>,  <28.750042, 34.416756, 26.474396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255089, 33.929268, 26.162144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975826, 33.720528, 26.358206>,  <28.808268, 33.595284, 26.475843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975826, 33.720528, 26.358206>,  <29.255089, 33.929268, 26.162144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975826, 33.720528, 26.358206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196470, -0.518695, -0.832079,
		0.688459, -0.677223, 0.259603,
		-0.698158, -0.521848, 0.490154,
		28.766378, 33.563972, 26.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491436, 33.197517, 26.002323>,  <29.255089, 33.929268, 26.162144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491436, 33.197517, 26.002323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113302, 33.189232, 26.132500>,  <28.886421, 33.184261, 26.210606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113302, 33.189232, 26.132500>,  <29.491436, 33.197517, 26.002323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113302, 33.189232, 26.132500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202935, -0.743819, -0.636829,
		0.255265, -0.668060, 0.698953,
		-0.945335, -0.020718, 0.325444,
		28.829702, 33.183018, 26.230133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373852, 32.475571, 25.983435>,  <29.491436, 33.197517, 26.002323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373852, 32.475571, 25.983435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.016310, 32.654900, 25.981382>,  <28.801785, 32.762497, 25.980150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.016310, 32.654900, 25.981382>,  <29.373852, 32.475571, 25.983435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016310, 32.654900, 25.981382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371996, -0.747963, -0.549701,
		-0.250282, -0.489445, 0.835346,
		-0.893856, 0.448326, -0.005130,
		28.748154, 32.789398, 25.979843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802631, 31.839283, 25.972841>,  <29.373852, 32.475571, 25.983435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802631, 31.839283, 25.972841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611643, 32.172104, 25.859913>,  <28.497049, 32.371796, 25.792156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611643, 32.172104, 25.859913>,  <28.802631, 31.839283, 25.972841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611643, 32.172104, 25.859913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437138, -0.503677, -0.745130,
		-0.762187, -0.232366, 0.604215,
		-0.477473, 0.832055, -0.282320,
		28.468401, 32.421719, 25.775217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126392, 31.585243, 25.940388>,  <28.802631, 31.839283, 25.972841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126392, 31.585243, 25.940388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170748, 31.912088, 25.714102>,  <28.197361, 32.108196, 25.578331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170748, 31.912088, 25.714102>,  <28.126392, 31.585243, 25.940388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170748, 31.912088, 25.714102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372020, -0.493712, -0.786034,
		-0.921577, 0.297619, 0.249235,
		0.110888, 0.817111, -0.565715,
		28.204014, 32.157223, 25.544388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632154, 31.474295, 25.537119>,  <28.126392, 31.585243, 25.940388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632154, 31.474295, 25.537119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834412, 31.756653, 25.338709>,  <27.955765, 31.926067, 25.219664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834412, 31.756653, 25.338709>,  <27.632154, 31.474295, 25.537119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834412, 31.756653, 25.338709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401614, -0.316258, -0.859469,
		-0.763566, 0.633793, 0.123584,
		0.505642, 0.705894, -0.496024,
		27.986105, 31.968422, 25.189901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155329, 31.813696, 24.978569>,  <27.632154, 31.474295, 25.537119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155329, 31.813696, 24.978569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514151, 31.913654, 24.832777>,  <27.729445, 31.973629, 24.745302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514151, 31.913654, 24.832777>,  <27.155329, 31.813696, 24.978569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514151, 31.913654, 24.832777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334413, -0.155316, -0.929540,
		-0.288899, 0.955734, -0.055759,
		0.897054, 0.249896, -0.364481,
		27.783266, 31.988623, 24.723433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017429, 32.161339, 24.405775>,  <27.155329, 31.813696, 24.978569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017429, 32.161339, 24.405775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408815, 32.094193, 24.357731>,  <27.643648, 32.053905, 24.328903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408815, 32.094193, 24.357731>,  <27.017429, 32.161339, 24.405775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408815, 32.094193, 24.357731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138473, -0.102304, -0.985068,
		0.153067, 0.980488, -0.123345,
		0.978466, -0.167861, -0.120112,
		27.702354, 32.043835, 24.321697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171717, 32.608837, 23.823395>,  <27.017429, 32.161339, 24.405775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171717, 32.608837, 23.823395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435431, 32.309139, 23.848633>,  <27.593658, 32.129322, 23.863775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435431, 32.309139, 23.848633>,  <27.171717, 32.608837, 23.823395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435431, 32.309139, 23.848633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050259, -0.127643, -0.990546,
		0.750213, 0.649879, -0.121809,
		0.659283, -0.749243, 0.063097,
		27.633215, 32.084366, 23.867561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.016369, 33.509792, 43.682606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682495, 33.289570, 43.688068>,  <36.482170, 33.157436, 43.691345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682495, 33.289570, 43.688068>,  <37.016369, 33.509792, 43.682606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682495, 33.289570, 43.688068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002939, 0.029245, 0.999568,
		-0.550719, 0.834285, -0.026029,
		-0.834686, -0.550557, 0.013654,
		36.432091, 33.124401, 43.692165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558628, 33.832581, 44.197025>,  <37.016369, 33.509792, 43.682606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558628, 33.832581, 44.197025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428406, 33.454414, 44.202702>,  <36.350273, 33.227516, 44.206108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428406, 33.454414, 44.202702>,  <36.558628, 33.832581, 44.197025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428406, 33.454414, 44.202702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059900, 0.035603, 0.997569,
		-0.943624, 0.323913, -0.068222,
		-0.325554, -0.945417, 0.014193,
		36.330738, 33.170788, 44.206959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021183, 33.830605, 44.674885>,  <36.558628, 33.832581, 44.197025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021183, 33.830605, 44.674885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122898, 33.444824, 44.646126>,  <36.183926, 33.213356, 44.628868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122898, 33.444824, 44.646126>,  <36.021183, 33.830605, 44.674885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122898, 33.444824, 44.646126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103826, -0.101138, 0.989440,
		-0.961540, -0.244135, -0.125853,
		0.254285, -0.964453, -0.071901,
		36.199184, 33.155487, 44.624557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492653, 33.505493, 44.945358>,  <36.021183, 33.830605, 44.674885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492653, 33.505493, 44.945358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784435, 33.233994, 44.979290>,  <35.959503, 33.071095, 44.999649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784435, 33.233994, 44.979290>,  <35.492653, 33.505493, 44.945358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784435, 33.233994, 44.979290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309930, -0.217409, 0.925568,
		-0.609785, -0.701452, -0.368955,
		0.729456, -0.678748, 0.084828,
		36.003273, 33.030369, 45.004738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269814, 32.924824, 45.440075>,  <35.492653, 33.505493, 44.945358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269814, 32.924824, 45.440075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657719, 32.832634, 45.407990>,  <35.890461, 32.777321, 45.388737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657719, 32.832634, 45.407990>,  <35.269814, 32.924824, 45.440075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657719, 32.832634, 45.407990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045484, -0.152233, 0.987297,
		-0.239761, -0.961096, -0.137147,
		0.969766, -0.230477, -0.080214,
		35.948650, 32.763493, 45.383926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366692, 32.262711, 45.861259>,  <35.269814, 32.924824, 45.440075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366692, 32.262711, 45.861259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722683, 32.438000, 45.810810>,  <35.936275, 32.543171, 45.780540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722683, 32.438000, 45.810810>,  <35.366692, 32.262711, 45.861259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722683, 32.438000, 45.810810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189261, -0.103329, 0.976475,
		0.414877, -0.892910, -0.174898,
		0.889976, 0.438219, -0.126124,
		35.989677, 32.569466, 45.772972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770779, 31.877972, 46.130939>,  <35.366692, 32.262711, 45.861259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770779, 31.877972, 46.130939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981438, 32.217876, 46.140278>,  <36.107834, 32.421818, 46.145882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981438, 32.217876, 46.140278>,  <35.770779, 31.877972, 46.130939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981438, 32.217876, 46.140278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044108, -0.000114, 0.999027,
		0.848937, -0.527168, 0.037421,
		0.526650, 0.849761, 0.023349,
		36.139431, 32.472805, 46.147282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283653, 31.679850, 46.550175>,  <35.770779, 31.877972, 46.130939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283653, 31.679850, 46.550175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277054, 32.079697, 46.559071>,  <36.273094, 32.319603, 46.564407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277054, 32.079697, 46.559071>,  <36.283653, 31.679850, 46.550175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277054, 32.079697, 46.559071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050685, -0.021379, 0.998486,
		0.998578, 0.017602, -0.050313,
		-0.016500, 0.999617, 0.022241,
		36.272102, 32.379581, 46.565742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955494, 31.940264, 47.022438>,  <36.283653, 31.679850, 46.550175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955494, 31.940264, 47.022438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690632, 32.238235, 46.989841>,  <36.531715, 32.417019, 46.970284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690632, 32.238235, 46.989841>,  <36.955494, 31.940264, 47.022438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690632, 32.238235, 46.989841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028298, 0.133521, 0.990642,
		0.748836, 0.653648, -0.109491,
		-0.662151, 0.744927, -0.081488,
		36.491985, 32.461712, 46.965397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283142, 32.530613, 47.272667>,  <36.955494, 31.940264, 47.022438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283142, 32.530613, 47.272667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890217, 32.603477, 47.290024>,  <36.654461, 32.647194, 47.300438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890217, 32.603477, 47.290024>,  <37.283142, 32.530613, 47.272667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890217, 32.603477, 47.290024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101771, 0.324807, 0.940289,
		0.157186, 0.928073, -0.337600,
		-0.982311, 0.182158, 0.043396,
		36.595524, 32.658123, 47.303043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278027, 33.269039, 47.590294>,  <37.283142, 32.530613, 47.272667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278027, 33.269039, 47.590294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934868, 33.065620, 47.619667>,  <36.728973, 32.943569, 47.637291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934868, 33.065620, 47.619667>,  <37.278027, 33.269039, 47.590294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934868, 33.065620, 47.619667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113022, 0.326180, 0.938527,
		-0.501238, 0.796860, -0.337306,
		-0.857896, -0.508548, 0.073431,
		36.677498, 32.913055, 47.641697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740498, 33.626865, 47.921837>,  <37.278027, 33.269039, 47.590294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740498, 33.626865, 47.921837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662331, 33.241077, 47.992962>,  <36.615433, 33.009605, 48.035637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662331, 33.241077, 47.992962>,  <36.740498, 33.626865, 47.921837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662331, 33.241077, 47.992962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008928, 0.179550, 0.983708,
		-0.980680, 0.193819, -0.026476,
		-0.195415, -0.964467, 0.177811,
		36.603706, 32.951736, 48.046307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115139, 33.439980, 48.241070>,  <36.740498, 33.626865, 47.921837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115139, 33.439980, 48.241070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367069, 33.156895, 48.369114>,  <36.518227, 32.987045, 48.445942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367069, 33.156895, 48.369114>,  <36.115139, 33.439980, 48.241070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367069, 33.156895, 48.369114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063980, 0.457990, 0.886652,
		-0.774098, -0.537954, 0.333732,
		0.629824, -0.707708, 0.320111,
		36.556015, 32.944584, 48.465149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322910, 33.605640, 49.003685>,  <36.115139, 33.439980, 48.241070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322910, 33.605640, 49.003685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578117, 33.310944, 48.914120>,  <36.731243, 33.134125, 48.860378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578117, 33.310944, 48.914120>,  <36.322910, 33.605640, 49.003685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578117, 33.310944, 48.914120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421430, 0.090722, 0.902312,
		-0.644457, -0.670060, 0.368368,
		0.638022, -0.736742, -0.223916,
		36.769524, 33.089920, 48.846943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013958, 34.200974, 49.392353>,  <36.322910, 33.605640, 49.003685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013958, 34.200974, 49.392353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065201, 34.589783, 49.471096>,  <36.095947, 34.823071, 49.518341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065201, 34.589783, 49.471096>,  <36.013958, 34.200974, 49.392353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065201, 34.589783, 49.471096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000524, 0.198427, -0.980116,
		-0.991760, 0.125662, 0.024911,
		0.128106, 0.972027, 0.196858,
		36.103634, 34.881390, 49.530155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639858, 34.563457, 48.808327>,  <36.013958, 34.200974, 49.392353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639858, 34.563457, 48.808327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863285, 34.846733, 48.981056>,  <35.997341, 35.016701, 49.084694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863285, 34.846733, 48.981056>,  <35.639858, 34.563457, 48.808327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863285, 34.846733, 48.981056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078292, 0.473270, -0.877431,
		-0.825758, 0.523910, 0.208906,
		0.558564, 0.708191, 0.431824,
		36.030853, 35.059189, 49.110603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366653, 35.169399, 48.528652>,  <35.639858, 34.563457, 48.808327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366653, 35.169399, 48.528652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740917, 35.263954, 48.633472>,  <35.965473, 35.320686, 48.696365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740917, 35.263954, 48.633472>,  <35.366653, 35.169399, 48.528652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740917, 35.263954, 48.633472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135082, 0.446106, -0.884727,
		-0.326041, 0.863198, 0.385470,
		0.935655, 0.236387, 0.262052,
		36.021614, 35.334869, 48.712090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377941, 35.780136, 48.306389>,  <35.366653, 35.169399, 48.528652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377941, 35.780136, 48.306389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766922, 35.703293, 48.359207>,  <36.000309, 35.657185, 48.390900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766922, 35.703293, 48.359207>,  <35.377941, 35.780136, 48.306389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766922, 35.703293, 48.359207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192548, 0.342632, -0.919526,
		0.131408, 0.919618, 0.370182,
		0.972449, -0.192111, 0.132047,
		36.058659, 35.645660, 48.398823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760479, 36.304253, 47.954525>,  <35.377941, 35.780136, 48.306389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760479, 36.304253, 47.954525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005550, 35.990288, 47.991493>,  <36.152596, 35.801910, 48.013672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005550, 35.990288, 47.991493>,  <35.760479, 36.304253, 47.954525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005550, 35.990288, 47.991493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402098, 0.208909, -0.891445,
		0.680395, 0.583332, 0.443605,
		0.612682, -0.784908, 0.092416,
		36.189354, 35.754814, 48.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259159, 36.561474, 47.609219>,  <35.760479, 36.304253, 47.954525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259159, 36.561474, 47.609219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354195, 36.172939, 47.606388>,  <36.411217, 35.939819, 47.604691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.354195, 36.172939, 47.606388>,  <36.259159, 36.561474, 47.609219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354195, 36.172939, 47.606388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317828, 0.084618, -0.944365,
		0.917897, 0.222125, 0.328823,
		0.237591, -0.971339, -0.007073,
		36.425472, 35.881538, 47.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945427, 36.447918, 47.287895>,  <36.259159, 36.561474, 47.609219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945427, 36.447918, 47.287895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711628, 36.125862, 47.247688>,  <36.571346, 35.932629, 47.223564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711628, 36.125862, 47.247688>,  <36.945427, 36.447918, 47.287895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711628, 36.125862, 47.247688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256903, -0.066135, -0.964172,
		0.769649, -0.589381, 0.245500,
		-0.584501, -0.805144, -0.100513,
		36.536278, 35.884319, 47.217533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254974, 36.076218, 46.731220>,  <36.945427, 36.447918, 47.287895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254974, 36.076218, 46.731220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885143, 35.924335, 46.743713>,  <36.663242, 35.833206, 46.751209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885143, 35.924335, 46.743713>,  <37.254974, 36.076218, 46.731220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885143, 35.924335, 46.743713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022637, -0.027073, -0.999377,
		0.380316, -0.924710, 0.016435,
		-0.924580, -0.379707, 0.031229,
		36.607769, 35.810425, 46.753082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235519, 35.453987, 46.315853>,  <37.254974, 36.076218, 46.731220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235519, 35.453987, 46.315853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843254, 35.528103, 46.341061>,  <36.607895, 35.572571, 46.356186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843254, 35.528103, 46.341061>,  <37.235519, 35.453987, 46.315853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843254, 35.528103, 46.341061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074237, -0.054234, -0.995765,
		-0.181087, -0.981186, 0.066941,
		-0.980661, 0.185290, 0.063019,
		36.549057, 35.583691, 46.359966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877365, 34.946445, 45.956047>,  <37.235519, 35.453987, 46.315853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877365, 34.946445, 45.956047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646389, 35.272514, 45.974220>,  <36.507805, 35.468155, 45.985126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646389, 35.272514, 45.974220>,  <36.877365, 34.946445, 45.956047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646389, 35.272514, 45.974220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027833, 0.035964, -0.998965,
		-0.815959, -0.578106, 0.001922,
		-0.577439, 0.815169, 0.045435,
		36.473156, 35.517063, 45.987850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842373, 35.144371, 45.332977>,  <36.877365, 34.946445, 45.956047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842373, 35.144371, 45.332977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633331, 35.458176, 45.466496>,  <36.507908, 35.646458, 45.546608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633331, 35.458176, 45.466496>,  <36.842373, 35.144371, 45.332977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633331, 35.458176, 45.466496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070818, 0.350221, -0.933986,
		-0.849630, -0.511743, -0.127469,
		-0.522603, 0.784515, 0.333799,
		36.476551, 35.693531, 45.566635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317867, 35.204334, 44.911465>,  <36.842373, 35.144371, 45.332977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317867, 35.204334, 44.911465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384525, 35.568718, 45.062397>,  <36.424522, 35.787350, 45.152958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384525, 35.568718, 45.062397>,  <36.317867, 35.204334, 44.911465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384525, 35.568718, 45.062397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009337, 0.384125, -0.923234,
		-0.985972, 0.150333, 0.072520,
		0.166650, 0.910960, 0.377333,
		36.434521, 35.842007, 45.175598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690266, 35.713989, 44.685127>,  <36.317867, 35.204334, 44.911465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690266, 35.713989, 44.685127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022148, 35.907761, 44.796066>,  <36.221279, 36.024021, 44.862629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022148, 35.907761, 44.796066>,  <35.690266, 35.713989, 44.685127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022148, 35.907761, 44.796066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016312, 0.517682, -0.855417,
		-0.557960, 0.705222, 0.437426,
		0.829707, 0.484424, 0.277343,
		36.271061, 36.053089, 44.879269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513317, 36.408272, 44.611397>,  <35.690266, 35.713989, 44.685127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513317, 36.408272, 44.611397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907791, 36.352753, 44.575218>,  <36.144474, 36.319443, 44.553513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907791, 36.352753, 44.575218>,  <35.513317, 36.408272, 44.611397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907791, 36.352753, 44.575218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013990, 0.474250, -0.880279,
		0.165072, 0.869381, 0.465755,
		0.986182, -0.138793, -0.090448,
		36.203648, 36.311115, 44.548084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010441, 36.957836, 44.458359>,  <35.513317, 36.408272, 44.611397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010441, 36.957836, 44.458359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661598, 36.820107, 44.319294>,  <34.452293, 36.737469, 44.235855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661598, 36.820107, 44.319294>,  <35.010441, 36.957836, 44.458359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661598, 36.820107, 44.319294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334773, -0.098322, 0.937155,
		-0.356864, 0.933690, -0.029522,
		-0.872109, -0.344320, -0.347662,
		34.399967, 36.716812, 44.214996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504791, 37.341408, 44.790115>,  <35.010441, 36.957836, 44.458359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504791, 37.341408, 44.790115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311909, 37.012722, 44.668625>,  <34.196178, 36.815510, 44.595730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311909, 37.012722, 44.668625>,  <34.504791, 37.341408, 44.790115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311909, 37.012722, 44.668625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176863, -0.248247, 0.952414,
		-0.858016, 0.512983, -0.025624,
		-0.482211, -0.821719, -0.303727,
		34.167244, 36.766205, 44.577507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884212, 37.321163, 45.292110>,  <34.504791, 37.341408, 44.790115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884212, 37.321163, 45.292110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908394, 36.961880, 45.117950>,  <33.922905, 36.746311, 45.013454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908394, 36.961880, 45.117950>,  <33.884212, 37.321163, 45.292110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908394, 36.961880, 45.117950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164198, -0.439200, 0.883256,
		-0.984573, 0.018092, -0.174037,
		0.060458, -0.898207, -0.435395,
		33.926533, 36.692417, 44.987331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317490, 37.034988, 45.431530>,  <33.884212, 37.321163, 45.292110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317490, 37.034988, 45.431530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553844, 36.721352, 45.355583>,  <33.695656, 36.533169, 45.310017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553844, 36.721352, 45.355583>,  <33.317490, 37.034988, 45.431530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553844, 36.721352, 45.355583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097210, -0.302827, 0.948075,
		-0.800877, -0.541748, -0.255158,
		0.590886, -0.784095, -0.189864,
		33.731110, 36.486122, 45.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942883, 36.532349, 45.707737>,  <33.317490, 37.034988, 45.431530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942883, 36.532349, 45.707737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320858, 36.403233, 45.686241>,  <33.547646, 36.325764, 45.673344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320858, 36.403233, 45.686241>,  <32.942883, 36.532349, 45.707737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320858, 36.403233, 45.686241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070198, -0.360351, 0.930172,
		-0.319616, -0.875187, -0.363170,
		0.944943, -0.322792, -0.053738,
		33.604340, 36.306396, 45.670120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000675, 35.736691, 45.827663>,  <32.942883, 36.532349, 45.707737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000675, 35.736691, 45.827663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351116, 35.904503, 45.922695>,  <33.561378, 36.005192, 45.979713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351116, 35.904503, 45.922695>,  <33.000675, 35.736691, 45.827663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351116, 35.904503, 45.922695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003042, -0.497568, 0.867420,
		0.482121, -0.759223, -0.437195,
		0.876099, 0.419531, 0.237579,
		33.613945, 36.030361, 45.993969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322620, 35.271564, 46.217407>,  <33.000675, 35.736691, 45.827663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322620, 35.271564, 46.217407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515469, 35.609577, 46.309914>,  <33.631176, 35.812386, 46.365417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515469, 35.609577, 46.309914>,  <33.322620, 35.271564, 46.217407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515469, 35.609577, 46.309914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217295, -0.371061, 0.902827,
		0.848730, -0.385018, -0.362517,
		0.482121, 0.845030, 0.231267,
		33.660107, 35.863087, 46.379295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542831, 34.503437, 46.296738>,  <33.322620, 35.271564, 46.217407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542831, 34.503437, 46.296738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149536, 34.436569, 46.267624>,  <32.913559, 34.396450, 46.250156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149536, 34.436569, 46.267624>,  <33.542831, 34.503437, 46.296738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149536, 34.436569, 46.267624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084525, -0.064205, -0.994351,
		0.161553, -0.983835, 0.077259,
		-0.983238, -0.167171, -0.072787,
		32.854565, 34.386417, 46.245789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333622, 33.809036, 45.933815>,  <33.542831, 34.503437, 46.296738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333622, 33.809036, 45.933815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031635, 34.068386, 45.894550>,  <32.850445, 34.223995, 45.870991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031635, 34.068386, 45.894550>,  <33.333622, 33.809036, 45.933815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031635, 34.068386, 45.894550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124311, -0.005472, -0.992228,
		-0.643871, -0.761303, -0.076468,
		-0.754968, 0.648373, -0.098162,
		32.805145, 34.262897, 45.865101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936630, 33.525726, 45.539478>,  <33.333622, 33.809036, 45.933815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936630, 33.525726, 45.539478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801186, 33.897766, 45.482559>,  <32.719917, 34.120991, 45.448406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801186, 33.897766, 45.482559>,  <32.936630, 33.525726, 45.539478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801186, 33.897766, 45.482559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091661, -0.183121, -0.978808,
		-0.936449, -0.318397, 0.147261,
		-0.338616, 0.930102, -0.142299,
		32.699600, 34.176796, 45.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473297, 33.410057, 44.987873>,  <32.936630, 33.525726, 45.539478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473297, 33.410057, 44.987873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535854, 33.803822, 45.020073>,  <32.573387, 34.040081, 45.039394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535854, 33.803822, 45.020073>,  <32.473297, 33.410057, 44.987873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535854, 33.803822, 45.020073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183455, 0.109037, -0.976962,
		-0.970508, 0.138019, 0.197647,
		0.156390, 0.984409, 0.080501,
		32.582771, 34.099144, 45.044224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927166, 33.780609, 44.618717>,  <32.473297, 33.410057, 44.987873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927166, 33.780609, 44.618717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233902, 34.037312, 44.622978>,  <32.417942, 34.191334, 44.625534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233902, 34.037312, 44.622978>,  <31.927166, 33.780609, 44.618717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233902, 34.037312, 44.622978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005202, 0.022816, -0.999726,
		-0.641819, 0.766573, 0.020835,
		0.766839, 0.641752, 0.010656,
		32.463955, 34.229836, 44.626175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781267, 34.433441, 44.280811>,  <31.927166, 33.780609, 44.618717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781267, 34.433441, 44.280811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179310, 34.472912, 44.282898>,  <32.418137, 34.496593, 44.284149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179310, 34.472912, 44.282898>,  <31.781267, 34.433441, 44.280811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179310, 34.472912, 44.282898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007939, 0.132451, -0.991158,
		-0.098499, 0.986265, 0.132586,
		0.995106, 0.098681, 0.005217,
		32.477840, 34.502518, 44.284462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953915, 34.995510, 43.931625>,  <31.781267, 34.433441, 44.280811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953915, 34.995510, 43.931625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273769, 34.759445, 43.887272>,  <32.465683, 34.617805, 43.860661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273769, 34.759445, 43.887272>,  <31.953915, 34.995510, 43.931625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273769, 34.759445, 43.887272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107128, 0.041489, -0.993379,
		0.590853, 0.806220, -0.030047,
		0.799635, -0.590160, -0.110883,
		32.513660, 34.582397, 43.854008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.286652, 31.046644, 47.276752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679962, 31.046804, 47.349594>,  <33.915951, 31.046902, 47.393299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679962, 31.046804, 47.349594>,  <33.286652, 31.046644, 47.276752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679962, 31.046804, 47.349594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180385, -0.139123, -0.973707,
		0.024942, 0.990275, -0.136869,
		0.983280, 0.000403, 0.182100,
		33.974945, 31.046925, 47.404224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544235, 31.427153, 46.683044>,  <33.286652, 31.046644, 47.276752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544235, 31.427153, 46.683044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833202, 31.211332, 46.856018>,  <34.006584, 31.081841, 46.959801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833202, 31.211332, 46.856018>,  <33.544235, 31.427153, 46.683044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833202, 31.211332, 46.856018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325179, -0.286813, -0.901109,
		0.610220, 0.791596, -0.031749,
		0.722420, -0.539550, 0.432430,
		34.049927, 31.049467, 46.985748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112610, 31.616585, 46.335743>,  <33.544235, 31.427153, 46.683044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112610, 31.616585, 46.335743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.178936, 31.252895, 46.488487>,  <34.218731, 31.034681, 46.580135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.178936, 31.252895, 46.488487>,  <34.112610, 31.616585, 46.335743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178936, 31.252895, 46.488487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413871, -0.287309, -0.863808,
		0.895107, 0.301274, 0.328661,
		0.165815, -0.909224, 0.381861,
		34.228680, 30.980127, 46.603046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723957, 31.386904, 46.041969>,  <34.112610, 31.616585, 46.335743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723957, 31.386904, 46.041969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.587505, 31.034353, 46.172691>,  <34.505634, 30.822823, 46.251125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.587505, 31.034353, 46.172691>,  <34.723957, 31.386904, 46.041969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587505, 31.034353, 46.172691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224426, -0.413970, -0.882192,
		0.912831, -0.227601, 0.339023,
		-0.341133, -0.881378, 0.326805,
		34.485165, 30.769939, 46.270733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290192, 30.960321, 45.966789>,  <34.723957, 31.386904, 46.041969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290192, 30.960321, 45.966789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955162, 30.742151, 45.979282>,  <34.754143, 30.611248, 45.986778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955162, 30.742151, 45.979282>,  <35.290192, 30.960321, 45.966789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955162, 30.742151, 45.979282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368137, -0.605720, -0.705393,
		0.403661, -0.579321, 0.708128,
		-0.837576, -0.545427, 0.031236,
		34.703888, 30.578524, 45.988651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498409, 30.136042, 46.064274>,  <35.290192, 30.960321, 45.966789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498409, 30.136042, 46.064274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142143, 30.190630, 45.890797>,  <34.928383, 30.223383, 45.786709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142143, 30.190630, 45.890797>,  <35.498409, 30.136042, 46.064274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142143, 30.190630, 45.890797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287203, -0.570594, -0.769375,
		-0.352458, -0.809815, 0.469015,
		-0.890667, 0.136469, -0.433691,
		34.874943, 30.231571, 45.760689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375538, 29.439762, 45.788361>,  <35.498409, 30.136042, 46.064274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375538, 29.439762, 45.788361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.132214, 29.696674, 45.601841>,  <34.986221, 29.850822, 45.489929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.132214, 29.696674, 45.601841>,  <35.375538, 29.439762, 45.788361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132214, 29.696674, 45.601841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236464, -0.414169, -0.878948,
		-0.757659, -0.644934, 0.100066,
		-0.608307, 0.642281, -0.466302,
		34.949722, 29.889359, 45.461952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156242, 28.989731, 45.309017>,  <35.375538, 29.439762, 45.788361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156242, 28.989731, 45.309017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.044464, 29.352215, 45.182087>,  <34.977398, 29.569706, 45.105927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.044464, 29.352215, 45.182087>,  <35.156242, 28.989731, 45.309017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044464, 29.352215, 45.182087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031378, -0.338937, -0.940286,
		-0.959650, -0.252797, 0.123148,
		-0.279441, 0.906209, -0.317328,
		34.960632, 29.624077, 45.086887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591747, 28.918283, 44.957905>,  <35.156242, 28.989731, 45.309017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591747, 28.918283, 44.957905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700993, 29.266476, 44.794113>,  <34.766541, 29.475391, 44.695839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700993, 29.266476, 44.794113>,  <34.591747, 28.918283, 44.957905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700993, 29.266476, 44.794113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205146, -0.363171, -0.908858,
		-0.939853, 0.332224, 0.079388,
		0.273113, 0.870479, -0.409482,
		34.782925, 29.527620, 44.671268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079231, 29.081779, 44.496784>,  <34.591747, 28.918283, 44.957905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079231, 29.081779, 44.496784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.412956, 29.268290, 44.379131>,  <34.613190, 29.380196, 44.308540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.412956, 29.268290, 44.379131>,  <34.079231, 29.081779, 44.496784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412956, 29.268290, 44.379131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118341, -0.369612, -0.921619,
		-0.538443, 0.803724, -0.253192,
		0.834311, 0.466277, -0.294128,
		34.663250, 29.408173, 44.290894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777924, 29.282763, 43.851105>,  <34.079231, 29.081779, 44.496784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777924, 29.282763, 43.851105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.168125, 29.369841, 43.838425>,  <34.402245, 29.422087, 43.830818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.168125, 29.369841, 43.838425>,  <33.777924, 29.282763, 43.851105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168125, 29.369841, 43.838425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021956, -0.239711, -0.970596,
		-0.218892, 0.946122, -0.238618,
		0.975502, 0.217695, -0.031697,
		34.460777, 29.435148, 43.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889389, 29.867365, 43.313137>,  <33.777924, 29.282763, 43.851105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889389, 29.867365, 43.313137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218014, 29.640806, 43.339153>,  <34.415188, 29.504871, 43.354763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218014, 29.640806, 43.339153>,  <33.889389, 29.867365, 43.313137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218014, 29.640806, 43.339153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054471, -0.191540, -0.979972,
		0.567510, 0.801566, -0.188214,
		0.821563, -0.566397, 0.065039,
		34.464481, 29.470888, 43.358665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926884, 30.627344, 43.292294>,  <33.889389, 29.867365, 43.313137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926884, 30.627344, 43.292294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620605, 30.873047, 43.215977>,  <33.436840, 31.020468, 43.170185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620605, 30.873047, 43.215977>,  <33.926884, 30.627344, 43.292294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620605, 30.873047, 43.215977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139066, 0.131515, 0.981511,
		0.627991, 0.778070, -0.015278,
		-0.765694, 0.614256, -0.190793,
		33.390896, 31.057323, 43.158737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002281, 31.141914, 43.739399>,  <33.926884, 30.627344, 43.292294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002281, 31.141914, 43.739399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620831, 31.214487, 43.643326>,  <33.391960, 31.258032, 43.585682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620831, 31.214487, 43.643326>,  <34.002281, 31.141914, 43.739399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620831, 31.214487, 43.643326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199025, 0.218545, 0.955315,
		0.225815, 0.958812, -0.172300,
		-0.953623, 0.181433, -0.240178,
		33.334743, 31.268917, 43.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811134, 31.623402, 44.132305>,  <34.002281, 31.141914, 43.739399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811134, 31.623402, 44.132305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454796, 31.467045, 44.039696>,  <33.240993, 31.373230, 43.984131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454796, 31.467045, 44.039696>,  <33.811134, 31.623402, 44.132305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454796, 31.467045, 44.039696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307805, 0.144490, 0.940414,
		-0.334148, 0.909025, -0.249037,
		-0.890843, -0.390892, -0.231521,
		33.187542, 31.349777, 43.970238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236843, 32.084469, 44.484337>,  <33.811134, 31.623402, 44.132305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236843, 32.084469, 44.484337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.033867, 31.752325, 44.392246>,  <32.912079, 31.553040, 44.336990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.033867, 31.752325, 44.392246>,  <33.236843, 32.084469, 44.484337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033867, 31.752325, 44.392246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605469, 0.153488, 0.780928,
		-0.613114, 0.535673, -0.580643,
		-0.507444, -0.830359, -0.230227,
		32.881634, 31.503218, 44.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509251, 32.256363, 44.359901>,  <33.236843, 32.084469, 44.484337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509251, 32.256363, 44.359901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.559662, 31.874947, 44.469360>,  <32.589909, 31.646097, 44.535034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.559662, 31.874947, 44.469360>,  <32.509251, 32.256363, 44.359901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559662, 31.874947, 44.469360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660607, 0.125119, 0.740232,
		-0.740078, -0.274062, -0.614146,
		0.126028, -0.953538, 0.273645,
		32.597469, 31.588884, 44.551453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941656, 32.082893, 44.571949>,  <32.509251, 32.256363, 44.359901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941656, 32.082893, 44.571949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.167736, 31.785137, 44.714184>,  <32.303383, 31.606483, 44.799522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.167736, 31.785137, 44.714184>,  <31.941656, 32.082893, 44.571949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167736, 31.785137, 44.714184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520655, 0.012467, 0.853676,
		-0.639898, -0.667632, -0.380523,
		0.565198, -0.744387, 0.355584,
		32.337296, 31.561821, 44.820858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472506, 31.534811, 44.788227>,  <31.941656, 32.082893, 44.571949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472506, 31.534811, 44.788227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.823318, 31.522875, 44.980026>,  <32.033806, 31.515713, 45.095108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.823318, 31.522875, 44.980026>,  <31.472506, 31.534811, 44.788227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823318, 31.522875, 44.980026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478971, 0.023370, 0.877520,
		-0.037385, -0.999282, 0.006207,
		0.877034, -0.029833, 0.479501,
		32.086430, 31.513924, 45.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369406, 31.104534, 45.286766>,  <31.472506, 31.534811, 44.788227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369406, 31.104534, 45.286766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681665, 31.316496, 45.419304>,  <31.869022, 31.443672, 45.498825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681665, 31.316496, 45.419304>,  <31.369406, 31.104534, 45.286766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681665, 31.316496, 45.419304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398532, 0.013690, 0.917052,
		0.481412, -0.847948, 0.221870,
		0.780650, 0.529902, 0.331344,
		31.915861, 31.475466, 45.518707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467657, 30.739159, 45.861115>,  <31.369406, 31.104534, 45.286766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467657, 30.739159, 45.861115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.666767, 31.082722, 45.909267>,  <31.786234, 31.288860, 45.938160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.666767, 31.082722, 45.909267>,  <31.467657, 30.739159, 45.861115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666767, 31.082722, 45.909267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369841, 0.084659, 0.925230,
		0.784497, -0.505081, 0.359801,
		0.497777, 0.858910, 0.120385,
		31.816101, 31.340395, 45.945381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876888, 30.767460, 46.550308>,  <31.467657, 30.739159, 45.861115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876888, 30.767460, 46.550308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.840281, 31.152542, 46.448467>,  <31.818316, 31.383591, 46.387363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.840281, 31.152542, 46.448467>,  <31.876888, 30.767460, 46.550308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840281, 31.152542, 46.448467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294907, 0.218002, 0.930325,
		0.951133, 0.160227, 0.263957,
		-0.091520, 0.962706, -0.254601,
		31.812824, 31.441355, 46.372086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235954, 31.135862, 47.121456>,  <31.876888, 30.767460, 46.550308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235954, 31.135862, 47.121456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954346, 31.358978, 46.945629>,  <31.785379, 31.492847, 46.840134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954346, 31.358978, 46.945629>,  <32.235954, 31.135862, 47.121456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954346, 31.358978, 46.945629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415150, 0.178942, 0.891981,
		0.576196, 0.810462, 0.105588,
		-0.704023, 0.557791, -0.439569,
		31.743139, 31.526316, 46.813759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884054, 31.524818, 47.598793>,  <32.235954, 31.135862, 47.121456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884054, 31.524818, 47.598793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.676014, 31.755814, 47.347076>,  <31.551189, 31.894411, 47.196045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.676014, 31.755814, 47.347076>,  <31.884054, 31.524818, 47.598793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676014, 31.755814, 47.347076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400595, 0.485782, 0.776878,
		0.754335, 0.656144, -0.021316,
		-0.520099, 0.577487, -0.629290,
		31.519985, 31.929060, 47.158291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994623, 32.284306, 47.768673>,  <31.884054, 31.524818, 47.598793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994623, 32.284306, 47.768673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643089, 32.251728, 47.580624>,  <31.432169, 32.232182, 47.467793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643089, 32.251728, 47.580624>,  <31.994623, 32.284306, 47.768673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643089, 32.251728, 47.580624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440615, 0.516559, 0.734183,
		0.183056, 0.852370, -0.489853,
		-0.878834, -0.081440, -0.470126,
		31.379438, 32.227295, 47.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634905, 32.924000, 47.851021>,  <31.994623, 32.284306, 47.768673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634905, 32.924000, 47.851021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.338181, 32.668190, 47.770298>,  <31.160147, 32.514706, 47.721863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.338181, 32.668190, 47.770298>,  <31.634905, 32.924000, 47.851021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338181, 32.668190, 47.770298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428490, 0.220523, 0.876222,
		-0.515863, 0.736462, -0.437616,
		-0.741809, -0.639526, -0.201807,
		31.115637, 32.476334, 47.709755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202345, 32.543163, 48.200138>,  <31.634905, 32.924000, 47.851021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202345, 32.543163, 48.200138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.410284, 32.826080, 48.391762>,  <31.535048, 32.995831, 48.506737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.410284, 32.826080, 48.391762>,  <31.202345, 32.543163, 48.200138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410284, 32.826080, 48.391762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266225, 0.398731, -0.877575,
		-0.811716, 0.583744, 0.018982,
		0.519848, 0.707288, 0.479063,
		31.566238, 33.038265, 48.535480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935640, 33.251637, 47.942249>,  <31.202345, 32.543163, 48.200138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935640, 33.251637, 47.942249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296408, 33.321232, 48.100376>,  <31.512869, 33.362988, 48.195251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296408, 33.321232, 48.100376>,  <30.935640, 33.251637, 47.942249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296408, 33.321232, 48.100376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168008, 0.701859, -0.692219,
		-0.397890, 0.690741, 0.603788,
		0.901918, 0.173986, 0.395313,
		31.566982, 33.373428, 48.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019999, 34.033218, 48.005821>,  <30.935640, 33.251637, 47.942249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019999, 34.033218, 48.005821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.379421, 33.858871, 48.026268>,  <31.595076, 33.754265, 48.038536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.379421, 33.858871, 48.026268>,  <31.019999, 34.033218, 48.005821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379421, 33.858871, 48.026268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332910, 0.601094, -0.726538,
		0.285946, 0.669855, 0.685222,
		0.898558, -0.435868, 0.051121,
		31.648989, 33.728111, 48.041603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437212, 34.571968, 47.804207>,  <31.019999, 34.033218, 48.005821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437212, 34.571968, 47.804207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.722473, 34.293762, 47.769184>,  <31.893631, 34.126839, 47.748169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.722473, 34.293762, 47.769184>,  <31.437212, 34.571968, 47.804207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722473, 34.293762, 47.769184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394986, 0.501870, -0.769489,
		0.579134, 0.514181, 0.632630,
		0.713155, -0.695517, -0.087556,
		31.936420, 34.085106, 47.742916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083649, 34.956242, 47.798805>,  <31.437212, 34.571968, 47.804207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083649, 34.956242, 47.798805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189739, 34.605141, 47.639198>,  <32.253391, 34.394482, 47.543434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189739, 34.605141, 47.639198>,  <32.083649, 34.956242, 47.798805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189739, 34.605141, 47.639198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296895, 0.468074, -0.832322,
		0.917339, 0.102284, 0.384743,
		0.265222, -0.877750, -0.399015,
		32.269306, 34.341816, 47.519493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673817, 35.175289, 47.373703>,  <32.083649, 34.956242, 47.798805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673817, 35.175289, 47.373703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.568531, 34.819740, 47.223709>,  <32.505360, 34.606411, 47.133713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.568531, 34.819740, 47.223709>,  <32.673817, 35.175289, 47.373703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568531, 34.819740, 47.223709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262385, 0.308082, -0.914461,
		0.928370, -0.339093, 0.152136,
		-0.263217, -0.888876, -0.374987,
		32.489567, 34.553078, 47.111214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233604, 34.848564, 46.993721>,  <32.673817, 35.175289, 47.373703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233604, 34.848564, 46.993721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873413, 34.729370, 46.867016>,  <32.657299, 34.657856, 46.790993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873413, 34.729370, 46.867016>,  <33.233604, 34.848564, 46.993721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873413, 34.729370, 46.867016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233492, 0.283222, -0.930197,
		0.366898, -0.911587, -0.185459,
		-0.900482, -0.297985, -0.316761,
		32.603268, 34.639977, 46.771988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856701, 35.076817, 46.742329>,  <33.233604, 34.848564, 46.993721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856701, 35.076817, 46.742329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.844383, 35.473423, 46.792843>,  <33.836994, 35.711388, 46.823151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.844383, 35.473423, 46.792843>,  <33.856701, 35.076817, 46.742329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844383, 35.473423, 46.792843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179693, -0.118797, 0.976523,
		0.983241, 0.052762, -0.174511,
		-0.030791, 0.991516, 0.126287,
		33.835144, 35.770878, 46.830730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477837, 35.164497, 47.244003>,  <33.856701, 35.076817, 46.742329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477837, 35.164497, 47.244003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245300, 35.488979, 47.269253>,  <34.105778, 35.683670, 47.284401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.245300, 35.488979, 47.269253>,  <34.477837, 35.164497, 47.244003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245300, 35.488979, 47.269253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072043, -0.025959, 0.997064,
		0.810462, 0.584184, -0.043350,
		-0.581344, 0.811206, 0.063125,
		34.070896, 35.732342, 47.288189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780609, 35.606468, 47.655678>,  <34.477837, 35.164497, 47.244003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780609, 35.606468, 47.655678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.396549, 35.717831, 47.665405>,  <34.166111, 35.784649, 47.671242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.396549, 35.717831, 47.665405>,  <34.780609, 35.606468, 47.655678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396549, 35.717831, 47.665405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005403, -0.068517, 0.997635,
		0.279418, 0.958015, 0.064283,
		-0.960154, 0.278410, 0.024321,
		34.108501, 35.801353, 47.672703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699684, 36.219391, 48.186470>,  <34.780609, 35.606468, 47.655678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699684, 36.219391, 48.186470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.316830, 36.122032, 48.123676>,  <34.087116, 36.063618, 48.086002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.316830, 36.122032, 48.123676>,  <34.699684, 36.219391, 48.186470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316830, 36.122032, 48.123676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136684, -0.098254, 0.985730,
		-0.255348, 0.964937, 0.060774,
		-0.957139, -0.243397, -0.156980,
		34.029690, 36.049011, 48.076584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273685, 36.702560, 48.597004>,  <34.699684, 36.219391, 48.186470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273685, 36.702560, 48.597004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.053455, 36.379154, 48.513889>,  <33.921318, 36.185112, 48.464020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.053455, 36.379154, 48.513889>,  <34.273685, 36.702560, 48.597004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053455, 36.379154, 48.513889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252149, -0.076218, 0.964682,
		-0.795793, 0.583524, -0.161902,
		-0.550576, -0.808511, -0.207789,
		33.888283, 36.136600, 48.451553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714367, 36.788387, 49.034924>,  <34.273685, 36.702560, 48.597004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714367, 36.788387, 49.034924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.684959, 36.400249, 48.942810>,  <33.667313, 36.167366, 48.887543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.684959, 36.400249, 48.942810>,  <33.714367, 36.788387, 49.034924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684959, 36.400249, 48.942810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054662, -0.226645, 0.972442,
		-0.995794, 0.084085, -0.036377,
		-0.073523, -0.970341, -0.230288,
		33.662903, 36.109146, 48.873722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111240, 36.547478, 49.410202>,  <33.714367, 36.788387, 49.034924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111240, 36.547478, 49.410202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313156, 36.215992, 49.313522>,  <33.434303, 36.017101, 49.255516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313156, 36.215992, 49.313522>,  <33.111240, 36.547478, 49.410202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313156, 36.215992, 49.313522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013584, -0.287580, 0.957660,
		-0.863137, -0.480131, -0.156424,
		0.504787, -0.828717, -0.241699,
		33.464592, 35.967377, 49.241013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762314, 36.004120, 49.743626>,  <33.111240, 36.547478, 49.410202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762314, 36.004120, 49.743626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126968, 35.856262, 49.671753>,  <33.345760, 35.767548, 49.628628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126968, 35.856262, 49.671753>,  <32.762314, 36.004120, 49.743626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126968, 35.856262, 49.671753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013117, -0.410790, 0.911636,
		-0.410790, -0.833437, -0.369642,
		-0.911636, 0.369642, 0.179680,
		33.400459, 35.745369, 49.617847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619179, 35.425522, 49.949879>,  <32.762314, 36.004120, 49.743626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619179, 35.425522, 49.949879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.014366, 35.484554, 49.968349>,  <33.251480, 35.519974, 49.979431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.014366, 35.484554, 49.968349>,  <32.619179, 35.425522, 49.949879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014366, 35.484554, 49.968349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000950, -0.304384, 0.952549,
		0.154631, -0.941048, -0.300863,
		0.987972, 0.147579, 0.046174,
		33.310757, 35.528828, 49.982201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.327209, 36.064716, 33.766735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642349, 36.045959, 34.012367>,  <36.831432, 36.034706, 34.159744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642349, 36.045959, 34.012367>,  <36.327209, 36.064716, 33.766735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642349, 36.045959, 34.012367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605844, 0.120146, 0.786459,
		-0.110655, -0.991648, 0.066250,
		0.787851, -0.046889, 0.614079,
		36.878704, 36.031895, 34.196590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289967, 35.496376, 34.277622>,  <36.327209, 36.064716, 33.766735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289967, 35.496376, 34.277622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513115, 35.802444, 34.406174>,  <36.647003, 35.986088, 34.483303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513115, 35.802444, 34.406174>,  <36.289967, 35.496376, 34.277622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513115, 35.802444, 34.406174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553287, 0.054276, 0.831220,
		0.618586, -0.641530, 0.453641,
		0.557875, 0.765175, 0.321377,
		36.680477, 36.031998, 34.502586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400928, 35.309193, 34.948257>,  <36.289967, 35.496376, 34.277622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400928, 35.309193, 34.948257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457977, 35.704765, 34.931885>,  <36.492207, 35.942108, 34.922062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457977, 35.704765, 34.931885>,  <36.400928, 35.309193, 34.948257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457977, 35.704765, 34.931885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460641, 0.102928, 0.881598,
		0.876052, -0.106883, 0.470222,
		0.142626, 0.988930, -0.040936,
		36.500767, 36.001446, 34.919605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793022, 35.504959, 35.512821>,  <36.400928, 35.309193, 34.948257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793022, 35.504959, 35.512821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534859, 35.782932, 35.386009>,  <36.379959, 35.949718, 35.309921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534859, 35.782932, 35.386009>,  <36.793022, 35.504959, 35.512821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534859, 35.782932, 35.386009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436890, 0.004593, 0.899503,
		0.626553, 0.719057, 0.300646,
		-0.645413, 0.694936, -0.317027,
		36.341236, 35.991413, 35.290901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750870, 35.861012, 36.071396>,  <36.793022, 35.504959, 35.512821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750870, 35.861012, 36.071396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438316, 36.008945, 35.870335>,  <36.250782, 36.097706, 35.749699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438316, 36.008945, 35.870335>,  <36.750870, 35.861012, 36.071396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438316, 36.008945, 35.870335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510847, 0.083548, 0.855602,
		0.358426, 0.925333, 0.123646,
		-0.781387, 0.369834, -0.502649,
		36.203899, 36.119896, 35.719540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670425, 36.425339, 36.419529>,  <36.750870, 35.861012, 36.071396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670425, 36.425339, 36.419529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321110, 36.373135, 36.231770>,  <36.111519, 36.341812, 36.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321110, 36.373135, 36.231770>,  <36.670425, 36.425339, 36.419529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321110, 36.373135, 36.231770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487191, 0.227766, 0.843070,
		-0.003121, 0.964929, -0.262491,
		-0.873290, -0.130514, -0.469394,
		36.059124, 36.333981, 36.090950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331791, 36.868565, 36.780392>,  <36.670425, 36.425339, 36.419529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331791, 36.868565, 36.780392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061947, 36.635841, 36.598671>,  <35.900040, 36.496208, 36.489639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061947, 36.635841, 36.598671>,  <36.331791, 36.868565, 36.780392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061947, 36.635841, 36.598671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639885, 0.154075, 0.752867,
		-0.368030, 0.798596, -0.476234,
		-0.674612, -0.581813, -0.454305,
		35.859562, 36.461296, 36.462379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608208, 37.271530, 36.749668>,  <36.331791, 36.868565, 36.780392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608208, 37.271530, 36.749668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551956, 36.875591, 36.757954>,  <35.518208, 36.638027, 36.762924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551956, 36.875591, 36.757954>,  <35.608208, 37.271530, 36.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551956, 36.875591, 36.757954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656031, 0.108832, 0.746846,
		-0.741517, 0.091436, -0.664674,
		-0.140626, -0.989846, 0.020716,
		35.509769, 36.578636, 36.764168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846355, 37.112839, 36.924896>,  <35.608208, 37.271530, 36.749668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846355, 37.112839, 36.924896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022278, 36.760151, 36.993176>,  <35.127831, 36.548538, 37.034142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022278, 36.760151, 36.993176>,  <34.846355, 37.112839, 36.924896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022278, 36.760151, 36.993176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464494, -0.060653, 0.883497,
		-0.768645, -0.467856, -0.436229,
		0.439808, -0.881721, 0.170696,
		35.154221, 36.495636, 37.044384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235779, 36.721359, 37.192612>,  <34.846355, 37.112839, 36.924896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235779, 36.721359, 37.192612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568077, 36.521572, 37.290913>,  <34.767456, 36.401699, 37.349892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568077, 36.521572, 37.290913>,  <34.235779, 36.721359, 37.192612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568077, 36.521572, 37.290913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402819, -0.234710, 0.884674,
		-0.384192, -0.833929, -0.396181,
		0.830743, -0.499474, 0.245748,
		34.817299, 36.371731, 37.364639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032345, 36.157825, 37.429745>,  <34.235779, 36.721359, 37.192612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032345, 36.157825, 37.429745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384686, 36.188747, 37.616558>,  <34.596092, 36.207298, 37.728645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384686, 36.188747, 37.616558>,  <34.032345, 36.157825, 37.429745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384686, 36.188747, 37.616558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454711, -0.136221, 0.880160,
		0.131657, -0.987658, -0.084841,
		0.880854, 0.077301, 0.467034,
		34.648941, 36.211937, 37.756668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980721, 35.710484, 37.935242>,  <34.032345, 36.157825, 37.429745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980721, 35.710484, 37.935242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278511, 35.959606, 38.031464>,  <34.457188, 36.109077, 38.089199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278511, 35.959606, 38.031464>,  <33.980721, 35.710484, 37.935242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278511, 35.959606, 38.031464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356796, 0.066592, 0.931806,
		0.564313, -0.779539, 0.271791,
		0.744478, 0.622804, 0.240557,
		34.501854, 36.146446, 38.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634007, 35.260494, 38.205505>,  <33.980721, 35.710484, 37.935242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634007, 35.260494, 38.205505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237396, 35.311161, 38.217014>,  <32.999428, 35.341560, 38.223919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237396, 35.311161, 38.217014>,  <33.634007, 35.260494, 38.205505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237396, 35.311161, 38.217014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025104, 0.404210, -0.914322,
		-0.127451, -0.905852, -0.403965,
		-0.991527, 0.126672, 0.028777,
		32.939938, 35.349163, 38.225647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355560, 34.996979, 37.566521>,  <33.634007, 35.260494, 38.205505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355560, 34.996979, 37.566521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085854, 35.251297, 37.716785>,  <32.924030, 35.403889, 37.806946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085854, 35.251297, 37.716785>,  <33.355560, 34.996979, 37.566521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085854, 35.251297, 37.716785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276909, 0.253908, -0.926743,
		-0.684602, -0.728901, 0.004854,
		-0.674271, 0.635794, 0.375665,
		32.883572, 35.442036, 37.829487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741997, 34.781269, 37.221165>,  <33.355560, 34.996979, 37.566521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741997, 34.781269, 37.221165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678627, 35.158215, 37.339054>,  <32.640606, 35.384380, 37.409786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678627, 35.158215, 37.339054>,  <32.741997, 34.781269, 37.221165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678627, 35.158215, 37.339054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384872, 0.215945, -0.897352,
		-0.909272, -0.255590, 0.328477,
		-0.158421, 0.942359, 0.294722,
		32.631100, 35.440922, 37.427471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169231, 34.982841, 36.764984>,  <32.741997, 34.781269, 37.221165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169231, 34.982841, 36.764984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288311, 35.329910, 36.924240>,  <32.359760, 35.538151, 37.019794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288311, 35.329910, 36.924240>,  <32.169231, 34.982841, 36.764984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288311, 35.329910, 36.924240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322529, 0.483940, -0.813497,
		-0.898527, 0.113765, 0.423919,
		0.297699, 0.867675, 0.398141,
		32.377621, 35.590214, 37.043682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569401, 35.356766, 36.816765>,  <32.169231, 34.982841, 36.764984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569401, 35.356766, 36.816765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880428, 35.607582, 36.797989>,  <32.067043, 35.758072, 36.786724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880428, 35.607582, 36.797989>,  <31.569401, 35.356766, 36.816765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880428, 35.607582, 36.797989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370279, 0.396266, -0.840159,
		-0.508214, 0.670663, 0.540305,
		0.777568, 0.627044, -0.046944,
		32.113697, 35.795696, 36.783905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240664, 35.935623, 36.559456>,  <31.569401, 35.356766, 36.816765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240664, 35.935623, 36.559456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633505, 35.972992, 36.494041>,  <31.869209, 35.995415, 36.454792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633505, 35.972992, 36.494041>,  <31.240664, 35.935623, 36.559456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633505, 35.972992, 36.494041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186212, 0.351603, -0.917442,
		-0.028211, 0.931476, 0.362707,
		0.982105, 0.093422, -0.163533,
		31.928137, 36.001019, 36.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222340, 36.446888, 36.046669>,  <31.240664, 35.935623, 36.559456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222340, 36.446888, 36.046669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609825, 36.350594, 36.022522>,  <31.842316, 36.292816, 36.008034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609825, 36.350594, 36.022522>,  <31.222340, 36.446888, 36.046669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609825, 36.350594, 36.022522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018427, 0.312325, -0.949797,
		0.247502, 0.918967, 0.306989,
		0.968712, -0.240734, -0.060367,
		31.900438, 36.278374, 36.004414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636158, 37.104404, 35.895470>,  <31.222340, 36.446888, 36.046669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636158, 37.104404, 35.895470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797062, 36.758923, 35.774010>,  <31.893604, 36.551636, 35.701134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797062, 36.758923, 35.774010>,  <31.636158, 37.104404, 35.895470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797062, 36.758923, 35.774010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174049, 0.253477, -0.951555,
		0.898829, 0.435622, -0.048363,
		0.402259, -0.863703, -0.303652,
		31.917740, 36.499813, 35.682915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019676, 37.286224, 35.235188>,  <31.636158, 37.104404, 35.895470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019676, 37.286224, 35.235188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975960, 36.888813, 35.222782>,  <31.949730, 36.650368, 35.215340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975960, 36.888813, 35.222782>,  <32.019676, 37.286224, 35.235188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975960, 36.888813, 35.222782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172630, 0.049698, -0.983732,
		0.978904, -0.102162, -0.176944,
		-0.109294, -0.993525, -0.031014,
		31.943171, 36.590755, 35.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521233, 36.926609, 34.722927>,  <32.019676, 37.286224, 35.235188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521233, 36.926609, 34.722927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231136, 36.662830, 34.802071>,  <32.057079, 36.504562, 34.849556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231136, 36.662830, 34.802071>,  <32.521233, 36.926609, 34.722927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231136, 36.662830, 34.802071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175390, -0.100935, -0.979311,
		0.665778, -0.744941, -0.042458,
		-0.725243, -0.659451, 0.197856,
		32.013565, 36.464996, 34.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553436, 36.556484, 34.135071>,  <32.521233, 36.926609, 34.722927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553436, 36.556484, 34.135071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199211, 36.450806, 34.287903>,  <31.986677, 36.387398, 34.379601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199211, 36.450806, 34.287903>,  <32.553436, 36.556484, 34.135071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199211, 36.450806, 34.287903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332877, -0.212780, -0.918650,
		0.324001, -0.940705, 0.100486,
		-0.885560, -0.264194, 0.382080,
		31.933542, 36.371548, 34.402527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294266, 36.304050, 33.625885>,  <32.553436, 36.556484, 34.135071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294266, 36.304050, 33.625885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943281, 36.321453, 33.816956>,  <31.732691, 36.331894, 33.931599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943281, 36.321453, 33.816956>,  <32.294266, 36.304050, 33.625885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943281, 36.321453, 33.816956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479647, -0.084372, -0.873396,
		0.002309, -0.995484, 0.094898,
		-0.877459, 0.043501, 0.477676,
		31.680044, 36.334503, 33.960258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876406, 35.765816, 33.369278>,  <32.294266, 36.304050, 33.625885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876406, 35.765816, 33.369278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665476, 36.073040, 33.514610>,  <31.538918, 36.257374, 33.601810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665476, 36.073040, 33.514610>,  <31.876406, 35.765816, 33.369278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665476, 36.073040, 33.514610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431573, 0.126227, -0.893203,
		-0.731898, -0.627811, 0.264913,
		-0.527323, 0.768063, 0.363331,
		31.507278, 36.303459, 33.623611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237545, 35.402298, 33.422371>,  <31.876406, 35.765816, 33.369278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237545, 35.402298, 33.422371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220814, 35.799965, 33.382599>,  <31.210775, 36.038563, 33.358734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220814, 35.799965, 33.382599>,  <31.237545, 35.402298, 33.422371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220814, 35.799965, 33.382599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294461, -0.107363, -0.949613,
		-0.954747, -0.010443, 0.297234,
		-0.041829, 0.994165, -0.099430,
		31.208265, 36.098213, 33.352772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377184, 34.632633, 33.633648>,  <31.237545, 35.402298, 33.422371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377184, 34.632633, 33.633648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642736, 34.377369, 33.477692>,  <31.802067, 34.224209, 33.384117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642736, 34.377369, 33.477692>,  <31.377184, 34.632633, 33.633648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642736, 34.377369, 33.477692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736993, -0.646770, -0.196289,
		-0.126905, 0.417658, -0.899698,
		0.663879, -0.638161, -0.389890,
		31.841900, 34.185921, 33.360725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111639, 34.361435, 33.053543>,  <31.377184, 34.632633, 33.633648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111639, 34.361435, 33.053543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352201, 34.074142, 33.193516>,  <31.496540, 33.901768, 33.277500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352201, 34.074142, 33.193516>,  <31.111639, 34.361435, 33.053543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352201, 34.074142, 33.193516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690433, -0.687613, -0.224702,
		0.402008, -0.106469, -0.909425,
		0.601408, -0.718229, 0.349935,
		31.532623, 33.858673, 33.298496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625853, 34.263142, 33.631275>,  <31.111639, 34.361435, 33.053543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625853, 34.263142, 33.631275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849854, 33.952839, 33.514931>,  <30.984255, 33.766659, 33.445122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849854, 33.952839, 33.514931>,  <30.625853, 34.263142, 33.631275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849854, 33.952839, 33.514931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007732, -0.346168, 0.938141,
		-0.828454, -0.527611, -0.187858,
		0.560004, -0.775754, -0.290864,
		31.017855, 33.720112, 33.427673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301495, 33.696754, 33.842957>,  <30.625853, 34.263142, 33.631275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301495, 33.696754, 33.842957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694168, 33.621132, 33.833519>,  <30.929771, 33.575756, 33.827854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694168, 33.621132, 33.833519>,  <30.301495, 33.696754, 33.842957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694168, 33.621132, 33.833519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005549, -0.152169, 0.988339,
		-0.190452, -0.970103, -0.150430,
		0.981681, -0.189066, -0.023598,
		30.988672, 33.564415, 33.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346172, 33.073112, 34.293816>,  <30.301495, 33.696754, 33.842957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346172, 33.073112, 34.293816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707804, 33.243683, 34.282486>,  <30.924784, 33.346024, 34.275688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707804, 33.243683, 34.282486>,  <30.346172, 33.073112, 34.293816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707804, 33.243683, 34.282486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148260, -0.250798, 0.956619,
		0.400821, -0.869059, -0.289963,
		0.904081, 0.426423, -0.028321,
		30.979029, 33.371609, 34.273991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829906, 32.598598, 34.515923>,  <30.346172, 33.073112, 34.293816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829906, 32.598598, 34.515923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036190, 32.935982, 34.576088>,  <31.159960, 33.138412, 34.612186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036190, 32.935982, 34.576088>,  <30.829906, 32.598598, 34.515923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036190, 32.935982, 34.576088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247223, -0.314591, 0.916468,
		0.820320, -0.435445, -0.370760,
		0.515709, 0.843457, 0.150413,
		31.190903, 33.189018, 34.621212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471819, 32.410362, 34.772217>,  <30.829906, 32.598598, 34.515923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471819, 32.410362, 34.772217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425192, 32.783615, 34.908264>,  <31.397217, 33.007565, 34.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425192, 32.783615, 34.908264>,  <31.471819, 32.410362, 34.772217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425192, 32.783615, 34.908264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212177, -0.311152, 0.926372,
		0.970254, 0.180150, -0.161719,
		-0.116566, 0.933130, 0.340120,
		31.390223, 33.063553, 35.010300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980766, 32.419796, 35.215202>,  <31.471819, 32.410362, 34.772217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980766, 32.419796, 35.215202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762936, 32.738392, 35.320301>,  <31.632236, 32.929550, 35.383362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762936, 32.738392, 35.320301>,  <31.980766, 32.419796, 35.215202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762936, 32.738392, 35.320301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235252, -0.155641, 0.959392,
		0.805042, 0.584276, -0.102618,
		-0.544578, 0.796491, 0.262749,
		31.599562, 32.977341, 35.399124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422764, 32.931133, 35.548889>,  <31.980766, 32.419796, 35.215202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422764, 32.931133, 35.548889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042709, 32.974876, 35.665707>,  <31.814678, 33.001122, 35.735798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042709, 32.974876, 35.665707>,  <32.422764, 32.931133, 35.548889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042709, 32.974876, 35.665707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284551, -0.079107, 0.955391,
		0.127583, 0.990849, 0.044044,
		-0.950133, 0.109359, 0.292040,
		31.757669, 33.007683, 35.753319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486755, 33.413326, 36.127121>,  <32.422764, 32.931133, 35.548889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486755, 33.413326, 36.127121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112598, 33.278999, 36.171425>,  <31.888103, 33.198402, 36.198006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112598, 33.278999, 36.171425>,  <32.486755, 33.413326, 36.127121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112598, 33.278999, 36.171425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197479, -0.236267, 0.951409,
		-0.293331, 0.911814, 0.287320,
		-0.935393, -0.335817, 0.110759,
		31.831980, 33.178253, 36.204651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325542, 33.592579, 36.728260>,  <32.486755, 33.413326, 36.127121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325542, 33.592579, 36.728260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084667, 33.278896, 36.668404>,  <31.940142, 33.090687, 36.632488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084667, 33.278896, 36.668404>,  <32.325542, 33.592579, 36.728260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084667, 33.278896, 36.668404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080330, -0.246005, 0.965934,
		-0.794303, 0.569653, 0.211137,
		-0.602188, -0.784204, -0.149642,
		31.904011, 33.043636, 36.623512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851229, 33.683254, 37.252304>,  <32.325542, 33.592579, 36.728260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851229, 33.683254, 37.252304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803362, 33.301914, 37.141449>,  <31.774643, 33.073109, 37.074936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803362, 33.301914, 37.141449>,  <31.851229, 33.683254, 37.252304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803362, 33.301914, 37.141449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391641, -0.301837, 0.869202,
		-0.912303, -0.004525, 0.409490,
		-0.119666, -0.953349, -0.277139,
		31.767462, 33.015911, 37.058308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444199, 33.294476, 37.712498>,  <31.851229, 33.683254, 37.252304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444199, 33.294476, 37.712498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635750, 32.990318, 37.537006>,  <31.750681, 32.807823, 37.431713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635750, 32.990318, 37.537006>,  <31.444199, 33.294476, 37.712498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635750, 32.990318, 37.537006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204659, -0.389287, 0.898093,
		-0.853693, -0.519866, -0.030800,
		0.478877, -0.760392, -0.438726,
		31.779413, 32.762199, 37.405388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298573, 32.684742, 38.091290>,  <31.444199, 33.294476, 37.712498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298573, 32.684742, 38.091290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646215, 32.603180, 37.911034>,  <31.854801, 32.554241, 37.802879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646215, 32.603180, 37.911034>,  <31.298573, 32.684742, 38.091290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646215, 32.603180, 37.911034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362165, -0.358184, 0.860547,
		-0.336883, -0.911113, -0.237452,
		0.869106, -0.203907, -0.450640,
		31.906948, 32.542007, 37.775841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500217, 32.025238, 38.358929>,  <31.298573, 32.684742, 38.091290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500217, 32.025238, 38.358929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832392, 32.186386, 38.205009>,  <32.031696, 32.283073, 38.112659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832392, 32.186386, 38.205009>,  <31.500217, 32.025238, 38.358929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832392, 32.186386, 38.205009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492601, -0.208364, 0.844943,
		0.260226, -0.891224, -0.371488,
		0.830438, 0.402871, -0.384796,
		32.081524, 32.307247, 38.089569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020729, 31.526787, 38.478653>,  <31.500217, 32.025238, 38.358929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020729, 31.526787, 38.478653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223637, 31.868368, 38.432285>,  <32.345383, 32.073318, 38.404465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223637, 31.868368, 38.432285>,  <32.020729, 31.526787, 38.478653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223637, 31.868368, 38.432285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520732, -0.196549, 0.830787,
		0.686670, -0.481799, -0.544385,
		0.507270, 0.853955, -0.115924,
		32.375816, 32.124554, 38.397507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612873, 31.289637, 38.514736>,  <32.020729, 31.526787, 38.478653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612873, 31.289637, 38.514736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622795, 31.682886, 38.587238>,  <32.628750, 31.918837, 38.630741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622795, 31.682886, 38.587238>,  <32.612873, 31.289637, 38.514736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622795, 31.682886, 38.587238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570708, -0.162788, 0.804855,
		0.820778, 0.083479, -0.565115,
		0.024806, 0.983123, 0.181255,
		32.630238, 31.977823, 38.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279282, 31.392206, 38.630249>,  <32.612873, 31.289637, 38.514736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279282, 31.392206, 38.630249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136322, 31.741499, 38.762753>,  <33.050549, 31.951075, 38.842255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136322, 31.741499, 38.762753>,  <33.279282, 31.392206, 38.630249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136322, 31.741499, 38.762753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574937, -0.073810, 0.814861,
		0.736013, 0.481683, -0.475674,
		-0.357396, 0.873231, 0.331263,
		33.029102, 32.003468, 38.862133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937115, 31.784813, 38.914165>,  <33.279282, 31.392206, 38.630249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937115, 31.784813, 38.914165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603180, 31.914265, 39.092289>,  <33.402817, 31.991936, 39.199165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603180, 31.914265, 39.092289>,  <33.937115, 31.784813, 38.914165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603180, 31.914265, 39.092289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411939, -0.169333, 0.895339,
		0.365166, 0.930907, 0.008050,
		-0.834841, 0.323632, 0.445312,
		33.352726, 32.011353, 39.225883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272957, 32.299603, 39.521126>,  <33.937115, 31.784813, 38.914165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272957, 32.299603, 39.521126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899048, 32.211090, 39.632282>,  <33.674702, 32.157982, 39.698978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899048, 32.211090, 39.632282>,  <34.272957, 32.299603, 39.521126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899048, 32.211090, 39.632282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316213, -0.161868, 0.934777,
		-0.161868, 0.961682, 0.221283,
		-0.934777, -0.221283, 0.277895,
		33.618614, 32.144707, 39.715652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222687, 32.577583, 40.077599>,  <34.272957, 32.299603, 39.521126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222687, 32.577583, 40.077599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899811, 32.344101, 40.112766>,  <33.706085, 32.204014, 40.133869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899811, 32.344101, 40.112766>,  <34.222687, 32.577583, 40.077599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899811, 32.344101, 40.112766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271809, -0.235326, 0.933135,
		-0.523982, 0.777119, 0.348609,
		-0.807194, -0.583702, 0.087921,
		33.657654, 32.168991, 40.139141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840801, 32.769581, 40.669350>,  <34.222687, 32.577583, 40.077599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840801, 32.769581, 40.669350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752510, 32.388920, 40.583908>,  <33.699535, 32.160522, 40.532642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752510, 32.388920, 40.583908>,  <33.840801, 32.769581, 40.669350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752510, 32.388920, 40.583908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143387, -0.248292, 0.958014,
		-0.964737, 0.180836, 0.191262,
		-0.220732, -0.951656, -0.213607,
		33.686291, 32.103424, 40.519825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324326, 32.649055, 41.082317>,  <33.840801, 32.769581, 40.669350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324326, 32.649055, 41.082317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458706, 32.287155, 40.977581>,  <33.539333, 32.070015, 40.914738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458706, 32.287155, 40.977581>,  <33.324326, 32.649055, 41.082317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458706, 32.287155, 40.977581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019545, -0.271246, 0.962312,
		-0.941677, -0.328406, -0.073442,
		0.335950, -0.904751, -0.261845,
		33.559490, 32.015728, 40.899029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919651, 32.246197, 41.480011>,  <33.324326, 32.649055, 41.082317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919651, 32.246197, 41.480011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204964, 31.988485, 41.369640>,  <33.376152, 31.833858, 41.303417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204964, 31.988485, 41.369640>,  <32.919651, 32.246197, 41.480011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204964, 31.988485, 41.369640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034215, -0.425228, 0.904439,
		-0.700040, -0.635680, -0.325352,
		0.713283, -0.644276, -0.275927,
		33.418949, 31.795202, 41.286861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601192, 31.546232, 41.589367>,  <32.919651, 32.246197, 41.480011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601192, 31.546232, 41.589367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999302, 31.507471, 41.591892>,  <33.238167, 31.484215, 41.593407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999302, 31.507471, 41.591892>,  <32.601192, 31.546232, 41.589367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999302, 31.507471, 41.591892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054146, -0.499823, 0.864434,
		-0.080613, -0.860690, -0.502707,
		0.995274, -0.096904, 0.006310,
		33.297886, 31.478399, 41.593784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764980, 30.823303, 41.770226>,  <32.601192, 31.546232, 41.589367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764980, 30.823303, 41.770226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074440, 31.055359, 41.872131>,  <33.260117, 31.194592, 41.933273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074440, 31.055359, 41.872131>,  <32.764980, 30.823303, 41.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074440, 31.055359, 41.872131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108015, -0.516949, 0.849174,
		0.624338, -0.629446, -0.462601,
		0.773650, 0.580140, 0.254761,
		33.306534, 31.229401, 41.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972763, 30.399223, 42.328781>,  <32.764980, 30.823303, 41.770226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972763, 30.399223, 42.328781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173679, 30.745100, 42.330166>,  <33.294228, 30.952625, 42.330997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173679, 30.745100, 42.330166>,  <32.972763, 30.399223, 42.328781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173679, 30.745100, 42.330166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182739, -0.110064, 0.976981,
		0.845168, -0.490097, -0.213297,
		0.502292, 0.864691, 0.003463,
		33.324368, 31.004507, 42.331203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610477, 30.325165, 42.711262>,  <32.972763, 30.399223, 42.328781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610477, 30.325165, 42.711262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512650, 30.712383, 42.733433>,  <33.453953, 30.944714, 42.746735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512650, 30.712383, 42.733433>,  <33.610477, 30.325165, 42.711262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512650, 30.712383, 42.733433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016015, -0.053127, 0.998459,
		0.969500, 0.245077, -0.002510,
		-0.244566, 0.968047, 0.055431,
		33.439281, 31.002798, 42.750061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378628, 30.176497, 42.872086>,  <33.610477, 30.325165, 42.711262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378628, 30.176497, 42.872086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564079, 29.826059, 42.925011>,  <34.675350, 29.615797, 42.956768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564079, 29.826059, 42.925011>,  <34.378628, 30.176497, 42.872086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564079, 29.826059, 42.925011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266802, -0.004364, -0.963741,
		0.844907, 0.482118, 0.231721,
		0.463626, -0.876095, 0.132317,
		34.703167, 29.563231, 42.964706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119396, 30.148008, 42.615234>,  <34.378628, 30.176497, 42.872086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119396, 30.148008, 42.615234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995121, 29.768095, 42.600327>,  <34.920555, 29.540148, 42.591381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995121, 29.768095, 42.600327>,  <35.119396, 30.148008, 42.615234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995121, 29.768095, 42.600327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257009, -0.046195, -0.965304,
		0.915107, -0.309485, 0.258455,
		-0.310687, -0.949782, -0.037267,
		34.901917, 29.483160, 42.589146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740902, 29.835880, 42.321049>,  <35.119396, 30.148008, 42.615234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740902, 29.835880, 42.321049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435486, 29.580622, 42.281490>,  <35.252235, 29.427467, 42.257755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435486, 29.580622, 42.281490>,  <35.740902, 29.835880, 42.321049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435486, 29.580622, 42.281490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056191, 0.086902, -0.994631,
		0.643312, -0.764997, -0.030495,
		-0.763540, -0.638144, -0.098892,
		35.206425, 29.389179, 42.251823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923130, 29.400347, 41.778854>,  <35.740902, 29.835880, 42.321049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923130, 29.400347, 41.778854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537651, 29.294300, 41.766182>,  <35.306362, 29.230673, 41.758579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537651, 29.294300, 41.766182>,  <35.923130, 29.400347, 41.778854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537651, 29.294300, 41.766182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039194, -0.023088, -0.998965,
		0.264111, -0.963940, 0.032641,
		-0.963696, -0.265116, -0.031683,
		35.248543, 29.214766, 41.756676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850258, 28.851339, 41.316082>,  <35.923130, 29.400347, 41.778854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850258, 28.851339, 41.316082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505741, 29.053261, 41.339245>,  <35.299030, 29.174414, 41.353142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505741, 29.053261, 41.339245>,  <35.850258, 28.851339, 41.316082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505741, 29.053261, 41.339245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051333, 0.199821, -0.978487,
		-0.505513, -0.839789, -0.198017,
		-0.861291, 0.504802, 0.057903,
		35.247353, 29.204700, 41.356617>
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
