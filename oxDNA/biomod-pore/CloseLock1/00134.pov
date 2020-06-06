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
	<24.031063, 35.453568, 34.952290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233192, 35.111137, 34.995705>,  <24.354471, 34.905678, 35.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233192, 35.111137, 34.995705>,  <24.031063, 35.453568, 34.952290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233192, 35.111137, 34.995705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861455, 0.507803, -0.005494,
		-0.050412, 0.096277, 0.994077,
		0.505325, -0.856076, 0.108538,
		24.384790, 34.854313, 35.028267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573658, 35.453636, 35.568409>,  <24.031063, 35.453568, 34.952290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573658, 35.453636, 35.568409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701067, 35.218643, 35.270844>,  <24.777512, 35.077648, 35.092304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701067, 35.218643, 35.270844>,  <24.573658, 35.453636, 35.568409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701067, 35.218643, 35.270844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897778, 0.438818, 0.037862,
		0.304200, -0.679931, 0.667200,
		0.318522, -0.587480, -0.743916,
		24.796623, 35.042400, 35.047668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248014, 35.150642, 35.748283>,  <24.573658, 35.453636, 35.568409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248014, 35.150642, 35.748283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228516, 35.218246, 35.354519>,  <25.216816, 35.258808, 35.118259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228516, 35.218246, 35.354519>,  <25.248014, 35.150642, 35.748283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228516, 35.218246, 35.354519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765368, 0.639563, 0.071906,
		0.641744, -0.749930, -0.160532,
		-0.048746, 0.169011, -0.984408,
		25.213892, 35.268951, 35.059196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934057, 35.161335, 35.342663>,  <25.248014, 35.150642, 35.748283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934057, 35.161335, 35.342663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055424, 35.431248, 35.611767>,  <26.128244, 35.593197, 35.773228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055424, 35.431248, 35.611767>,  <25.934057, 35.161335, 35.342663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055424, 35.431248, 35.611767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155347, 0.661568, -0.733618,
		-0.940110, 0.327103, 0.095905,
		0.303416, 0.674783, 0.672760,
		26.146448, 35.633682, 35.813595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431330, 35.825134, 35.358276>,  <25.934057, 35.161335, 35.342663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431330, 35.825134, 35.358276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638729, 36.055504, 35.105461>,  <26.763168, 36.193726, 34.953773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638729, 36.055504, 35.105461>,  <26.431330, 35.825134, 35.358276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638729, 36.055504, 35.105461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299491, -0.570017, -0.765105,
		-0.800914, 0.585996, -0.123069,
		0.518500, 0.575926, -0.632035,
		26.794279, 36.228283, 34.915852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973745, 35.909328, 34.760334>,  <26.431330, 35.825134, 35.358276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973745, 35.909328, 34.760334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365839, 35.952286, 34.693878>,  <26.601095, 35.978062, 34.654003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365839, 35.952286, 34.693878>,  <25.973745, 35.909328, 34.760334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365839, 35.952286, 34.693878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035407, -0.731021, -0.681436,
		-0.194635, 0.673851, -0.712771,
		0.980236, 0.107395, -0.166141,
		26.659910, 35.984505, 34.644035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075724, 35.884518, 34.050545>,  <25.973745, 35.909328, 34.760334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075724, 35.884518, 34.050545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432205, 35.796238, 34.209061>,  <26.646095, 35.743271, 34.304169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432205, 35.796238, 34.209061>,  <26.075724, 35.884518, 34.050545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432205, 35.796238, 34.209061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156875, -0.669781, -0.725799,
		0.425610, 0.709003, -0.562290,
		0.891205, -0.220698, 0.396291,
		26.699566, 35.730030, 34.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545135, 35.902218, 33.489906>,  <26.075724, 35.884518, 34.050545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545135, 35.902218, 33.489906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724566, 35.661205, 33.753948>,  <26.832224, 35.516598, 33.912373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724566, 35.661205, 33.753948>,  <26.545135, 35.902218, 33.489906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724566, 35.661205, 33.753948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137948, -0.683050, -0.717226,
		0.883036, 0.412788, -0.223280,
		0.448573, -0.602535, 0.660101,
		26.859138, 35.480446, 33.951977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114906, 35.676975, 33.146862>,  <26.545135, 35.902218, 33.489906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114906, 35.676975, 33.146862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098944, 35.419868, 33.452873>,  <27.089367, 35.265606, 33.636478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098944, 35.419868, 33.452873>,  <27.114906, 35.676975, 33.146862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098944, 35.419868, 33.452873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218289, -0.752749, -0.621063,
		0.975068, 0.142212, 0.170348,
		-0.039906, -0.642764, 0.765025,
		27.086971, 35.227039, 33.682381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700956, 35.437435, 33.248562>,  <27.114906, 35.676975, 33.146862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700956, 35.437435, 33.248562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475756, 35.160206, 33.428642>,  <27.340635, 34.993870, 33.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475756, 35.160206, 33.428642>,  <27.700956, 35.437435, 33.248562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475756, 35.160206, 33.428642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276953, -0.671456, -0.687346,
		0.778671, -0.262291, 0.569978,
		-0.562999, -0.693074, 0.450201,
		27.306856, 34.952282, 33.563702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119101, 34.770767, 33.214149>,  <27.700956, 35.437435, 33.248562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119101, 34.770767, 33.214149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737003, 34.677906, 33.287491>,  <27.507746, 34.622189, 33.331497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737003, 34.677906, 33.287491>,  <28.119101, 34.770767, 33.214149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737003, 34.677906, 33.287491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071887, -0.783391, -0.617357,
		0.286955, -0.576546, 0.765017,
		-0.955243, -0.232149, 0.183352,
		27.450430, 34.608261, 33.342495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257000, 34.146072, 33.222126>,  <28.119101, 34.770767, 33.214149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257000, 34.146072, 33.222126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864119, 34.189682, 33.160946>,  <27.628389, 34.215847, 33.124237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864119, 34.189682, 33.160946>,  <28.257000, 34.146072, 33.222126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864119, 34.189682, 33.160946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019793, -0.749686, -0.661498,
		-0.186780, -0.652752, 0.734185,
		-0.982202, 0.109023, -0.152946,
		27.569458, 34.222389, 33.115063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907419, 33.535740, 33.352196>,  <28.257000, 34.146072, 33.222126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907419, 33.535740, 33.352196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680201, 33.747528, 33.100166>,  <27.543869, 33.874599, 32.948948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680201, 33.747528, 33.100166>,  <27.907419, 33.535740, 33.352196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680201, 33.747528, 33.100166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009706, -0.769837, -0.638166,
		-0.822941, -0.356391, 0.442440,
		-0.568043, 0.529468, -0.630072,
		27.509787, 33.906368, 32.911144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602158, 33.046638, 33.140770>,  <27.907419, 33.535740, 33.352196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602158, 33.046638, 33.140770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503746, 33.336266, 32.883026>,  <27.444698, 33.510040, 32.728382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503746, 33.336266, 32.883026>,  <27.602158, 33.046638, 33.140770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503746, 33.336266, 32.883026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065158, -0.675640, -0.734346,
		-0.967070, -0.138686, 0.213406,
		-0.246030, 0.724069, -0.644355,
		27.429937, 33.553486, 32.689720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099503, 32.834396, 32.729931>,  <27.602158, 33.046638, 33.140770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099503, 32.834396, 32.729931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233955, 33.131100, 32.497787>,  <27.314627, 33.309120, 32.358501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233955, 33.131100, 32.497787>,  <27.099503, 32.834396, 32.729931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233955, 33.131100, 32.497787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028904, -0.607798, -0.793565,
		-0.941371, 0.283518, -0.182861,
		0.336133, 0.741754, -0.580358,
		27.334795, 33.353626, 32.323681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697393, 32.675220, 32.070099>,  <27.099503, 32.834396, 32.729931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697393, 32.675220, 32.070099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982462, 32.935913, 31.966293>,  <27.153503, 33.092327, 31.904011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982462, 32.935913, 31.966293>,  <26.697393, 32.675220, 32.070099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982462, 32.935913, 31.966293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024555, -0.392894, -0.919256,
		-0.701066, 0.648757, -0.296008,
		0.712673, 0.651728, -0.259514,
		27.196264, 33.131432, 31.888439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570454, 33.026993, 31.376616>,  <26.697393, 32.675220, 32.070099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570454, 33.026993, 31.376616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967175, 33.069340, 31.405235>,  <27.205208, 33.094749, 31.422407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967175, 33.069340, 31.405235>,  <26.570454, 33.026993, 31.376616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967175, 33.069340, 31.405235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093565, -0.220329, -0.970928,
		-0.087029, 0.969663, -0.228429,
		0.991802, 0.105872, 0.071552,
		27.264715, 33.101101, 31.426701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693449, 33.384693, 30.784897>,  <26.570454, 33.026993, 31.376616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693449, 33.384693, 30.784897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047304, 33.241627, 30.904556>,  <27.259617, 33.155785, 30.976353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047304, 33.241627, 30.904556>,  <26.693449, 33.384693, 30.784897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047304, 33.241627, 30.904556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260958, -0.151907, -0.953323,
		0.386417, 0.921410, -0.041046,
		0.884637, -0.357669, 0.299149,
		27.312695, 33.134327, 30.994301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139757, 33.803009, 30.448679>,  <26.693449, 33.384693, 30.784897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139757, 33.803009, 30.448679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316021, 33.452374, 30.526041>,  <27.421780, 33.241993, 30.572458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316021, 33.452374, 30.526041>,  <27.139757, 33.803009, 30.448679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316021, 33.452374, 30.526041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338513, -0.037274, -0.940223,
		0.831400, 0.479790, 0.280312,
		0.440661, -0.876591, 0.193405,
		27.448219, 33.189396, 30.584063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792290, 33.786263, 30.108305>,  <27.139757, 33.803009, 30.448679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792290, 33.786263, 30.108305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732319, 33.396530, 30.175486>,  <27.696337, 33.162693, 30.215794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732319, 33.396530, 30.175486>,  <27.792290, 33.786263, 30.108305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732319, 33.396530, 30.175486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444467, -0.218159, -0.868824,
		0.883160, -0.055612, 0.465765,
		-0.149928, -0.974328, 0.167952,
		27.687340, 33.104233, 30.225872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424025, 33.478519, 29.943291>,  <27.792290, 33.786263, 30.108305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424025, 33.478519, 29.943291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166317, 33.172600, 29.944401>,  <28.011692, 32.989048, 29.945066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166317, 33.172600, 29.944401>,  <28.424025, 33.478519, 29.943291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166317, 33.172600, 29.944401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536751, -0.454740, -0.710711,
		0.544809, -0.456400, 0.703479,
		-0.644268, -0.764794, 0.002773,
		27.973036, 32.943161, 29.945232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839584, 32.889648, 29.830566>,  <28.424025, 33.478519, 29.943291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839584, 32.889648, 29.830566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464508, 32.796555, 29.727362>,  <28.239462, 32.740696, 29.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464508, 32.796555, 29.727362>,  <28.839584, 32.889648, 29.830566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464508, 32.796555, 29.727362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344630, -0.528143, -0.776077,
		0.044355, -0.816638, 0.575443,
		-0.937691, -0.232738, -0.258012,
		28.183201, 32.726734, 29.649958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850405, 32.236244, 29.700071>,  <28.839584, 32.889648, 29.830566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850405, 32.236244, 29.700071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512636, 32.331409, 29.508093>,  <28.309975, 32.388508, 29.392906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512636, 32.331409, 29.508093>,  <28.850405, 32.236244, 29.700071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512636, 32.331409, 29.508093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342162, -0.449815, -0.824980,
		-0.412153, -0.860853, 0.298433,
		-0.844426, 0.237906, -0.479944,
		28.259310, 32.402782, 29.364109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661736, 31.679338, 29.312820>,  <28.850405, 32.236244, 29.700071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661736, 31.679338, 29.312820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491713, 31.996557, 29.138277>,  <28.389700, 32.186890, 29.033552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491713, 31.996557, 29.138277>,  <28.661736, 31.679338, 29.312820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491713, 31.996557, 29.138277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360683, -0.293755, -0.885221,
		-0.830202, -0.533655, -0.161176,
		-0.425056, 0.793045, -0.436356,
		28.364195, 32.234470, 29.007370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414526, 31.447330, 28.724670>,  <28.661736, 31.679338, 29.312820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414526, 31.447330, 28.724670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459940, 31.841621, 28.674942>,  <28.487188, 32.078194, 28.645105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459940, 31.841621, 28.674942>,  <28.414526, 31.447330, 28.724670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459940, 31.841621, 28.674942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514411, -0.165375, -0.841447,
		-0.849995, 0.031584, -0.525844,
		0.113537, 0.985725, -0.124321,
		28.494001, 32.137341, 28.637646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180338, 31.525764, 28.047792>,  <28.414526, 31.447330, 28.724670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180338, 31.525764, 28.047792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438263, 31.806742, 28.168314>,  <28.593018, 31.975328, 28.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438263, 31.806742, 28.168314>,  <28.180338, 31.525764, 28.047792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438263, 31.806742, 28.168314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563369, -0.170374, -0.808448,
		-0.516556, 0.691046, -0.505595,
		0.644815, 0.702445, 0.301306,
		28.631708, 32.017475, 28.258705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483097, 32.142487, 27.481537>,  <28.180338, 31.525764, 28.047792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483097, 32.142487, 27.481537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748545, 32.065083, 27.770580>,  <28.907814, 32.018639, 27.944006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748545, 32.065083, 27.770580>,  <28.483097, 32.142487, 27.481537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748545, 32.065083, 27.770580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710437, -0.139491, -0.689798,
		0.234279, 0.971132, 0.044906,
		0.663621, -0.193509, 0.722607,
		28.947632, 32.007030, 27.987362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096642, 32.659641, 27.457228>,  <28.483097, 32.142487, 27.481537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096642, 32.659641, 27.457228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221178, 32.334229, 27.653690>,  <29.295900, 32.138981, 27.771568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221178, 32.334229, 27.653690>,  <29.096642, 32.659641, 27.457228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221178, 32.334229, 27.653690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676804, -0.172989, -0.715550,
		0.667086, 0.555197, 0.496742,
		0.311340, -0.813530, 0.491158,
		29.314581, 32.090168, 27.801037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826571, 32.682781, 27.501730>,  <29.096642, 32.659641, 27.457228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826571, 32.682781, 27.501730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709000, 32.301399, 27.528654>,  <29.638456, 32.072571, 27.544809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709000, 32.301399, 27.528654>,  <29.826571, 32.682781, 27.501730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709000, 32.301399, 27.528654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709170, -0.264751, -0.653441,
		0.640847, -0.144330, 0.753979,
		-0.293928, -0.953455, 0.067310,
		29.620821, 32.015362, 27.548847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389963, 32.408863, 27.415257>,  <29.826571, 32.682781, 27.501730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389963, 32.408863, 27.415257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143597, 32.096020, 27.377417>,  <29.995777, 31.908312, 27.354713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143597, 32.096020, 27.377417>,  <30.389963, 32.408863, 27.415257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143597, 32.096020, 27.377417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663087, -0.449814, -0.598317,
		0.425400, -0.431239, 0.795655,
		-0.615915, -0.782112, -0.094598,
		29.958822, 31.861385, 27.349037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765259, 32.609093, 28.069277>,  <30.389963, 32.408863, 27.415257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765259, 32.609093, 28.069277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583601, 32.706505, 28.412077>,  <30.474607, 32.764950, 28.617758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583601, 32.706505, 28.412077>,  <30.765259, 32.609093, 28.069277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583601, 32.706505, 28.412077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107742, 0.939846, -0.324163,
		-0.884390, -0.239551, -0.400587,
		-0.454143, 0.243526, 0.857000,
		30.447357, 32.779564, 28.669176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298502, 32.120007, 27.924334>,  <30.765259, 32.609093, 28.069277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298502, 32.120007, 27.924334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410721, 32.237846, 27.558929>,  <31.478052, 32.308552, 27.339687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410721, 32.237846, 27.558929>,  <31.298502, 32.120007, 27.924334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410721, 32.237846, 27.558929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806673, 0.443405, 0.390732,
		0.520165, -0.846524, -0.113251,
		0.280548, 0.294601, -0.913511,
		31.494884, 32.326225, 27.284876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727282, 32.694874, 27.965637>,  <31.298502, 32.120007, 27.924334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727282, 32.694874, 27.965637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530914, 32.878010, 28.262119>,  <31.413094, 32.987892, 28.440008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530914, 32.878010, 28.262119>,  <31.727282, 32.694874, 27.965637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530914, 32.878010, 28.262119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220787, 0.888385, -0.402523,
		-0.842766, -0.033957, -0.537208,
		-0.490916, 0.457841, 0.741204,
		31.383640, 33.015362, 28.484480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277132, 33.176468, 27.600084>,  <31.727282, 32.694874, 27.965637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277132, 33.176468, 27.600084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321051, 33.283447, 27.983004>,  <31.347403, 33.347633, 28.212755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321051, 33.283447, 27.983004>,  <31.277132, 33.176468, 27.600084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321051, 33.283447, 27.983004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075128, 0.958131, -0.276297,
		-0.991111, 0.102256, 0.085108,
		0.109797, 0.267447, 0.957297,
		31.353991, 33.363682, 28.270193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684151, 33.492626, 27.883377>,  <31.277132, 33.176468, 27.600084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684151, 33.492626, 27.883377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039949, 33.627644, 28.006573>,  <31.253429, 33.708656, 28.080490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039949, 33.627644, 28.006573>,  <30.684151, 33.492626, 27.883377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039949, 33.627644, 28.006573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255999, 0.926437, -0.276005,
		-0.378499, 0.166660, 0.910474,
		0.889496, 0.337548, 0.307991,
		31.306799, 33.728909, 28.098970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464924, 33.244095, 27.132030>,  <30.684151, 33.492626, 27.883377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464924, 33.244095, 27.132030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271812, 33.513969, 26.908703>,  <30.155945, 33.675896, 26.774706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271812, 33.513969, 26.908703>,  <30.464924, 33.244095, 27.132030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271812, 33.513969, 26.908703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238318, 0.512259, 0.825103,
		0.842692, 0.531399, -0.086516,
		-0.482778, 0.674690, -0.558318,
		30.126980, 33.716377, 26.741207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775759, 33.924210, 27.306150>,  <30.464924, 33.244095, 27.132030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775759, 33.924210, 27.306150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401049, 33.956329, 27.169912>,  <30.176222, 33.975601, 27.088169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401049, 33.956329, 27.169912>,  <30.775759, 33.924210, 27.306150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401049, 33.956329, 27.169912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243678, 0.548855, 0.799612,
		0.251143, 0.832052, -0.494587,
		-0.936776, 0.080297, -0.340594,
		30.120016, 33.980419, 27.067734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615770, 34.655720, 27.424553>,  <30.775759, 33.924210, 27.306150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615770, 34.655720, 27.424553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257372, 34.486618, 27.370192>,  <30.042334, 34.385155, 27.337574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257372, 34.486618, 27.370192>,  <30.615770, 34.655720, 27.424553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257372, 34.486618, 27.370192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369501, 0.540031, 0.756198,
		-0.246295, 0.727766, -0.640074,
		-0.895995, -0.422756, -0.135903,
		29.988573, 34.359791, 27.329420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172749, 35.248005, 27.172731>,  <30.615770, 34.655720, 27.424553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172749, 35.248005, 27.172731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982515, 34.939381, 27.341732>,  <29.868376, 34.754204, 27.443132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982515, 34.939381, 27.341732>,  <30.172749, 35.248005, 27.172731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982515, 34.939381, 27.341732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175132, 0.553729, 0.814072,
		-0.862062, 0.313164, -0.398470,
		-0.475583, -0.771564, 0.422504,
		29.839840, 34.707912, 27.468483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669159, 35.513340, 27.540705>,  <30.172749, 35.248005, 27.172731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669159, 35.513340, 27.540705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704420, 35.151619, 27.707783>,  <29.725576, 34.934586, 27.808029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704420, 35.151619, 27.707783>,  <29.669159, 35.513340, 27.540705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704420, 35.151619, 27.707783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106107, 0.408417, 0.906607,
		-0.990439, -0.124242, -0.059949,
		0.088154, -0.904301, 0.417695,
		29.730867, 34.880329, 27.833092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162416, 35.552925, 27.983671>,  <29.669159, 35.513340, 27.540705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162416, 35.552925, 27.983671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406635, 35.255753, 28.093422>,  <29.553167, 35.077450, 28.159273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406635, 35.255753, 28.093422>,  <29.162416, 35.552925, 27.983671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406635, 35.255753, 28.093422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025332, 0.327948, 0.944356,
		-0.791574, -0.583525, 0.181408,
		0.610548, -0.742932, 0.274377,
		29.589800, 35.032871, 28.175735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823746, 35.265820, 28.550896>,  <29.162416, 35.552925, 27.983671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823746, 35.265820, 28.550896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203857, 35.145630, 28.583597>,  <29.431925, 35.073517, 28.603218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203857, 35.145630, 28.583597>,  <28.823746, 35.265820, 28.550896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203857, 35.145630, 28.583597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026230, 0.184368, 0.982507,
		-0.310293, -0.935801, 0.167319,
		0.950279, -0.300476, 0.081754,
		29.488941, 35.055489, 28.608124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762321, 34.901176, 29.228218>,  <28.823746, 35.265820, 28.550896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762321, 34.901176, 29.228218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149544, 34.962429, 29.148800>,  <29.381878, 34.999180, 29.101149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149544, 34.962429, 29.148800>,  <28.762321, 34.901176, 29.228218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149544, 34.962429, 29.148800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084725, 0.545500, 0.833817,
		0.235988, -0.824003, 0.515100,
		0.968056, 0.153129, -0.198545,
		29.439960, 35.008369, 29.089235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059986, 34.523567, 29.704062>,  <28.762321, 34.901176, 29.228218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059986, 34.523567, 29.704062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307894, 34.815815, 29.589460>,  <29.456638, 34.991165, 29.520699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307894, 34.815815, 29.589460>,  <29.059986, 34.523567, 29.704062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307894, 34.815815, 29.589460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058471, 0.321070, 0.945249,
		0.782604, -0.602587, 0.156269,
		0.619768, 0.730619, -0.286504,
		29.493824, 35.035000, 29.503510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635530, 34.438904, 30.080881>,  <29.059986, 34.523567, 29.704062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635530, 34.438904, 30.080881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643234, 34.818024, 29.953569>,  <29.647858, 35.045498, 29.877182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643234, 34.818024, 29.953569>,  <29.635530, 34.438904, 30.080881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643234, 34.818024, 29.953569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045143, 0.317189, 0.947287,
		0.998795, -0.032613, -0.036677,
		0.019260, 0.947801, -0.318279,
		29.649012, 35.102364, 29.858086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254948, 34.903320, 30.479815>,  <29.635530, 34.438904, 30.080881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254948, 34.903320, 30.479815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989561, 35.154240, 30.316690>,  <29.830330, 35.304790, 30.218817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989561, 35.154240, 30.316690>,  <30.254948, 34.903320, 30.479815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989561, 35.154240, 30.316690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092078, 0.472451, 0.876534,
		0.742520, 0.619100, -0.255694,
		-0.663465, 0.627300, -0.407810,
		29.790522, 35.342430, 30.194347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460091, 35.536259, 30.675377>,  <30.254948, 34.903320, 30.479815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460091, 35.536259, 30.675377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080858, 35.586689, 30.558588>,  <29.853319, 35.616947, 30.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080858, 35.586689, 30.558588>,  <30.460091, 35.536259, 30.675377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080858, 35.586689, 30.558588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198608, 0.482325, 0.853181,
		0.248394, 0.866872, -0.432243,
		-0.948080, 0.126079, -0.291974,
		29.796434, 35.624512, 30.470995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261089, 36.222305, 30.910509>,  <30.460091, 35.536259, 30.675377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261089, 36.222305, 30.910509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919519, 36.024231, 30.846498>,  <29.714579, 35.905388, 30.808092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919519, 36.024231, 30.846498>,  <30.261089, 36.222305, 30.910509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919519, 36.024231, 30.846498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402255, 0.432982, 0.806670,
		-0.330162, 0.753205, -0.568924,
		-0.853923, -0.495185, -0.160026,
		29.663343, 35.875675, 30.798491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793795, 36.714001, 30.969522>,  <30.261089, 36.222305, 30.910509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793795, 36.714001, 30.969522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594234, 36.375431, 31.043991>,  <29.474499, 36.172287, 31.088673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594234, 36.375431, 31.043991>,  <29.793795, 36.714001, 30.969522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594234, 36.375431, 31.043991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443331, 0.433832, 0.784377,
		-0.744686, 0.308788, -0.591686,
		-0.498899, -0.846428, 0.186173,
		29.444565, 36.121502, 31.099842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148043, 36.894554, 31.465801>,  <29.793795, 36.714001, 30.969522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148043, 36.894554, 31.465801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165642, 36.497032, 31.506639>,  <29.176201, 36.258518, 31.531143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165642, 36.497032, 31.506639>,  <29.148043, 36.894554, 31.465801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165642, 36.497032, 31.506639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140427, 0.095027, 0.985520,
		-0.989113, -0.057697, -0.135376,
		0.043998, -0.993801, 0.102095,
		29.178841, 36.198891, 31.537268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639660, 36.809467, 31.971729>,  <29.148043, 36.894554, 31.465801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639660, 36.809467, 31.971729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868044, 36.481083, 31.973991>,  <29.005075, 36.284054, 31.975349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868044, 36.481083, 31.973991>,  <28.639660, 36.809467, 31.971729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868044, 36.481083, 31.973991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202410, -0.134088, 0.970078,
		-0.795634, -0.555022, -0.242729,
		0.570961, -0.820957, 0.005657,
		29.039331, 36.234795, 31.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284758, 36.228012, 32.240807>,  <28.639660, 36.809467, 31.971729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284758, 36.228012, 32.240807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671356, 36.135136, 32.284569>,  <28.903316, 36.079411, 32.310825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671356, 36.135136, 32.284569>,  <28.284758, 36.228012, 32.240807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671356, 36.135136, 32.284569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145950, -0.146519, 0.978382,
		-0.211140, -0.961572, -0.175499,
		0.966498, -0.232190, 0.109405,
		28.961306, 36.065479, 32.317390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357079, 35.732571, 32.724258>,  <28.284758, 36.228012, 32.240807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357079, 35.732571, 32.724258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734243, 35.865276, 32.735893>,  <28.960543, 35.944901, 32.742874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734243, 35.865276, 32.735893>,  <28.357079, 35.732571, 32.724258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734243, 35.865276, 32.735893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006212, -0.069810, 0.997541,
		0.332978, -0.940776, -0.063764,
		0.942914, 0.331763, 0.029090,
		29.017118, 35.964806, 32.744621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693977, 35.338585, 33.324375>,  <28.357079, 35.732571, 32.724258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693977, 35.338585, 33.324375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909470, 35.669834, 33.262421>,  <29.038765, 35.868584, 33.225246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909470, 35.669834, 33.262421>,  <28.693977, 35.338585, 33.324375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909470, 35.669834, 33.262421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095570, 0.122589, 0.987845,
		0.837041, -0.546983, -0.013101,
		0.538729, 0.828120, -0.154887,
		29.071089, 35.918270, 33.215954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256790, 35.310875, 33.763466>,  <28.693977, 35.338585, 33.324375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256790, 35.310875, 33.763466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230480, 35.703903, 33.693928>,  <29.214693, 35.939720, 33.652206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230480, 35.703903, 33.693928>,  <29.256790, 35.310875, 33.763466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230480, 35.703903, 33.693928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253648, 0.184964, 0.949448,
		0.965057, 0.018357, -0.261395,
		-0.065777, 0.982574, -0.173844,
		29.210747, 35.998676, 33.641773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800406, 35.592674, 34.123470>,  <29.256790, 35.310875, 33.763466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800406, 35.592674, 34.123470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564705, 35.908607, 34.055420>,  <29.423285, 36.098167, 34.014587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564705, 35.908607, 34.055420>,  <29.800406, 35.592674, 34.123470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564705, 35.908607, 34.055420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177754, 0.332143, 0.926329,
		0.788152, 0.515601, -0.336112,
		-0.589253, 0.789833, -0.170129,
		29.387928, 36.145557, 34.004383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207237, 36.102261, 34.387524>,  <29.800406, 35.592674, 34.123470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207237, 36.102261, 34.387524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826633, 36.224911, 34.397381>,  <29.598270, 36.298500, 34.403294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826633, 36.224911, 34.397381>,  <30.207237, 36.102261, 34.387524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826633, 36.224911, 34.397381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103297, 0.243040, 0.964501,
		0.289753, 0.920278, -0.262929,
		-0.951511, 0.306626, 0.024640,
		29.541180, 36.316898, 34.404774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209448, 36.706387, 34.705990>,  <30.207237, 36.102261, 34.387524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209448, 36.706387, 34.705990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873756, 36.494083, 34.753304>,  <29.672342, 36.366703, 34.781693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873756, 36.494083, 34.753304>,  <30.209448, 36.706387, 34.705990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873756, 36.494083, 34.753304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014500, 0.239295, 0.970839,
		-0.543586, 0.813040, -0.208519,
		-0.839228, -0.530758, 0.118289,
		29.621988, 36.334858, 34.788792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594162, 36.389565, 35.244720>,  <30.209448, 36.706387, 34.705990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594162, 36.389565, 35.244720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891062, 36.634621, 35.136101>,  <31.069202, 36.781654, 35.070930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891062, 36.634621, 35.136101>,  <30.594162, 36.389565, 35.244720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891062, 36.634621, 35.136101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603151, -0.434183, 0.669099,
		0.292018, -0.660421, -0.691787,
		0.742250, 0.612641, -0.271545,
		31.113737, 36.818413, 35.054638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263870, 36.037235, 35.358959>,  <30.594162, 36.389565, 35.244720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263870, 36.037235, 35.358959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319635, 36.432823, 35.378983>,  <31.353094, 36.670174, 35.390999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319635, 36.432823, 35.378983>,  <31.263870, 36.037235, 35.358959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319635, 36.432823, 35.378983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392524, -0.101607, 0.914112,
		0.909114, -0.107788, -0.402359,
		0.139413, 0.988968, 0.050063,
		31.361460, 36.729515, 35.394001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948696, 36.198460, 35.578625>,  <31.263870, 36.037235, 35.358959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948696, 36.198460, 35.578625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746138, 36.525040, 35.689598>,  <31.624603, 36.720989, 35.756184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746138, 36.525040, 35.689598>,  <31.948696, 36.198460, 35.578625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746138, 36.525040, 35.689598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448257, -0.025601, 0.893538,
		0.736635, 0.576844, -0.353016,
		-0.506394, 0.816453, 0.277433,
		31.594219, 36.769978, 35.772827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453945, 36.635674, 35.778736>,  <31.948696, 36.198460, 35.578625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453945, 36.635674, 35.778736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093613, 36.638264, 35.952385>,  <31.877413, 36.639816, 36.056576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093613, 36.638264, 35.952385>,  <32.453945, 36.635674, 35.778736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093613, 36.638264, 35.952385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396035, -0.397519, 0.827729,
		0.177930, 0.917571, 0.355534,
		-0.900831, 0.006473, 0.434121,
		31.823362, 36.640205, 36.082623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348953, 36.969036, 36.409306>,  <32.453945, 36.635674, 35.778736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348953, 36.969036, 36.409306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072968, 36.681385, 36.442307>,  <31.907377, 36.508793, 36.462105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072968, 36.681385, 36.442307>,  <32.348953, 36.969036, 36.409306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072968, 36.681385, 36.442307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357225, -0.239157, 0.902881,
		-0.629558, 0.652424, 0.421900,
		-0.689961, -0.719129, 0.082499,
		31.865978, 36.465645, 36.467056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940315, 37.180809, 36.952766>,  <32.348953, 36.969036, 36.409306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940315, 37.180809, 36.952766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936783, 36.780846, 36.956867>,  <31.934664, 36.540867, 36.959328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936783, 36.780846, 36.956867>,  <31.940315, 37.180809, 36.952766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936783, 36.780846, 36.956867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244839, 0.007778, 0.969533,
		-0.969523, 0.011070, 0.244748,
		-0.008829, -0.999908, 0.010251,
		31.934134, 36.480873, 36.959942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481236, 36.911869, 37.557247>,  <31.940315, 37.180809, 36.952766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481236, 36.911869, 37.557247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809702, 36.683918, 37.545094>,  <32.006783, 36.547146, 37.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809702, 36.683918, 37.545094>,  <31.481236, 36.911869, 37.557247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809702, 36.683918, 37.545094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129364, 0.134022, 0.982498,
		-0.555835, -0.810724, 0.183776,
		0.821165, -0.569881, -0.030384,
		32.056053, 36.512955, 37.535976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383980, 36.622433, 38.188614>,  <31.481236, 36.911869, 37.557247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383980, 36.622433, 38.188614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766850, 36.598553, 38.075298>,  <31.996572, 36.584225, 38.007309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766850, 36.598553, 38.075298>,  <31.383980, 36.622433, 38.188614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766850, 36.598553, 38.075298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289507, 0.198488, 0.936370,
		0.000329, -0.978283, 0.207271,
		0.957176, -0.059699, -0.283285,
		32.054001, 36.580643, 37.990314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618441, 36.148537, 38.651657>,  <31.383980, 36.622433, 38.188614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618441, 36.148537, 38.651657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938414, 36.343212, 38.511234>,  <32.130398, 36.460018, 38.426979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938414, 36.343212, 38.511234>,  <31.618441, 36.148537, 38.651657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938414, 36.343212, 38.511234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411003, -0.018083, 0.911455,
		0.437242, -0.873391, -0.214494,
		0.799935, 0.486684, -0.351060,
		32.178394, 36.489216, 38.405918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160503, 35.834072, 38.969269>,  <31.618441, 36.148537, 38.651657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160503, 35.834072, 38.969269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328735, 36.184456, 38.874775>,  <32.429672, 36.394688, 38.818077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328735, 36.184456, 38.874775>,  <32.160503, 35.834072, 38.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328735, 36.184456, 38.874775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414990, 0.045808, 0.908672,
		0.806783, -0.480203, -0.344248,
		0.420578, 0.875960, -0.236237,
		32.454910, 36.447243, 38.803905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988556, 35.792950, 38.944183>,  <32.160503, 35.834072, 38.969269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988556, 35.792950, 38.944183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834679, 36.148235, 39.044651>,  <32.742352, 36.361408, 39.104931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834679, 36.148235, 39.044651>,  <32.988556, 35.792950, 38.944183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834679, 36.148235, 39.044651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456143, -0.053632, 0.888289,
		0.802462, 0.456288, -0.384521,
		-0.384693, 0.888214, 0.251171,
		32.719273, 36.414700, 39.120003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314194, 35.851498, 39.506630>,  <32.988556, 35.792950, 38.944183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314194, 35.851498, 39.506630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099628, 36.188816, 39.520023>,  <32.970890, 36.391205, 39.528061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099628, 36.188816, 39.520023>,  <33.314194, 35.851498, 39.506630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099628, 36.188816, 39.520023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106946, 0.028566, 0.993855,
		0.837153, 0.536696, -0.105510,
		-0.536411, 0.843292, 0.033484,
		32.938705, 36.441803, 39.530067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602772, 36.360039, 40.071228>,  <33.314194, 35.851498, 39.506630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602772, 36.360039, 40.071228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220009, 36.449123, 39.996693>,  <32.990349, 36.502575, 39.951973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220009, 36.449123, 39.996693>,  <33.602772, 36.360039, 40.071228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220009, 36.449123, 39.996693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121862, 0.274462, 0.953845,
		0.263571, 0.935453, -0.235496,
		-0.956912, 0.222707, -0.186336,
		32.932934, 36.515934, 39.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519245, 37.040020, 40.319324>,  <33.602772, 36.360039, 40.071228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519245, 37.040020, 40.319324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163326, 36.857594, 40.325859>,  <32.949776, 36.748138, 40.329781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163326, 36.857594, 40.325859>,  <33.519245, 37.040020, 40.319324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163326, 36.857594, 40.325859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102610, 0.234815, 0.966609,
		-0.444674, 0.858408, -0.255735,
		-0.889796, -0.456067, 0.016334,
		32.896389, 36.720772, 40.330761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209850, 37.341412, 40.865894>,  <33.519245, 37.040020, 40.319324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209850, 37.341412, 40.865894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948166, 37.044704, 40.806839>,  <32.791157, 36.866680, 40.771404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948166, 37.044704, 40.806839>,  <33.209850, 37.341412, 40.865894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948166, 37.044704, 40.806839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147517, -0.066317, 0.986834,
		-0.741790, 0.667373, -0.066038,
		-0.654207, -0.741765, -0.147642,
		32.751904, 36.822174, 40.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707329, 37.533157, 41.400265>,  <33.209850, 37.341412, 40.865894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707329, 37.533157, 41.400265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677967, 37.146168, 41.303432>,  <32.660351, 36.913975, 41.245331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677967, 37.146168, 41.303432>,  <32.707329, 37.533157, 41.400265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677967, 37.146168, 41.303432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205238, -0.222890, 0.952994,
		-0.975956, 0.119636, -0.182202,
		-0.073402, -0.967475, -0.242085,
		32.655945, 36.855927, 41.230808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095497, 37.359982, 41.693745>,  <32.707329, 37.533157, 41.400265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095497, 37.359982, 41.693745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293732, 37.018799, 41.628185>,  <32.412670, 36.814091, 41.588852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293732, 37.018799, 41.628185>,  <32.095497, 37.359982, 41.693745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293732, 37.018799, 41.628185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089891, -0.238054, 0.967083,
		-0.863896, -0.464538, -0.194649,
		0.495584, -0.852957, -0.163896,
		32.442406, 36.762913, 41.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796585, 36.923130, 42.154884>,  <32.095497, 37.359982, 41.693745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796585, 36.923130, 42.154884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141945, 36.745697, 42.058743>,  <32.349159, 36.639236, 42.001057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141945, 36.745697, 42.058743>,  <31.796585, 36.923130, 42.154884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141945, 36.745697, 42.058743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044708, -0.407264, 0.912215,
		-0.502538, -0.798351, -0.331799,
		0.863398, -0.443589, -0.240359,
		32.400963, 36.612621, 41.986633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701569, 36.284813, 42.302132>,  <31.796585, 36.923130, 42.154884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701569, 36.284813, 42.302132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098755, 36.319862, 42.333992>,  <32.337067, 36.340893, 42.353107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098755, 36.319862, 42.333992>,  <31.701569, 36.284813, 42.302132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098755, 36.319862, 42.333992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044074, -0.350794, 0.935415,
		0.109908, -0.932344, -0.344464,
		0.992964, 0.087628, 0.079647,
		32.396645, 36.346149, 42.357887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807598, 35.721481, 42.688576>,  <31.701569, 36.284813, 42.302132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807598, 35.721481, 42.688576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149700, 35.925320, 42.726212>,  <32.354961, 36.047623, 42.748791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149700, 35.925320, 42.726212>,  <31.807598, 35.721481, 42.688576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149700, 35.925320, 42.726212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062705, -0.281999, 0.957363,
		0.514399, -0.812890, -0.273136,
		0.855255, 0.509594, 0.094087,
		32.406277, 36.078197, 42.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292805, 35.309689, 43.083134>,  <31.807598, 35.721481, 42.688576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292805, 35.309689, 43.083134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445381, 35.679020, 43.100883>,  <32.536926, 35.900620, 43.111534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445381, 35.679020, 43.100883>,  <32.292805, 35.309689, 43.083134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445381, 35.679020, 43.100883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117154, -0.095903, 0.988472,
		0.916939, -0.371845, -0.144753,
		0.381441, 0.923328, 0.044374,
		32.559814, 35.956017, 43.114197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854137, 35.236012, 43.408974>,  <32.292805, 35.309689, 43.083134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854137, 35.236012, 43.408974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782658, 35.625740, 43.463776>,  <32.739769, 35.859577, 43.496658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782658, 35.625740, 43.463776>,  <32.854137, 35.236012, 43.408974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782658, 35.625740, 43.463776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195551, -0.101303, 0.975447,
		0.964276, 0.201100, -0.172427,
		-0.178695, 0.974318, 0.137009,
		32.729050, 35.918037, 43.504879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392159, 35.382282, 43.835251>,  <32.854137, 35.236012, 43.408974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392159, 35.382282, 43.835251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116043, 35.666653, 43.889046>,  <32.950375, 35.837276, 43.921322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116043, 35.666653, 43.889046>,  <33.392159, 35.382282, 43.835251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116043, 35.666653, 43.889046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190029, -0.001217, 0.981778,
		0.698137, 0.703264, -0.134257,
		-0.690285, 0.710928, 0.134490,
		32.908958, 35.879932, 43.929394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674965, 35.831703, 44.347439>,  <33.392159, 35.382282, 43.835251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674965, 35.831703, 44.347439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282814, 35.906811, 44.371456>,  <33.047523, 35.951874, 44.385868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282814, 35.906811, 44.371456>,  <33.674965, 35.831703, 44.347439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282814, 35.906811, 44.371456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057311, -0.019970, 0.998157,
		0.188622, 0.982010, 0.008817,
		-0.980376, 0.187769, 0.060047,
		32.988701, 35.963142, 44.389469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586189, 36.292500, 44.904610>,  <33.674965, 35.831703, 44.347439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586189, 36.292500, 44.904610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225113, 36.125237, 44.864025>,  <33.008469, 36.024879, 44.839676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225113, 36.125237, 44.864025>,  <33.586189, 36.292500, 44.904610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225113, 36.125237, 44.864025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135153, 0.051676, 0.989476,
		-0.408517, 0.906902, -0.103163,
		-0.902689, -0.418160, -0.101460,
		32.954308, 35.999790, 44.833588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136551, 36.730648, 45.384399>,  <33.586189, 36.292500, 44.904610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136551, 36.730648, 45.384399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930286, 36.397812, 45.302704>,  <32.806526, 36.198109, 45.253685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930286, 36.397812, 45.302704>,  <33.136551, 36.730648, 45.384399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930286, 36.397812, 45.302704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208898, -0.109086, 0.971834,
		-0.830937, 0.543802, -0.117571,
		-0.515660, -0.832094, -0.204243,
		32.775589, 36.148182, 45.241432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424358, 36.781906, 45.508781>,  <33.136551, 36.730648, 45.384399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424358, 36.781906, 45.508781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490486, 36.388165, 45.533173>,  <32.530163, 36.151920, 45.547810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490486, 36.388165, 45.533173>,  <32.424358, 36.781906, 45.508781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490486, 36.388165, 45.533173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186625, 0.029493, 0.981989,
		-0.968422, -0.173721, -0.178829,
		0.165318, -0.984353, 0.060982,
		32.540081, 36.092857, 45.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891151, 36.524567, 45.988674>,  <32.424358, 36.781906, 45.508781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891151, 36.524567, 45.988674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179367, 36.247669, 45.972572>,  <32.352295, 36.081532, 45.962914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179367, 36.247669, 45.972572>,  <31.891151, 36.524567, 45.988674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179367, 36.247669, 45.972572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120790, -0.182464, 0.975765,
		-0.682813, -0.698215, -0.215088,
		0.720539, -0.692245, -0.040251,
		32.395531, 36.039997, 45.960499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541826, 35.856621, 46.242901>,  <31.891151, 36.524567, 45.988674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541826, 35.856621, 46.242901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940914, 35.842525, 46.265915>,  <32.180367, 35.834068, 46.279724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940914, 35.842525, 46.265915>,  <31.541826, 35.856621, 46.242901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940914, 35.842525, 46.265915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066697, -0.386753, 0.919768,
		-0.010159, -0.921510, -0.388222,
		0.997722, -0.035238, 0.057533,
		32.240231, 35.831955, 46.283176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627424, 35.139656, 46.437317>,  <31.541826, 35.856621, 46.242901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627424, 35.139656, 46.437317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961426, 35.342270, 46.523285>,  <32.161827, 35.463837, 46.574867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961426, 35.342270, 46.523285>,  <31.627424, 35.139656, 46.437317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961426, 35.342270, 46.523285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064712, -0.297480, 0.952532,
		0.546427, -0.809276, -0.215618,
		0.835003, 0.506536, 0.214921,
		32.211926, 35.494232, 46.587761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084034, 34.696404, 46.884022>,  <31.627424, 35.139656, 46.437317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084034, 34.696404, 46.884022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211288, 35.070335, 46.947117>,  <32.287640, 35.294693, 46.984974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211288, 35.070335, 46.947117>,  <32.084034, 34.696404, 46.884022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211288, 35.070335, 46.947117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029046, -0.156690, 0.987221,
		0.947600, -0.318651, -0.022695,
		0.318135, 0.934831, 0.157735,
		32.306728, 35.350784, 46.994438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648014, 34.564186, 47.326920>,  <32.084034, 34.696404, 46.884022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648014, 34.564186, 47.326920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536884, 34.947598, 47.352341>,  <32.470207, 35.177643, 47.367592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536884, 34.947598, 47.352341>,  <32.648014, 34.564186, 47.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536884, 34.947598, 47.352341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071505, -0.045341, 0.996409,
		0.957968, 0.281368, -0.055943,
		-0.277822, 0.958528, 0.063554,
		32.453537, 35.235157, 47.371407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161839, 34.863457, 47.753593>,  <32.648014, 34.564186, 47.326920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161839, 34.863457, 47.753593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852909, 35.116516, 47.776482>,  <32.667553, 35.268353, 47.790215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852909, 35.116516, 47.776482>,  <33.161839, 34.863457, 47.753593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852909, 35.116516, 47.776482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016096, -0.070562, 0.997378,
		0.635028, 0.771217, 0.044313,
		-0.772322, 0.632649, 0.057222,
		32.621212, 35.306313, 47.793648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213772, 35.226265, 48.473408>,  <33.161839, 34.863457, 47.753593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213772, 35.226265, 48.473408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840069, 35.286480, 48.344105>,  <32.615845, 35.322609, 48.266521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840069, 35.286480, 48.344105>,  <33.213772, 35.226265, 48.473408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840069, 35.286480, 48.344105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326344, 0.004415, 0.945241,
		0.143723, 0.988594, 0.045002,
		-0.934261, 0.150539, -0.323256,
		32.559792, 35.331642, 48.247128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991505, 35.721199, 48.900082>,  <33.213772, 35.226265, 48.473408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991505, 35.721199, 48.900082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681973, 35.510437, 48.759480>,  <32.496254, 35.383980, 48.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681973, 35.510437, 48.759480>,  <32.991505, 35.721199, 48.900082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681973, 35.510437, 48.759480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326752, -0.143331, 0.934179,
		-0.542610, 0.837749, -0.061255,
		-0.773827, -0.526909, -0.351508,
		32.449825, 35.352364, 48.654026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490791, 36.121723, 49.185272>,  <32.991505, 35.721199, 48.900082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490791, 36.121723, 49.185272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339211, 35.765358, 49.085140>,  <32.248260, 35.551540, 49.025063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339211, 35.765358, 49.085140>,  <32.490791, 36.121723, 49.185272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339211, 35.765358, 49.085140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348524, -0.113189, 0.930440,
		-0.857277, 0.439842, -0.267611,
		-0.378957, -0.890914, -0.250330,
		32.225525, 35.498085, 49.010040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734255, 36.124710, 49.162300>,  <32.490791, 36.121723, 49.185272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734255, 36.124710, 49.162300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841616, 35.745415, 49.230198>,  <31.906033, 35.517838, 49.270935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841616, 35.745415, 49.230198>,  <31.734255, 36.124710, 49.162300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841616, 35.745415, 49.230198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584129, -0.020088, 0.811412,
		-0.765999, -0.316938, -0.559282,
		0.268402, -0.948233, 0.169745,
		31.922136, 35.460945, 49.281120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122652, 35.877693, 49.432606>,  <31.734255, 36.124710, 49.162300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122652, 35.877693, 49.432606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379766, 35.589642, 49.537094>,  <31.534035, 35.416809, 49.599789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379766, 35.589642, 49.537094>,  <31.122652, 35.877693, 49.432606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379766, 35.589642, 49.537094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492822, -0.127669, 0.860713,
		-0.586478, -0.681989, -0.436961,
		0.642784, -0.720133, 0.261224,
		31.572601, 35.373604, 49.615463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695965, 35.403664, 49.821709>,  <31.122652, 35.877693, 49.432606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695965, 35.403664, 49.821709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076830, 35.321800, 49.912483>,  <31.305349, 35.272682, 49.966949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076830, 35.321800, 49.912483>,  <30.695965, 35.403664, 49.821709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076830, 35.321800, 49.912483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228002, 0.018672, 0.973482,
		-0.203467, -0.978656, -0.028884,
		0.952164, -0.204657, 0.226935,
		31.362478, 35.260403, 49.980564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736940, 34.862820, 50.398907>,  <30.695965, 35.403664, 49.821709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736940, 34.862820, 50.398907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089798, 35.050491, 50.415325>,  <31.301514, 35.163094, 50.425179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089798, 35.050491, 50.415325>,  <30.736940, 34.862820, 50.398907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089798, 35.050491, 50.415325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014444, -0.060167, 0.998084,
		0.470755, -0.881048, -0.046299,
		0.882146, 0.469184, 0.041050,
		31.354443, 35.191246, 50.427639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104280, 34.468330, 50.684551>,  <30.736940, 34.862820, 50.398907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104280, 34.468330, 50.684551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270460, 34.825161, 50.755657>,  <31.370169, 35.039261, 50.798321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270460, 34.825161, 50.755657>,  <31.104280, 34.468330, 50.684551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270460, 34.825161, 50.755657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101113, -0.239513, 0.965614,
		0.903978, -0.383190, -0.189706,
		0.415451, 0.892076, 0.177769,
		31.395096, 35.092785, 50.808987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701334, 34.268524, 51.094719>,  <31.104280, 34.468330, 50.684551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701334, 34.268524, 51.094719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632238, 34.658302, 51.152149>,  <31.590782, 34.892170, 51.186607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632238, 34.658302, 51.152149>,  <31.701334, 34.268524, 51.094719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632238, 34.658302, 51.152149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267848, -0.093804, 0.958884,
		0.947850, 0.204092, -0.244800,
		-0.172737, 0.974447, 0.143578,
		31.580418, 34.950638, 51.195221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129700, 34.409489, 51.583763>,  <31.701334, 34.268524, 51.094719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129700, 34.409489, 51.583763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874718, 34.717255, 51.600029>,  <31.721729, 34.901913, 51.609791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874718, 34.717255, 51.600029>,  <32.129700, 34.409489, 51.583763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874718, 34.717255, 51.600029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164954, 0.084724, 0.982656,
		0.752622, 0.633108, -0.180926,
		-0.637456, 0.769413, 0.040669,
		31.683481, 34.948078, 51.612228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339981, 34.747826, 52.121052>,  <32.129700, 34.409489, 51.583763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339981, 34.747826, 52.121052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982147, 34.919102, 52.069862>,  <31.767447, 35.021866, 52.039150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982147, 34.919102, 52.069862>,  <32.339981, 34.747826, 52.121052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982147, 34.919102, 52.069862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119827, 0.046052, 0.991726,
		0.430539, 0.902515, 0.010111,
		-0.894582, 0.428189, -0.127973,
		31.713772, 35.047558, 52.031471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452320, 35.432983, 52.332108>,  <32.339981, 34.747826, 52.121052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452320, 35.432983, 52.332108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072399, 35.309311, 52.351234>,  <31.844448, 35.235107, 52.362709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072399, 35.309311, 52.351234>,  <32.452320, 35.432983, 52.332108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072399, 35.309311, 52.351234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029880, 0.241772, 0.969873,
		-0.311429, 0.919756, -0.238874,
		-0.949799, -0.309185, 0.047812,
		31.787458, 35.216557, 52.365578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054169, 35.981949, 52.596470>,  <32.452320, 35.432983, 52.332108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054169, 35.981949, 52.596470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853600, 35.644905, 52.675049>,  <31.733257, 35.442680, 52.722195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853600, 35.644905, 52.675049>,  <32.054169, 35.981949, 52.596470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853600, 35.644905, 52.675049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003302, 0.228910, 0.973442,
		-0.865196, 0.487457, -0.117563,
		-0.501423, -0.842606, 0.196443,
		31.703173, 35.392124, 52.733982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473331, 36.045639, 53.151722>,  <32.054169, 35.981949, 52.596470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473331, 36.045639, 53.151722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546982, 35.653099, 53.173805>,  <31.591171, 35.417576, 53.187057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546982, 35.653099, 53.173805>,  <31.473331, 36.045639, 53.151722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546982, 35.653099, 53.173805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164925, 0.024530, 0.986001,
		-0.968967, -0.190654, -0.157332,
		0.184126, -0.981351, 0.055212,
		31.602219, 35.358692, 53.190369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990721, 35.809700, 53.595486>,  <31.473331, 36.045639, 53.151722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990721, 35.809700, 53.595486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334747, 35.605938, 53.606693>,  <31.541164, 35.483681, 53.613419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334747, 35.605938, 53.606693>,  <30.990721, 35.809700, 53.595486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334747, 35.605938, 53.606693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024669, 0.013340, 0.999607,
		-0.509584, -0.860420, -0.001094,
		0.860068, -0.509410, 0.028024,
		31.592768, 35.453114, 53.615101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731182, 35.364300, 54.096703>,  <30.990721, 35.809700, 53.595486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731182, 35.364300, 54.096703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621775, 34.980137, 54.075531>,  <30.556129, 34.749638, 54.062828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621775, 34.980137, 54.075531>,  <30.731182, 35.364300, 54.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621775, 34.980137, 54.075531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870461, -0.270565, 0.411207,
		-0.409249, 0.066398, 0.910004,
		-0.273519, -0.960409, -0.052932,
		30.539719, 34.692013, 54.059650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011244, 35.044384, 54.581104>,  <30.731182, 35.364300, 54.096703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011244, 35.044384, 54.581104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949509, 34.712372, 54.366730>,  <30.912468, 34.513165, 54.238106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949509, 34.712372, 54.366730>,  <31.011244, 35.044384, 54.581104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949509, 34.712372, 54.366730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858441, -0.381200, 0.343171,
		-0.489141, -0.407106, 0.771366,
		-0.154338, -0.830031, -0.535937,
		30.903208, 34.463364, 54.205948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139351, 34.464451, 55.013306>,  <31.011244, 35.044384, 54.581104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139351, 34.464451, 55.013306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223305, 34.367661, 54.634380>,  <31.273676, 34.309586, 54.407024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223305, 34.367661, 54.634380>,  <31.139351, 34.464451, 55.013306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223305, 34.367661, 54.634380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905545, -0.317255, 0.281668,
		-0.368696, -0.916950, 0.152535,
		0.209883, -0.241977, -0.947310,
		31.286270, 34.295067, 54.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464821, 34.292892, 55.363956>,  <31.139351, 34.464451, 55.013306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464821, 34.292892, 55.363956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069216, 34.260555, 55.413464>,  <29.831852, 34.241154, 55.443169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069216, 34.260555, 55.413464>,  <30.464821, 34.292892, 55.363956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069216, 34.260555, 55.413464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039635, -0.661568, -0.748837,
		0.142416, -0.745516, 0.651095,
		-0.989013, -0.080840, 0.123767,
		29.772512, 34.236301, 55.450592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812243, 33.804096, 54.854683>,  <30.464821, 34.292892, 55.363956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812243, 33.804096, 54.854683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703674, 33.593170, 55.176743>,  <30.638533, 33.466614, 55.369980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703674, 33.593170, 55.176743>,  <30.812243, 33.804096, 54.854683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703674, 33.593170, 55.176743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254115, -0.767607, -0.588391,
		0.928308, -0.364302, 0.074345,
		-0.271420, -0.527316, 0.805151,
		30.622248, 33.434975, 55.418289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033730, 33.060314, 54.776932>,  <30.812243, 33.804096, 54.854683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033730, 33.060314, 54.776932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734106, 33.075142, 55.041519>,  <30.554333, 33.084038, 55.200272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734106, 33.075142, 55.041519>,  <31.033730, 33.060314, 54.776932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734106, 33.075142, 55.041519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386921, -0.834938, -0.391370,
		0.537776, -0.549094, 0.639760,
		-0.749059, 0.037068, 0.661466,
		30.509388, 33.086262, 55.239960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590120, 32.916386, 54.345730>,  <31.033730, 33.060314, 54.776932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590120, 32.916386, 54.345730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604294, 32.532257, 54.235069>,  <31.612799, 32.301781, 54.168674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604294, 32.532257, 54.235069>,  <31.590120, 32.916386, 54.345730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604294, 32.532257, 54.235069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355844, 0.270806, -0.894449,
		0.933873, -0.066749, 0.351319,
		0.035436, -0.960317, -0.276651,
		31.614925, 32.244164, 54.152073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292057, 32.669987, 54.105587>,  <31.590120, 32.916386, 54.345730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292057, 32.669987, 54.105587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004303, 32.465096, 53.917927>,  <31.831650, 32.342159, 53.805328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004303, 32.465096, 53.917927>,  <32.292057, 32.669987, 54.105587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004303, 32.465096, 53.917927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485361, 0.112483, -0.867048,
		0.496898, -0.851452, 0.167696,
		-0.719387, -0.512227, -0.469154,
		31.788486, 32.311428, 53.777180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623394, 32.008560, 53.815994>,  <32.292057, 32.669987, 54.105587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623394, 32.008560, 53.815994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310574, 32.166351, 53.623001>,  <32.122883, 32.261024, 53.507206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310574, 32.166351, 53.623001>,  <32.623394, 32.008560, 53.815994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310574, 32.166351, 53.623001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510910, -0.037541, -0.858814,
		-0.356894, -0.918139, -0.172183,
		-0.782047, 0.394476, -0.482485,
		32.075958, 32.284695, 53.478256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606491, 31.666893, 53.204967>,  <32.623394, 32.008560, 53.815994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606491, 31.666893, 53.204967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407413, 32.004929, 53.126869>,  <32.287968, 32.207752, 53.080009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407413, 32.004929, 53.126869>,  <32.606491, 31.666893, 53.204967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407413, 32.004929, 53.126869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341028, -0.016317, -0.939912,
		-0.797497, -0.534374, -0.280078,
		-0.497694, 0.845091, -0.195249,
		32.258106, 32.258457, 53.068295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299389, 31.486584, 52.556484>,  <32.606491, 31.666893, 53.204967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299389, 31.486584, 52.556484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330509, 31.885256, 52.566044>,  <32.349182, 32.124458, 52.571781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330509, 31.885256, 52.566044>,  <32.299389, 31.486584, 52.556484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330509, 31.885256, 52.566044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257460, 0.003075, -0.966284,
		-0.963152, 0.081333, -0.256367,
		0.077802, 0.996682, 0.023901,
		32.353851, 32.184261, 52.573215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963966, 31.708185, 51.907158>,  <32.299389, 31.486584, 52.556484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963966, 31.708185, 51.907158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186420, 32.014194, 52.037052>,  <32.319893, 32.197800, 52.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186420, 32.014194, 52.037052>,  <31.963966, 31.708185, 51.907158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186420, 32.014194, 52.037052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352279, 0.136904, -0.925827,
		-0.752738, 0.629282, -0.193365,
		0.556134, 0.765024, 0.324736,
		32.353260, 32.243702, 52.134472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918377, 32.403141, 51.384449>,  <31.963966, 31.708185, 51.907158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918377, 32.403141, 51.384449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260521, 32.403042, 51.591663>,  <32.465809, 32.402981, 51.715992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260521, 32.403042, 51.591663>,  <31.918377, 32.403141, 51.384449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260521, 32.403042, 51.591663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500609, 0.257581, -0.826464,
		-0.133231, 0.966257, 0.220448,
		0.855360, -0.000248, 0.518034,
		32.517128, 32.402969, 51.747074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283398, 32.779278, 50.993458>,  <31.918377, 32.403141, 51.384449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283398, 32.779278, 50.993458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576725, 32.656113, 51.235924>,  <32.752724, 32.582214, 51.381401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576725, 32.656113, 51.235924>,  <32.283398, 32.779278, 50.993458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576725, 32.656113, 51.235924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679489, 0.362305, -0.637989,
		-0.023173, 0.879731, 0.474906,
		0.733320, -0.307909, 0.606163,
		32.796722, 32.563740, 51.417774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836292, 33.375557, 51.154011>,  <32.283398, 32.779278, 50.993458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836292, 33.375557, 51.154011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988514, 33.005924, 51.168194>,  <33.079845, 32.784145, 51.176704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988514, 33.005924, 51.168194>,  <32.836292, 33.375557, 51.154011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988514, 33.005924, 51.168194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734197, 0.278599, -0.619143,
		0.562259, 0.261646, 0.784478,
		0.380551, -0.924080, 0.035455,
		33.102680, 32.728699, 51.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469120, 33.507832, 51.264324>,  <32.836292, 33.375557, 51.154011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469120, 33.507832, 51.264324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465382, 33.139217, 51.109051>,  <33.463139, 32.918049, 51.015888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465382, 33.139217, 51.109051>,  <33.469120, 33.507832, 51.264324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465382, 33.139217, 51.109051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679190, 0.279064, -0.678840,
		0.733903, -0.269994, 0.623289,
		-0.009345, -0.921535, -0.388183,
		33.462578, 32.862759, 50.992596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210613, 33.328041, 51.054882>,  <33.469120, 33.507832, 51.264324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210613, 33.328041, 51.054882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981880, 33.053295, 50.875450>,  <33.844643, 32.888447, 50.767792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981880, 33.053295, 50.875450>,  <34.210613, 33.328041, 51.054882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981880, 33.053295, 50.875450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615751, 0.001969, -0.787939,
		0.542092, -0.726781, 0.421813,
		-0.571828, -0.686867, -0.448583,
		33.810333, 32.847237, 50.740875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675915, 32.859875, 50.739429>,  <34.210613, 33.328041, 51.054882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675915, 32.859875, 50.739429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339985, 32.815479, 50.526871>,  <34.138428, 32.788841, 50.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339985, 32.815479, 50.526871>,  <34.675915, 32.859875, 50.739429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339985, 32.815479, 50.526871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528107, 0.059653, -0.847080,
		0.125717, -0.992030, 0.008517,
		-0.839820, -0.110990, -0.531397,
		34.088039, 32.782181, 50.367451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830772, 32.469891, 50.197849>,  <34.675915, 32.859875, 50.739429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830772, 32.469891, 50.197849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497387, 32.616993, 50.032883>,  <34.297356, 32.705254, 49.933903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497387, 32.616993, 50.032883>,  <34.830772, 32.469891, 50.197849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497387, 32.616993, 50.032883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508880, 0.219974, -0.832258,
		-0.215345, -0.903531, -0.370483,
		-0.833468, 0.367754, -0.412419,
		34.247345, 32.727318, 49.909157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984020, 32.408253, 49.575127>,  <34.830772, 32.469891, 50.197849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984020, 32.408253, 49.575127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660091, 32.642704, 49.564919>,  <34.465736, 32.783375, 49.558792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660091, 32.642704, 49.564919>,  <34.984020, 32.408253, 49.575127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660091, 32.642704, 49.564919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296810, 0.371787, -0.879590,
		-0.506060, -0.719884, -0.475047,
		-0.809819, 0.586124, -0.025522,
		34.417145, 32.818542, 49.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672768, 32.343689, 48.827492>,  <34.984020, 32.408253, 49.575127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672768, 32.343689, 48.827492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585190, 32.696411, 48.994576>,  <34.532642, 32.908043, 49.094826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585190, 32.696411, 48.994576>,  <34.672768, 32.343689, 48.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585190, 32.696411, 48.994576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363693, 0.471003, -0.803669,
		-0.905422, -0.024041, -0.423831,
		-0.218947, 0.881804, 0.417713,
		34.519505, 32.960953, 49.119888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392246, 32.751354, 48.331051>,  <34.672768, 32.343689, 48.827492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392246, 32.751354, 48.331051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529556, 33.013828, 48.599850>,  <34.611942, 33.171314, 48.761131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529556, 33.013828, 48.599850>,  <34.392246, 32.751354, 48.331051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529556, 33.013828, 48.599850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386799, 0.553224, -0.737787,
		-0.855892, 0.513190, -0.063906,
		0.343271, 0.656185, 0.672001,
		34.632538, 33.210686, 48.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040981, 33.314365, 48.221592>,  <34.392246, 32.751354, 48.331051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040981, 33.314365, 48.221592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391792, 33.389309, 48.398556>,  <34.602280, 33.434273, 48.504734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391792, 33.389309, 48.398556>,  <34.040981, 33.314365, 48.221592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391792, 33.389309, 48.398556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316833, 0.466680, -0.825728,
		-0.361167, 0.864354, 0.349930,
		0.877026, 0.187356, 0.442405,
		34.654900, 33.445515, 48.531277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140202, 34.139896, 48.122326>,  <34.040981, 33.314365, 48.221592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140202, 34.139896, 48.122326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487907, 33.954170, 48.190197>,  <34.696529, 33.842735, 48.230919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487907, 33.954170, 48.190197>,  <34.140202, 34.139896, 48.122326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487907, 33.954170, 48.190197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390018, 0.433256, -0.812512,
		0.303748, 0.772465, 0.557705,
		0.869266, -0.464314, 0.169674,
		34.748688, 33.814877, 48.241100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599651, 34.666481, 48.041370>,  <34.140202, 34.139896, 48.122326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599651, 34.666481, 48.041370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830498, 34.341064, 48.012833>,  <34.969006, 34.145817, 47.995708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830498, 34.341064, 48.012833>,  <34.599651, 34.666481, 48.041370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830498, 34.341064, 48.012833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353844, 0.327834, -0.875967,
		0.736023, 0.480291, 0.477065,
		0.577118, -0.813539, -0.071345,
		35.003632, 34.097004, 47.991428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104713, 34.835644, 47.666885>,  <34.599651, 34.666481, 48.041370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104713, 34.835644, 47.666885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142303, 34.437725, 47.651134>,  <35.164856, 34.198975, 47.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142303, 34.437725, 47.651134>,  <35.104713, 34.835644, 47.666885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142303, 34.437725, 47.651134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444492, 0.077314, -0.892440,
		0.890840, 0.066364, 0.449444,
		0.093974, -0.994796, -0.039376,
		35.170494, 34.139286, 47.639320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772545, 34.779484, 47.355076>,  <35.104713, 34.835644, 47.666885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772545, 34.779484, 47.355076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564919, 34.440193, 47.312950>,  <35.440342, 34.236618, 47.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564919, 34.440193, 47.312950>,  <35.772545, 34.779484, 47.355076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564919, 34.440193, 47.312950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324792, -0.081760, -0.942245,
		0.790624, -0.523290, 0.317934,
		-0.519061, -0.848223, -0.105319,
		35.409199, 34.185726, 47.281353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170937, 34.459122, 46.893936>,  <35.772545, 34.779484, 47.355076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170937, 34.459122, 46.893936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830921, 34.250736, 46.862843>,  <35.626911, 34.125706, 46.844185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830921, 34.250736, 46.862843>,  <36.170937, 34.459122, 46.893936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830921, 34.250736, 46.862843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107810, -0.027624, -0.993788,
		0.515576, -0.853134, 0.079646,
		-0.850034, -0.520960, -0.077734,
		35.575912, 34.094448, 46.839523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291992, 33.919270, 46.546043>,  <36.170937, 34.459122, 46.893936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291992, 33.919270, 46.546043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897369, 33.957054, 46.492710>,  <35.660595, 33.979725, 46.460709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897369, 33.957054, 46.492710>,  <36.291992, 33.919270, 46.546043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897369, 33.957054, 46.492710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119843, -0.136449, -0.983371,
		-0.111076, -0.986134, 0.123296,
		-0.986560, 0.094453, -0.133337,
		35.601402, 33.985390, 46.452709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120224, 33.374298, 45.976864>,  <36.291992, 33.919270, 46.546043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120224, 33.374298, 45.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813499, 33.628525, 46.012772>,  <35.629467, 33.781063, 46.034317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813499, 33.628525, 46.012772>,  <36.120224, 33.374298, 45.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813499, 33.628525, 46.012772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079951, 0.044197, -0.995818,
		-0.636880, -0.770778, 0.016924,
		-0.766807, 0.635570, 0.089773,
		35.583458, 33.819195, 46.039703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601166, 33.131439, 45.504536>,  <36.120224, 33.374298, 45.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601166, 33.131439, 45.504536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456577, 33.497635, 45.575211>,  <35.369823, 33.717354, 45.617615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456577, 33.497635, 45.575211>,  <35.601166, 33.131439, 45.504536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456577, 33.497635, 45.575211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047551, 0.171150, -0.984097,
		-0.931171, -0.364121, -0.018332,
		-0.361468, 0.915491, 0.176684,
		35.348137, 33.772282, 45.628216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965065, 33.206188, 45.181198>,  <35.601166, 33.131439, 45.504536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965065, 33.206188, 45.181198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136517, 33.565685, 45.218151>,  <35.239388, 33.781384, 45.240322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136517, 33.565685, 45.218151>,  <34.965065, 33.206188, 45.181198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136517, 33.565685, 45.218151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197178, 0.192843, -0.961214,
		-0.881700, 0.393793, 0.259871,
		0.428633, 0.898743, 0.092383,
		35.265106, 33.835308, 45.245865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540134, 33.582081, 44.887115>,  <34.965065, 33.206188, 45.181198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540134, 33.582081, 44.887115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867924, 33.811134, 44.877670>,  <35.064598, 33.948566, 44.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867924, 33.811134, 44.877670>,  <34.540134, 33.582081, 44.887115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867924, 33.811134, 44.877670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235739, 0.299225, -0.924604,
		-0.522397, 0.763250, 0.380199,
		0.819469, 0.572637, -0.023614,
		35.113766, 33.982925, 44.870586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395290, 34.204376, 44.576920>,  <34.540134, 33.582081, 44.887115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395290, 34.204376, 44.576920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792885, 34.173653, 44.545700>,  <35.031441, 34.155216, 44.526970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792885, 34.173653, 44.545700>,  <34.395290, 34.204376, 44.576920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792885, 34.173653, 44.545700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062366, 0.188776, -0.980038,
		0.090014, 0.979011, 0.182850,
		0.993986, -0.076814, -0.078050,
		35.091080, 34.150608, 44.522285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553867, 34.818108, 44.334042>,  <34.395290, 34.204376, 44.576920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553867, 34.818108, 44.334042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858337, 34.575325, 44.242634>,  <35.041019, 34.429657, 44.187790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858337, 34.575325, 44.242634>,  <34.553867, 34.818108, 44.334042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858337, 34.575325, 44.242634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042061, 0.305410, -0.951292,
		0.647183, 0.733710, 0.206940,
		0.761174, -0.606956, -0.228517,
		35.086689, 34.393238, 44.174080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006596, 35.182243, 44.006439>,  <34.553867, 34.818108, 44.334042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006596, 35.182243, 44.006439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120399, 34.813519, 43.901123>,  <35.188683, 34.592285, 43.837933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120399, 34.813519, 43.901123>,  <35.006596, 35.182243, 44.006439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120399, 34.813519, 43.901123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060429, 0.291342, -0.954708,
		0.956766, 0.255715, 0.138595,
		0.284512, -0.921808, -0.263294,
		35.205753, 34.536976, 43.822136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543312, 35.266758, 43.496189>,  <35.006596, 35.182243, 44.006439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543312, 35.266758, 43.496189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386612, 34.903854, 43.434986>,  <35.292591, 34.686111, 43.398262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386612, 34.903854, 43.434986>,  <35.543312, 35.266758, 43.496189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386612, 34.903854, 43.434986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001962, 0.165480, -0.986211,
		0.920071, -0.386645, -0.063047,
		-0.391747, -0.907261, -0.153012,
		35.269089, 34.631676, 43.389084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746918, 35.161530, 42.844009>,  <35.543312, 35.266758, 43.496189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746918, 35.161530, 42.844009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468056, 34.882736, 42.911160>,  <35.300739, 34.715458, 42.951450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468056, 34.882736, 42.911160>,  <35.746918, 35.161530, 42.844009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468056, 34.882736, 42.911160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220097, -0.014772, -0.975366,
		0.682298, -0.716931, -0.143106,
		-0.697157, -0.696988, 0.167874,
		35.258907, 34.673641, 42.961521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829605, 34.672455, 42.383022>,  <35.746918, 35.161530, 42.844009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829605, 34.672455, 42.383022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444225, 34.611366, 42.471058>,  <35.212997, 34.574711, 42.523880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444225, 34.611366, 42.471058>,  <35.829605, 34.672455, 42.383022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444225, 34.611366, 42.471058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194586, -0.165705, -0.966788,
		0.184122, -0.974278, 0.129931,
		-0.963450, -0.152724, 0.220090,
		35.155190, 34.565548, 42.537086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582222, 34.062813, 41.974392>,  <35.829605, 34.672455, 42.383022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582222, 34.062813, 41.974392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256794, 34.272289, 42.075466>,  <35.061535, 34.397976, 42.136108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256794, 34.272289, 42.075466>,  <35.582222, 34.062813, 41.974392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256794, 34.272289, 42.075466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364316, -0.120406, -0.923459,
		-0.453179, -0.843359, 0.288747,
		-0.813575, 0.523687, 0.252684,
		35.012722, 34.429394, 42.151272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024143, 33.683823, 41.801361>,  <35.582222, 34.062813, 41.974392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024143, 33.683823, 41.801361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885349, 34.058846, 41.811043>,  <34.802074, 34.283859, 41.816853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885349, 34.058846, 41.811043>,  <35.024143, 33.683823, 41.801361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885349, 34.058846, 41.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370846, -0.113449, -0.921739,
		-0.861438, -0.328806, 0.387055,
		-0.346984, 0.937559, 0.024207,
		34.781254, 34.340115, 41.818306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342995, 33.624683, 41.515942>,  <35.024143, 33.683823, 41.801361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342995, 33.624683, 41.515942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419872, 34.015430, 41.478436>,  <34.466000, 34.249878, 41.455933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419872, 34.015430, 41.478436>,  <34.342995, 33.624683, 41.515942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419872, 34.015430, 41.478436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304274, -0.031524, -0.952063,
		-0.932994, 0.211515, 0.291176,
		0.192197, 0.976866, -0.093770,
		34.477531, 34.308491, 41.450306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698315, 33.909966, 41.186577>,  <34.342995, 33.624683, 41.515942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698315, 33.909966, 41.186577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986057, 34.184811, 41.145794>,  <34.158703, 34.349720, 41.121323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986057, 34.184811, 41.145794>,  <33.698315, 33.909966, 41.186577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986057, 34.184811, 41.145794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357967, 0.240899, -0.902124,
		-0.595303, 0.685447, 0.419258,
		0.719357, 0.687117, -0.101960,
		34.201866, 34.390945, 41.115208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411892, 34.524754, 40.751026>,  <33.698315, 33.909966, 41.186577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411892, 34.524754, 40.751026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806274, 34.574894, 40.706867>,  <34.042904, 34.604977, 40.680374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806274, 34.574894, 40.706867>,  <33.411892, 34.524754, 40.751026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806274, 34.574894, 40.706867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134275, 0.201710, -0.970198,
		-0.099344, 0.971391, 0.215708,
		0.985952, 0.125347, -0.110395,
		34.102058, 34.612499, 40.673748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488293, 35.095676, 40.307796>,  <33.411892, 34.524754, 40.751026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488293, 35.095676, 40.307796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866634, 34.965981, 40.301743>,  <34.093639, 34.888165, 40.298111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866634, 34.965981, 40.301743>,  <33.488293, 35.095676, 40.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866634, 34.965981, 40.301743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063496, 0.230550, -0.970987,
		0.318319, 0.917452, 0.238654,
		0.945855, -0.324237, -0.015134,
		34.150391, 34.868710, 40.297203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873260, 35.691635, 40.018055>,  <33.488293, 35.095676, 40.307796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873260, 35.691635, 40.018055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103596, 35.369331, 39.962673>,  <34.241795, 35.175949, 39.929443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103596, 35.369331, 39.962673>,  <33.873260, 35.691635, 40.018055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103596, 35.369331, 39.962673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251416, 0.335670, -0.907808,
		0.777949, 0.487937, 0.395870,
		0.575835, -0.805756, -0.138459,
		34.276344, 35.127605, 39.921135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595295, 35.931725, 39.641262>,  <33.873260, 35.691635, 40.018055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595295, 35.931725, 39.641262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492210, 35.545998, 39.617027>,  <34.430359, 35.314560, 39.602486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492210, 35.545998, 39.617027>,  <34.595295, 35.931725, 39.641262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492210, 35.545998, 39.617027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484367, -0.074678, -0.871672,
		0.836047, -0.253986, 0.486330,
		-0.257711, -0.964321, -0.060588,
		34.414898, 35.256702, 39.598850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277786, 35.571171, 39.490414>,  <34.595295, 35.931725, 39.641262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277786, 35.571171, 39.490414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932041, 35.404949, 39.377140>,  <34.724594, 35.305218, 39.309174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932041, 35.404949, 39.377140>,  <35.277786, 35.571171, 39.490414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932041, 35.404949, 39.377140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428626, -0.314322, -0.847043,
		0.262979, -0.853533, 0.449805,
		-0.864362, -0.415553, -0.283186,
		34.672733, 35.280285, 39.292183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743546, 35.500618, 38.930794>,  <35.277786, 35.571171, 39.490414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743546, 35.500618, 38.930794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472240, 35.712753, 38.727345>,  <35.309456, 35.840034, 38.605274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472240, 35.712753, 38.727345>,  <35.743546, 35.500618, 38.930794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472240, 35.712753, 38.727345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580971, -0.036780, -0.813092,
		-0.449921, -0.846988, -0.283165,
		-0.678265, 0.530338, -0.508624,
		35.268761, 35.871853, 38.574757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002312, 35.520302, 39.715164>,  <35.743546, 35.500618, 38.930794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002312, 35.520302, 39.715164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401478, 35.495518, 39.707851>,  <36.640976, 35.480648, 39.703465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401478, 35.495518, 39.707851>,  <36.002312, 35.520302, 39.715164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401478, 35.495518, 39.707851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015868, -0.039212, 0.999105,
		-0.062624, -0.997308, -0.038147,
		0.997911, -0.061963, -0.018281,
		36.700851, 35.476929, 39.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217293, 35.033119, 40.189705>,  <36.002312, 35.520302, 39.715164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217293, 35.033119, 40.189705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552044, 35.245251, 40.135471>,  <36.752895, 35.372528, 40.102932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552044, 35.245251, 40.135471>,  <36.217293, 35.033119, 40.189705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552044, 35.245251, 40.135471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173017, -0.021280, 0.984689,
		0.519320, -0.847527, -0.109564,
		0.836882, 0.530325, -0.135586,
		36.803108, 35.404346, 40.094795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746063, 34.602947, 40.485298>,  <36.217293, 35.033119, 40.189705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746063, 34.602947, 40.485298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863979, 34.984985, 40.473362>,  <36.934731, 35.214207, 40.466202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863979, 34.984985, 40.473362>,  <36.746063, 34.602947, 40.485298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863979, 34.984985, 40.473362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318226, -0.068680, 0.945524,
		0.901015, -0.288231, -0.324183,
		0.294794, 0.955095, -0.029841,
		36.952419, 35.271515, 40.464409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535183, 34.510654, 40.506390>,  <36.746063, 34.602947, 40.485298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535183, 34.510654, 40.506390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390656, 34.862244, 40.630878>,  <37.303940, 35.073196, 40.705570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390656, 34.862244, 40.630878>,  <37.535183, 34.510654, 40.506390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390656, 34.862244, 40.630878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363050, -0.174820, 0.915223,
		0.858864, 0.443672, -0.255946,
		-0.361314, 0.878973, 0.311222,
		37.282261, 35.125935, 40.724243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122883, 34.836639, 40.912724>,  <37.535183, 34.510654, 40.506390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122883, 34.836639, 40.912724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782501, 34.978951, 41.067280>,  <37.578270, 35.064339, 41.160011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782501, 34.978951, 41.067280>,  <38.122883, 34.836639, 40.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782501, 34.978951, 41.067280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420515, 0.020711, 0.907049,
		0.314704, 0.934341, -0.167234,
		-0.850958, 0.355777, 0.386386,
		37.527214, 35.085682, 41.183197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363811, 35.355537, 41.331860>,  <38.122883, 34.836639, 40.912724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363811, 35.355537, 41.331860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984669, 35.297886, 41.445553>,  <37.757183, 35.263294, 41.513771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984669, 35.297886, 41.445553>,  <38.363811, 35.355537, 41.331860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984669, 35.297886, 41.445553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265780, 0.134643, 0.954585,
		-0.175852, 0.980356, -0.089316,
		-0.947859, -0.144127, 0.284237,
		37.700310, 35.254646, 41.530823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260139, 35.770958, 41.990574>,  <38.363811, 35.355537, 41.331860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260139, 35.770958, 41.990574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936935, 35.535328, 41.986340>,  <37.743015, 35.393948, 41.983799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936935, 35.535328, 41.986340>,  <38.260139, 35.770958, 41.990574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936935, 35.535328, 41.986340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139000, -0.208053, 0.968191,
		-0.572542, 0.780833, 0.249990,
		-0.808007, -0.589078, -0.010584,
		37.694534, 35.358604, 41.983166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746559, 35.976326, 42.532166>,  <38.260139, 35.770958, 41.990574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746559, 35.976326, 42.532166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646927, 35.595715, 42.460003>,  <37.587147, 35.367348, 42.416706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646927, 35.595715, 42.460003>,  <37.746559, 35.976326, 42.532166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646927, 35.595715, 42.460003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067148, -0.202793, 0.976917,
		-0.966151, 0.231222, 0.114406,
		-0.249085, -0.951531, -0.180403,
		37.572201, 35.310257, 42.405884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336437, 35.800262, 43.097061>,  <37.746559, 35.976326, 42.532166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336437, 35.800262, 43.097061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449039, 35.443291, 42.956024>,  <37.516602, 35.229107, 42.871403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449039, 35.443291, 42.956024>,  <37.336437, 35.800262, 43.097061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449039, 35.443291, 42.956024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152691, -0.321109, 0.934652,
		-0.947332, -0.316951, 0.045871,
		0.281509, -0.892430, -0.352593,
		37.533493, 35.175560, 42.850246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213352, 35.393452, 43.640377>,  <37.336437, 35.800262, 43.097061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213352, 35.393452, 43.640377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392487, 35.126030, 43.402901>,  <37.499969, 34.965576, 43.260414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392487, 35.126030, 43.402901>,  <37.213352, 35.393452, 43.640377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392487, 35.126030, 43.402901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265509, -0.534611, 0.802307,
		-0.853783, -0.516935, -0.061912,
		0.447840, -0.668557, -0.593692,
		37.526840, 34.925465, 43.224792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975071, 34.753429, 44.011513>,  <37.213352, 35.393452, 43.640377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975071, 34.753429, 44.011513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296066, 34.697788, 43.779423>,  <37.488663, 34.664406, 43.640167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296066, 34.697788, 43.779423>,  <36.975071, 34.753429, 44.011513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296066, 34.697788, 43.779423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397575, -0.600461, 0.693815,
		-0.444914, -0.787463, -0.426560,
		0.802487, -0.139099, -0.580230,
		37.536812, 34.656059, 43.605354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992847, 34.022606, 43.859585>,  <36.975071, 34.753429, 44.011513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992847, 34.022606, 43.859585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365009, 34.166714, 43.832603>,  <37.588306, 34.253178, 43.816414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365009, 34.166714, 43.832603>,  <36.992847, 34.022606, 43.859585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365009, 34.166714, 43.832603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284527, -0.593907, 0.752542,
		0.231060, -0.719361, -0.655081,
		0.930406, 0.360270, -0.067449,
		37.644131, 34.274796, 43.812370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499008, 33.479824, 44.033142>,  <36.992847, 34.022606, 43.859585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499008, 33.479824, 44.033142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732155, 33.801464, 44.079933>,  <37.872044, 33.994450, 44.108009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732155, 33.801464, 44.079933>,  <37.499008, 33.479824, 44.033142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732155, 33.801464, 44.079933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330171, -0.365909, 0.870113,
		0.742464, -0.468538, -0.478769,
		0.582867, 0.804103, 0.116976,
		37.907017, 34.042694, 44.115025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215206, 33.247257, 44.190746>,  <37.499008, 33.479824, 44.033142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215206, 33.247257, 44.190746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166473, 33.617214, 44.334824>,  <38.137234, 33.839188, 44.421268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166473, 33.617214, 44.334824>,  <38.215206, 33.247257, 44.190746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166473, 33.617214, 44.334824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356676, -0.297856, 0.885474,
		0.926250, 0.236350, -0.293598,
		-0.121832, 0.924889, 0.360190,
		38.129925, 33.894680, 44.442879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678268, 33.234032, 44.706043>,  <38.215206, 33.247257, 44.190746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678268, 33.234032, 44.706043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479431, 33.568474, 44.798840>,  <38.360126, 33.769138, 44.854519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479431, 33.568474, 44.798840>,  <38.678268, 33.234032, 44.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479431, 33.568474, 44.798840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161393, -0.173607, 0.971500,
		0.852553, 0.520373, -0.048642,
		-0.497097, 0.836106, 0.231994,
		38.330303, 33.819305, 44.868439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124115, 33.672844, 45.073074>,  <38.678268, 33.234032, 44.706043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124115, 33.672844, 45.073074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750412, 33.770306, 45.177219>,  <38.526188, 33.828785, 45.239708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750412, 33.770306, 45.177219>,  <39.124115, 33.672844, 45.073074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750412, 33.770306, 45.177219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249787, -0.073903, 0.965476,
		0.254487, 0.967042, 0.008183,
		-0.934261, 0.243657, 0.260362,
		38.470135, 33.843403, 45.255329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166431, 34.110291, 45.667885>,  <39.124115, 33.672844, 45.073074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166431, 34.110291, 45.667885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779697, 34.009560, 45.684948>,  <38.547657, 33.949120, 45.695187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779697, 34.009560, 45.684948>,  <39.166431, 34.110291, 45.667885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779697, 34.009560, 45.684948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055070, -0.042431, 0.997581,
		-0.249410, 0.966841, 0.054892,
		-0.966831, -0.251830, 0.042661,
		38.489647, 33.934010, 45.697746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928326, 34.514748, 46.191105>,  <39.166431, 34.110291, 45.667885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928326, 34.514748, 46.191105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648647, 34.231392, 46.152508>,  <38.480839, 34.061378, 46.129349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648647, 34.231392, 46.152508>,  <38.928326, 34.514748, 46.191105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648647, 34.231392, 46.152508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071173, -0.065324, 0.995323,
		-0.711376, 0.702796, -0.004743,
		-0.699199, -0.708386, -0.096490,
		38.438889, 34.018875, 46.123562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357208, 34.675121, 46.688892>,  <38.928326, 34.514748, 46.191105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357208, 34.675121, 46.688892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336002, 34.286819, 46.595230>,  <38.323280, 34.053841, 46.539032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336002, 34.286819, 46.595230>,  <38.357208, 34.675121, 46.688892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336002, 34.286819, 46.595230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095988, -0.228447, 0.968813,
		-0.993970, 0.073839, -0.081070,
		-0.053016, -0.970752, -0.234157,
		38.320099, 33.995594, 46.524982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711040, 34.493168, 46.895340>,  <38.357208, 34.675121, 46.688892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711040, 34.493168, 46.895340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928062, 34.157280, 46.904274>,  <38.058277, 33.955746, 46.909634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928062, 34.157280, 46.904274>,  <37.711040, 34.493168, 46.895340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928062, 34.157280, 46.904274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315765, -0.179233, 0.931755,
		-0.778413, -0.512582, -0.362399,
		0.542555, -0.839723, 0.022338,
		38.090828, 33.905361, 46.910976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208771, 33.986851, 47.100250>,  <37.711040, 34.493168, 46.895340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208771, 33.986851, 47.100250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588844, 33.894001, 47.183453>,  <37.816887, 33.838291, 47.233376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588844, 33.894001, 47.183453>,  <37.208771, 33.986851, 47.100250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588844, 33.894001, 47.183453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235450, -0.097243, 0.967009,
		-0.204241, -0.967812, -0.147053,
		0.950184, -0.232127, 0.208010,
		37.873901, 33.824364, 47.245857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195427, 33.423424, 47.524784>,  <37.208771, 33.986851, 47.100250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195427, 33.423424, 47.524784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564503, 33.563564, 47.589149>,  <37.785950, 33.647648, 47.627769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564503, 33.563564, 47.589149>,  <37.195427, 33.423424, 47.524784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564503, 33.563564, 47.589149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139100, -0.086748, 0.986472,
		0.359567, -0.932594, -0.031308,
		0.922693, 0.350347, 0.160915,
		37.841312, 33.668667, 47.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612518, 32.989140, 47.972641>,  <37.195427, 33.423424, 47.524784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612518, 32.989140, 47.972641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739155, 33.367538, 48.000492>,  <37.815136, 33.594578, 48.017204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739155, 33.367538, 48.000492>,  <37.612518, 32.989140, 47.972641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739155, 33.367538, 48.000492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131687, -0.028861, 0.990871,
		0.939375, -0.322874, 0.115438,
		0.316595, 0.946002, 0.069630,
		37.834133, 33.651340, 48.021381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905060, 32.942471, 48.654491>,  <37.612518, 32.989140, 47.972641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905060, 32.942471, 48.654491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866879, 33.328632, 48.557434>,  <37.843971, 33.560329, 48.499199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866879, 33.328632, 48.557434>,  <37.905060, 32.942471, 48.654491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866879, 33.328632, 48.557434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152196, 0.226732, 0.961992,
		0.983730, 0.128754, 0.125289,
		-0.095454, 0.965409, -0.242639,
		37.838242, 33.618256, 48.484642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374157, 33.382057, 49.071095>,  <37.905060, 32.942471, 48.654491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374157, 33.382057, 49.071095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073017, 33.631870, 48.987972>,  <37.892334, 33.781757, 48.938099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073017, 33.631870, 48.987972>,  <38.374157, 33.382057, 49.071095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073017, 33.631870, 48.987972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220073, 0.058700, 0.973716,
		0.620315, 0.778790, 0.093251,
		-0.752846, 0.624533, -0.207803,
		37.847164, 33.819229, 48.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412045, 33.956902, 49.461842>,  <38.374157, 33.382057, 49.071095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412045, 33.956902, 49.461842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027954, 33.989731, 49.355083>,  <37.797501, 34.009426, 49.291027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027954, 33.989731, 49.355083>,  <38.412045, 33.956902, 49.461842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027954, 33.989731, 49.355083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231110, 0.302852, 0.924591,
		0.156711, 0.949497, -0.271839,
		-0.960224, 0.082069, -0.266898,
		37.739887, 34.014351, 49.275013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167564, 34.499958, 49.774166>,  <38.412045, 33.956902, 49.461842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167564, 34.499958, 49.774166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827110, 34.304459, 49.697536>,  <37.622837, 34.187160, 49.651558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827110, 34.304459, 49.697536>,  <38.167564, 34.499958, 49.774166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827110, 34.304459, 49.697536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425679, 0.429008, 0.796712,
		-0.307202, 0.759657, -0.573191,
		-0.851131, -0.488747, -0.191577,
		37.571770, 34.157833, 49.640064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703098, 34.957279, 49.993561>,  <38.167564, 34.499958, 49.774166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703098, 34.957279, 49.993561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499962, 34.612835, 49.983879>,  <37.378078, 34.406170, 49.978069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499962, 34.612835, 49.983879>,  <37.703098, 34.957279, 49.993561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499962, 34.612835, 49.983879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449728, 0.241055, 0.860022,
		-0.734737, 0.447643, -0.509683,
		-0.507844, -0.861109, -0.024205,
		37.347610, 34.354504, 49.976616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954475, 35.118752, 49.999104>,  <37.703098, 34.957279, 49.993561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954475, 35.118752, 49.999104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003002, 34.748123, 50.141506>,  <37.032116, 34.525745, 50.226948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003002, 34.748123, 50.141506>,  <36.954475, 35.118752, 49.999104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003002, 34.748123, 50.141506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575609, 0.226529, 0.785722,
		-0.808676, -0.300242, -0.505863,
		0.121314, -0.926574, 0.356011,
		37.039398, 34.470150, 50.248310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350849, 35.000153, 50.272316>,  <36.954475, 35.118752, 49.999104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350849, 35.000153, 50.272316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575813, 34.707703, 50.426792>,  <36.710793, 34.532230, 50.519478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575813, 34.707703, 50.426792>,  <36.350849, 35.000153, 50.272316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575813, 34.707703, 50.426792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608556, -0.049802, 0.791947,
		-0.559781, -0.680420, -0.472942,
		0.562410, -0.731129, 0.386195,
		36.744537, 34.488365, 50.542652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865952, 34.629154, 50.590427>,  <36.350849, 35.000153, 50.272316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865952, 34.629154, 50.590427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205509, 34.489510, 50.749176>,  <36.409245, 34.405724, 50.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205509, 34.489510, 50.749176>,  <35.865952, 34.629154, 50.590427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205509, 34.489510, 50.749176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427072, -0.010619, 0.904156,
		-0.311440, -0.937020, -0.158112,
		0.848891, -0.349116, 0.396867,
		36.460175, 34.384773, 50.868237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762032, 33.959362, 50.896557>,  <35.865952, 34.629154, 50.590427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762032, 33.959362, 50.896557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046608, 34.164749, 51.088474>,  <36.217354, 34.287983, 51.203625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046608, 34.164749, 51.088474>,  <35.762032, 33.959362, 50.896557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046608, 34.164749, 51.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574555, 0.031879, 0.817845,
		0.404645, -0.857514, 0.317698,
		0.711441, 0.513471, 0.479789,
		36.260040, 34.318790, 51.232410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770302, 33.791943, 51.524700>,  <35.762032, 33.959362, 50.896557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770302, 33.791943, 51.524700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974079, 34.130989, 51.584045>,  <36.096344, 34.334419, 51.619652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974079, 34.130989, 51.584045>,  <35.770302, 33.791943, 51.524700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974079, 34.130989, 51.584045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464597, 0.125814, 0.876539,
		0.724306, -0.515472, 0.457897,
		0.509441, 0.847620, 0.148359,
		36.126911, 34.385277, 51.628551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028191, 33.821613, 52.225346>,  <35.770302, 33.791943, 51.524700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028191, 33.821613, 52.225346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991840, 34.191216, 52.076775>,  <35.970032, 34.412975, 51.987633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991840, 34.191216, 52.076775>,  <36.028191, 33.821613, 52.225346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991840, 34.191216, 52.076775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583545, 0.252826, 0.771722,
		0.806980, 0.286877, 0.516222,
		-0.090875, 0.924002, -0.371431,
		35.964577, 34.468418, 51.965343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158733, 34.323269, 52.784698>,  <36.028191, 33.821613, 52.225346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158733, 34.323269, 52.784698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944080, 34.544540, 52.529819>,  <35.815289, 34.677303, 52.376892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944080, 34.544540, 52.529819>,  <36.158733, 34.323269, 52.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944080, 34.544540, 52.529819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428591, 0.471797, 0.770531,
		0.726870, 0.686587, -0.016093,
		-0.536629, 0.553178, -0.637200,
		35.783092, 34.710495, 52.338661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219551, 35.028587, 53.079147>,  <36.158733, 34.323269, 52.784698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219551, 35.028587, 53.079147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913864, 35.016121, 52.821465>,  <35.730453, 35.008640, 52.666855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913864, 35.016121, 52.821465>,  <36.219551, 35.028587, 53.079147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913864, 35.016121, 52.821465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531534, 0.596169, 0.601709,
		0.365300, 0.802254, -0.472171,
		-0.764217, -0.031170, -0.644206,
		35.684601, 35.006771, 52.628204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958241, 35.728859, 53.099976>,  <36.219551, 35.028587, 53.079147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958241, 35.728859, 53.099976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650093, 35.526390, 52.944885>,  <35.465206, 35.404911, 52.851830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650093, 35.526390, 52.944885>,  <35.958241, 35.728859, 53.099976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650093, 35.526390, 52.944885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632409, 0.529134, 0.565753,
		-0.081207, 0.681037, -0.727732,
		-0.770366, -0.506168, -0.387725,
		35.418983, 35.374538, 52.828568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281296, 36.394524, 53.470676>,  <35.958241, 35.728859, 53.099976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281296, 36.394524, 53.470676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244617, 36.792683, 53.481812>,  <36.222610, 37.031578, 53.488491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244617, 36.792683, 53.481812>,  <36.281296, 36.394524, 53.470676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244617, 36.792683, 53.481812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442629, 0.065782, -0.894289,
		-0.892004, -0.069682, -0.446624,
		-0.091696, 0.995398, 0.027835,
		36.217110, 37.091301, 53.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960030, 36.590614, 52.848610>,  <36.281296, 36.394524, 53.470676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960030, 36.590614, 52.848610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148880, 36.912327, 52.992962>,  <36.262192, 37.105354, 53.079571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148880, 36.912327, 52.992962>,  <35.960030, 36.590614, 52.848610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148880, 36.912327, 52.992962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386459, 0.179100, -0.904750,
		-0.792304, 0.566622, -0.226263,
		0.472127, 0.804278, 0.360878,
		36.290520, 37.153610, 53.101227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802574, 37.138836, 52.455975>,  <35.960030, 36.590614, 52.848610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802574, 37.138836, 52.455975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151054, 37.188110, 52.646061>,  <36.360142, 37.217674, 52.760113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151054, 37.188110, 52.646061>,  <35.802574, 37.138836, 52.455975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151054, 37.188110, 52.646061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455576, 0.157768, -0.876105,
		-0.182901, 0.979762, 0.081325,
		0.871205, 0.123190, 0.475212,
		36.412415, 37.225067, 52.788624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061218, 37.753586, 52.148533>,  <35.802574, 37.138836, 52.455975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061218, 37.753586, 52.148533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357582, 37.540535, 52.312168>,  <36.535400, 37.412704, 52.410351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357582, 37.540535, 52.312168>,  <36.061218, 37.753586, 52.148533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357582, 37.540535, 52.312168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561023, 0.155997, -0.812968,
		0.369194, 0.831847, 0.414398,
		0.740910, -0.532630, 0.409093,
		36.579857, 37.380745, 52.434895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741508, 38.061268, 51.965336>,  <36.061218, 37.753586, 52.148533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741508, 38.061268, 51.965336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854374, 37.697239, 52.086758>,  <36.922092, 37.478821, 52.159611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854374, 37.697239, 52.086758>,  <36.741508, 38.061268, 51.965336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854374, 37.697239, 52.086758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583445, -0.088394, -0.807328,
		0.761563, 0.404904, 0.506038,
		0.282160, -0.910076, 0.303557,
		36.939022, 37.424217, 52.177826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471500, 38.013027, 51.735012>,  <36.741508, 38.061268, 51.965336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471500, 38.013027, 51.735012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346863, 37.641766, 51.816429>,  <37.272079, 37.419006, 51.865280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346863, 37.641766, 51.816429>,  <37.471500, 38.013027, 51.735012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346863, 37.641766, 51.816429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588861, -0.356737, -0.725246,
		0.745755, -0.106123, 0.657714,
		-0.311596, -0.928158, 0.203547,
		37.253384, 37.363319, 51.877495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094063, 37.659973, 51.775402>,  <37.471500, 38.013027, 51.735012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094063, 37.659973, 51.775402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798244, 37.400074, 51.705082>,  <37.620754, 37.244133, 51.662891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798244, 37.400074, 51.705082>,  <38.094063, 37.659973, 51.775402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798244, 37.400074, 51.705082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583023, -0.487808, -0.649714,
		0.336396, -0.582983, 0.739573,
		-0.739542, -0.649749, -0.175796,
		37.576382, 37.205151, 51.652344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433220, 36.987225, 51.885277>,  <38.094063, 37.659973, 51.775402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433220, 36.987225, 51.885277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116459, 36.937366, 51.646164>,  <37.926403, 36.907452, 51.502697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116459, 36.937366, 51.646164>,  <38.433220, 36.987225, 51.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116459, 36.937366, 51.646164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591873, -0.397527, -0.701184,
		-0.150236, -0.909085, 0.388578,
		-0.791906, -0.124646, -0.597786,
		37.878887, 36.899971, 51.466827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606327, 36.429100, 51.479671>,  <38.433220, 36.987225, 51.885277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606327, 36.429100, 51.479671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295422, 36.585369, 51.282398>,  <38.108879, 36.679131, 51.164036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295422, 36.585369, 51.282398>,  <38.606327, 36.429100, 51.479671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295422, 36.585369, 51.282398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281414, -0.485212, -0.827874,
		-0.562729, -0.782267, 0.267197,
		-0.777266, 0.390676, -0.493184,
		38.062241, 36.702572, 51.134445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444973, 35.897991, 50.927067>,  <38.606327, 36.429100, 51.479671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444973, 35.897991, 50.927067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286285, 36.238716, 50.790230>,  <38.191071, 36.443150, 50.708130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286285, 36.238716, 50.790230>,  <38.444973, 35.897991, 50.927067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286285, 36.238716, 50.790230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208689, -0.279216, -0.937276,
		-0.893901, -0.443230, -0.066993,
		-0.396723, 0.851813, -0.342089,
		38.167267, 36.494259, 50.687603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868374, 35.704926, 50.297127>,  <38.444973, 35.897991, 50.927067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868374, 35.704926, 50.297127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024151, 36.072960, 50.280239>,  <38.117619, 36.293781, 50.270107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024151, 36.072960, 50.280239>,  <37.868374, 35.704926, 50.297127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024151, 36.072960, 50.280239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218573, -0.136847, -0.966177,
		-0.894740, 0.367043, -0.254399,
		0.389442, 0.920083, -0.042217,
		38.140984, 36.348984, 50.267574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827587, 35.936077, 49.654961>,  <37.868374, 35.704926, 50.297127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827587, 35.936077, 49.654961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121460, 36.190235, 49.750061>,  <38.297783, 36.342728, 49.807121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121460, 36.190235, 49.750061>,  <37.827587, 35.936077, 49.654961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121460, 36.190235, 49.750061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197577, 0.134871, -0.970965,
		-0.649008, 0.760321, -0.026452,
		0.734678, 0.635391, 0.237754,
		38.341862, 36.380852, 49.821388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871315, 36.371769, 49.065342>,  <37.827587, 35.936077, 49.654961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871315, 36.371769, 49.065342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211643, 36.478767, 49.246250>,  <38.415840, 36.542965, 49.354794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211643, 36.478767, 49.246250>,  <37.871315, 36.371769, 49.065342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211643, 36.478767, 49.246250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430997, 0.137080, -0.891880,
		-0.300573, 0.953758, 0.001340,
		0.850821, 0.267497, 0.452270,
		38.466888, 36.559017, 49.381931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074230, 37.013447, 48.874859>,  <37.871315, 36.371769, 49.065342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074230, 37.013447, 48.874859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407436, 36.824917, 48.990749>,  <38.607361, 36.711800, 49.060284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407436, 36.824917, 48.990749>,  <38.074230, 37.013447, 48.874859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407436, 36.824917, 48.990749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412893, 0.181043, -0.892604,
		0.368254, 0.863178, 0.345418,
		0.833011, -0.471326, 0.289731,
		38.657341, 36.683517, 49.077667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680641, 37.347996, 48.522007>,  <38.074230, 37.013447, 48.874859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680641, 37.347996, 48.522007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817715, 36.991016, 48.639381>,  <38.899960, 36.776829, 48.709805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817715, 36.991016, 48.639381>,  <38.680641, 37.347996, 48.522007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817715, 36.991016, 48.639381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476992, -0.103805, -0.872756,
		0.809350, 0.439044, 0.390119,
		0.342682, -0.892449, 0.293435,
		38.920521, 36.723282, 48.727413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404156, 37.373447, 48.383266>,  <38.680641, 37.347996, 48.522007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404156, 37.373447, 48.383266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339764, 36.979496, 48.408859>,  <39.301128, 36.743126, 48.424217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339764, 36.979496, 48.408859>,  <39.404156, 37.373447, 48.383266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339764, 36.979496, 48.408859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506536, -0.138088, -0.851089,
		0.847057, -0.104600, 0.521107,
		-0.160982, -0.984881, 0.063985,
		39.291470, 36.684032, 48.428055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006142, 37.101997, 48.105167>,  <39.404156, 37.373447, 48.383266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006142, 37.101997, 48.105167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742290, 36.801380, 48.101460>,  <39.583981, 36.621010, 48.099236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742290, 36.801380, 48.101460>,  <40.006142, 37.101997, 48.105167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742290, 36.801380, 48.101460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316765, -0.266799, -0.910208,
		0.681584, -0.603331, 0.414048,
		-0.659624, -0.751539, -0.009268,
		39.544403, 36.575920, 48.098679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332241, 36.540585, 47.838455>,  <40.006142, 37.101997, 48.105167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332241, 36.540585, 47.838455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948471, 36.451733, 47.768986>,  <39.718208, 36.398422, 47.727303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948471, 36.451733, 47.768986>,  <40.332241, 36.540585, 47.838455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948471, 36.451733, 47.768986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221373, -0.211930, -0.951882,
		0.174631, -0.951707, 0.252504,
		-0.959426, -0.222126, -0.173673,
		39.660645, 36.385094, 47.716885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348625, 36.009285, 47.419968>,  <40.332241, 36.540585, 47.838455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348625, 36.009285, 47.419968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979141, 36.149570, 47.358303>,  <39.757450, 36.233742, 47.321304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979141, 36.149570, 47.358303>,  <40.348625, 36.009285, 47.419968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979141, 36.149570, 47.358303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035687, -0.321893, -0.946103,
		-0.381436, -0.879423, 0.284819,
		-0.923706, 0.350714, -0.154166,
		39.702030, 36.254784, 47.312054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993504, 35.585285, 46.969955>,  <40.348625, 36.009285, 47.419968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993504, 35.585285, 46.969955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775444, 35.918083, 46.928768>,  <39.644608, 36.117760, 46.904057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775444, 35.918083, 46.928768>,  <39.993504, 35.585285, 46.969955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775444, 35.918083, 46.928768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107733, -0.191332, -0.975595,
		-0.831390, -0.520749, 0.193937,
		-0.545147, 0.831993, -0.102970,
		39.611900, 36.167683, 46.897877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475037, 35.429169, 46.616627>,  <39.993504, 35.585285, 46.969955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475037, 35.429169, 46.616627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450600, 35.823189, 46.552189>,  <39.435936, 36.059601, 46.513527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450600, 35.823189, 46.552189>,  <39.475037, 35.429169, 46.616627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450600, 35.823189, 46.552189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284537, -0.171887, -0.943129,
		-0.956716, -0.011783, 0.290784,
		-0.061095, 0.985046, -0.161095,
		39.432270, 36.118702, 46.503860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921963, 35.500710, 46.149246>,  <39.475037, 35.429169, 46.616627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921963, 35.500710, 46.149246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140636, 35.835159, 46.131252>,  <39.271843, 36.035831, 46.120457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140636, 35.835159, 46.131252>,  <38.921963, 35.500710, 46.149246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140636, 35.835159, 46.131252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337514, 0.170873, -0.925682,
		-0.766302, 0.521241, 0.375619,
		0.546687, 0.836128, -0.044986,
		39.304642, 36.085999, 46.117756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539730, 36.028797, 45.816292>,  <38.921963, 35.500710, 46.149246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539730, 36.028797, 45.816292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910568, 36.169193, 45.763672>,  <39.133072, 36.253429, 45.732101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910568, 36.169193, 45.763672>,  <38.539730, 36.028797, 45.816292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910568, 36.169193, 45.763672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210559, 0.197308, -0.957462,
		-0.310104, 0.915356, 0.256827,
		0.927092, 0.350990, -0.131551,
		39.188698, 36.274490, 45.724205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513515, 36.659039, 45.372253>,  <38.539730, 36.028797, 45.816292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513515, 36.659039, 45.372253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890404, 36.531586, 45.330883>,  <39.116535, 36.455116, 45.306061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890404, 36.531586, 45.330883>,  <38.513515, 36.659039, 45.372253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890404, 36.531586, 45.330883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041770, 0.194597, -0.979994,
		0.332381, 0.927689, 0.170044,
		0.942220, -0.318629, -0.103430,
		39.173069, 36.435997, 45.299854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742737, 36.955376, 44.760471>,  <38.513515, 36.659039, 45.372253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742737, 36.955376, 44.760471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042019, 36.695328, 44.813450>,  <39.221588, 36.539299, 44.845238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042019, 36.695328, 44.813450>,  <38.742737, 36.955376, 44.760471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042019, 36.695328, 44.813450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204457, 0.036016, -0.978213,
		0.631184, 0.758979, 0.159868,
		0.748201, -0.650118, 0.132445,
		39.266479, 36.500294, 44.853184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218262, 37.147453, 44.201187>,  <38.742737, 36.955376, 44.760471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218262, 37.147453, 44.201187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341969, 36.783894, 44.313087>,  <39.416191, 36.565758, 44.380230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341969, 36.783894, 44.313087>,  <39.218262, 37.147453, 44.201187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341969, 36.783894, 44.313087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009421, -0.291233, -0.956606,
		0.950928, 0.298484, -0.081507,
		0.309268, -0.908895, 0.279754,
		39.434750, 36.511227, 44.397015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886063, 37.083637, 43.931244>,  <39.218262, 37.147453, 44.201187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886063, 37.083637, 43.931244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720772, 36.723461, 43.985580>,  <39.621597, 36.507355, 44.018185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720772, 36.723461, 43.985580>,  <39.886063, 37.083637, 43.931244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720772, 36.723461, 43.985580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130690, -0.206273, -0.969728,
		0.901202, -0.382963, 0.202916,
		-0.413226, -0.900439, 0.135844,
		39.596806, 36.453331, 44.026333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435741, 36.637642, 43.757423>,  <39.886063, 37.083637, 43.931244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435741, 36.637642, 43.757423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103321, 36.417908, 43.722591>,  <39.903870, 36.286064, 43.701691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103321, 36.417908, 43.722591>,  <40.435741, 36.637642, 43.757423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103321, 36.417908, 43.722591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307568, -0.323438, -0.894868,
		0.463422, -0.770463, 0.437753,
		-0.831049, -0.549340, -0.087081,
		39.854008, 36.253105, 43.696468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709297, 36.038059, 43.599155>,  <40.435741, 36.637642, 43.757423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709297, 36.038059, 43.599155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328056, 36.050831, 43.478771>,  <40.099312, 36.058495, 43.406540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328056, 36.050831, 43.478771>,  <40.709297, 36.038059, 43.599155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328056, 36.050831, 43.478771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289814, -0.190244, -0.937985,
		-0.087205, -0.981217, 0.172068,
		-0.953102, 0.031929, -0.300961,
		40.042126, 36.060410, 43.388481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692440, 35.547729, 43.091213>,  <40.709297, 36.038059, 43.599155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692440, 35.547729, 43.091213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363190, 35.761547, 43.014549>,  <40.165638, 35.889835, 42.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363190, 35.761547, 43.014549>,  <40.692440, 35.547729, 43.091213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363190, 35.761547, 43.014549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089413, -0.211297, -0.973324,
		-0.560777, -0.818303, 0.126129,
		-0.823125, 0.534540, -0.191658,
		40.116253, 35.921909, 42.957050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555260, 35.180176, 42.528671>,  <40.692440, 35.547729, 43.091213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555260, 35.180176, 42.528671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324238, 35.504875, 42.494053>,  <40.185627, 35.699696, 42.473282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324238, 35.504875, 42.494053>,  <40.555260, 35.180176, 42.528671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324238, 35.504875, 42.494053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242310, 0.069221, -0.967727,
		-0.779564, -0.579884, -0.236674,
		-0.577552, 0.811753, -0.086549,
		40.150970, 35.748402, 42.468086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039791, 35.065639, 41.969398>,  <40.555260, 35.180176, 42.528671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039791, 35.065639, 41.969398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063450, 35.461784, 42.019493>,  <40.077644, 35.699471, 42.049549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063450, 35.461784, 42.019493>,  <40.039791, 35.065639, 41.969398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063450, 35.461784, 42.019493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160860, 0.114361, -0.980329,
		-0.985203, 0.078130, -0.152545,
		0.059148, 0.990362, 0.125237,
		40.081196, 35.758892, 42.057064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528915, 35.496868, 41.460133>,  <40.039791, 35.065639, 41.969398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528915, 35.496868, 41.460133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805271, 35.762260, 41.575005>,  <39.971085, 35.921494, 41.643929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805271, 35.762260, 41.575005>,  <39.528915, 35.496868, 41.460133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805271, 35.762260, 41.575005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305485, 0.092116, -0.947731,
		-0.655254, 0.742503, -0.139041,
		0.690885, 0.663479, 0.287183,
		40.012535, 35.961304, 41.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570999, 35.954277, 40.858154>,  <39.528915, 35.496868, 41.460133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570999, 35.954277, 40.858154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891632, 36.077286, 41.063251>,  <40.084011, 36.151089, 41.186310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891632, 36.077286, 41.063251>,  <39.570999, 35.954277, 40.858154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891632, 36.077286, 41.063251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445043, 0.265787, -0.855157,
		-0.399255, 0.913668, 0.076191,
		0.801581, 0.307518, 0.512739,
		40.132107, 36.169540, 41.217072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706226, 36.702236, 40.882835>,  <39.570999, 35.954277, 40.858154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706226, 36.702236, 40.882835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038837, 36.482555, 40.916164>,  <40.238403, 36.350746, 40.936161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038837, 36.482555, 40.916164>,  <39.706226, 36.702236, 40.882835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038837, 36.482555, 40.916164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355802, 0.411399, -0.839140,
		0.426574, 0.727415, 0.537496,
		0.831528, -0.549197, 0.083324,
		40.288296, 36.317795, 40.941162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209679, 37.113956, 40.583649>,  <39.706226, 36.702236, 40.882835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209679, 37.113956, 40.583649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400669, 36.763546, 40.610767>,  <40.515263, 36.553299, 40.627037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400669, 36.763546, 40.610767>,  <40.209679, 37.113956, 40.583649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400669, 36.763546, 40.610767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509096, 0.212945, -0.833952,
		0.716126, 0.432707, 0.547657,
		0.477478, -0.876025, 0.067794,
		40.543911, 36.500740, 40.631107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757118, 37.208046, 40.168442>,  <40.209679, 37.113956, 40.583649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757118, 37.208046, 40.168442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776936, 36.810364, 40.206589>,  <40.788826, 36.571754, 40.229477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776936, 36.810364, 40.206589>,  <40.757118, 37.208046, 40.168442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776936, 36.810364, 40.206589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310059, -0.075454, -0.947718,
		0.949426, 0.076517, 0.304526,
		0.049539, -0.994209, 0.095363,
		40.791798, 36.512100, 40.235199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398415, 37.094975, 39.854111>,  <40.757118, 37.208046, 40.168442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398415, 37.094975, 39.854111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176182, 36.762440, 39.859821>,  <41.042843, 36.562920, 39.863247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176182, 36.762440, 39.859821>,  <41.398415, 37.094975, 39.854111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176182, 36.762440, 39.859821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195245, -0.147128, -0.969656,
		0.808214, -0.535935, 0.244057,
		-0.555580, -0.831341, 0.014272,
		41.009506, 36.513039, 39.864101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752151, 36.559006, 39.611038>,  <41.398415, 37.094975, 39.854111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752151, 36.559006, 39.611038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385490, 36.409569, 39.554214>,  <41.165493, 36.319908, 39.520119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385490, 36.409569, 39.554214>,  <41.752151, 36.559006, 39.611038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385490, 36.409569, 39.554214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199210, -0.118904, -0.972716,
		0.346506, -0.919941, 0.183417,
		-0.916651, -0.373590, -0.142061,
		41.110497, 36.297493, 39.511597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786839, 35.980415, 39.077927>,  <41.752151, 36.559006, 39.611038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786839, 35.980415, 39.077927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407173, 36.106297, 39.075138>,  <41.179375, 36.181828, 39.073463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407173, 36.106297, 39.075138>,  <41.786839, 35.980415, 39.077927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407173, 36.106297, 39.075138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015053, 0.023249, -0.999617,
		-0.314423, -0.948905, -0.026805,
		-0.949164, 0.314705, -0.006974,
		41.122425, 36.200706, 39.073048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463856, 35.608292, 38.575226>,  <41.786839, 35.980415, 39.077927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463856, 35.608292, 38.575226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199070, 35.904438, 38.621975>,  <41.040199, 36.082127, 38.650024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199070, 35.904438, 38.621975>,  <41.463856, 35.608292, 38.575226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199070, 35.904438, 38.621975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006475, 0.150267, -0.988624,
		-0.749505, -0.655194, -0.094678,
		-0.661968, 0.740365, 0.116869,
		41.000481, 36.126549, 38.657036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032837, 35.591450, 38.008286>,  <41.463856, 35.608292, 38.575226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032837, 35.591450, 38.008286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971607, 35.974800, 38.104694>,  <40.934872, 36.204811, 38.162540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971607, 35.974800, 38.104694>,  <41.032837, 35.591450, 38.008286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971607, 35.974800, 38.104694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271433, 0.193738, -0.942756,
		-0.950207, -0.209729, 0.230479,
		-0.153071, 0.958373, 0.241019,
		40.925686, 36.262314, 38.177002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238861, 35.861996, 37.833843>,  <41.032837, 35.591450, 38.008286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238861, 35.861996, 37.833843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525501, 36.140968, 37.837421>,  <40.697487, 36.308350, 37.839569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525501, 36.140968, 37.837421>,  <40.238861, 35.861996, 37.833843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525501, 36.140968, 37.837421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278871, 0.298247, -0.912841,
		-0.639309, 0.651647, 0.408216,
		0.716600, 0.697427, 0.008947,
		40.740482, 36.350197, 37.840107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964432, 36.408360, 37.700794>,  <40.238861, 35.861996, 37.833843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964432, 36.408360, 37.700794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333885, 36.427853, 37.548725>,  <40.555557, 36.439548, 37.457485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333885, 36.427853, 37.548725>,  <39.964432, 36.408360, 37.700794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333885, 36.427853, 37.548725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381939, 0.200080, -0.902270,
		0.032092, 0.978567, 0.203414,
		0.923630, 0.048736, -0.380174,
		40.610973, 36.442474, 37.434673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979870, 36.927551, 37.182003>,  <39.964432, 36.408360, 37.700794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979870, 36.927551, 37.182003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315884, 36.731586, 37.088768>,  <40.517490, 36.614006, 37.032825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315884, 36.731586, 37.088768>,  <39.979870, 36.927551, 37.182003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315884, 36.731586, 37.088768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191633, 0.133995, -0.972277,
		0.507567, 0.861410, 0.018675,
		0.840031, -0.489917, -0.233086,
		40.567894, 36.584610, 37.018841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307041, 37.388817, 36.689690>,  <39.979870, 36.927551, 37.182003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307041, 37.388817, 36.689690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491589, 37.034016, 36.682045>,  <40.602318, 36.821136, 36.677460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491589, 37.034016, 36.682045>,  <40.307041, 37.388817, 36.689690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491589, 37.034016, 36.682045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015327, 0.029506, -0.999447,
		0.887074, 0.460825, 0.027209,
		0.461373, -0.887001, -0.019111,
		40.630001, 36.767914, 36.676311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045017, 37.278706, 36.468525>,  <40.307041, 37.388817, 36.689690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045017, 37.278706, 36.468525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825703, 36.956219, 36.379627>,  <40.694115, 36.762726, 36.326290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825703, 36.956219, 36.379627>,  <41.045017, 37.278706, 36.468525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825703, 36.956219, 36.379627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131822, 0.179108, -0.974958,
		0.825837, -0.563851, 0.008075,
		-0.548285, -0.806221, -0.222241,
		40.661217, 36.714352, 36.312954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439281, 36.679726, 36.021538>,  <41.045017, 37.278706, 36.468525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439281, 36.679726, 36.021538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055565, 36.776833, 35.963818>,  <40.825333, 36.835098, 35.929188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055565, 36.776833, 35.963818>,  <41.439281, 36.679726, 36.021538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055565, 36.776833, 35.963818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171097, 0.093094, -0.980846,
		-0.224684, -0.965607, -0.130841,
		-0.959293, 0.242767, -0.144296,
		40.767776, 36.849663, 35.920528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748024, 36.183506, 36.393932>,  <41.439281, 36.679726, 36.021538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748024, 36.183506, 36.393932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121777, 36.041008, 36.392151>,  <42.346027, 35.955509, 36.391083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121777, 36.041008, 36.392151>,  <41.748024, 36.183506, 36.393932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121777, 36.041008, 36.392151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191246, -0.490993, -0.849912,
		0.300587, 0.794996, -0.526905,
		0.934384, -0.356241, -0.004454,
		42.402092, 35.934135, 36.390816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069611, 36.384140, 35.768139>,  <41.748024, 36.183506, 36.393932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069611, 36.384140, 35.768139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284992, 36.073357, 35.898621>,  <42.414223, 35.886887, 35.976910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284992, 36.073357, 35.898621>,  <42.069611, 36.384140, 35.768139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284992, 36.073357, 35.898621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053567, -0.417887, -0.906918,
		0.840950, 0.470861, -0.266632,
		0.538455, -0.776956, 0.326200,
		42.446529, 35.840271, 35.996479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514515, 36.223339, 35.283627>,  <42.069611, 36.384140, 35.768139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514515, 36.223339, 35.283627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518410, 35.881813, 35.491821>,  <42.520748, 35.676899, 35.616737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518410, 35.881813, 35.491821>,  <42.514515, 36.223339, 35.283627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518410, 35.881813, 35.491821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000734, -0.520515, -0.853852,
		0.999952, 0.007934, -0.005696,
		0.009740, -0.853816, 0.520484,
		42.521332, 35.625668, 35.647968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935368, 35.820583, 34.890823>,  <42.514515, 36.223339, 35.283627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935368, 35.820583, 34.890823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760147, 35.557594, 35.136047>,  <42.655014, 35.399803, 35.283180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760147, 35.557594, 35.136047>,  <42.935368, 35.820583, 34.890823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760147, 35.557594, 35.136047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144421, -0.621646, -0.769869,
		0.887272, -0.425783, 0.177362,
		-0.438053, -0.657469, 0.613061,
		42.628731, 35.360355, 35.319965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247623, 35.200123, 34.793549>,  <42.935368, 35.820583, 34.890823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247623, 35.200123, 34.793549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883209, 35.114483, 34.934502>,  <42.664558, 35.063099, 35.019073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883209, 35.114483, 34.934502>,  <43.247623, 35.200123, 34.793549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883209, 35.114483, 34.934502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149925, -0.624115, -0.766813,
		0.384101, -0.751426, 0.536493,
		-0.911037, -0.214100, 0.352381,
		42.609898, 35.050251, 35.040215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162678, 34.453579, 34.625465>,  <43.247623, 35.200123, 34.793549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162678, 34.453579, 34.625465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814613, 34.642452, 34.681850>,  <42.605774, 34.755775, 34.715683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814613, 34.642452, 34.681850>,  <43.162678, 34.453579, 34.625465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814613, 34.642452, 34.681850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327252, -0.339858, -0.881705,
		-0.368424, -0.813349, 0.450253,
		-0.870155, 0.472187, 0.140958,
		42.553566, 34.784107, 34.724140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678833, 33.925385, 34.556499>,  <43.162678, 34.453579, 34.625465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678833, 33.925385, 34.556499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474312, 34.259167, 34.474270>,  <42.351601, 34.459435, 34.424931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474312, 34.259167, 34.474270>,  <42.678833, 33.925385, 34.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474312, 34.259167, 34.474270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320123, -0.406922, -0.855533,
		-0.797555, -0.371624, 0.475187,
		-0.511300, 0.834452, -0.205576,
		42.320923, 34.509502, 34.412598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010109, 33.618973, 34.430195>,  <42.678833, 33.925385, 34.556499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010109, 33.618973, 34.430195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983170, 33.992012, 34.288361>,  <41.967007, 34.215836, 34.203259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983170, 33.992012, 34.288361>,  <42.010109, 33.618973, 34.430195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983170, 33.992012, 34.288361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393482, -0.351414, -0.849518,
		-0.916862, 0.082307, 0.390627,
		-0.067350, 0.932595, -0.354584,
		41.962963, 34.271790, 34.181984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344402, 33.692360, 34.107655>,  <42.010109, 33.618973, 34.430195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344402, 33.692360, 34.107655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551369, 33.989204, 33.937218>,  <41.675549, 34.167309, 33.834953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551369, 33.989204, 33.937218>,  <41.344402, 33.692360, 34.107655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551369, 33.989204, 33.937218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392696, -0.236493, -0.888741,
		-0.760311, 0.627174, 0.169058,
		0.517414, 0.742108, -0.426097,
		41.706593, 34.211838, 33.809387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898190, 34.076649, 33.780964>,  <41.344402, 33.692360, 34.107655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898190, 34.076649, 33.780964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244343, 34.151936, 33.595196>,  <41.452034, 34.197109, 33.483734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244343, 34.151936, 33.595196>,  <40.898190, 34.076649, 33.780964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244343, 34.151936, 33.595196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446990, -0.129008, -0.885187,
		-0.226525, 0.973617, -0.027509,
		0.865382, 0.188221, -0.464421,
		41.503956, 34.208401, 33.455868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750481, 34.425926, 33.262592>,  <40.898190, 34.076649, 33.780964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750481, 34.425926, 33.262592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113678, 34.317055, 33.135178>,  <41.331596, 34.251732, 33.058731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113678, 34.317055, 33.135178>,  <40.750481, 34.425926, 33.262592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113678, 34.317055, 33.135178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383297, -0.232587, -0.893861,
		0.169206, 0.933713, -0.315515,
		0.907994, -0.272182, -0.318534,
		41.386078, 34.235401, 33.039616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853397, 34.658092, 32.512981>,  <40.750481, 34.425926, 33.262592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853397, 34.658092, 32.512981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137245, 34.377594, 32.540382>,  <41.307552, 34.209293, 32.556824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137245, 34.377594, 32.540382>,  <40.853397, 34.658092, 32.512981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137245, 34.377594, 32.540382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237936, -0.330010, -0.913499,
		0.663195, 0.631938, -0.401033,
		0.709619, -0.701248, 0.068500,
		41.350132, 34.167221, 32.560932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217464, 34.581928, 31.809046>,  <40.853397, 34.658092, 32.512981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217464, 34.581928, 31.809046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292702, 34.231239, 31.986122>,  <41.337845, 34.020824, 32.092369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292702, 34.231239, 31.986122>,  <41.217464, 34.581928, 31.809046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292702, 34.231239, 31.986122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199495, -0.475442, -0.856829,
		0.961678, 0.072846, -0.264328,
		0.188089, -0.876726, 0.442690,
		41.349129, 33.968220, 32.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610950, 34.274857, 31.371479>,  <41.217464, 34.581928, 31.809046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610950, 34.274857, 31.371479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475464, 33.982063, 31.607944>,  <41.394173, 33.806389, 31.749825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475464, 33.982063, 31.607944>,  <41.610950, 34.274857, 31.371479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475464, 33.982063, 31.607944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305273, -0.508817, -0.804931,
		0.889988, -0.453110, -0.051109,
		-0.338717, -0.731982, 0.591163,
		41.373848, 33.762470, 31.785294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828503, 33.623943, 31.114212>,  <41.610950, 34.274857, 31.371479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828503, 33.623943, 31.114212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531742, 33.471428, 31.334831>,  <41.353687, 33.379917, 31.467203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531742, 33.471428, 31.334831>,  <41.828503, 33.623943, 31.114212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531742, 33.471428, 31.334831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384857, -0.431434, -0.815935,
		0.549067, -0.817607, 0.173337,
		-0.741897, -0.381293, 0.551548,
		41.309174, 33.357040, 31.500296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847595, 32.903030, 30.926464>,  <41.828503, 33.623943, 31.114212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847595, 32.903030, 30.926464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488056, 32.943333, 31.097076>,  <41.272335, 32.967514, 31.199444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488056, 32.943333, 31.097076>,  <41.847595, 32.903030, 30.926464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488056, 32.943333, 31.097076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387156, -0.638642, -0.665016,
		0.205397, -0.762879, 0.613048,
		-0.898845, 0.100753, 0.426528,
		41.218403, 32.973560, 31.225035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545002, 32.199860, 30.882627>,  <41.847595, 32.903030, 30.926464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545002, 32.199860, 30.882627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252197, 32.463463, 30.951767>,  <41.076515, 32.621624, 30.993252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252197, 32.463463, 30.951767>,  <41.545002, 32.199860, 30.882627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252197, 32.463463, 30.951767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607639, -0.516768, -0.603097,
		-0.308121, -0.546501, 0.778715,
		-0.732008, 0.659005, 0.172849,
		41.032593, 32.661163, 31.003622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024841, 31.822651, 31.080368>,  <41.545002, 32.199860, 30.882627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024841, 31.822651, 31.080368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867203, 32.165527, 30.947758>,  <40.772617, 32.371254, 30.868191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867203, 32.165527, 30.947758>,  <41.024841, 31.822651, 31.080368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867203, 32.165527, 30.947758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532882, -0.507015, -0.677475,
		-0.748814, -0.090328, 0.656596,
		-0.394099, 0.857191, -0.331526,
		40.748974, 32.422684, 30.848299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292343, 31.697500, 30.969711>,  <41.024841, 31.822651, 31.080368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292343, 31.697500, 30.969711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397953, 32.017254, 30.753830>,  <40.461319, 32.209106, 30.624302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397953, 32.017254, 30.753830>,  <40.292343, 31.697500, 30.969711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397953, 32.017254, 30.753830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424535, -0.406125, -0.809217,
		-0.866061, 0.442775, 0.232140,
		0.264023, 0.799383, -0.539702,
		40.477161, 32.257069, 30.591919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771973, 31.724844, 30.524708>,  <40.292343, 31.697500, 30.969711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771973, 31.724844, 30.524708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039146, 31.977636, 30.367504>,  <40.199451, 32.129311, 30.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039146, 31.977636, 30.367504>,  <39.771973, 31.724844, 30.524708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039146, 31.977636, 30.367504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388287, -0.154576, -0.908482,
		-0.634895, 0.759410, 0.142143,
		0.667939, 0.631983, -0.393009,
		40.239529, 32.167233, 30.249601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380848, 32.145683, 30.109295>,  <39.771973, 31.724844, 30.524708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380848, 32.145683, 30.109295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760521, 32.117859, 29.986521>,  <39.988327, 32.101166, 29.912855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760521, 32.117859, 29.986521>,  <39.380848, 32.145683, 30.109295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760521, 32.117859, 29.986521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309412, -0.027879, -0.950519,
		0.057560, 0.997188, -0.047984,
		0.949185, -0.069558, -0.306937,
		40.045277, 32.096992, 29.894440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510056, 32.699005, 29.691240>,  <39.380848, 32.145683, 30.109295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510056, 32.699005, 29.691240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716717, 32.365276, 29.614323>,  <39.840714, 32.165039, 29.568172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716717, 32.365276, 29.614323>,  <39.510056, 32.699005, 29.691240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716717, 32.365276, 29.614323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476135, -0.093310, -0.874408,
		0.711595, 0.543322, -0.445459,
		0.516651, -0.834323, -0.192296,
		39.871712, 32.114979, 29.556635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003559, 32.647888, 29.097094>,  <39.510056, 32.699005, 29.691240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003559, 32.647888, 29.097094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873035, 32.274643, 29.157511>,  <39.794720, 32.050694, 29.193762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873035, 32.274643, 29.157511>,  <40.003559, 32.647888, 29.097094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873035, 32.274643, 29.157511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427277, 0.003070, -0.904115,
		0.843182, -0.359561, -0.399701,
		-0.326311, -0.933117, 0.151043,
		39.775143, 31.994707, 29.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271099, 32.123646, 28.554775>,  <40.003559, 32.647888, 29.097094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271099, 32.123646, 28.554775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908073, 32.048557, 28.705025>,  <39.690258, 32.003506, 28.795176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908073, 32.048557, 28.705025>,  <40.271099, 32.123646, 28.554775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908073, 32.048557, 28.705025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375438, -0.037946, -0.926071,
		0.188097, -0.981489, -0.036039,
		-0.907560, -0.187721, 0.375625,
		39.635803, 31.992241, 28.817713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601967, 32.116444, 27.824400>,  <40.271099, 32.123646, 28.554775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601967, 32.116444, 27.824400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726955, 31.874464, 28.117357>,  <40.801949, 31.729277, 28.293133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726955, 31.874464, 28.117357>,  <40.601967, 32.116444, 27.824400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726955, 31.874464, 28.117357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700500, 0.667498, 0.252481,
		-0.641609, 0.434151, 0.632337,
		0.312469, -0.604946, 0.732395,
		40.820698, 31.692980, 28.337076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081841, 32.753315, 28.019075>,  <40.601967, 32.116444, 27.824400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081841, 32.753315, 28.019075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290722, 33.068829, 28.148769>,  <41.416050, 33.258137, 28.226585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290722, 33.068829, 28.148769>,  <41.081841, 32.753315, 28.019075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290722, 33.068829, 28.148769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629737, -0.100273, -0.770309,
		-0.575092, 0.606443, -0.549087,
		0.522207, 0.788779, 0.324233,
		41.447384, 33.305462, 28.246038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103626, 33.362316, 27.604292>,  <41.081841, 32.753315, 28.019075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103626, 33.362316, 27.604292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431202, 33.301292, 27.825584>,  <41.627747, 33.264679, 27.958361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431202, 33.301292, 27.825584>,  <41.103626, 33.362316, 27.604292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431202, 33.301292, 27.825584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508233, -0.254925, -0.822625,
		0.266533, 0.954850, -0.131231,
		0.818938, -0.152561, 0.553232,
		41.676884, 33.255524, 27.991554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597363, 33.867199, 27.374836>,  <41.103626, 33.362316, 27.604292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597363, 33.867199, 27.374836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739456, 33.521133, 27.516426>,  <41.824715, 33.313496, 27.601379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739456, 33.521133, 27.516426>,  <41.597363, 33.867199, 27.374836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739456, 33.521133, 27.516426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452737, -0.172059, -0.874886,
		0.817824, 0.471049, 0.330570,
		0.355237, -0.865164, 0.353975,
		41.846027, 33.261585, 27.622620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832302, 34.389568, 27.894274>,  <41.597363, 33.867199, 27.374836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832302, 34.389568, 27.894274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464451, 34.292171, 27.770990>,  <41.243740, 34.233734, 27.697020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464451, 34.292171, 27.770990>,  <41.832302, 34.389568, 27.894274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464451, 34.292171, 27.770990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135085, -0.932872, 0.333920,
		-0.368827, 0.265448, 0.890788,
		-0.919630, -0.243491, -0.308210,
		41.188560, 34.219124, 27.678528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207420, 35.000908, 27.674692>,  <41.832302, 34.389568, 27.894274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207420, 35.000908, 27.674692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162029, 35.395206, 27.625008>,  <42.134796, 35.631786, 27.595198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162029, 35.395206, 27.625008>,  <42.207420, 35.000908, 27.674692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162029, 35.395206, 27.625008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482117, 0.163944, 0.860631,
		0.868727, 0.037774, -0.493848,
		-0.113473, 0.985746, -0.124211,
		42.127987, 35.690929, 27.587744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839397, 35.555538, 27.512300>,  <42.207420, 35.000908, 27.674692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839397, 35.555538, 27.512300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535019, 35.712303, 27.719133>,  <42.352394, 35.806362, 27.843233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535019, 35.712303, 27.719133>,  <42.839397, 35.555538, 27.512300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535019, 35.712303, 27.719133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612667, 0.171714, 0.771462,
		0.213552, 0.903838, -0.370774,
		-0.760943, 0.391908, 0.517081,
		42.306736, 35.829876, 27.874258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190495, 35.812912, 28.035582>,  <42.839397, 35.555538, 27.512300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190495, 35.812912, 28.035582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816647, 35.836758, 28.175831>,  <42.592339, 35.851067, 28.259981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816647, 35.836758, 28.175831>,  <43.190495, 35.812912, 28.035582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816647, 35.836758, 28.175831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352843, 0.279149, 0.893072,
		-0.044636, 0.958395, -0.281933,
		-0.934617, 0.059615, 0.350623,
		42.536263, 35.854641, 28.281017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114590, 36.440002, 28.342964>,  <43.190495, 35.812912, 28.035582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114590, 36.440002, 28.342964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801140, 36.248833, 28.501720>,  <42.613071, 36.134129, 28.596975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801140, 36.248833, 28.501720>,  <43.114590, 36.440002, 28.342964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801140, 36.248833, 28.501720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249396, 0.343117, 0.905578,
		-0.568980, 0.808614, -0.149680,
		-0.783622, -0.477926, 0.396892,
		42.566051, 36.105453, 28.620789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857803, 36.877831, 28.869967>,  <43.114590, 36.440002, 28.342964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857803, 36.877831, 28.869967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756660, 36.506622, 28.979399>,  <42.695976, 36.283897, 29.045059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756660, 36.506622, 28.979399>,  <42.857803, 36.877831, 28.869967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756660, 36.506622, 28.979399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447935, 0.138351, 0.883297,
		-0.857566, 0.345891, 0.380710,
		-0.252853, -0.928018, 0.273582,
		42.680805, 36.228218, 29.061474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575802, 36.954411, 29.671429>,  <42.857803, 36.877831, 28.869967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575802, 36.954411, 29.671429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646034, 36.565586, 29.609114>,  <42.688175, 36.332291, 29.571724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646034, 36.565586, 29.609114>,  <42.575802, 36.954411, 29.671429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646034, 36.565586, 29.609114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612557, -0.016006, 0.790264,
		-0.770678, -0.234184, 0.592632,
		0.175581, -0.972061, -0.155787,
		42.698708, 36.273968, 29.562378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373516, 36.569305, 30.206045>,  <42.575802, 36.954411, 29.671429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373516, 36.569305, 30.206045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650166, 36.332512, 30.040535>,  <42.816154, 36.190434, 29.941229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650166, 36.332512, 30.040535>,  <42.373516, 36.569305, 30.206045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650166, 36.332512, 30.040535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450089, -0.094792, 0.887938,
		-0.564871, -0.800354, 0.200886,
		0.691622, -0.591987, -0.413776,
		42.857651, 36.154915, 29.916403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431408, 36.067760, 30.692741>,  <42.373516, 36.569305, 30.206045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431408, 36.067760, 30.692741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773548, 36.056404, 30.485830>,  <42.978832, 36.049591, 30.361683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773548, 36.056404, 30.485830>,  <42.431408, 36.067760, 30.692741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773548, 36.056404, 30.485830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496705, -0.238760, 0.834432,
		-0.147194, -0.970663, -0.190122,
		0.855347, -0.028389, -0.517278,
		43.030151, 36.047886, 30.330647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845001, 35.445545, 30.943590>,  <42.431408, 36.067760, 30.692741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845001, 35.445545, 30.943590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109985, 35.699409, 30.784418>,  <43.268974, 35.851730, 30.688915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109985, 35.699409, 30.784418>,  <42.845001, 35.445545, 30.943590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109985, 35.699409, 30.784418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650286, -0.223531, 0.726059,
		0.371853, -0.739754, -0.560793,
		0.662460, 0.634663, -0.397931,
		43.308723, 35.889809, 30.665039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526382, 35.113625, 31.179369>,  <42.845001, 35.445545, 30.943590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526382, 35.113625, 31.179369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595051, 35.487888, 31.056038>,  <43.636253, 35.712448, 30.982038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595051, 35.487888, 31.056038>,  <43.526382, 35.113625, 31.179369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595051, 35.487888, 31.056038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504307, 0.185393, 0.843388,
		0.846288, -0.300277, -0.440035,
		0.171670, 0.935662, -0.308327,
		43.646553, 35.768585, 30.963539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258377, 35.184322, 31.290161>,  <43.526382, 35.113625, 31.179369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258377, 35.184322, 31.290161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101501, 35.552113, 31.279152>,  <44.007378, 35.772785, 31.272547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101501, 35.552113, 31.279152>,  <44.258377, 35.184322, 31.290161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101501, 35.552113, 31.279152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566609, 0.265033, 0.780200,
		0.724667, 0.290392, -0.624924,
		-0.392189, 0.919473, -0.027522,
		43.983845, 35.827953, 31.270895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870975, 35.651081, 31.502716>,  <44.258377, 35.184322, 31.290161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870975, 35.651081, 31.502716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522778, 35.839817, 31.558731>,  <44.313858, 35.953060, 31.592340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522778, 35.839817, 31.558731>,  <44.870975, 35.651081, 31.502716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522778, 35.839817, 31.558731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301259, 0.285794, 0.909706,
		0.389217, 0.834078, -0.390928,
		-0.870490, 0.471843, 0.140038,
		44.261631, 35.981369, 31.600742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077625, 36.270077, 31.783201>,  <44.870975, 35.651081, 31.502716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077625, 36.270077, 31.783201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697243, 36.200584, 31.885567>,  <44.469013, 36.158890, 31.946987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697243, 36.200584, 31.885567>,  <45.077625, 36.270077, 31.783201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697243, 36.200584, 31.885567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188594, 0.330122, 0.924906,
		-0.245168, 0.927813, -0.281168,
		-0.950960, -0.173731, 0.255916,
		44.411953, 36.148464, 31.962341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884331, 36.823513, 32.168373>,  <45.077625, 36.270077, 31.783201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884331, 36.823513, 32.168373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643459, 36.520638, 32.269604>,  <44.498936, 36.338913, 32.330341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643459, 36.520638, 32.269604>,  <44.884331, 36.823513, 32.168373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643459, 36.520638, 32.269604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147193, 0.206260, 0.967363,
		-0.784676, 0.619775, -0.012752,
		-0.602178, -0.757189, 0.253073,
		44.462807, 36.293480, 32.345528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697575, 37.072372, 32.850109>,  <44.884331, 36.823513, 32.168373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697575, 37.072372, 32.850109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547672, 36.701847, 32.834637>,  <44.457733, 36.479530, 32.825356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547672, 36.701847, 32.834637>,  <44.697575, 37.072372, 32.850109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547672, 36.701847, 32.834637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018832, -0.049315, 0.998606,
		-0.926933, 0.373502, 0.035926,
		-0.374753, -0.926317, -0.038678,
		44.435246, 36.423950, 32.823032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147636, 37.077297, 33.347591>,  <44.697575, 37.072372, 32.850109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147636, 37.077297, 33.347591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263763, 36.699589, 33.285534>,  <44.333439, 36.472965, 33.248299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263763, 36.699589, 33.285534>,  <44.147636, 37.077297, 33.347591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263763, 36.699589, 33.285534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081814, -0.137043, 0.987181,
		-0.953427, -0.299287, 0.037469,
		0.290316, -0.944270, -0.155146,
		44.350857, 36.416309, 33.238991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966579, 36.745800, 34.005611>,  <44.147636, 37.077297, 33.347591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966579, 36.745800, 34.005611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213089, 36.478779, 33.838478>,  <44.360996, 36.318565, 33.738197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213089, 36.478779, 33.838478>,  <43.966579, 36.745800, 34.005611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213089, 36.478779, 33.838478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304749, -0.287076, 0.908138,
		-0.726177, -0.686996, 0.026518,
		0.616275, -0.667551, -0.417829,
		44.397972, 36.278515, 33.713131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806217, 36.190968, 34.378059>,  <43.966579, 36.745800, 34.005611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806217, 36.190968, 34.378059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159931, 36.113319, 34.208187>,  <44.372162, 36.066730, 34.106266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159931, 36.113319, 34.208187>,  <43.806217, 36.190968, 34.378059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159931, 36.113319, 34.208187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267124, -0.535662, 0.801069,
		-0.382984, -0.821818, -0.421827,
		0.884289, -0.194117, -0.424677,
		44.425217, 36.055084, 34.080784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834480, 35.475449, 34.386333>,  <43.806217, 36.190968, 34.378059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834480, 35.475449, 34.386333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199802, 35.638218, 34.379616>,  <44.418995, 35.735878, 34.375584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199802, 35.638218, 34.379616>,  <43.834480, 35.475449, 34.386333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199802, 35.638218, 34.379616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242963, -0.511299, 0.824344,
		0.326855, -0.756961, -0.565840,
		0.913310, 0.406919, -0.016793,
		44.473797, 35.760292, 34.374577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344147, 34.970028, 34.695900>,  <43.834480, 35.475449, 34.386333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344147, 34.970028, 34.695900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533459, 35.322189, 34.707878>,  <44.647045, 35.533485, 34.715065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533459, 35.322189, 34.707878>,  <44.344147, 34.970028, 34.695900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533459, 35.322189, 34.707878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347023, -0.217581, 0.912269,
		0.809681, -0.421364, -0.408496,
		0.473279, 0.880404, 0.029948,
		44.675442, 35.586311, 34.716862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084217, 34.791534, 34.809258>,  <44.344147, 34.970028, 34.695900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084217, 34.791534, 34.809258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981728, 35.154171, 34.943382>,  <44.920235, 35.371754, 35.023857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981728, 35.154171, 34.943382>,  <45.084217, 34.791534, 34.809258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981728, 35.154171, 34.943382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379074, -0.224864, 0.897629,
		0.889187, 0.357100, -0.286052,
		-0.256221, 0.906596, 0.335314,
		44.904861, 35.426151, 35.043976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695503, 34.950523, 35.152092>,  <45.084217, 34.791534, 34.809258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695503, 34.950523, 35.152092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393097, 35.180031, 35.278091>,  <45.211651, 35.317734, 35.353691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393097, 35.180031, 35.278091>,  <45.695503, 34.950523, 35.152092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393097, 35.180031, 35.278091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342973, -0.062637, 0.937255,
		0.557499, 0.816618, -0.149433,
		-0.756019, 0.573770, 0.314998,
		45.166290, 35.352161, 35.372589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954792, 35.569786, 35.552334>,  <45.695503, 34.950523, 35.152092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954792, 35.569786, 35.552334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586617, 35.446449, 35.648430>,  <45.365711, 35.372448, 35.706085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586617, 35.446449, 35.648430>,  <45.954792, 35.569786, 35.552334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586617, 35.446449, 35.648430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285621, -0.110962, 0.951897,
		-0.266856, 0.944781, 0.190204,
		-0.920439, -0.308346, 0.240238,
		45.310486, 35.353947, 35.720501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157341, 36.312561, 35.477810>,  <45.954792, 35.569786, 35.552334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157341, 36.312561, 35.477810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070705, 36.236557, 35.860847>,  <46.018726, 36.190952, 36.090672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070705, 36.236557, 35.860847>,  <46.157341, 36.312561, 35.477810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070705, 36.236557, 35.860847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311980, -0.915972, -0.252317,
		0.925072, -0.353399, 0.139106,
		-0.216585, -0.190013, 0.957594,
		46.005730, 36.179554, 36.148125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882713, 35.952164, 35.340549>,  <46.157341, 36.312561, 35.477810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882713, 35.952164, 35.340549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836048, 35.714127, 35.658607>,  <46.808048, 35.571304, 35.849442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836048, 35.714127, 35.658607>,  <46.882713, 35.952164, 35.340549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836048, 35.714127, 35.658607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348856, -0.774147, -0.528200,
		0.929887, 0.215770, 0.297914,
		-0.116659, -0.595096, 0.795142,
		46.801052, 35.535599, 35.897152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.448429, 35.442261, 35.371201>,  <46.882713, 35.952164, 35.340549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.448429, 35.442261, 35.371201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170387, 35.249348, 35.584457>,  <47.003563, 35.133602, 35.712410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170387, 35.249348, 35.584457>,  <47.448429, 35.442261, 35.371201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.170387, 35.249348, 35.584457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311573, -0.870424, -0.381162,
		0.647885, -0.098835, 0.755299,
		-0.695102, -0.482280, 0.533140,
		46.961857, 35.104664, 35.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993328, 35.025299, 35.206108>,  <47.448429, 35.442261, 35.371201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993328, 35.025299, 35.206108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658283, 34.946697, 35.002228>,  <47.457256, 34.899536, 34.879898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658283, 34.946697, 35.002228>,  <47.993328, 35.025299, 35.206108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658283, 34.946697, 35.002228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545603, -0.346955, -0.762850,
		-0.026943, -0.917066, 0.397825,
		-0.837611, -0.196501, -0.509702,
		47.407001, 34.887749, 34.849316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.135189, 38.893188, 46.408005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836681, 38.649960, 46.299686>,  <33.657578, 38.504021, 46.234695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836681, 38.649960, 46.299686>,  <34.135189, 38.893188, 46.408005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836681, 38.649960, 46.299686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240591, 0.132918, -0.961483,
		0.620649, -0.782673, 0.047105,
		-0.746265, -0.608076, -0.270800,
		33.612801, 38.467537, 46.218445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382256, 38.301395, 46.000069>,  <34.135189, 38.893188, 46.408005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382256, 38.301395, 46.000069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000057, 38.293598, 45.882324>,  <33.770737, 38.288921, 45.811680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000057, 38.293598, 45.882324>,  <34.382256, 38.301395, 46.000069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000057, 38.293598, 45.882324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294573, -0.009295, -0.955584,
		0.015897, -0.999767, 0.014626,
		-0.955497, -0.019500, -0.294356,
		33.713409, 38.287750, 45.794018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345516, 37.829868, 45.381485>,  <34.382256, 38.301395, 46.000069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345516, 37.829868, 45.381485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.001984, 38.034081, 45.364689>,  <33.795864, 38.156609, 45.354610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.001984, 38.034081, 45.364689>,  <34.345516, 37.829868, 45.381485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001984, 38.034081, 45.364689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003462, -0.087762, -0.996135,
		-0.512240, -0.855371, 0.077141,
		-0.858835, 0.510527, -0.041993,
		33.744331, 38.187237, 45.352093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884487, 37.354427, 45.171925>,  <34.345516, 37.829868, 45.381485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884487, 37.354427, 45.171925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.748001, 37.719807, 45.083214>,  <33.666111, 37.939034, 45.029987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.748001, 37.719807, 45.083214>,  <33.884487, 37.354427, 45.171925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748001, 37.719807, 45.083214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093171, -0.201905, -0.974963,
		-0.935358, -0.353332, -0.016215,
		-0.341212, 0.913450, -0.221773,
		33.645638, 37.993843, 45.016682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372921, 37.196144, 44.635807>,  <33.884487, 37.354427, 45.171925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372921, 37.196144, 44.635807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471176, 37.582127, 44.598892>,  <33.530128, 37.813717, 44.576744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471176, 37.582127, 44.598892>,  <33.372921, 37.196144, 44.635807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471176, 37.582127, 44.598892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233699, -0.151351, -0.960457,
		-0.940769, 0.214357, -0.262688,
		0.245639, 0.964958, -0.092292,
		33.544868, 37.871613, 44.571205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002380, 37.395775, 44.002594>,  <33.372921, 37.196144, 44.635807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002380, 37.395775, 44.002594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294273, 37.662949, 44.061043>,  <33.469410, 37.823254, 44.096111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294273, 37.662949, 44.061043>,  <33.002380, 37.395775, 44.002594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294273, 37.662949, 44.061043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304642, -0.126296, -0.944056,
		-0.612111, 0.733427, -0.295643,
		0.729735, 0.667933, 0.146126,
		33.513195, 37.863327, 44.104881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938446, 37.905949, 43.477371>,  <33.002380, 37.395775, 44.002594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938446, 37.905949, 43.477371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315651, 37.974220, 43.591637>,  <33.541973, 38.015182, 43.660194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315651, 37.974220, 43.591637>,  <32.938446, 37.905949, 43.477371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315651, 37.974220, 43.591637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306043, -0.107760, -0.945899,
		-0.130666, 0.979416, -0.153855,
		0.943008, 0.170684, 0.285663,
		33.598553, 38.025425, 43.677334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110779, 38.386467, 42.998413>,  <32.938446, 37.905949, 43.477371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110779, 38.386467, 42.998413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450405, 38.231319, 43.141884>,  <33.654182, 38.138229, 43.227966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.450405, 38.231319, 43.141884>,  <33.110779, 38.386467, 42.998413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450405, 38.231319, 43.141884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322053, -0.158166, -0.933416,
		0.418773, 0.908042, -0.009378,
		0.849065, -0.387869, 0.358674,
		33.705124, 38.114960, 43.249485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571007, 38.591553, 42.476803>,  <33.110779, 38.386467, 42.998413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571007, 38.591553, 42.476803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759304, 38.306412, 42.684742>,  <33.872284, 38.135326, 42.809505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759304, 38.306412, 42.684742>,  <33.571007, 38.591553, 42.476803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759304, 38.306412, 42.684742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567781, -0.206217, -0.796931,
		0.675294, 0.670313, 0.307667,
		0.470747, -0.712850, 0.519848,
		33.900528, 38.092556, 42.840698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343014, 38.901947, 42.571644>,  <33.571007, 38.591553, 42.476803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343014, 38.901947, 42.571644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314888, 38.503540, 42.593559>,  <34.298012, 38.264496, 42.606709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314888, 38.503540, 42.593559>,  <34.343014, 38.901947, 42.571644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314888, 38.503540, 42.593559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451072, -0.080742, -0.888828,
		0.889713, -0.037785, 0.454953,
		-0.070318, -0.996019, 0.054793,
		34.293793, 38.204735, 42.609997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995613, 38.678158, 42.344463>,  <34.343014, 38.901947, 42.571644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995613, 38.678158, 42.344463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.762569, 38.354008, 42.319611>,  <34.622742, 38.159519, 42.304699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.762569, 38.354008, 42.319611>,  <34.995613, 38.678158, 42.344463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762569, 38.354008, 42.319611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430638, -0.242964, -0.869206,
		0.689285, -0.533167, 0.490530,
		-0.582613, -0.810371, -0.062131,
		34.587784, 38.110897, 42.300972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433929, 38.172638, 42.288399>,  <34.995613, 38.678158, 42.344463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433929, 38.172638, 42.288399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081985, 38.076649, 42.124325>,  <34.870819, 38.019054, 42.025879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081985, 38.076649, 42.124325>,  <35.433929, 38.172638, 42.288399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081985, 38.076649, 42.124325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461438, -0.224983, -0.858171,
		0.113650, -0.944350, 0.308686,
		-0.879863, -0.239970, -0.410189,
		34.818027, 38.004658, 42.001266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673771, 37.692417, 41.752106>,  <35.433929, 38.172638, 42.288399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673771, 37.692417, 41.752106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291637, 37.748764, 41.648182>,  <35.062359, 37.782570, 41.585827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291637, 37.748764, 41.648182>,  <35.673771, 37.692417, 41.752106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291637, 37.748764, 41.648182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225326, -0.221677, -0.948729,
		-0.191231, -0.964893, 0.180036,
		-0.955332, 0.140860, -0.259807,
		35.005039, 37.791023, 41.570240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523060, 37.013542, 41.433605>,  <35.673771, 37.692417, 41.752106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523060, 37.013542, 41.433605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291027, 37.301018, 41.280243>,  <35.151810, 37.473503, 41.188225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291027, 37.301018, 41.280243>,  <35.523060, 37.013542, 41.433605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291027, 37.301018, 41.280243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402406, -0.156399, -0.902003,
		-0.708222, -0.677516, -0.198481,
		-0.580078, 0.718688, -0.383401,
		35.117004, 37.516624, 41.165222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199390, 36.710827, 40.853825>,  <35.523060, 37.013542, 41.433605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199390, 36.710827, 40.853825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129761, 37.096512, 40.773838>,  <35.087982, 37.327923, 40.725845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129761, 37.096512, 40.773838>,  <35.199390, 36.710827, 40.853825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129761, 37.096512, 40.773838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271820, -0.148125, -0.950880,
		-0.946474, -0.219878, -0.236308,
		-0.174075, 0.964216, -0.199964,
		35.077538, 37.385777, 40.713848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694416, 36.782055, 40.286026>,  <35.199390, 36.710827, 40.853825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694416, 36.782055, 40.286026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943562, 37.094364, 40.305756>,  <35.093048, 37.281750, 40.317593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943562, 37.094364, 40.305756>,  <34.694416, 36.782055, 40.286026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943562, 37.094364, 40.305756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322898, -0.199142, -0.925245,
		-0.712587, 0.592226, -0.376149,
		0.622862, 0.780775, 0.049323,
		35.130421, 37.328598, 40.320553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725872, 37.020073, 39.538891>,  <34.694416, 36.782055, 40.286026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725872, 37.020073, 39.538891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021275, 37.203594, 39.736523>,  <35.198517, 37.313705, 39.855103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021275, 37.203594, 39.736523>,  <34.725872, 37.020073, 39.538891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021275, 37.203594, 39.736523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575398, -0.046870, -0.816529,
		-0.351468, 0.887302, -0.298607,
		0.738503, 0.458802, 0.494079,
		35.242825, 37.341236, 39.884747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072441, 37.426323, 38.945423>,  <34.725872, 37.020073, 39.538891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072441, 37.426323, 38.945423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338692, 37.389603, 39.241669>,  <35.498444, 37.367569, 39.419415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338692, 37.389603, 39.241669>,  <35.072441, 37.426323, 38.945423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338692, 37.389603, 39.241669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739392, -0.053415, -0.671153,
		0.101173, 0.994344, 0.032323,
		0.665630, -0.091802, 0.740614,
		35.538380, 37.362061, 39.463852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572151, 37.841667, 38.776360>,  <35.072441, 37.426323, 38.945423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572151, 37.841667, 38.776360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766361, 37.605095, 39.033878>,  <35.882889, 37.463150, 39.188389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766361, 37.605095, 39.033878>,  <35.572151, 37.841667, 38.776360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766361, 37.605095, 39.033878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776820, -0.045933, -0.628045,
		0.401015, 0.805048, 0.437133,
		0.485527, -0.591429, 0.643797,
		35.912018, 37.427666, 39.227016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144817, 38.183613, 38.763027>,  <35.572151, 37.841667, 38.776360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144817, 38.183613, 38.763027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199825, 37.806351, 38.884060>,  <36.232830, 37.579994, 38.956680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199825, 37.806351, 38.884060>,  <36.144817, 38.183613, 38.763027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199825, 37.806351, 38.884060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815621, -0.065503, -0.574866,
		0.562006, 0.325843, 0.760247,
		0.137518, -0.943152, 0.302578,
		36.241081, 37.523407, 38.974834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909267, 38.135258, 39.014568>,  <36.144817, 38.183613, 38.763027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909267, 38.135258, 39.014568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783615, 37.759022, 38.963009>,  <36.708225, 37.533279, 38.932072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783615, 37.759022, 38.963009>,  <36.909267, 38.135258, 39.014568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783615, 37.759022, 38.963009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844568, -0.214848, -0.490455,
		0.433622, -0.262933, 0.861881,
		-0.314130, -0.940588, -0.128903,
		36.689377, 37.476845, 38.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387257, 37.712986, 39.366467>,  <36.909267, 38.135258, 39.014568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387257, 37.712986, 39.366467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248207, 37.502628, 39.055958>,  <37.164780, 37.376415, 38.869652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248207, 37.502628, 39.055958>,  <37.387257, 37.712986, 39.366467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248207, 37.502628, 39.055958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934244, -0.264612, -0.239098,
		-0.079671, -0.808342, 0.583298,
		-0.347621, -0.525893, -0.776270,
		37.143921, 37.344860, 38.823078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126343, 37.550755, 39.373367>,  <37.387257, 37.712986, 39.366467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126343, 37.550755, 39.373367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445309, 37.791981, 39.381741>,  <38.636688, 37.936714, 39.386765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445309, 37.791981, 39.381741>,  <38.126343, 37.550755, 39.373367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445309, 37.791981, 39.381741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088474, 0.082527, 0.992654,
		0.596904, -0.793414, 0.119164,
		0.797419, 0.603062, 0.020935,
		38.684536, 37.972900, 39.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614166, 37.303116, 39.947144>,  <38.126343, 37.550755, 39.373367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614166, 37.303116, 39.947144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687504, 37.692467, 39.892113>,  <38.731506, 37.926075, 39.859097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687504, 37.692467, 39.892113>,  <38.614166, 37.303116, 39.947144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687504, 37.692467, 39.892113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189318, 0.172288, 0.966683,
		0.964648, -0.151187, 0.215865,
		0.183341, 0.973375, -0.137575,
		38.742508, 37.984478, 39.850842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982742, 37.439568, 40.526794>,  <38.614166, 37.303116, 39.947144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982742, 37.439568, 40.526794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907036, 37.814426, 40.409534>,  <38.861610, 38.039341, 40.339180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907036, 37.814426, 40.409534>,  <38.982742, 37.439568, 40.526794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907036, 37.814426, 40.409534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357527, 0.212282, 0.909456,
		0.914523, 0.276941, 0.294876,
		-0.189269, 0.937144, -0.293151,
		38.850254, 38.095570, 40.321590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127537, 37.908405, 41.031101>,  <38.982742, 37.439568, 40.526794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127537, 37.908405, 41.031101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.893963, 38.187729, 40.865509>,  <38.753819, 38.355324, 40.766155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.893963, 38.187729, 40.865509>,  <39.127537, 37.908405, 41.031101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893963, 38.187729, 40.865509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193963, 0.375170, 0.906436,
		0.788289, 0.609595, -0.083628,
		-0.583933, 0.698313, -0.413982,
		38.718784, 38.397224, 40.741314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274960, 38.552856, 41.433487>,  <39.127537, 37.908405, 41.031101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274960, 38.552856, 41.433487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926102, 38.610516, 41.246471>,  <38.716789, 38.645111, 41.134262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926102, 38.610516, 41.246471>,  <39.274960, 38.552856, 41.433487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926102, 38.610516, 41.246471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325953, 0.541466, 0.774964,
		0.364862, 0.828273, -0.425251,
		-0.872141, 0.144143, -0.467538,
		38.664459, 38.653759, 41.106209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090683, 39.240082, 41.380119>,  <39.274960, 38.552856, 41.433487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090683, 39.240082, 41.380119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730427, 39.075420, 41.324417>,  <38.514275, 38.976624, 41.290997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.730427, 39.075420, 41.324417>,  <39.090683, 39.240082, 41.380119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730427, 39.075420, 41.324417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366989, 0.548840, 0.751062,
		-0.232752, 0.727539, -0.645378,
		-0.900636, -0.411658, -0.139255,
		38.460236, 38.951923, 41.282642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665443, 39.806866, 41.438564>,  <39.090683, 39.240082, 41.380119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665443, 39.806866, 41.438564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460667, 39.472748, 41.518757>,  <38.337799, 39.272278, 41.566872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.460667, 39.472748, 41.518757>,  <38.665443, 39.806866, 41.438564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460667, 39.472748, 41.518757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433152, 0.452556, 0.779470,
		-0.741816, 0.312208, -0.593494,
		-0.511946, -0.835296, 0.200480,
		38.307083, 39.222160, 41.578899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117859, 40.023220, 41.855392>,  <38.665443, 39.806866, 41.438564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117859, 40.023220, 41.855392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038876, 39.632504, 41.888611>,  <37.991486, 39.398075, 41.908543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038876, 39.632504, 41.888611>,  <38.117859, 40.023220, 41.855392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038876, 39.632504, 41.888611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444778, 0.164762, 0.880355,
		-0.873603, 0.136893, -0.466987,
		-0.197456, -0.976787, 0.083049,
		37.979637, 39.339466, 41.913525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350826, 39.858040, 41.951813>,  <38.117859, 40.023220, 41.855392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350826, 39.858040, 41.951813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544449, 39.547562, 42.113411>,  <37.660622, 39.361275, 42.210369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544449, 39.547562, 42.113411>,  <37.350826, 39.858040, 41.951813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544449, 39.547562, 42.113411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483430, 0.147617, 0.862847,
		-0.729373, -0.612971, -0.303780,
		0.484057, -0.776193, 0.403996,
		37.689667, 39.314705, 42.234612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892330, 39.405781, 42.288147>,  <37.350826, 39.858040, 41.951813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892330, 39.405781, 42.288147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246738, 39.346310, 42.463810>,  <37.459385, 39.310627, 42.569206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246738, 39.346310, 42.463810>,  <36.892330, 39.405781, 42.288147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246738, 39.346310, 42.463810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431301, 0.083262, 0.898358,
		-0.170133, -0.985374, 0.009646,
		0.886021, -0.148680, 0.439159,
		37.512547, 39.301708, 42.595558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870872, 38.708637, 42.562565>,  <36.892330, 39.405781, 42.288147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870872, 38.708637, 42.562565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154758, 38.921753, 42.746929>,  <37.325092, 39.049622, 42.857548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154758, 38.921753, 42.746929>,  <36.870872, 38.708637, 42.562565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154758, 38.921753, 42.746929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387085, -0.251717, 0.887019,
		0.588612, -0.807945, 0.027586,
		0.709718, 0.532789, 0.460907,
		37.367676, 39.081589, 42.885201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900940, 38.543686, 43.321316>,  <36.870872, 38.708637, 42.562565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900940, 38.543686, 43.321316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155003, 38.851368, 43.349297>,  <37.307442, 39.035976, 43.366085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155003, 38.851368, 43.349297>,  <36.900940, 38.543686, 43.321316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155003, 38.851368, 43.349297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219508, 0.092939, 0.971174,
		0.740535, -0.632202, 0.227878,
		0.635157, 0.769210, 0.069949,
		37.345551, 39.082130, 43.370281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421024, 38.342243, 43.842335>,  <36.900940, 38.543686, 43.321316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421024, 38.342243, 43.842335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416222, 38.741589, 43.819977>,  <37.413338, 38.981197, 43.806561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416222, 38.741589, 43.819977>,  <37.421024, 38.342243, 43.842335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416222, 38.741589, 43.819977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369358, 0.047519, 0.928072,
		0.929210, 0.031794, 0.368183,
		-0.012011, 0.998365, -0.055898,
		37.412617, 39.041100, 43.803207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854294, 38.502441, 44.422684>,  <37.421024, 38.342243, 43.842335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854294, 38.502441, 44.422684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635414, 38.818386, 44.311909>,  <37.504086, 39.007954, 44.245445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635414, 38.818386, 44.311909>,  <37.854294, 38.502441, 44.422684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635414, 38.818386, 44.311909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308584, 0.117182, 0.943951,
		0.778042, 0.601987, 0.179617,
		-0.547198, 0.789861, -0.276936,
		37.471256, 39.055344, 44.228828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009197, 39.086113, 44.897514>,  <37.854294, 38.502441, 44.422684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009197, 39.086113, 44.897514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659424, 39.230900, 44.768307>,  <37.449558, 39.317772, 44.690784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659424, 39.230900, 44.768307>,  <38.009197, 39.086113, 44.897514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659424, 39.230900, 44.768307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343927, 0.007071, 0.938970,
		0.342163, 0.932163, 0.118308,
		-0.874436, 0.361970, -0.323015,
		37.397095, 39.339489, 44.671402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937706, 39.709213, 45.225555>,  <38.009197, 39.086113, 44.897514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937706, 39.709213, 45.225555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574753, 39.562908, 45.142735>,  <37.356979, 39.475124, 45.093044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574753, 39.562908, 45.142735>,  <37.937706, 39.709213, 45.225555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574753, 39.562908, 45.142735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325379, 0.299483, 0.896905,
		-0.266047, 0.881208, -0.390758,
		-0.907385, -0.365763, -0.207050,
		37.302536, 39.453178, 45.080620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385349, 40.174999, 45.555370>,  <37.937706, 39.709213, 45.225555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385349, 40.174999, 45.555370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.212456, 39.826004, 45.464211>,  <37.108719, 39.616608, 45.409515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.212456, 39.826004, 45.464211>,  <37.385349, 40.174999, 45.555370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212456, 39.826004, 45.464211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575085, 0.072036, 0.814916,
		-0.694585, 0.483301, -0.532891,
		-0.432237, -0.872485, -0.227904,
		37.082783, 39.564259, 45.395840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610329, 40.234249, 45.803509>,  <37.385349, 40.174999, 45.555370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610329, 40.234249, 45.803509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665798, 39.838615, 45.783562>,  <36.699081, 39.601234, 45.771591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665798, 39.838615, 45.783562>,  <36.610329, 40.234249, 45.803509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665798, 39.838615, 45.783562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620164, -0.125990, 0.774289,
		-0.772118, -0.076447, -0.630865,
		0.138674, -0.989082, -0.049869,
		36.707401, 39.541889, 45.768600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.744648, 39.883389, 45.921612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029434, 39.603966, 45.950222>,  <36.200306, 39.436310, 45.967388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029434, 39.603966, 45.950222>,  <35.744648, 39.883389, 45.921612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029434, 39.603966, 45.950222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509391, -0.443674, 0.737342,
		-0.483349, -0.561394, -0.671722,
		0.711965, -0.698563, 0.071520,
		36.243023, 39.394398, 45.971680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374004, 39.297325, 46.024120>,  <35.744648, 39.883389, 45.921612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374004, 39.297325, 46.024120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.743637, 39.220085, 46.156052>,  <35.965416, 39.173740, 46.235210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.743637, 39.220085, 46.156052>,  <35.374004, 39.297325, 46.024120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743637, 39.220085, 46.156052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379415, -0.359604, 0.852484,
		-0.046009, -0.912906, -0.405569,
		0.924082, -0.193101, 0.329826,
		36.020863, 39.162155, 46.255001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318958, 38.623257, 46.272076>,  <35.374004, 39.297325, 46.024120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318958, 38.623257, 46.272076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637348, 38.794010, 46.443748>,  <35.828381, 38.896461, 46.546753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637348, 38.794010, 46.443748>,  <35.318958, 38.623257, 46.272076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637348, 38.794010, 46.443748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228647, -0.444461, 0.866126,
		0.560487, -0.787546, -0.256175,
		0.795974, 0.426879, 0.429185,
		35.876141, 38.922073, 46.572502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425438, 38.222775, 46.805218>,  <35.318958, 38.623257, 46.272076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425438, 38.222775, 46.805218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622967, 38.551689, 46.918346>,  <35.741482, 38.749039, 46.986225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622967, 38.551689, 46.918346>,  <35.425438, 38.222775, 46.805218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622967, 38.551689, 46.918346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109487, -0.263864, 0.958326,
		0.862645, -0.504204, -0.040271,
		0.493818, 0.822285, 0.282825,
		35.771111, 38.798374, 47.003193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900360, 38.015610, 47.323067>,  <35.425438, 38.222775, 46.805218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900360, 38.015610, 47.323067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853737, 38.403973, 47.406738>,  <35.825764, 38.636990, 47.456944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853737, 38.403973, 47.406738>,  <35.900360, 38.015610, 47.323067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853737, 38.403973, 47.406738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089285, -0.220009, 0.971403,
		0.989163, 0.094548, 0.112331,
		-0.116558, 0.970905, 0.209183,
		35.818771, 38.695244, 47.469494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082962, 38.066334, 47.955681>,  <35.900360, 38.015610, 47.323067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082962, 38.066334, 47.955681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.897293, 38.417660, 47.909885>,  <35.785892, 38.628456, 47.882408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.897293, 38.417660, 47.909885>,  <36.082962, 38.066334, 47.955681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897293, 38.417660, 47.909885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150069, 0.049404, 0.987440,
		0.872937, 0.475528, 0.108875,
		-0.464177, 0.878312, -0.114489,
		35.758041, 38.681152, 47.875538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240406, 38.466038, 48.517170>,  <36.082962, 38.066334, 47.955681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240406, 38.466038, 48.517170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927330, 38.679184, 48.388515>,  <35.739483, 38.807072, 48.311321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927330, 38.679184, 48.388515>,  <36.240406, 38.466038, 48.517170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927330, 38.679184, 48.388515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201015, 0.272655, 0.940879,
		0.589060, 0.801069, -0.106289,
		-0.782689, 0.532868, -0.321637,
		35.692524, 38.839043, 48.292023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218620, 39.127056, 48.852116>,  <36.240406, 38.466038, 48.517170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218620, 39.127056, 48.852116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846184, 39.055481, 48.724968>,  <35.622723, 39.012535, 48.648678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846184, 39.055481, 48.724968>,  <36.218620, 39.127056, 48.852116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846184, 39.055481, 48.724968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362637, 0.359794, 0.859676,
		-0.039464, 0.915712, -0.399893,
		-0.931095, -0.178942, -0.317872,
		35.566856, 39.001797, 48.629608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769283, 39.726341, 49.030495>,  <36.218620, 39.127056, 48.852116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769283, 39.726341, 49.030495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517616, 39.424938, 48.954220>,  <35.366615, 39.244095, 48.908455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517616, 39.424938, 48.954220>,  <35.769283, 39.726341, 49.030495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517616, 39.424938, 48.954220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516056, 0.221508, 0.827418,
		-0.581230, 0.618994, -0.528221,
		-0.629172, -0.753512, -0.190688,
		35.328865, 39.198883, 48.897015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146294, 39.991585, 49.101536>,  <35.769283, 39.726341, 49.030495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146294, 39.991585, 49.101536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076332, 39.604557, 49.174446>,  <35.034355, 39.372341, 49.218193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076332, 39.604557, 49.174446>,  <35.146294, 39.991585, 49.101536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076332, 39.604557, 49.174446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457613, 0.243805, 0.855073,
		-0.871780, 0.066141, -0.485413,
		-0.174902, -0.967566, 0.182277,
		35.023861, 39.314285, 49.229130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524868, 40.039291, 49.439579>,  <35.146294, 39.991585, 49.101536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524868, 40.039291, 49.439579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714596, 39.700623, 49.536053>,  <34.828434, 39.497421, 49.593937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714596, 39.700623, 49.536053>,  <34.524868, 40.039291, 49.439579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714596, 39.700623, 49.536053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476518, -0.016562, 0.879009,
		-0.740236, -0.531861, -0.411309,
		0.474323, -0.846670, 0.241181,
		34.856892, 39.446621, 49.608406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214806, 39.791168, 50.085758>,  <34.524868, 40.039291, 49.439579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214806, 39.791168, 50.085758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528133, 39.542664, 50.094177>,  <34.716129, 39.393562, 50.099228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528133, 39.542664, 50.094177>,  <34.214806, 39.791168, 50.085758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528133, 39.542664, 50.094177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176765, -0.190157, 0.965709,
		-0.595954, -0.760181, -0.258771,
		0.783321, -0.621261, 0.021048,
		34.763130, 39.356285, 50.100491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011955, 39.129848, 50.415878>,  <34.214806, 39.791168, 50.085758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011955, 39.129848, 50.415878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408836, 39.152321, 50.460381>,  <34.646965, 39.165802, 50.487083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408836, 39.152321, 50.460381>,  <34.011955, 39.129848, 50.415878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408836, 39.152321, 50.460381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103293, -0.128858, 0.986269,
		0.069743, -0.990070, -0.122050,
		0.992203, 0.056178, 0.111255,
		34.706497, 39.169174, 50.493755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114544, 38.575722, 50.803703>,  <34.011955, 39.129848, 50.415878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114544, 38.575722, 50.803703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427891, 38.817589, 50.861282>,  <34.615898, 38.962708, 50.895832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427891, 38.817589, 50.861282>,  <34.114544, 38.575722, 50.803703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427891, 38.817589, 50.861282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013330, -0.247883, 0.968698,
		0.621420, -0.756925, -0.202243,
		0.783364, 0.604664, 0.143949,
		34.662899, 38.998989, 50.904469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694031, 38.212128, 51.156921>,  <34.114544, 38.575722, 50.803703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694031, 38.212128, 51.156921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779652, 38.600456, 51.200176>,  <34.831024, 38.833454, 51.226128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779652, 38.600456, 51.200176>,  <34.694031, 38.212128, 51.156921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779652, 38.600456, 51.200176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100640, -0.132029, 0.986124,
		0.971625, -0.200195, -0.125963,
		0.214047, 0.970819, 0.108135,
		34.843864, 38.891701, 51.232616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216160, 38.261677, 51.683849>,  <34.694031, 38.212128, 51.156921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216160, 38.261677, 51.683849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061268, 38.630470, 51.682739>,  <34.968334, 38.851746, 51.682072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061268, 38.630470, 51.682739>,  <35.216160, 38.261677, 51.683849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061268, 38.630470, 51.682739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206401, 0.089620, 0.974355,
		0.898584, 0.376725, -0.225001,
		-0.387229, 0.921980, -0.002775,
		34.945099, 38.907063, 51.681908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581970, 38.548328, 52.159698>,  <35.216160, 38.261677, 51.683849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581970, 38.548328, 52.159698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306362, 38.836483, 52.127956>,  <35.140999, 39.009377, 52.108913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306362, 38.836483, 52.127956>,  <35.581970, 38.548328, 52.159698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306362, 38.836483, 52.127956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031302, 0.138967, 0.989802,
		0.724064, 0.679511, -0.118300,
		-0.689022, 0.720384, -0.079351,
		35.099655, 39.052597, 52.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883160, 39.046406, 52.526814>,  <35.581970, 38.548328, 52.159698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883160, 39.046406, 52.526814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492508, 39.130661, 52.509674>,  <35.258118, 39.181213, 52.499390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492508, 39.130661, 52.509674>,  <35.883160, 39.046406, 52.526814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492508, 39.130661, 52.509674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019286, 0.112666, 0.993446,
		0.214084, 0.971050, -0.105970,
		-0.976625, 0.210637, -0.042848,
		35.199520, 39.193851, 52.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702366, 39.608532, 52.947872>,  <35.883160, 39.046406, 52.526814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702366, 39.608532, 52.947872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351242, 39.420982, 52.908676>,  <35.140568, 39.308453, 52.885159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351242, 39.420982, 52.908676>,  <35.702366, 39.608532, 52.947872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351242, 39.420982, 52.908676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163106, 0.100233, 0.981504,
		-0.450381, 0.877559, -0.164462,
		-0.877812, -0.468875, -0.097992,
		35.087898, 39.280319, 52.879280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393879, 39.917088, 53.457714>,  <35.702366, 39.608532, 52.947872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393879, 39.917088, 53.457714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168728, 39.594296, 53.386219>,  <35.033638, 39.400620, 53.343323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168728, 39.594296, 53.386219>,  <35.393879, 39.917088, 53.457714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168728, 39.594296, 53.386219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255382, -0.035869, 0.966175,
		-0.786097, 0.589486, -0.185898,
		-0.562879, -0.806982, -0.178740,
		34.999863, 39.352200, 53.332596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775288, 40.110447, 53.789291>,  <35.393879, 39.917088, 53.457714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775288, 40.110447, 53.789291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757408, 39.712818, 53.749660>,  <34.746681, 39.474239, 53.725880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757408, 39.712818, 53.749660>,  <34.775288, 40.110447, 53.789291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757408, 39.712818, 53.749660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245723, -0.085191, 0.965589,
		-0.968309, 0.067509, -0.240459,
		-0.044701, -0.994075, -0.099080,
		34.743999, 39.414597, 53.719936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081837, 39.875233, 53.962379>,  <34.775288, 40.110447, 53.789291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081837, 39.875233, 53.962379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320141, 39.558567, 54.016541>,  <34.463123, 39.368568, 54.049038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320141, 39.558567, 54.016541>,  <34.081837, 39.875233, 53.962379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320141, 39.558567, 54.016541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352787, -0.106482, 0.929625,
		-0.721535, -0.601603, -0.342728,
		0.595759, -0.791667, 0.135407,
		34.498867, 39.321068, 54.057163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645580, 39.355316, 54.267780>,  <34.081837, 39.875233, 53.962379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645580, 39.355316, 54.267780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027321, 39.276157, 54.357262>,  <34.256367, 39.228661, 54.410950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027321, 39.276157, 54.357262>,  <33.645580, 39.355316, 54.267780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027321, 39.276157, 54.357262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256601, -0.159959, 0.953189,
		-0.152871, -0.967079, -0.203444,
		0.954351, -0.197919, 0.223700,
		34.313629, 39.216789, 54.424374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206970, 38.743031, 54.151573>,  <33.645580, 39.355316, 54.267780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206970, 38.743031, 54.151573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179050, 38.363266, 54.274044>,  <33.162296, 38.135406, 54.347527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179050, 38.363266, 54.274044>,  <33.206970, 38.743031, 54.151573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179050, 38.363266, 54.274044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146139, -0.293878, -0.944605,
		0.986798, -0.110678, -0.118233,
		-0.069801, -0.949414, 0.306173,
		33.158112, 38.078442, 54.365894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776382, 38.267876, 53.895725>,  <33.206970, 38.743031, 54.151573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776382, 38.267876, 53.895725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413330, 38.112274, 53.958828>,  <33.195499, 38.018913, 53.996689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413330, 38.112274, 53.958828>,  <33.776382, 38.267876, 53.895725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413330, 38.112274, 53.958828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128123, -0.101170, -0.986585,
		0.399742, -0.915666, 0.041985,
		-0.907630, -0.389000, 0.157759,
		33.141041, 37.995575, 54.006157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861248, 37.683899, 53.566547>,  <33.776382, 38.267876, 53.895725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861248, 37.683899, 53.566547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.465496, 37.730103, 53.601849>,  <33.228046, 37.757824, 53.623028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.465496, 37.730103, 53.601849>,  <33.861248, 37.683899, 53.566547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465496, 37.730103, 53.601849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116614, -0.268196, -0.956280,
		-0.086793, -0.956414, 0.278817,
		-0.989377, 0.115512, 0.088254,
		33.168682, 37.764755, 53.628326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683208, 37.141006, 53.127602>,  <33.861248, 37.683899, 53.566547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683208, 37.141006, 53.127602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371990, 37.387897, 53.174385>,  <33.185261, 37.536034, 53.202454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371990, 37.387897, 53.174385>,  <33.683208, 37.141006, 53.127602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371990, 37.387897, 53.174385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285298, -0.181294, -0.941136,
		-0.559693, -0.765612, 0.317149,
		-0.778042, 0.617229, 0.116959,
		33.138577, 37.573067, 53.209473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140194, 36.765362, 52.916088>,  <33.683208, 37.141006, 53.127602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140194, 36.765362, 52.916088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988159, 37.135330, 52.913040>,  <32.896938, 37.357311, 52.911213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988159, 37.135330, 52.913040>,  <33.140194, 36.765362, 52.916088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988159, 37.135330, 52.913040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304386, -0.132853, -0.943239,
		-0.873431, -0.356196, 0.332028,
		-0.380089, 0.924919, -0.007617,
		32.874134, 37.412807, 52.910755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395390, 36.775032, 52.648216>,  <33.140194, 36.765362, 52.916088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395390, 36.775032, 52.648216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554600, 37.138485, 52.597675>,  <32.650127, 37.356556, 52.567348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554600, 37.138485, 52.597675>,  <32.395390, 36.775032, 52.648216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554600, 37.138485, 52.597675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282443, -0.009668, -0.959235,
		-0.872810, 0.417493, 0.252788,
		0.398030, 0.908629, -0.126356,
		32.674007, 37.411072, 52.559769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752718, 37.138245, 52.188763>,  <32.395390, 36.775032, 52.648216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752718, 37.138245, 52.188763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.070278, 37.378521, 52.151043>,  <32.260815, 37.522686, 52.128410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.070278, 37.378521, 52.151043>,  <31.752718, 37.138245, 52.188763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070278, 37.378521, 52.151043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052997, -0.086140, -0.994872,
		-0.605735, 0.794827, -0.036551,
		0.793900, 0.600692, -0.094301,
		32.308449, 37.558727, 52.122753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562420, 37.526630, 51.633385>,  <31.752718, 37.138245, 52.188763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562420, 37.526630, 51.633385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957447, 37.585567, 51.655304>,  <32.194462, 37.620930, 51.668457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957447, 37.585567, 51.655304>,  <31.562420, 37.526630, 51.633385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957447, 37.585567, 51.655304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041878, 0.089396, -0.995115,
		-0.151522, 0.985037, 0.082114,
		0.987566, 0.147343, 0.054797,
		32.253716, 37.629772, 51.671741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777105, 38.224724, 51.243763>,  <31.562420, 37.526630, 51.633385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777105, 38.224724, 51.243763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079670, 37.963768, 51.262661>,  <32.261208, 37.807194, 51.274002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079670, 37.963768, 51.262661>,  <31.777105, 38.224724, 51.243763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079670, 37.963768, 51.262661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111883, 0.057877, -0.992034,
		0.644456, 0.755673, 0.116770,
		0.756412, -0.652387, 0.047248,
		32.306595, 37.768051, 51.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276737, 38.487862, 50.712097>,  <31.777105, 38.224724, 51.243763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276737, 38.487862, 50.712097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395279, 38.109116, 50.762093>,  <32.466404, 37.881866, 50.792091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395279, 38.109116, 50.762093>,  <32.276737, 38.487862, 50.712097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395279, 38.109116, 50.762093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194745, -0.068210, -0.978479,
		0.935012, 0.314320, 0.164183,
		0.296356, -0.946864, 0.124990,
		32.484184, 37.825058, 50.799591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958637, 38.450294, 50.491043>,  <32.276737, 38.487862, 50.712097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958637, 38.450294, 50.491043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828571, 38.072769, 50.467442>,  <32.750534, 37.846252, 50.453281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828571, 38.072769, 50.467442>,  <32.958637, 38.450294, 50.491043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828571, 38.072769, 50.467442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302983, -0.044867, -0.951939,
		0.895807, -0.327413, 0.300550,
		-0.325162, -0.943815, -0.059008,
		32.731022, 37.789623, 50.449738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455582, 38.143562, 50.047661>,  <32.958637, 38.450294, 50.491043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455582, 38.143562, 50.047661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130455, 37.911133, 50.031246>,  <32.935379, 37.771675, 50.021397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130455, 37.911133, 50.031246>,  <33.455582, 38.143562, 50.047661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130455, 37.911133, 50.031246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050636, -0.000292, -0.998717,
		0.580318, -0.813849, 0.029661,
		-0.812814, -0.581076, -0.041041,
		32.886612, 37.736809, 50.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641872, 37.454567, 49.733013>,  <33.455582, 38.143562, 50.047661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641872, 37.454567, 49.733013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251682, 37.519157, 49.673183>,  <33.017567, 37.557911, 49.637287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.251682, 37.519157, 49.673183>,  <33.641872, 37.454567, 49.733013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251682, 37.519157, 49.673183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135710, -0.093757, -0.986302,
		-0.173292, -0.982412, 0.069544,
		-0.975476, 0.161481, -0.149570,
		32.959038, 37.567600, 49.628311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447704, 37.087902, 49.096954>,  <33.641872, 37.454567, 49.733013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447704, 37.087902, 49.096954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105297, 37.291542, 49.132858>,  <32.899853, 37.413727, 49.154400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105297, 37.291542, 49.132858>,  <33.447704, 37.087902, 49.096954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105297, 37.291542, 49.132858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077569, 0.045166, -0.995963,
		-0.511099, -0.859522, 0.000827,
		-0.856015, 0.509100, 0.089756,
		32.848492, 37.444271, 49.159786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934696, 36.788597, 48.666206>,  <33.447704, 37.087902, 49.096954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934696, 36.788597, 48.666206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854431, 37.176601, 48.721066>,  <32.806271, 37.409405, 48.753979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854431, 37.176601, 48.721066>,  <32.934696, 36.788597, 48.666206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854431, 37.176601, 48.721066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045960, 0.149159, -0.987745,
		-0.978582, -0.191899, -0.074512,
		-0.200661, 0.970014, 0.137145,
		32.794231, 37.467606, 48.762211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695351, 36.996811, 48.006607>,  <32.934696, 36.788597, 48.666206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695351, 36.996811, 48.006607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720531, 37.360443, 48.171341>,  <32.735641, 37.578621, 48.270180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720531, 37.360443, 48.171341>,  <32.695351, 36.996811, 48.006607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720531, 37.360443, 48.171341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260732, 0.383342, -0.886040,
		-0.963357, 0.163156, -0.212895,
		0.062951, 0.909081, 0.411835,
		32.739418, 37.633167, 48.294891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222881, 37.454781, 47.643398>,  <32.695351, 36.996811, 48.006607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222881, 37.454781, 47.643398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510994, 37.680721, 47.804466>,  <32.683861, 37.816284, 47.901108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510994, 37.680721, 47.804466>,  <32.222881, 37.454781, 47.643398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510994, 37.680721, 47.804466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256849, 0.322051, -0.911214,
		-0.644381, 0.759753, 0.086885,
		0.720279, 0.564853, 0.402665,
		32.727077, 37.850178, 47.925266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159733, 38.159225, 47.544338>,  <32.222881, 37.454781, 47.643398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159733, 38.159225, 47.544338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553253, 38.095459, 47.577148>,  <32.789364, 38.057198, 47.596832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553253, 38.095459, 47.577148>,  <32.159733, 38.159225, 47.544338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553253, 38.095459, 47.577148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138204, 0.382942, -0.913375,
		0.114196, 0.909913, 0.398770,
		0.983798, -0.159415, 0.082023,
		32.848392, 38.047634, 47.601757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368511, 38.719139, 47.331799>,  <32.159733, 38.159225, 47.544338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368511, 38.719139, 47.331799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677639, 38.467018, 47.302216>,  <32.863117, 38.315746, 47.284466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677639, 38.467018, 47.302216>,  <32.368511, 38.719139, 47.331799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677639, 38.467018, 47.302216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221568, 0.377185, -0.899244,
		0.594687, 0.678569, 0.431151,
		0.772823, -0.630298, -0.073958,
		32.909485, 38.277927, 47.280029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046562, 39.074177, 47.210804>,  <32.368511, 38.719139, 47.331799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046562, 39.074177, 47.210804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.048569, 38.711510, 47.042076>,  <33.049770, 38.493912, 46.940838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.048569, 38.711510, 47.042076>,  <33.046562, 39.074177, 47.210804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048569, 38.711510, 47.042076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403263, 0.387841, -0.828829,
		0.915070, -0.165951, 0.367568,
		0.005013, -0.906664, -0.421824,
		33.050072, 38.439510, 46.915527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401443, 39.171196, 46.637032>,  <33.046562, 39.074177, 47.210804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401443, 39.171196, 46.637032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345959, 38.781391, 46.566502>,  <33.312668, 38.547508, 46.524181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.345959, 38.781391, 46.566502>,  <33.401443, 39.171196, 46.637032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345959, 38.781391, 46.566502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526643, 0.078200, -0.846482,
		0.838693, -0.210279, 0.502371,
		-0.138712, -0.974509, -0.176328,
		33.304344, 38.489040, 46.513603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.225086, 31.993917, 29.393797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864082, 32.039555, 29.559908>,  <40.647480, 32.066936, 29.659575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864082, 32.039555, 29.559908>,  <41.225086, 31.993917, 29.393797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864082, 32.039555, 29.559908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416136, 0.479365, 0.772684,
		-0.110912, 0.870168, -0.480110,
		-0.902513, 0.114091, 0.415275,
		40.593327, 32.073780, 29.684490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233978, 32.644020, 29.543259>,  <41.225086, 31.993917, 29.393797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233978, 32.644020, 29.543259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911549, 32.532196, 29.751909>,  <40.718090, 32.465103, 29.877100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911549, 32.532196, 29.751909>,  <41.233978, 32.644020, 29.543259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911549, 32.532196, 29.751909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344507, 0.495014, 0.797669,
		-0.481208, 0.822683, -0.302707,
		-0.806073, -0.279560, 0.521625,
		40.669727, 32.448326, 29.908396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837177, 33.237122, 29.863903>,  <41.233978, 32.644020, 29.543259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837177, 33.237122, 29.863903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.726002, 32.946678, 30.115461>,  <40.659298, 32.772411, 30.266397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.726002, 32.946678, 30.115461>,  <40.837177, 33.237122, 29.863903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726002, 32.946678, 30.115461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340174, 0.537868, 0.771349,
		-0.898350, 0.428323, 0.097510,
		-0.277939, -0.726111, 0.628898,
		40.642620, 32.728844, 30.304131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522427, 33.666428, 30.486341>,  <40.837177, 33.237122, 29.863903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522427, 33.666428, 30.486341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574059, 33.285187, 30.595840>,  <40.605038, 33.056442, 30.661541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574059, 33.285187, 30.595840>,  <40.522427, 33.666428, 30.486341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574059, 33.285187, 30.595840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180639, 0.294039, 0.938568,
		-0.975043, -0.071697, 0.210121,
		0.129076, -0.953101, 0.273749,
		40.612782, 32.999256, 30.677965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051815, 33.456402, 31.088665>,  <40.522427, 33.666428, 30.486341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051815, 33.456402, 31.088665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354675, 33.195328, 31.099379>,  <40.536392, 33.038681, 31.105806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354675, 33.195328, 31.099379>,  <40.051815, 33.456402, 31.088665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354675, 33.195328, 31.099379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189109, 0.258253, 0.947388,
		-0.625267, -0.712252, 0.318966,
		0.757152, -0.652689, 0.026784,
		40.581821, 32.999519, 31.107414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980831, 33.149879, 31.721432>,  <40.051815, 33.456402, 31.088665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980831, 33.149879, 31.721432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354530, 33.115028, 31.583101>,  <40.578751, 33.094116, 31.500103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354530, 33.115028, 31.583101>,  <39.980831, 33.149879, 31.721432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354530, 33.115028, 31.583101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356632, 0.229657, 0.905578,
		0.000520, -0.969364, 0.245628,
		0.934245, -0.087128, -0.345825,
		40.634804, 33.088890, 31.479353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387798, 32.911777, 32.315357>,  <39.980831, 33.149879, 31.721432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387798, 32.911777, 32.315357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681381, 33.039112, 32.075371>,  <40.857533, 33.115513, 31.931379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681381, 33.039112, 32.075371>,  <40.387798, 32.911777, 32.315357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681381, 33.039112, 32.075371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489931, 0.363643, 0.792295,
		0.470393, -0.875456, 0.110936,
		0.733961, 0.318339, -0.599968,
		40.901569, 33.134613, 31.895380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075542, 32.733292, 32.532654>,  <40.387798, 32.911777, 32.315357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075542, 32.733292, 32.532654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.153187, 33.048016, 32.298302>,  <41.199772, 33.236851, 32.157692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.153187, 33.048016, 32.298302>,  <41.075542, 32.733292, 32.532654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153187, 33.048016, 32.298302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635337, 0.354225, 0.686201,
		0.747441, -0.505431, -0.431128,
		0.194111, 0.786806, -0.585882,
		41.211422, 33.284058, 32.122536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699566, 32.878170, 32.709648>,  <41.075542, 32.733292, 32.532654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699566, 32.878170, 32.709648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.589733, 33.212894, 32.520187>,  <41.523834, 33.413731, 32.406509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.589733, 33.212894, 32.520187>,  <41.699566, 32.878170, 32.709648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589733, 33.212894, 32.520187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623177, 0.530001, 0.575108,
		0.732295, -0.137254, -0.667013,
		-0.274582, 0.836816, -0.473650,
		41.507359, 33.463940, 32.378094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245396, 33.223125, 32.787022>,  <41.699566, 32.878170, 32.709648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245396, 33.223125, 32.787022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977810, 33.505253, 32.693199>,  <41.817261, 33.674530, 32.636906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977810, 33.505253, 32.693199>,  <42.245396, 33.223125, 32.787022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977810, 33.505253, 32.693199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476375, 0.649059, 0.593118,
		0.570576, 0.285039, -0.770192,
		-0.668962, 0.705319, -0.234552,
		41.777122, 33.716850, 32.622833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571053, 33.870682, 32.635506>,  <42.245396, 33.223125, 32.787022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571053, 33.870682, 32.635506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205757, 33.971714, 32.763378>,  <41.986580, 34.032333, 32.840103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205757, 33.971714, 32.763378>,  <42.571053, 33.870682, 32.635506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205757, 33.971714, 32.763378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404715, 0.472032, 0.783193,
		0.046922, 0.844622, -0.533303,
		-0.913238, 0.252585, 0.319683,
		41.931786, 34.047489, 32.859283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627388, 34.471870, 32.972904>,  <42.571053, 33.870682, 32.635506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627388, 34.471870, 32.972904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267445, 34.382336, 33.122654>,  <42.051479, 34.328613, 33.212505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267445, 34.382336, 33.122654>,  <42.627388, 34.471870, 32.972904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267445, 34.382336, 33.122654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249893, 0.438925, 0.863075,
		-0.357512, 0.870196, -0.339033,
		-0.899855, -0.223838, 0.374377,
		41.997490, 34.315186, 33.234966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255146, 35.176685, 33.111679>,  <42.627388, 34.471870, 32.972904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255146, 35.176685, 33.111679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.090363, 34.888458, 33.334774>,  <41.991493, 34.715523, 33.468632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.090363, 34.888458, 33.334774>,  <42.255146, 35.176685, 33.111679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090363, 34.888458, 33.334774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242181, 0.503494, 0.829362,
		-0.878428, 0.476741, -0.032913,
		-0.411962, -0.720564, 0.557741,
		41.966774, 34.672291, 33.502098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856297, 35.435406, 33.657883>,  <42.255146, 35.176685, 33.111679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856297, 35.435406, 33.657883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926723, 35.076756, 33.820396>,  <41.968979, 34.861565, 33.917904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926723, 35.076756, 33.820396>,  <41.856297, 35.435406, 33.657883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926723, 35.076756, 33.820396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017811, 0.409762, 0.912018,
		-0.984217, -0.167810, 0.056175,
		0.176064, -0.896624, 0.406284,
		41.979542, 34.807770, 33.942280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489105, 35.501942, 34.280354>,  <41.856297, 35.435406, 33.657883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489105, 35.501942, 34.280354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716431, 35.177364, 34.334885>,  <41.852825, 34.982620, 34.367603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716431, 35.177364, 34.334885>,  <41.489105, 35.501942, 34.280354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716431, 35.177364, 34.334885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186019, 0.288098, 0.939360,
		-0.801510, -0.508491, 0.314673,
		0.568312, -0.811441, 0.136324,
		41.886925, 34.933933, 34.375782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357182, 35.278183, 34.928135>,  <41.489105, 35.501942, 34.280354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357182, 35.278183, 34.928135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722462, 35.123840, 34.875702>,  <41.941631, 35.031235, 34.844242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722462, 35.123840, 34.875702>,  <41.357182, 35.278183, 34.928135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722462, 35.123840, 34.875702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265232, 0.318563, 0.910038,
		-0.309386, -0.865813, 0.393253,
		0.913199, -0.385856, -0.131083,
		41.996422, 35.008083, 34.836376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455547, 34.796169, 35.501076>,  <41.357182, 35.278183, 34.928135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455547, 34.796169, 35.501076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.820789, 34.865780, 35.353584>,  <42.039932, 34.907547, 35.265091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.820789, 34.865780, 35.353584>,  <41.455547, 34.796169, 35.501076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820789, 34.865780, 35.353584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335366, 0.193766, 0.921946,
		0.231891, -0.965489, 0.118565,
		0.913103, 0.174028, -0.368725,
		42.094719, 34.917988, 35.242966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839516, 34.608418, 36.007175>,  <41.455547, 34.796169, 35.501076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839516, 34.608418, 36.007175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.095478, 34.823586, 35.787663>,  <42.249058, 34.952686, 35.655956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.095478, 34.823586, 35.787663>,  <41.839516, 34.608418, 36.007175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095478, 34.823586, 35.787663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359583, 0.421525, 0.832476,
		0.679128, -0.730042, 0.076313,
		0.639911, 0.537917, -0.548781,
		42.287453, 34.984962, 35.623028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450623, 34.513599, 36.318306>,  <41.839516, 34.608418, 36.007175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450623, 34.513599, 36.318306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.485737, 34.852612, 36.108932>,  <42.506805, 35.056019, 35.983307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.485737, 34.852612, 36.108932>,  <42.450623, 34.513599, 36.318306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485737, 34.852612, 36.108932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408973, 0.448468, 0.794743,
		0.908314, -0.283838, -0.307248,
		0.087788, 0.847533, -0.523432,
		42.512074, 35.106873, 35.951904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111645, 34.830269, 36.532871>,  <42.450623, 34.513599, 36.318306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111645, 34.830269, 36.532871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.920937, 35.142109, 36.370434>,  <42.806511, 35.329212, 36.272972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.920937, 35.142109, 36.370434>,  <43.111645, 34.830269, 36.532871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920937, 35.142109, 36.370434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381517, 0.599719, 0.703407,
		0.791918, 0.180435, -0.583361,
		-0.476772, 0.779603, -0.406089,
		42.777905, 35.375988, 36.248608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581417, 35.381489, 36.529842>,  <43.111645, 34.830269, 36.532871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581417, 35.381489, 36.529842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220966, 35.552681, 36.502129>,  <43.004696, 35.655396, 36.485500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220966, 35.552681, 36.502129>,  <43.581417, 35.381489, 36.529842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220966, 35.552681, 36.502129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285157, 0.705443, 0.648873,
		0.326580, 0.564961, -0.757736,
		-0.901128, 0.427983, -0.069281,
		42.950626, 35.681076, 36.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131901, 35.616241, 35.967525>,  <43.581417, 35.381489, 36.529842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131901, 35.616241, 35.967525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522629, 35.701721, 35.972343>,  <44.757065, 35.753010, 35.975235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522629, 35.701721, 35.972343>,  <44.131901, 35.616241, 35.967525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522629, 35.701721, 35.972343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018222, 0.139121, -0.990108,
		-0.213264, 0.966942, 0.139791,
		0.976825, 0.213701, 0.012050,
		44.815678, 35.765831, 35.975960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296131, 36.345375, 35.693283>,  <44.131901, 35.616241, 35.967525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296131, 36.345375, 35.693283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611172, 36.105392, 35.637085>,  <44.800194, 35.961403, 35.603367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611172, 36.105392, 35.637085>,  <44.296131, 36.345375, 35.693283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611172, 36.105392, 35.637085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002558, 0.224823, -0.974396,
		0.616183, 0.767792, 0.175536,
		0.787599, -0.599957, -0.140496,
		44.847450, 35.925404, 35.594936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991383, 36.675442, 35.401539>,  <44.296131, 36.345375, 35.693283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991383, 36.675442, 35.401539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951687, 36.288528, 35.308140>,  <44.927868, 36.056381, 35.252098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951687, 36.288528, 35.308140>,  <44.991383, 36.675442, 35.401539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951687, 36.288528, 35.308140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186426, 0.212430, -0.959228,
		0.977444, -0.138722, 0.159245,
		-0.099238, -0.967280, -0.233500,
		44.921917, 35.998344, 35.238091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390064, 36.665848, 34.869698>,  <44.991383, 36.675442, 35.401539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390064, 36.665848, 34.869698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170322, 36.333569, 34.833565>,  <45.038479, 36.134201, 34.811886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170322, 36.333569, 34.833565>,  <45.390064, 36.665848, 34.869698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170322, 36.333569, 34.833565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009125, 0.102138, -0.994728,
		0.835542, -0.547279, -0.048529,
		-0.549350, -0.830695, -0.090335,
		45.005516, 36.084358, 34.806465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697041, 36.260860, 34.397854>,  <45.390064, 36.665848, 34.869698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697041, 36.260860, 34.397854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315884, 36.139542, 34.397739>,  <45.087189, 36.066750, 34.397671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315884, 36.139542, 34.397739>,  <45.697041, 36.260860, 34.397854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315884, 36.139542, 34.397739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036679, 0.116175, -0.992551,
		0.301075, -0.945787, -0.121827,
		-0.952895, -0.303301, -0.000287,
		45.030014, 36.048553, 34.397652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621273, 35.880062, 33.760853>,  <45.697041, 36.260860, 34.397854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621273, 35.880062, 33.760853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240913, 35.960495, 33.854973>,  <45.012699, 36.008755, 33.911446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240913, 35.960495, 33.854973>,  <45.621273, 35.880062, 33.760853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240913, 35.960495, 33.854973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230777, 0.045971, -0.971920,
		-0.206257, -0.978494, 0.002692,
		-0.950894, 0.201087, 0.235296,
		44.955647, 36.020821, 33.925560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380375, 35.573170, 33.263004>,  <45.621273, 35.880062, 33.760853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380375, 35.573170, 33.263004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079300, 35.805489, 33.387028>,  <44.898655, 35.944881, 33.461441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.079300, 35.805489, 33.387028>,  <45.380375, 35.573170, 33.263004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079300, 35.805489, 33.387028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423523, -0.066568, -0.903436,
		-0.504073, -0.811322, 0.296086,
		-0.752688, 0.580797, 0.310058,
		44.853493, 35.979729, 33.480045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811527, 35.211880, 32.950558>,  <45.380375, 35.573170, 33.263004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811527, 35.211880, 32.950558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659813, 35.564137, 33.064125>,  <44.568783, 35.775490, 33.132267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659813, 35.564137, 33.064125>,  <44.811527, 35.211880, 32.950558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659813, 35.564137, 33.064125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525990, 0.047236, -0.849178,
		-0.761234, -0.471421, 0.445294,
		-0.379286, 0.880643, 0.283920,
		44.546028, 35.828331, 33.149300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121239, 35.124504, 32.727871>,  <44.811527, 35.211880, 32.950558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121239, 35.124504, 32.727871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201565, 35.515274, 32.756939>,  <44.249760, 35.749737, 32.774380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201565, 35.515274, 32.756939>,  <44.121239, 35.124504, 32.727871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201565, 35.515274, 32.756939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478047, 0.162474, -0.863176,
		-0.855068, 0.138605, 0.499646,
		0.200820, 0.976929, 0.072667,
		44.261810, 35.808353, 32.778740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532711, 35.482590, 32.639019>,  <44.121239, 35.124504, 32.727871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532711, 35.482590, 32.639019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827042, 35.740982, 32.557758>,  <44.003639, 35.896015, 32.509003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827042, 35.740982, 32.557758>,  <43.532711, 35.482590, 32.639019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827042, 35.740982, 32.557758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415463, 0.193754, -0.888735,
		-0.534742, 0.738358, 0.410950,
		0.735827, 0.645978, -0.203151,
		44.047791, 35.934776, 32.496815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138752, 36.066319, 32.398087>,  <43.532711, 35.482590, 32.639019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138752, 36.066319, 32.398087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507866, 36.109509, 32.250134>,  <43.729336, 36.135422, 32.161362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.507866, 36.109509, 32.250134>,  <43.138752, 36.066319, 32.398087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507866, 36.109509, 32.250134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384641, 0.201273, -0.900855,
		-0.022822, 0.973566, 0.227263,
		0.922784, 0.107974, -0.369880,
		43.784702, 36.141899, 32.139168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173973, 36.721989, 31.867138>,  <43.138752, 36.066319, 32.398087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173973, 36.721989, 31.867138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510307, 36.521019, 31.786573>,  <43.712109, 36.400436, 31.738235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510307, 36.521019, 31.786573>,  <43.173973, 36.721989, 31.867138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510307, 36.521019, 31.786573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261404, -0.051076, -0.963877,
		0.473988, 0.863112, -0.174282,
		0.840835, -0.502424, -0.201412,
		43.762558, 36.370293, 31.726151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496117, 37.000420, 31.225191>,  <43.173973, 36.721989, 31.867138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496117, 37.000420, 31.225191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669548, 36.640156, 31.236687>,  <43.773605, 36.423996, 31.243584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669548, 36.640156, 31.236687>,  <43.496117, 37.000420, 31.225191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669548, 36.640156, 31.236687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291882, -0.170541, -0.941127,
		0.852536, 0.399661, -0.336828,
		0.433575, -0.900659, 0.028739,
		43.799622, 36.369957, 31.245308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960663, 36.948597, 30.577070>,  <43.496117, 37.000420, 31.225191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960663, 36.948597, 30.577070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856537, 36.577175, 30.682917>,  <43.794060, 36.354321, 30.746424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856537, 36.577175, 30.682917>,  <43.960663, 36.948597, 30.577070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856537, 36.577175, 30.682917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366805, -0.158409, -0.916712,
		0.893135, -0.335696, -0.299363,
		-0.260314, -0.928555, 0.264616,
		43.778442, 36.298607, 30.762300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224461, 36.558704, 30.081909>,  <43.960663, 36.948597, 30.577070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224461, 36.558704, 30.081909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930481, 36.347618, 30.252260>,  <43.754093, 36.220966, 30.354471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930481, 36.347618, 30.252260>,  <44.224461, 36.558704, 30.081909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930481, 36.347618, 30.252260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471983, -0.052870, -0.880021,
		0.486915, -0.847776, -0.210215,
		-0.734946, -0.527713, 0.425879,
		43.709995, 36.189304, 30.380024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069019, 36.045525, 29.564163>,  <44.224461, 36.558704, 30.081909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069019, 36.045525, 29.564163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748932, 36.000755, 29.799829>,  <43.556877, 35.973892, 29.941229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748932, 36.000755, 29.799829>,  <44.069019, 36.045525, 29.564163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748932, 36.000755, 29.799829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597345, 0.061709, -0.799607,
		0.053115, -0.991802, -0.116220,
		-0.800223, -0.111895, 0.589171,
		43.508865, 35.967178, 29.976580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711033, 35.408569, 29.297670>,  <44.069019, 36.045525, 29.564163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711033, 35.408569, 29.297670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463852, 35.656887, 29.490648>,  <43.315544, 35.805878, 29.606434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463852, 35.656887, 29.490648>,  <43.711033, 35.408569, 29.297670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463852, 35.656887, 29.490648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639467, -0.039865, -0.767784,
		-0.457402, -0.782960, 0.421612,
		-0.617952, 0.620793, 0.482443,
		43.278465, 35.843124, 29.635382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041779, 35.060329, 29.287727>,  <43.711033, 35.408569, 29.297670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041779, 35.060329, 29.287727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.972401, 35.448059, 29.357384>,  <42.930775, 35.680698, 29.399178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.972401, 35.448059, 29.357384>,  <43.041779, 35.060329, 29.287727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972401, 35.448059, 29.357384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735657, -0.009958, -0.677281,
		-0.654772, -0.245578, 0.714818,
		-0.173444, 0.969326, 0.174141,
		42.920368, 35.738857, 29.409626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296135, 35.058907, 29.440432>,  <43.041779, 35.060329, 29.287727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296135, 35.058907, 29.440432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.401299, 35.426666, 29.323408>,  <42.464397, 35.647320, 29.253195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.401299, 35.426666, 29.323408>,  <42.296135, 35.058907, 29.440432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401299, 35.426666, 29.323408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603785, -0.079727, -0.793150,
		-0.752543, 0.385171, 0.534156,
		0.262911, 0.919395, -0.292558,
		42.480171, 35.702484, 29.235641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676407, 35.304108, 29.120094>,  <42.296135, 35.058907, 29.440432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676407, 35.304108, 29.120094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.957077, 35.553581, 28.982300>,  <42.125481, 35.703266, 28.899624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.957077, 35.553581, 28.982300>,  <41.676407, 35.304108, 29.120094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957077, 35.553581, 28.982300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461181, 0.029020, -0.886832,
		-0.543103, 0.781141, 0.307992,
		0.701678, 0.623681, -0.344486,
		42.167580, 35.740685, 28.878954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304192, 35.865162, 28.766726>,  <41.676407, 35.304108, 29.120094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304192, 35.865162, 28.766726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675213, 35.838600, 28.619625>,  <41.897823, 35.822662, 28.531364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675213, 35.838600, 28.619625>,  <41.304192, 35.865162, 28.766726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675213, 35.838600, 28.619625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371886, -0.067249, -0.925839,
		0.036748, 0.995524, -0.087072,
		0.927551, -0.066404, -0.367750,
		41.953480, 35.818680, 28.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.007404, 40.169258, 43.540337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810066, 39.826443, 43.480873>,  <37.691666, 39.620754, 43.445194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810066, 39.826443, 43.480873>,  <38.007404, 40.169258, 43.540337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810066, 39.826443, 43.480873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387802, -0.063730, -0.919537,
		0.778603, -0.511298, 0.363802,
		-0.493342, -0.857038, -0.148662,
		37.662064, 39.569332, 43.436275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471821, 39.670197, 43.243519>,  <38.007404, 40.169258, 43.540337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471821, 39.670197, 43.243519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120136, 39.494595, 43.169479>,  <37.909126, 39.389233, 43.125057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120136, 39.494595, 43.169479>,  <38.471821, 39.670197, 43.243519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120136, 39.494595, 43.169479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332321, -0.286711, -0.898532,
		0.341388, -0.851513, 0.397970,
		-0.879214, -0.439002, -0.185096,
		37.856373, 39.362896, 43.113949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697285, 39.047295, 43.020504>,  <38.471821, 39.670197, 43.243519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697285, 39.047295, 43.020504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328606, 39.150211, 42.904388>,  <38.107399, 39.211960, 42.834717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328606, 39.150211, 42.904388>,  <38.697285, 39.047295, 43.020504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328606, 39.150211, 42.904388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175116, -0.391781, -0.903240,
		-0.346121, -0.883353, 0.316051,
		-0.921702, 0.257285, -0.290293,
		38.052094, 39.227398, 42.817299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542458, 38.482124, 42.667538>,  <38.697285, 39.047295, 43.020504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542458, 38.482124, 42.667538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256992, 38.737614, 42.552498>,  <38.085712, 38.890907, 42.483475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256992, 38.737614, 42.552498>,  <38.542458, 38.482124, 42.667538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256992, 38.737614, 42.552498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035937, -0.376650, -0.925658,
		-0.699566, -0.670944, 0.245847,
		-0.713663, 0.638724, -0.287603,
		38.042892, 38.929230, 42.466217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164291, 38.082844, 42.215065>,  <38.542458, 38.482124, 42.667538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164291, 38.082844, 42.215065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095116, 38.465969, 42.123245>,  <38.053612, 38.695843, 42.068153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095116, 38.465969, 42.123245>,  <38.164291, 38.082844, 42.215065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095116, 38.465969, 42.123245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055119, -0.242105, -0.968683,
		-0.983389, -0.154870, 0.094663,
		-0.172938, 0.957810, -0.229547,
		38.043236, 38.753311, 42.054382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553802, 38.137058, 41.791088>,  <38.164291, 38.082844, 42.215065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553802, 38.137058, 41.791088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824249, 38.429962, 41.758461>,  <37.986519, 38.605705, 41.738884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824249, 38.429962, 41.758461>,  <37.553802, 38.137058, 41.791088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824249, 38.429962, 41.758461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237414, -0.321332, -0.916723,
		-0.697491, 0.600450, -0.391108,
		0.676121, 0.732261, -0.081571,
		38.027084, 38.649639, 41.733990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454052, 38.234589, 41.094120>,  <37.553802, 38.137058, 41.791088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454052, 38.234589, 41.094120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757168, 38.488937, 41.152657>,  <37.939037, 38.641548, 41.187778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757168, 38.488937, 41.152657>,  <37.454052, 38.234589, 41.094120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757168, 38.488937, 41.152657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261902, -0.090998, -0.960795,
		-0.597628, 0.766409, -0.235494,
		0.757792, 0.635874, 0.146341,
		37.984505, 38.679699, 41.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492798, 38.730492, 40.538857>,  <37.454052, 38.234589, 41.094120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492798, 38.730492, 40.538857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860912, 38.718636, 40.694908>,  <38.081779, 38.711521, 40.788540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860912, 38.718636, 40.694908>,  <37.492798, 38.730492, 40.538857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860912, 38.718636, 40.694908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389505, -0.024661, -0.920694,
		0.036911, 0.999256, -0.011150,
		0.920284, -0.029641, 0.390125,
		38.136997, 38.709743, 40.811947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919956, 39.187553, 40.125950>,  <37.492798, 38.730492, 40.538857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919956, 39.187553, 40.125950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175983, 38.950558, 40.321613>,  <38.329601, 38.808361, 40.439011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175983, 38.950558, 40.321613>,  <37.919956, 39.187553, 40.125950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175983, 38.950558, 40.321613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555373, -0.083152, -0.827433,
		0.530918, 0.801277, 0.275829,
		0.640068, -0.592488, 0.489154,
		38.368004, 38.772812, 40.468361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505451, 39.258305, 39.775337>,  <37.919956, 39.187553, 40.125950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505451, 39.258305, 39.775337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599792, 38.914509, 39.956730>,  <38.656399, 38.708233, 40.065567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599792, 38.914509, 39.956730>,  <38.505451, 39.258305, 39.775337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599792, 38.914509, 39.956730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445277, -0.319201, -0.836564,
		0.863772, 0.399232, 0.307427,
		0.235852, -0.859491, 0.453486,
		38.670547, 38.656662, 40.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140411, 39.182770, 39.633083>,  <38.505451, 39.258305, 39.775337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140411, 39.182770, 39.633083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037987, 38.805340, 39.717075>,  <38.976532, 38.578880, 39.767471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037987, 38.805340, 39.717075>,  <39.140411, 39.182770, 39.633083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037987, 38.805340, 39.717075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362984, -0.295180, -0.883805,
		0.895922, -0.150088, 0.418088,
		-0.256060, -0.943580, 0.209979,
		38.961170, 38.522266, 39.780067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739403, 38.703506, 39.495052>,  <39.140411, 39.182770, 39.633083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739403, 38.703506, 39.495052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399506, 38.494728, 39.465378>,  <39.195568, 38.369461, 39.447575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399506, 38.494728, 39.465378>,  <39.739403, 38.703506, 39.495052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399506, 38.494728, 39.465378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260644, -0.293614, -0.919704,
		0.458255, -0.800851, 0.385540,
		-0.849746, -0.521947, -0.074186,
		39.144581, 38.338142, 39.443123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874424, 37.945358, 39.216343>,  <39.739403, 38.703506, 39.495052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874424, 37.945358, 39.216343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510712, 38.075321, 39.112316>,  <39.292484, 38.153297, 39.049900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510712, 38.075321, 39.112316>,  <39.874424, 37.945358, 39.216343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510712, 38.075321, 39.112316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129266, -0.373499, -0.918579,
		-0.395593, -0.868867, 0.297617,
		-0.909283, 0.324912, -0.260069,
		39.237926, 38.172794, 39.034294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540142, 37.438602, 38.887115>,  <39.874424, 37.945358, 39.216343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540142, 37.438602, 38.887115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391674, 37.788162, 38.761559>,  <39.302593, 37.997898, 38.686226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391674, 37.788162, 38.761559>,  <39.540142, 37.438602, 38.887115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391674, 37.788162, 38.761559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150169, -0.277096, -0.949035,
		-0.916341, -0.399392, -0.028382,
		-0.371172, 0.873902, -0.313891,
		39.280323, 38.050331, 38.667393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217186, 37.088753, 38.691277>,  <39.540142, 37.438602, 38.887115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217186, 37.088753, 38.691277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470409, 36.779446, 38.676842>,  <40.622341, 36.593861, 38.668179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470409, 36.779446, 38.676842>,  <40.217186, 37.088753, 38.691277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470409, 36.779446, 38.676842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147889, -0.166575, 0.974875,
		-0.759848, -0.611813, -0.219809,
		0.633056, -0.773265, -0.036091,
		40.660328, 36.547466, 38.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839497, 36.599716, 39.037716>,  <40.217186, 37.088753, 38.691277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839497, 36.599716, 39.037716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224968, 36.492897, 39.039452>,  <40.456249, 36.428806, 39.040493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224968, 36.492897, 39.039452>,  <39.839497, 36.599716, 39.037716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224968, 36.492897, 39.039452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046436, -0.151530, 0.987361,
		-0.263012, -0.951696, -0.158426,
		0.963674, -0.267045, 0.004339,
		40.514069, 36.412785, 39.040752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828049, 35.895107, 39.418713>,  <39.839497, 36.599716, 39.037716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828049, 35.895107, 39.418713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206715, 36.023994, 39.418301>,  <40.433914, 36.101326, 39.418053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206715, 36.023994, 39.418301>,  <39.828049, 35.895107, 39.418713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206715, 36.023994, 39.418301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022284, -0.062273, 0.997810,
		0.321452, -0.944614, -0.066132,
		0.946664, 0.322222, -0.001032,
		40.490715, 36.120663, 39.417992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313198, 35.383106, 39.707310>,  <39.828049, 35.895107, 39.418713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313198, 35.383106, 39.707310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495167, 35.737240, 39.745731>,  <40.604347, 35.949722, 39.768784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495167, 35.737240, 39.745731>,  <40.313198, 35.383106, 39.707310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495167, 35.737240, 39.745731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098273, -0.157108, 0.982680,
		0.885094, -0.437599, -0.158476,
		0.454917, 0.885338, 0.096051,
		40.631641, 36.002842, 39.774548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658524, 35.217808, 40.273205>,  <40.313198, 35.383106, 39.707310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658524, 35.217808, 40.273205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683483, 35.616989, 40.267616>,  <40.698460, 35.856499, 40.264263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683483, 35.616989, 40.267616>,  <40.658524, 35.217808, 40.273205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683483, 35.616989, 40.267616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071948, 0.009462, 0.997364,
		0.995455, -0.063237, -0.071211,
		0.062397, 0.997954, -0.013969,
		40.702202, 35.916374, 40.263424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172012, 35.392605, 40.738724>,  <40.658524, 35.217808, 40.273205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172012, 35.392605, 40.738724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986702, 35.745365, 40.703773>,  <40.875515, 35.957020, 40.682804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986702, 35.745365, 40.703773>,  <41.172012, 35.392605, 40.738724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986702, 35.745365, 40.703773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042934, 0.076148, 0.996172,
		0.885175, 0.465252, 0.002586,
		-0.463274, 0.881897, -0.087379,
		40.847721, 36.009933, 40.677559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390045, 35.745361, 41.280910>,  <41.172012, 35.392605, 40.738724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390045, 35.745361, 41.280910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044640, 35.919983, 41.179905>,  <40.837395, 36.024757, 41.119301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044640, 35.919983, 41.179905>,  <41.390045, 35.745361, 41.280910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044640, 35.919983, 41.179905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213436, 0.137295, 0.967262,
		0.456929, 0.889141, -0.025381,
		-0.863517, 0.436553, -0.252509,
		40.785583, 36.050949, 41.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292225, 36.334343, 41.749294>,  <41.390045, 35.745361, 41.280910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292225, 36.334343, 41.749294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930603, 36.275810, 41.588657>,  <40.713631, 36.240688, 41.492275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930603, 36.275810, 41.588657>,  <41.292225, 36.334343, 41.749294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930603, 36.275810, 41.588657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420059, 0.130577, 0.898053,
		-0.078978, 0.980579, -0.179517,
		-0.904054, -0.146334, -0.401589,
		40.659386, 36.231911, 41.468182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883938, 36.927147, 42.018322>,  <41.292225, 36.334343, 41.749294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883938, 36.927147, 42.018322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625793, 36.638264, 41.918777>,  <40.470909, 36.464935, 41.859051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625793, 36.638264, 41.918777>,  <40.883938, 36.927147, 42.018322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625793, 36.638264, 41.918777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404917, 0.047183, 0.913135,
		-0.647731, 0.690065, -0.322884,
		-0.645358, -0.722207, -0.248857,
		40.432186, 36.421600, 41.844120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270027, 37.000885, 42.418434>,  <40.883938, 36.927147, 42.018322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270027, 37.000885, 42.418434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188366, 36.636059, 42.276184>,  <40.139370, 36.417164, 42.190834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188366, 36.636059, 42.276184>,  <40.270027, 37.000885, 42.418434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188366, 36.636059, 42.276184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616869, -0.162220, 0.770167,
		-0.760129, 0.376601, -0.529505,
		-0.204149, -0.912062, -0.355621,
		40.127121, 36.362442, 42.169498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612404, 36.987152, 42.312592>,  <40.270027, 37.000885, 42.418434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612404, 36.987152, 42.312592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 36.615879, 42.373932>,  <39.829407, 36.393116, 42.410736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 36.615879, 42.373932>,  <39.612404, 36.987152, 42.312592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748032, 36.615879, 42.373932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587355, -0.081526, 0.805213,
		-0.734879, -0.363094, -0.572813,
		0.339068, -0.928179, 0.153353,
		39.849751, 36.337425, 42.419937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046463, 36.533951, 42.633282>,  <39.612404, 36.987152, 42.312592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046463, 36.533951, 42.633282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393307, 36.355701, 42.722309>,  <39.601414, 36.248753, 42.775726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393307, 36.355701, 42.722309>,  <39.046463, 36.533951, 42.633282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393307, 36.355701, 42.722309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411432, -0.388883, 0.824314,
		-0.280779, -0.806345, -0.520549,
		0.867114, -0.445621, 0.222566,
		39.653442, 36.222015, 42.789078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797089, 36.030258, 42.970257>,  <39.046463, 36.533951, 42.633282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797089, 36.030258, 42.970257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175690, 36.031200, 43.099335>,  <39.402851, 36.031765, 43.176781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175690, 36.031200, 43.099335>,  <38.797089, 36.030258, 42.970257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175690, 36.031200, 43.099335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320843, -0.100249, 0.941812,
		0.034568, -0.994960, -0.094130,
		0.946502, 0.002356, 0.322691,
		39.459641, 36.031906, 43.196140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840202, 35.501896, 43.465130>,  <38.797089, 36.030258, 42.970257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840202, 35.501896, 43.465130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145401, 35.745655, 43.551361>,  <39.328522, 35.891911, 43.603100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145401, 35.745655, 43.551361>,  <38.840202, 35.501896, 43.465130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145401, 35.745655, 43.551361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231287, -0.054053, 0.971383,
		0.603609, -0.791022, 0.099702,
		0.762996, 0.609396, 0.215580,
		39.374298, 35.928474, 43.616035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852180, 34.791065, 43.542747>,  <38.840202, 35.501896, 43.465130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852180, 34.791065, 43.542747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493790, 34.635906, 43.629242>,  <38.278755, 34.542812, 43.681137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493790, 34.635906, 43.629242>,  <38.852180, 34.791065, 43.542747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493790, 34.635906, 43.629242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346367, 0.305638, -0.886913,
		0.277935, -0.869555, -0.408199,
		-0.895981, -0.387891, 0.216238,
		38.224995, 34.519539, 43.694115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669430, 34.551914, 42.961452>,  <38.852180, 34.791065, 43.542747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669430, 34.551914, 42.961452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316822, 34.532574, 43.149319>,  <38.105259, 34.520969, 43.262039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316822, 34.532574, 43.149319>,  <38.669430, 34.551914, 42.961452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316822, 34.532574, 43.149319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465767, 0.252049, -0.848253,
		-0.077369, -0.966506, -0.244705,
		-0.881519, -0.048347, 0.469667,
		38.052368, 34.518070, 43.290218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292568, 34.085636, 42.537148>,  <38.669430, 34.551914, 42.961452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292568, 34.085636, 42.537148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048271, 34.317692, 42.752712>,  <37.901691, 34.456924, 42.882050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048271, 34.317692, 42.752712>,  <38.292568, 34.085636, 42.537148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048271, 34.317692, 42.752712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422164, 0.337221, -0.841463,
		-0.669901, -0.741428, 0.038959,
		-0.610746, 0.580144, 0.538909,
		37.865047, 34.491734, 42.914383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649258, 33.973022, 42.364811>,  <38.292568, 34.085636, 42.537148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649258, 33.973022, 42.364811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625504, 34.340977, 42.519882>,  <37.611252, 34.561749, 42.612923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625504, 34.340977, 42.519882>,  <37.649258, 33.973022, 42.364811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625504, 34.340977, 42.519882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461032, 0.319187, -0.827991,
		-0.885394, -0.227897, 0.405141,
		-0.059381, 0.919881, 0.387675,
		37.607689, 34.616940, 42.636185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023518, 34.180428, 42.197941>,  <37.649258, 33.973022, 42.364811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023518, 34.180428, 42.197941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194736, 34.534664, 42.270058>,  <37.297466, 34.747208, 42.313328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194736, 34.534664, 42.270058>,  <37.023518, 34.180428, 42.197941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194736, 34.534664, 42.270058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272218, 0.316560, -0.908673,
		-0.861786, 0.339875, 0.376576,
		0.428044, 0.885593, 0.180287,
		37.323151, 34.800343, 42.324142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617859, 34.587589, 41.948647>,  <37.023518, 34.180428, 42.197941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617859, 34.587589, 41.948647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948566, 34.812168, 41.962688>,  <37.146992, 34.946915, 41.971115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948566, 34.812168, 41.962688>,  <36.617859, 34.587589, 41.948647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948566, 34.812168, 41.962688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218624, 0.378181, -0.899546,
		-0.518328, 0.736038, 0.435413,
		0.826765, 0.561451, 0.035106,
		37.196594, 34.980602, 41.973221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450783, 35.273594, 41.827522>,  <36.617859, 34.587589, 41.948647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450783, 35.273594, 41.827522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838139, 35.249786, 41.730633>,  <37.070553, 35.235500, 41.672501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838139, 35.249786, 41.730633>,  <36.450783, 35.273594, 41.827522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838139, 35.249786, 41.730633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204676, 0.365410, -0.908066,
		0.142561, 0.928942, 0.341677,
		0.968393, -0.059522, -0.242225,
		37.128654, 35.231930, 41.657967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501057, 35.849895, 41.482265>,  <36.450783, 35.273594, 41.827522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501057, 35.849895, 41.482265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814960, 35.618740, 41.392647>,  <37.003304, 35.480045, 41.338875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814960, 35.618740, 41.392647>,  <36.501057, 35.849895, 41.482265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814960, 35.618740, 41.392647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125710, 0.502371, -0.855465,
		0.606918, 0.643170, 0.466887,
		0.784759, -0.577890, -0.224045,
		37.050388, 35.445374, 41.325432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986519, 36.317043, 41.050407>,  <36.501057, 35.849895, 41.482265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986519, 36.317043, 41.050407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070095, 35.931911, 40.981941>,  <37.120239, 35.700832, 40.940861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070095, 35.931911, 40.981941>,  <36.986519, 36.317043, 41.050407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070095, 35.931911, 40.981941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110249, 0.150718, -0.982410,
		0.971695, 0.224132, -0.074661,
		0.208937, -0.962834, -0.171162,
		37.132774, 35.643063, 40.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482437, 36.441174, 40.449112>,  <36.986519, 36.317043, 41.050407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482437, 36.441174, 40.449112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335823, 36.069031, 40.452995>,  <37.247856, 35.845745, 40.455326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335823, 36.069031, 40.452995>,  <37.482437, 36.441174, 40.449112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335823, 36.069031, 40.452995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009496, -0.014172, -0.999854,
		0.930357, -0.366388, 0.014029,
		-0.366533, -0.930354, 0.009705,
		37.225864, 35.789925, 40.455906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942249, 36.011353, 40.048412>,  <37.482437, 36.441174, 40.449112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942249, 36.011353, 40.048412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580364, 35.841125, 40.040512>,  <37.363232, 35.738991, 40.035770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580364, 35.841125, 40.040512>,  <37.942249, 36.011353, 40.048412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580364, 35.841125, 40.040512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045614, -0.050669, -0.997673,
		0.423573, -0.903509, 0.065252,
		-0.904713, -0.425563, -0.019751,
		37.308949, 35.713455, 40.034588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802299, 35.949593, 39.290421>,  <37.942249, 36.011353, 40.048412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802299, 35.949593, 39.290421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479969, 35.766819, 39.441078>,  <37.286572, 35.657154, 39.531475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479969, 35.766819, 39.441078>,  <37.802299, 35.949593, 39.290421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479969, 35.766819, 39.441078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359764, -0.127437, -0.924300,
		0.470341, -0.880326, -0.061696,
		-0.805822, -0.456932, 0.376648,
		37.238224, 35.629738, 39.554073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.073452, 33.231880, 47.479698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727688, 33.422203, 47.414703>,  <38.520229, 33.536396, 47.375706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.727688, 33.422203, 47.414703>,  <39.073452, 33.231880, 47.479698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727688, 33.422203, 47.414703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183016, -0.003239, -0.983105,
		-0.468293, -0.879544, -0.084280,
		-0.864411, 0.475806, -0.162487,
		38.468365, 33.564945, 47.365955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892303, 32.897346, 46.852013>,  <39.073452, 33.231880, 47.479698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892303, 32.897346, 46.852013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645603, 33.209503, 46.893188>,  <38.497581, 33.396797, 46.917892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645603, 33.209503, 46.893188>,  <38.892303, 32.897346, 46.852013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645603, 33.209503, 46.893188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008572, 0.124108, -0.992232,
		-0.787108, -0.612846, -0.069854,
		-0.616755, 0.780395, 0.102940,
		38.460575, 33.443623, 46.924072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349369, 32.715229, 46.440948>,  <38.892303, 32.897346, 46.852013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349369, 32.715229, 46.440948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337967, 33.113659, 46.474449>,  <38.331127, 33.352718, 46.494549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337967, 33.113659, 46.474449>,  <38.349369, 32.715229, 46.440948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337967, 33.113659, 46.474449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285272, 0.072191, -0.955724,
		-0.958022, -0.051135, 0.282096,
		-0.028506, 0.996079, 0.083748,
		38.329414, 33.412483, 46.499573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632732, 33.016098, 46.015553>,  <38.349369, 32.715229, 46.440948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632732, 33.016098, 46.015553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891865, 33.319050, 46.048252>,  <38.047344, 33.500820, 46.067871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.891865, 33.319050, 46.048252>,  <37.632732, 33.016098, 46.015553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891865, 33.319050, 46.048252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349526, 0.390880, -0.851495,
		-0.676863, 0.523052, 0.517951,
		0.647833, 0.757383, 0.081752,
		38.086216, 33.546265, 46.072777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255615, 33.581139, 45.775333>,  <37.632732, 33.016098, 46.015553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255615, 33.581139, 45.775333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629032, 33.724010, 45.763153>,  <37.853081, 33.809734, 45.755844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629032, 33.724010, 45.763153>,  <37.255615, 33.581139, 45.775333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629032, 33.724010, 45.763153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199758, 0.447809, -0.871529,
		-0.297656, 0.819690, 0.489397,
		0.933540, 0.357176, -0.030446,
		37.909096, 33.831161, 45.754021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285053, 34.330803, 45.578079>,  <37.255615, 33.581139, 45.775333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285053, 34.330803, 45.578079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635326, 34.159283, 45.489254>,  <37.845490, 34.056370, 45.435959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635326, 34.159283, 45.489254>,  <37.285053, 34.330803, 45.578079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635326, 34.159283, 45.489254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085917, 0.314172, -0.945471,
		0.475186, 0.847009, 0.238272,
		0.875681, -0.428802, -0.222063,
		37.898029, 34.030643, 45.422634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529984, 34.849850, 45.168758>,  <37.285053, 34.330803, 45.578079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529984, 34.849850, 45.168758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756863, 34.530922, 45.086235>,  <37.892990, 34.339565, 45.036720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.756863, 34.530922, 45.086235>,  <37.529984, 34.849850, 45.168758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756863, 34.530922, 45.086235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043777, 0.279338, -0.959194,
		0.822415, 0.535025, 0.193345,
		0.567202, -0.797320, -0.206310,
		37.927025, 34.291725, 45.024342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031326, 35.139957, 44.801731>,  <37.529984, 34.849850, 45.168758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031326, 35.139957, 44.801731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051395, 34.752865, 44.702950>,  <38.063438, 34.520611, 44.643681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051395, 34.752865, 44.702950>,  <38.031326, 35.139957, 44.801731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051395, 34.752865, 44.702950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055256, 0.244198, -0.968150,
		0.997211, 0.062221, -0.041221,
		0.050173, -0.967727, -0.246955,
		38.066448, 34.462547, 44.628864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438454, 35.154259, 44.272537>,  <38.031326, 35.139957, 44.801731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438454, 35.154259, 44.272537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274384, 34.794594, 44.211544>,  <38.175941, 34.578793, 44.174946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274384, 34.794594, 44.211544>,  <38.438454, 35.154259, 44.272537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274384, 34.794594, 44.211544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228175, 0.263060, -0.937409,
		0.883000, -0.349711, -0.313069,
		-0.410178, -0.899167, -0.152487,
		38.151329, 34.524845, 44.165798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175419, 35.223461, 44.087051>,  <38.438454, 35.154259, 44.272537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175419, 35.223461, 44.087051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.321938, 35.594872, 44.062820>,  <39.409851, 35.817719, 44.048283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.321938, 35.594872, 44.062820>,  <39.175419, 35.223461, 44.087051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321938, 35.594872, 44.062820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029510, 0.053481, 0.998133,
		0.930029, -0.367403, -0.007811,
		0.366299, 0.928523, -0.060581,
		39.431828, 35.873428, 44.044647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595123, 35.267445, 44.632790>,  <39.175419, 35.223461, 44.087051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595123, 35.267445, 44.632790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547543, 35.658001, 44.560665>,  <39.518993, 35.892334, 44.517391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547543, 35.658001, 44.560665>,  <39.595123, 35.267445, 44.632790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547543, 35.658001, 44.560665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085216, 0.190972, 0.977890,
		0.989236, 0.100958, -0.105921,
		-0.118954, 0.976390, -0.180313,
		39.511856, 35.950916, 44.506573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194561, 35.639523, 44.948097>,  <39.595123, 35.267445, 44.632790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194561, 35.639523, 44.948097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.897610, 35.905678, 44.916759>,  <39.719440, 36.065369, 44.897957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.897610, 35.905678, 44.916759>,  <40.194561, 35.639523, 44.948097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897610, 35.905678, 44.916759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075247, 0.199007, 0.977105,
		0.665743, 0.719485, -0.197807,
		-0.742378, 0.665385, -0.078348,
		39.674896, 36.105293, 44.893253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429787, 36.282761, 45.156780>,  <40.194561, 35.639523, 44.948097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429787, 36.282761, 45.156780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.034397, 36.296780, 45.215691>,  <39.797165, 36.305191, 45.251038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.034397, 36.296780, 45.215691>,  <40.429787, 36.282761, 45.156780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034397, 36.296780, 45.215691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150823, 0.144168, 0.977992,
		0.013045, 0.988932, -0.147792,
		-0.988475, 0.035049, 0.147273,
		39.737854, 36.307293, 45.259872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392246, 36.792213, 45.628792>,  <40.429787, 36.282761, 45.156780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392246, 36.792213, 45.628792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.040230, 36.606956, 45.670788>,  <39.829018, 36.495804, 45.695984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.040230, 36.606956, 45.670788>,  <40.392246, 36.792213, 45.628792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040230, 36.606956, 45.670788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047333, 0.305528, 0.951006,
		-0.472525, 0.831959, -0.290800,
		-0.880046, -0.463138, 0.104990,
		39.776215, 36.468014, 45.702286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156513, 37.105198, 46.226967>,  <40.392246, 36.792213, 45.628792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156513, 37.105198, 46.226967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891838, 36.810940, 46.169003>,  <39.733032, 36.634384, 46.134224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891838, 36.810940, 46.169003>,  <40.156513, 37.105198, 46.226967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891838, 36.810940, 46.169003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218012, 0.003855, 0.975938,
		-0.717382, 0.677361, -0.162930,
		-0.661690, -0.735641, -0.144907,
		39.693333, 36.590248, 46.125530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454330, 37.359051, 46.307922>,  <40.156513, 37.105198, 46.226967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454330, 37.359051, 46.307922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410103, 36.966438, 46.370373>,  <39.383564, 36.730873, 46.407845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410103, 36.966438, 46.370373>,  <39.454330, 37.359051, 46.307922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410103, 36.966438, 46.370373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148954, 0.171683, 0.973826,
		-0.982643, 0.084423, -0.165186,
		-0.110573, -0.981528, 0.156128,
		39.376930, 36.671978, 46.417210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914249, 37.263771, 46.765602>,  <39.454330, 37.359051, 46.307922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914249, 37.263771, 46.765602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137211, 36.935776, 46.817642>,  <39.270988, 36.738979, 46.848866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137211, 36.935776, 46.817642>,  <38.914249, 37.263771, 46.765602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137211, 36.935776, 46.817642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258530, -0.022519, 0.965741,
		-0.788964, -0.571940, -0.224543,
		0.557403, -0.819986, 0.130097,
		39.304432, 36.689781, 46.856670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479164, 36.787743, 47.206882>,  <38.914249, 37.263771, 46.765602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479164, 36.787743, 47.206882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845123, 36.628292, 47.232365>,  <39.064697, 36.532623, 47.247654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845123, 36.628292, 47.232365>,  <38.479164, 36.787743, 47.206882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845123, 36.628292, 47.232365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149709, -0.188496, 0.970596,
		-0.374897, -0.897534, -0.232133,
		0.914899, -0.398626, 0.063703,
		39.119595, 36.508705, 47.251476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371944, 36.130825, 47.440762>,  <38.479164, 36.787743, 47.206882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371944, 36.130825, 47.440762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749722, 36.224754, 47.532742>,  <38.976387, 36.281113, 47.587929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749722, 36.224754, 47.532742>,  <38.371944, 36.130825, 47.440762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749722, 36.224754, 47.532742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190310, -0.179704, 0.965137,
		0.267961, -0.955282, -0.125032,
		0.944447, 0.234824, 0.229953,
		39.033054, 36.295200, 47.601727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568989, 35.688862, 47.910007>,  <38.371944, 36.130825, 47.440762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568989, 35.688862, 47.910007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857491, 35.957809, 47.976601>,  <39.030590, 36.119179, 48.016556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857491, 35.957809, 47.976601>,  <38.568989, 35.688862, 47.910007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857491, 35.957809, 47.976601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042345, -0.282700, 0.958273,
		0.691378, -0.684106, -0.232369,
		0.721252, 0.672368, 0.166484,
		39.073868, 36.159519, 48.026546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971439, 35.440353, 48.425186>,  <38.568989, 35.688862, 47.910007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971439, 35.440353, 48.425186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071804, 35.827541, 48.421528>,  <39.132023, 36.059853, 48.419334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071804, 35.827541, 48.421528>,  <38.971439, 35.440353, 48.425186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071804, 35.827541, 48.421528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056623, 0.024107, 0.998105,
		0.966351, -0.249923, 0.060858,
		0.250916, 0.967966, -0.009145,
		39.147079, 36.117931, 48.418785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435936, 35.602757, 49.025574>,  <38.971439, 35.440353, 48.425186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435936, 35.602757, 49.025574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.293873, 35.967667, 48.943974>,  <39.208633, 36.186611, 48.895012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.293873, 35.967667, 48.943974>,  <39.435936, 35.602757, 49.025574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293873, 35.967667, 48.943974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093438, 0.182495, 0.978757,
		0.930123, 0.366679, 0.020426,
		-0.355161, 0.912273, -0.204005,
		39.187325, 36.241348, 48.882771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588997, 36.008591, 49.617138>,  <39.435936, 35.602757, 49.025574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588997, 36.008591, 49.617138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.316952, 36.245422, 49.444210>,  <39.153725, 36.387520, 49.340454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.316952, 36.245422, 49.444210>,  <39.588997, 36.008591, 49.617138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316952, 36.245422, 49.444210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332142, 0.276858, 0.901683,
		0.653556, 0.756832, 0.008360,
		-0.680108, 0.592077, -0.432317,
		39.112919, 36.423046, 49.314514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.593292, 36.113224, 47.735733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898525, 35.855366, 47.754234>,  <32.081665, 35.700649, 47.765335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.898525, 35.855366, 47.754234>,  <31.593292, 36.113224, 47.735733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898525, 35.855366, 47.754234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293813, 0.282271, -0.913235,
		0.575656, 0.710462, 0.404800,
		0.763082, -0.644645, 0.046252,
		32.127449, 35.661972, 47.768108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158443, 36.504242, 47.575344>,  <31.593292, 36.113224, 47.735733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158443, 36.504242, 47.575344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248085, 36.122040, 47.498623>,  <32.301868, 35.892719, 47.452591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248085, 36.122040, 47.498623>,  <32.158443, 36.504242, 47.575344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248085, 36.122040, 47.498623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309424, 0.256390, -0.915708,
		0.924140, 0.145864, 0.353114,
		0.224104, -0.955504, -0.191807,
		32.315315, 35.835388, 47.441082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724560, 36.530167, 47.074226>,  <32.158443, 36.504242, 47.575344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724560, 36.530167, 47.074226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604671, 36.148712, 47.063335>,  <32.532738, 35.919838, 47.056801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604671, 36.148712, 47.063335>,  <32.724560, 36.530167, 47.074226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604671, 36.148712, 47.063335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372428, -0.090678, -0.923621,
		0.878332, -0.286967, 0.382340,
		-0.299718, -0.953639, -0.027229,
		32.514755, 35.862621, 47.055168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300964, 36.211876, 46.808220>,  <32.724560, 36.530167, 47.074226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300964, 36.211876, 46.808220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971058, 35.995483, 46.742374>,  <32.773113, 35.865646, 46.702866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971058, 35.995483, 46.742374>,  <33.300964, 36.211876, 46.808220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971058, 35.995483, 46.742374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200138, -0.006994, -0.979743,
		0.528873, -0.841004, 0.114040,
		-0.824766, -0.540983, -0.164618,
		32.723629, 35.833187, 46.692989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495838, 35.739033, 46.309265>,  <33.300964, 36.211876, 46.808220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495838, 35.739033, 46.309265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095852, 35.738838, 46.305965>,  <32.855862, 35.738720, 46.303986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095852, 35.738838, 46.305965>,  <33.495838, 35.739033, 46.309265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095852, 35.738838, 46.305965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008252, -0.115813, -0.993237,
		-0.000471, -0.993271, 0.115813,
		-0.999966, -0.000487, -0.008251,
		32.795860, 35.738693, 46.303490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162308, 35.009659, 46.053261>,  <33.495838, 35.739033, 46.309265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162308, 35.009659, 46.053261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937634, 35.336639, 46.002216>,  <32.802830, 35.532829, 45.971588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937634, 35.336639, 46.002216>,  <33.162308, 35.009659, 46.053261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937634, 35.336639, 46.002216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079820, -0.207064, -0.975066,
		-0.823492, -0.537493, 0.181554,
		-0.561684, 0.817451, -0.127612,
		32.769127, 35.581875, 45.963932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667965, 34.808254, 45.602570>,  <33.162308, 35.009659, 46.053261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667965, 34.808254, 45.602570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631382, 35.206299, 45.587708>,  <32.609432, 35.445126, 45.578789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631382, 35.206299, 45.587708>,  <32.667965, 34.808254, 45.602570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631382, 35.206299, 45.587708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041808, -0.041116, -0.998279,
		-0.994931, -0.089747, 0.045365,
		-0.091458, 0.995115, -0.037155,
		32.603943, 35.504833, 45.576561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153561, 34.933098, 45.036041>,  <32.667965, 34.808254, 45.602570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153561, 34.933098, 45.036041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321751, 35.290588, 45.098587>,  <32.422665, 35.505085, 45.136116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321751, 35.290588, 45.098587>,  <32.153561, 34.933098, 45.036041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321751, 35.290588, 45.098587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075100, 0.137468, -0.987655,
		-0.904193, 0.427023, -0.009318,
		0.420471, 0.893730, 0.156368,
		32.447891, 35.558708, 45.145496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812786, 35.411079, 44.695919>,  <32.153561, 34.933098, 45.036041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812786, 35.411079, 44.695919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155163, 35.612743, 44.741856>,  <32.360588, 35.733742, 44.769417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155163, 35.612743, 44.741856>,  <31.812786, 35.411079, 44.695919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155163, 35.612743, 44.741856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022166, 0.186116, -0.982278,
		-0.516599, 0.843317, 0.148129,
		0.855941, 0.504160, 0.114840,
		32.411945, 35.763992, 44.776306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667274, 36.054935, 44.285839>,  <31.812786, 35.411079, 44.695919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667274, 36.054935, 44.285839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063217, 36.042900, 44.341377>,  <32.300781, 36.035679, 44.374702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063217, 36.042900, 44.341377>,  <31.667274, 36.054935, 44.285839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063217, 36.042900, 44.341377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139838, 0.378822, -0.914844,
		-0.025076, 0.924980, 0.379187,
		0.989857, -0.030084, 0.138847,
		32.360176, 36.033875, 44.383030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926397, 36.695656, 43.982601>,  <31.667274, 36.054935, 44.285839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926397, 36.695656, 43.982601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228668, 36.434021, 43.969223>,  <32.410030, 36.277039, 43.961197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228668, 36.434021, 43.969223>,  <31.926397, 36.695656, 43.982601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228668, 36.434021, 43.969223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216797, 0.297997, -0.929622,
		0.618020, 0.695246, 0.366994,
		0.755679, -0.654088, -0.033441,
		32.455372, 36.237793, 43.959190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410534, 37.155045, 43.690052>,  <31.926397, 36.695656, 43.982601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410534, 37.155045, 43.690052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.507862, 36.772491, 43.625401>,  <32.566257, 36.542957, 43.586609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.507862, 36.772491, 43.625401>,  <32.410534, 37.155045, 43.690052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507862, 36.772491, 43.625401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036675, 0.175587, -0.983781,
		0.969252, 0.233448, 0.077800,
		0.243322, -0.956385, -0.161626,
		32.580860, 36.485577, 43.576912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952587, 37.151585, 43.232731>,  <32.410534, 37.155045, 43.690052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952587, 37.151585, 43.232731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833004, 36.772243, 43.190300>,  <32.761253, 36.544640, 43.164841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833004, 36.772243, 43.190300>,  <32.952587, 37.151585, 43.232731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833004, 36.772243, 43.190300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176564, 0.054267, -0.982792,
		0.937791, -0.312540, 0.151221,
		-0.298955, -0.948353, -0.106074,
		32.743317, 36.487736, 43.158478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462124, 36.839050, 42.718731>,  <32.952587, 37.151585, 43.232731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462124, 36.839050, 42.718731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144512, 36.597286, 42.744675>,  <32.953945, 36.452229, 42.760239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144512, 36.597286, 42.744675>,  <33.462124, 36.839050, 42.718731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144512, 36.597286, 42.744675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074417, -0.202543, -0.976442,
		0.603305, -0.770498, 0.205804,
		-0.794031, -0.604408, 0.064857,
		32.906303, 36.415962, 42.764133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221859, 36.895897, 42.719330>,  <33.462124, 36.839050, 42.718731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221859, 36.895897, 42.719330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261074, 37.291969, 42.679451>,  <34.284603, 37.529613, 42.655525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261074, 37.291969, 42.679451>,  <34.221859, 36.895897, 42.719330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261074, 37.291969, 42.679451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271669, 0.123001, 0.954498,
		0.957384, -0.066492, 0.281059,
		0.098037, 0.990177, -0.099696,
		34.290485, 37.589024, 42.649544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648205, 37.145264, 43.284885>,  <34.221859, 36.895897, 42.719330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648205, 37.145264, 43.284885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440727, 37.459892, 43.150867>,  <34.316238, 37.648670, 43.070457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440727, 37.459892, 43.150867>,  <34.648205, 37.145264, 43.284885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440727, 37.459892, 43.150867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311032, 0.191427, 0.930921,
		0.796375, 0.587076, 0.145357,
		-0.518697, 0.786573, -0.335047,
		34.285118, 37.695866, 43.050354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775486, 37.547550, 43.916004>,  <34.648205, 37.145264, 43.284885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775486, 37.547550, 43.916004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486267, 37.731628, 43.709930>,  <34.312737, 37.842075, 43.586285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486267, 37.731628, 43.709930>,  <34.775486, 37.547550, 43.916004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486267, 37.731628, 43.709930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499077, 0.167643, 0.850187,
		0.477617, 0.871848, 0.108457,
		-0.723052, 0.460193, -0.515188,
		34.269352, 37.869686, 43.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782124, 38.329128, 44.040264>,  <34.775486, 37.547550, 43.916004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782124, 38.329128, 44.040264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408669, 38.223972, 43.942928>,  <34.184597, 38.160877, 43.884529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408669, 38.223972, 43.942928>,  <34.782124, 38.329128, 44.040264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408669, 38.223972, 43.942928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337602, 0.418582, 0.843098,
		-0.119786, 0.869297, -0.479556,
		-0.933636, -0.262890, -0.243336,
		34.128578, 38.145103, 43.869926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366707, 38.791073, 44.350735>,  <34.782124, 38.329128, 44.040264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366707, 38.791073, 44.350735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088650, 38.514511, 44.272015>,  <33.921814, 38.348576, 44.224781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088650, 38.514511, 44.272015>,  <34.366707, 38.791073, 44.350735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088650, 38.514511, 44.272015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458328, 0.215364, 0.862296,
		-0.553812, 0.689621, -0.466600,
		-0.695146, -0.691405, -0.196802,
		33.880104, 38.307091, 44.212975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762547, 39.157265, 44.472145>,  <34.366707, 38.791073, 44.350735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762547, 39.157265, 44.472145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708809, 38.761635, 44.496410>,  <33.676567, 38.524258, 44.510971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708809, 38.761635, 44.496410>,  <33.762547, 39.157265, 44.472145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708809, 38.761635, 44.496410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462490, 0.116723, 0.878908,
		-0.876388, 0.090018, -0.473119,
		-0.134341, -0.989077, 0.060662,
		33.668507, 38.464912, 44.514610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099243, 39.197124, 44.809361>,  <33.762547, 39.157265, 44.472145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099243, 39.197124, 44.809361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264915, 38.836254, 44.857594>,  <33.364319, 38.619732, 44.886532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.264915, 38.836254, 44.857594>,  <33.099243, 39.197124, 44.809361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264915, 38.836254, 44.857594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286114, -0.003286, 0.958190,
		-0.864056, -0.431365, -0.259485,
		0.414182, -0.902171, 0.120581,
		33.389172, 38.565601, 44.893768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684036, 38.870396, 45.084225>,  <33.099243, 39.197124, 44.809361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684036, 38.870396, 45.084225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005890, 38.658451, 45.191418>,  <33.199001, 38.531284, 45.255733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005890, 38.658451, 45.191418>,  <32.684036, 38.870396, 45.084225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005890, 38.658451, 45.191418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381236, -0.115007, 0.917296,
		-0.455225, -0.840247, -0.294542,
		0.804630, -0.529866, 0.267978,
		33.247280, 38.499493, 45.271812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492321, 38.256390, 45.370808>,  <32.684036, 38.870396, 45.084225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492321, 38.256390, 45.370808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863403, 38.277855, 45.518581>,  <33.086052, 38.290733, 45.607246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863403, 38.277855, 45.518581>,  <32.492321, 38.256390, 45.370808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863403, 38.277855, 45.518581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365689, -0.068262, 0.928230,
		0.075030, -0.996223, -0.043703,
		0.927708, 0.053663, 0.369430,
		33.141716, 38.293953, 45.629410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648388, 37.701103, 45.771461>,  <32.492321, 38.256390, 45.370808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648388, 37.701103, 45.771461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.956230, 37.910824, 45.917240>,  <33.140934, 38.036655, 46.004707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.956230, 37.910824, 45.917240>,  <32.648388, 37.701103, 45.771461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956230, 37.910824, 45.917240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231377, -0.302978, 0.924483,
		0.595129, -0.795807, -0.111860,
		0.769601, 0.524305, 0.364442,
		33.187111, 38.068115, 46.026573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941666, 37.288036, 46.382675>,  <32.648388, 37.701103, 45.771461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941666, 37.288036, 46.382675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.093246, 37.654686, 46.433563>,  <33.184196, 37.874676, 46.464096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.093246, 37.654686, 46.433563>,  <32.941666, 37.288036, 46.382675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093246, 37.654686, 46.433563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124155, -0.186592, 0.974561,
		0.917049, -0.353520, -0.184514,
		0.378956, 0.916628, 0.127223,
		33.206932, 37.929676, 46.471729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579041, 37.326904, 46.757698>,  <32.941666, 37.288036, 46.382675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579041, 37.326904, 46.757698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439301, 37.694485, 46.830902>,  <33.355457, 37.915031, 46.874825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439301, 37.694485, 46.830902>,  <33.579041, 37.326904, 46.757698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439301, 37.694485, 46.830902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020466, -0.202753, 0.979016,
		0.936770, 0.338270, 0.089638,
		-0.349346, 0.918947, 0.183010,
		33.334496, 37.970169, 46.885803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013470, 37.592361, 47.303696>,  <33.579041, 37.326904, 46.757698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013470, 37.592361, 47.303696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680588, 37.813999, 47.295528>,  <33.480858, 37.946983, 47.290627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680588, 37.813999, 47.295528>,  <34.013470, 37.592361, 47.303696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680588, 37.813999, 47.295528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073557, -0.073827, 0.994555,
		0.549573, 0.829171, 0.102196,
		-0.832201, 0.554098, -0.020418,
		33.430927, 37.980228, 47.289402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061691, 38.148788, 47.817356>,  <34.013470, 37.592361, 47.303696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061691, 38.148788, 47.817356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678123, 38.065010, 47.740829>,  <33.447983, 38.014744, 47.694912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678123, 38.065010, 47.740829>,  <34.061691, 38.148788, 47.817356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678123, 38.065010, 47.740829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188877, -0.031794, 0.981486,
		-0.211649, 0.977304, -0.009071,
		-0.958921, -0.209443, -0.191319,
		33.390446, 38.002178, 47.683434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306519, 38.860798, 48.203594>,  <34.061691, 38.148788, 47.817356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306519, 38.860798, 48.203594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681477, 38.920765, 48.329327>,  <34.906452, 38.956745, 48.404766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681477, 38.920765, 48.329327>,  <34.306519, 38.860798, 48.203594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681477, 38.920765, 48.329327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325054, -0.052708, -0.944225,
		-0.124991, 0.987292, -0.098141,
		0.937399, 0.149921, 0.314335,
		34.962696, 38.965740, 48.423626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576786, 39.411716, 47.923176>,  <34.306519, 38.860798, 48.203594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576786, 39.411716, 47.923176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918098, 39.229248, 48.024227>,  <35.122887, 39.119766, 48.084858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918098, 39.229248, 48.024227>,  <34.576786, 39.411716, 47.923176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918098, 39.229248, 48.024227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348149, 0.137688, -0.927272,
		0.388211, 0.879176, 0.276302,
		0.853279, -0.456171, 0.252632,
		35.174084, 39.092396, 48.100018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110619, 39.886868, 47.809727>,  <34.576786, 39.411716, 47.923176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110619, 39.886868, 47.809727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273987, 39.521877, 47.819336>,  <35.372005, 39.302883, 47.825100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273987, 39.521877, 47.819336>,  <35.110619, 39.886868, 47.809727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273987, 39.521877, 47.819336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436318, 0.172043, -0.883192,
		0.801762, 0.371191, 0.468396,
		0.408417, -0.912479, 0.024020,
		35.396511, 39.248135, 47.826542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846676, 39.974636, 47.685131>,  <35.110619, 39.886868, 47.809727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846676, 39.974636, 47.685131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869598, 39.580219, 47.622604>,  <35.883354, 39.343571, 47.585087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869598, 39.580219, 47.622604>,  <35.846676, 39.974636, 47.685131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869598, 39.580219, 47.622604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524212, 0.162974, -0.835848,
		0.849657, -0.034041, 0.526236,
		0.057310, -0.986043, -0.156317,
		35.886791, 39.284405, 47.575710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419529, 39.868870, 47.353123>,  <35.846676, 39.974636, 47.685131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419529, 39.868870, 47.353123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232258, 39.530197, 47.251976>,  <36.119896, 39.326992, 47.191288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232258, 39.530197, 47.251976>,  <36.419529, 39.868870, 47.353123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232258, 39.530197, 47.251976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599279, -0.093939, -0.795009,
		0.649365, -0.523742, 0.551378,
		-0.468176, -0.846681, -0.252867,
		36.091805, 39.276192, 47.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906750, 39.429871, 47.164764>,  <36.419529, 39.868870, 47.353123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906750, 39.429871, 47.164764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578979, 39.274879, 46.995815>,  <36.382317, 39.181885, 46.894447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578979, 39.274879, 46.995815>,  <36.906750, 39.429871, 47.164764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578979, 39.274879, 46.995815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429565, 0.072732, -0.900102,
		0.379492, -0.919004, 0.106850,
		-0.819427, -0.387481, -0.422373,
		36.333153, 39.158634, 46.869102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170113, 38.946041, 46.723721>,  <36.906750, 39.429871, 47.164764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170113, 38.946041, 46.723721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797676, 38.982731, 46.582497>,  <36.574215, 39.004745, 46.497761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797676, 38.982731, 46.582497>,  <37.170113, 38.946041, 46.723721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797676, 38.982731, 46.582497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352655, -0.021163, -0.935514,
		-0.093285, -0.995559, -0.012644,
		-0.931092, 0.091729, -0.353063,
		36.518349, 39.010250, 46.476578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070301, 38.459606, 46.275177>,  <37.170113, 38.946041, 46.723721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070301, 38.459606, 46.275177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807095, 38.741650, 46.169476>,  <36.649170, 38.910877, 46.106052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807095, 38.741650, 46.169476>,  <37.070301, 38.459606, 46.275177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807095, 38.741650, 46.169476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415943, 0.047818, -0.908132,
		-0.627697, -0.707483, -0.324751,
		-0.658017, 0.705110, -0.264258,
		36.609688, 38.953182, 46.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768494, 38.301979, 45.551170>,  <37.070301, 38.459606, 46.275177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768494, 38.301979, 45.551170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739262, 38.694153, 45.624275>,  <36.721722, 38.929459, 45.668137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739262, 38.694153, 45.624275>,  <36.768494, 38.301979, 45.551170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739262, 38.694153, 45.624275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189548, 0.193565, -0.962603,
		-0.979148, -0.035705, -0.199985,
		-0.073079, 0.980438, 0.182761,
		36.717339, 38.988285, 45.679104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301304, 38.539371, 45.065838>,  <36.768494, 38.301979, 45.551170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301304, 38.539371, 45.065838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539616, 38.841797, 45.174221>,  <36.682602, 39.023251, 45.239250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539616, 38.841797, 45.174221>,  <36.301304, 38.539371, 45.065838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539616, 38.841797, 45.174221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097458, 0.266822, -0.958806,
		-0.797213, 0.597644, 0.085283,
		0.595780, 0.756061, 0.270959,
		36.718349, 39.068615, 45.255508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057602, 39.091789, 44.771301>,  <36.301304, 38.539371, 45.065838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057602, 39.091789, 44.771301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.441158, 39.163612, 44.859207>,  <36.671291, 39.206707, 44.911949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.441158, 39.163612, 44.859207>,  <36.057602, 39.091789, 44.771301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441158, 39.163612, 44.859207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187672, 0.179653, -0.965663,
		-0.212877, 0.967203, 0.138568,
		0.958886, 0.179562, 0.219761,
		36.728825, 39.217480, 44.925137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227417, 39.656712, 44.238911>,  <36.057602, 39.091789, 44.771301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227417, 39.656712, 44.238911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592693, 39.548923, 44.361206>,  <36.811859, 39.484249, 44.434582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592693, 39.548923, 44.361206>,  <36.227417, 39.656712, 44.238911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592693, 39.548923, 44.361206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359946, 0.181476, -0.915153,
		0.191124, 0.945754, 0.262717,
		0.913187, -0.269472, 0.305736,
		36.866650, 39.468082, 44.452927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767757, 40.219765, 44.137440>,  <36.227417, 39.656712, 44.238911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767757, 40.219765, 44.137440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973576, 39.876781, 44.139179>,  <37.097065, 39.670994, 44.140221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973576, 39.876781, 44.139179>,  <36.767757, 40.219765, 44.137440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973576, 39.876781, 44.139179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460092, 0.271809, -0.845243,
		0.723576, 0.436912, 0.534365,
		0.514542, -0.857455, 0.004345,
		37.127937, 39.619545, 44.140484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296490, 40.304157, 43.687954>,  <36.767757, 40.219765, 44.137440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296490, 40.304157, 43.687954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349064, 39.911556, 43.743633>,  <37.380608, 39.675995, 43.777039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349064, 39.911556, 43.743633>,  <37.296490, 40.304157, 43.687954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349064, 39.911556, 43.743633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563609, -0.041526, -0.824997,
		0.815518, 0.186884, 0.547726,
		0.131434, -0.981504, 0.139195,
		37.388493, 39.617104, 43.785393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.427217, 33.391392, 28.458378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421640, 32.992107, 28.481657>,  <28.418295, 32.752537, 28.495625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421640, 32.992107, 28.481657>,  <28.427217, 33.391392, 28.458378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421640, 32.992107, 28.481657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569208, 0.055774, 0.820300,
		-0.822075, -0.021689, -0.568966,
		-0.013942, -0.998208, 0.058196,
		28.417458, 32.692646, 28.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739508, 33.308273, 28.498749>,  <28.427217, 33.391392, 28.458378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739508, 33.308273, 28.498749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937601, 32.994690, 28.648495>,  <28.056458, 32.806538, 28.738342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937601, 32.994690, 28.648495>,  <27.739508, 33.308273, 28.498749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937601, 32.994690, 28.648495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528780, 0.069898, 0.845876,
		-0.689301, -0.616863, -0.379927,
		0.495234, -0.783961, 0.374366,
		28.086172, 32.759502, 28.760805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209438, 32.761486, 28.699381>,  <27.739508, 33.308273, 28.498749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209438, 32.761486, 28.699381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551651, 32.716095, 28.901443>,  <27.756979, 32.688862, 29.022682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551651, 32.716095, 28.901443>,  <27.209438, 32.761486, 28.699381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551651, 32.716095, 28.901443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513011, -0.054149, 0.856672,
		-0.069855, -0.992064, -0.104539,
		0.855535, -0.113473, 0.505158,
		27.808311, 32.682053, 29.052990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953886, 32.347446, 29.314034>,  <27.209438, 32.761486, 28.699381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953886, 32.347446, 29.314034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325428, 32.469715, 29.397743>,  <27.548353, 32.543076, 29.447969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325428, 32.469715, 29.397743>,  <26.953886, 32.347446, 29.314034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325428, 32.469715, 29.397743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197844, -0.068273, 0.977853,
		0.313194, -0.949685, -0.002940,
		0.928852, 0.305676, 0.209273,
		27.604084, 32.561417, 29.460526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170263, 31.960783, 29.902781>,  <26.953886, 32.347446, 29.314034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170263, 31.960783, 29.902781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435553, 32.260143, 29.904879>,  <27.594727, 32.439758, 29.906137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435553, 32.260143, 29.904879>,  <27.170263, 31.960783, 29.902781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435553, 32.260143, 29.904879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090246, 0.073013, 0.993240,
		0.742959, -0.659215, 0.115964,
		0.663225, 0.748401, 0.005246,
		27.634520, 32.484665, 29.906452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655441, 31.730431, 30.382532>,  <27.170263, 31.960783, 29.902781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655441, 31.730431, 30.382532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639326, 32.128235, 30.343895>,  <27.629656, 32.366917, 30.320713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639326, 32.128235, 30.343895>,  <27.655441, 31.730431, 30.382532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639326, 32.128235, 30.343895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060581, 0.098923, 0.993249,
		0.997350, 0.034166, -0.064234,
		-0.040289, 0.994508, -0.096591,
		27.627239, 32.426586, 30.314919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073715, 32.064003, 30.976822>,  <27.655441, 31.730431, 30.382532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073715, 32.064003, 30.976822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888029, 32.397224, 30.856470>,  <27.776617, 32.597157, 30.784260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.888029, 32.397224, 30.856470>,  <28.073715, 32.064003, 30.976822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888029, 32.397224, 30.856470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201648, 0.231379, 0.951736,
		0.862464, 0.502480, 0.060574,
		-0.464213, 0.833053, -0.300880,
		27.748766, 32.647141, 30.766207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365627, 32.520443, 31.427223>,  <28.073715, 32.064003, 30.976822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365627, 32.520443, 31.427223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035900, 32.699783, 31.288960>,  <27.838064, 32.807388, 31.206001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035900, 32.699783, 31.288960>,  <28.365627, 32.520443, 31.427223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035900, 32.699783, 31.288960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079578, 0.512741, 0.854847,
		0.560507, 0.732173, -0.386983,
		-0.824318, 0.448352, -0.345660,
		27.788605, 32.834290, 31.185261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560322, 33.168240, 31.638268>,  <28.365627, 32.520443, 31.427223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560322, 33.168240, 31.638268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166298, 33.155479, 31.570580>,  <27.929884, 33.147823, 31.529966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166298, 33.155479, 31.570580>,  <28.560322, 33.168240, 31.638268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166298, 33.155479, 31.570580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150928, 0.633082, 0.759228,
		0.082908, 0.773427, -0.628440,
		-0.985062, -0.031903, -0.169219,
		27.870779, 33.145908, 31.519814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251144, 33.839027, 31.609821>,  <28.560322, 33.168240, 31.638268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251144, 33.839027, 31.609821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918619, 33.627567, 31.678463>,  <27.719105, 33.500690, 31.719648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918619, 33.627567, 31.678463>,  <28.251144, 33.839027, 31.609821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918619, 33.627567, 31.678463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280735, 0.665852, 0.691252,
		-0.479693, 0.526471, -0.701942,
		-0.831314, -0.528648, 0.171605,
		27.669226, 33.468971, 31.729944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739456, 34.300640, 31.581005>,  <28.251144, 33.839027, 31.609821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739456, 34.300640, 31.581005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.599024, 33.996162, 31.799114>,  <27.514765, 33.813477, 31.929979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.599024, 33.996162, 31.799114>,  <27.739456, 34.300640, 31.581005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599024, 33.996162, 31.799114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227488, 0.634236, 0.738914,
		-0.908290, 0.135376, -0.395832,
		-0.351082, -0.761195, 0.545273,
		27.493700, 33.767803, 31.962696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095032, 34.480553, 31.863050>,  <27.739456, 34.300640, 31.581005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095032, 34.480553, 31.863050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198923, 34.187225, 32.114380>,  <27.261259, 34.011230, 32.265179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198923, 34.187225, 32.114380>,  <27.095032, 34.480553, 31.863050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198923, 34.187225, 32.114380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339627, 0.539717, 0.770298,
		-0.903988, -0.413464, -0.108874,
		0.259729, -0.733316, 0.628321,
		27.276842, 33.967232, 32.302876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634844, 34.586716, 32.294151>,  <27.095032, 34.480553, 31.863050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634844, 34.586716, 32.294151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877348, 34.338448, 32.493034>,  <27.022850, 34.189487, 32.612362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877348, 34.338448, 32.493034>,  <26.634844, 34.586716, 32.294151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877348, 34.338448, 32.493034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098449, 0.561822, 0.821379,
		-0.789150, -0.546918, 0.279505,
		0.606260, -0.620674, 0.497205,
		27.059225, 34.152245, 32.642197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241686, 34.428532, 32.897865>,  <26.634844, 34.586716, 32.294151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241686, 34.428532, 32.897865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631432, 34.369305, 32.965622>,  <26.865278, 34.333767, 33.006275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631432, 34.369305, 32.965622>,  <26.241686, 34.428532, 32.897865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631432, 34.369305, 32.965622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096045, 0.407109, 0.908316,
		-0.203453, -0.901298, 0.382450,
		0.974362, -0.148067, 0.169393,
		26.923740, 34.324886, 33.016441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264036, 34.196808, 33.585762>,  <26.241686, 34.428532, 32.897865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264036, 34.196808, 33.585762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.637423, 34.308167, 33.495308>,  <26.861454, 34.374981, 33.441036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.637423, 34.308167, 33.495308>,  <26.264036, 34.196808, 33.585762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637423, 34.308167, 33.495308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040407, 0.544838, 0.837567,
		0.356382, -0.790978, 0.497339,
		0.933467, 0.278398, -0.226131,
		26.917461, 34.391685, 33.427467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598728, 34.087589, 34.225208>,  <26.264036, 34.196808, 33.585762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598728, 34.087589, 34.225208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.805944, 34.356537, 34.013718>,  <26.930275, 34.517906, 33.886826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.805944, 34.356537, 34.013718>,  <26.598728, 34.087589, 34.225208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805944, 34.356537, 34.013718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050716, 0.592901, 0.803677,
		0.853851, -0.443152, 0.273047,
		0.518041, 0.672373, -0.528724,
		26.961357, 34.558247, 33.855099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052633, 34.424591, 34.735420>,  <26.598728, 34.087589, 34.225208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052633, 34.424591, 34.735420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.042902, 34.661572, 34.413326>,  <27.037064, 34.803761, 34.220070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.042902, 34.661572, 34.413326>,  <27.052633, 34.424591, 34.735420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042902, 34.661572, 34.413326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063517, 0.802935, 0.592673,
		0.997684, 0.065564, 0.018098,
		-0.024327, 0.592450, -0.805240,
		27.035604, 34.839306, 34.171753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607664, 34.942856, 34.877865>,  <27.052633, 34.424591, 34.735420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607664, 34.942856, 34.877865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358715, 35.091694, 34.602417>,  <27.209345, 35.180996, 34.437149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358715, 35.091694, 34.602417>,  <27.607664, 34.942856, 34.877865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358715, 35.091694, 34.602417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071803, 0.848927, 0.523611,
		0.779420, 0.375327, -0.501633,
		-0.622374, 0.372094, -0.688619,
		27.172003, 35.203323, 34.395832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933754, 35.533447, 34.594864>,  <27.607664, 34.942856, 34.877865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933754, 35.533447, 34.594864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.548138, 35.605045, 34.516289>,  <27.316769, 35.648003, 34.469143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.548138, 35.605045, 34.516289>,  <27.933754, 35.533447, 34.594864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548138, 35.605045, 34.516289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111562, 0.943454, 0.312168,
		0.241201, 0.279029, -0.929497,
		-0.964041, 0.178992, -0.196433,
		27.258924, 35.658745, 34.457359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939322, 36.217548, 34.518166>,  <27.933754, 35.533447, 34.594864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939322, 36.217548, 34.518166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547989, 36.138290, 34.542198>,  <27.313190, 36.090736, 34.556618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547989, 36.138290, 34.542198>,  <27.939322, 36.217548, 34.518166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547989, 36.138290, 34.542198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152101, 0.884639, 0.440771,
		-0.140486, 0.422081, -0.895606,
		-0.978329, -0.198145, 0.060081,
		27.254490, 36.078846, 34.560223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301407, 36.816368, 34.352913>,  <27.939322, 36.217548, 34.518166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301407, 36.816368, 34.352913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667986, 36.656307, 34.352852>,  <28.887934, 36.560268, 34.352818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667986, 36.656307, 34.352852>,  <28.301407, 36.816368, 34.352913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667986, 36.656307, 34.352852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007476, 0.017497, -0.999819,
		0.400087, 0.916280, 0.019026,
		0.916447, -0.400156, -0.000150,
		28.942921, 36.536259, 34.352806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619474, 37.243858, 33.869961>,  <28.301407, 36.816368, 34.352913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619474, 37.243858, 33.869961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814432, 36.897293, 33.913357>,  <28.931406, 36.689354, 33.939392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814432, 36.897293, 33.913357>,  <28.619474, 37.243858, 33.869961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814432, 36.897293, 33.913357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228181, 0.006453, -0.973597,
		0.842841, 0.499280, 0.200845,
		0.487394, -0.866417, 0.108487,
		28.960649, 36.637367, 33.945904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167694, 37.272675, 33.315201>,  <28.619474, 37.243858, 33.869961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167694, 37.272675, 33.315201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202637, 36.885372, 33.408875>,  <29.223602, 36.652988, 33.465080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202637, 36.885372, 33.408875>,  <29.167694, 37.272675, 33.315201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202637, 36.885372, 33.408875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224355, -0.209921, -0.951629,
		0.970584, 0.135673, 0.198896,
		0.087357, -0.968259, 0.234185,
		29.228844, 36.594894, 33.479130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804380, 37.064209, 33.019207>,  <29.167694, 37.272675, 33.315201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804380, 37.064209, 33.019207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609558, 36.718456, 33.069195>,  <29.492664, 36.511005, 33.099186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609558, 36.718456, 33.069195>,  <29.804380, 37.064209, 33.019207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609558, 36.718456, 33.069195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324352, -0.311876, -0.893045,
		0.810908, -0.394429, 0.432266,
		-0.487056, -0.864384, 0.124969,
		29.463442, 36.459141, 33.106686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188536, 36.541882, 32.695484>,  <29.804380, 37.064209, 33.019207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188536, 36.541882, 32.695484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834919, 36.357925, 32.728867>,  <29.622749, 36.247551, 32.748898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834919, 36.357925, 32.728867>,  <30.188536, 36.541882, 32.695484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834919, 36.357925, 32.728867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142157, -0.434648, -0.889310,
		0.445264, -0.774324, 0.449625,
		-0.884043, -0.459895, 0.083457,
		29.569706, 36.219955, 32.753902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283869, 35.976707, 32.409683>,  <30.188536, 36.541882, 32.695484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283869, 35.976707, 32.409683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888035, 36.025627, 32.379303>,  <29.650536, 36.054977, 32.361076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888035, 36.025627, 32.379303>,  <30.283869, 35.976707, 32.409683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888035, 36.025627, 32.379303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045458, -0.235121, -0.970902,
		-0.136599, -0.964241, 0.227113,
		-0.989583, 0.122300, -0.075950,
		29.591160, 36.062317, 32.356518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969814, 35.338997, 31.943836>,  <30.283869, 35.976707, 32.409683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969814, 35.338997, 31.943836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682959, 35.616055, 31.974691>,  <29.510845, 35.782291, 31.993204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682959, 35.616055, 31.974691>,  <29.969814, 35.338997, 31.943836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682959, 35.616055, 31.974691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287307, -0.192982, -0.938197,
		-0.634954, -0.694980, 0.337397,
		-0.717139, 0.692648, 0.077138,
		29.467817, 35.823849, 31.997833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378498, 34.962933, 31.771370>,  <29.969814, 35.338997, 31.943836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378498, 34.962933, 31.771370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318048, 35.348431, 31.683409>,  <29.281778, 35.579731, 31.630632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318048, 35.348431, 31.683409>,  <29.378498, 34.962933, 31.771370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318048, 35.348431, 31.683409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086068, -0.234441, -0.968313,
		-0.984760, -0.127410, 0.118377,
		-0.151126, 0.963744, -0.219902,
		29.272711, 35.637554, 31.617437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775177, 34.957516, 31.246153>,  <29.378498, 34.962933, 31.771370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775177, 34.957516, 31.246153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979309, 35.298210, 31.198654>,  <29.101789, 35.502628, 31.170155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.979309, 35.298210, 31.198654>,  <28.775177, 34.957516, 31.246153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979309, 35.298210, 31.198654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053315, -0.169150, -0.984147,
		-0.858323, 0.495911, -0.131733,
		0.510332, 0.851740, -0.118746,
		29.132408, 35.553734, 31.163031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512896, 35.279705, 30.663019>,  <28.775177, 34.957516, 31.246153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512896, 35.279705, 30.663019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860039, 35.472080, 30.712852>,  <29.068325, 35.587505, 30.742752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.860039, 35.472080, 30.712852>,  <28.512896, 35.279705, 30.663019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860039, 35.472080, 30.712852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166031, -0.044415, -0.985120,
		-0.468246, 0.875630, -0.118396,
		0.867859, 0.480936, 0.124585,
		29.120396, 35.616360, 30.750227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550003, 35.796196, 30.153322>,  <28.512896, 35.279705, 30.663019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550003, 35.796196, 30.153322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934246, 35.759930, 30.258408>,  <29.164791, 35.738171, 30.321459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934246, 35.759930, 30.258408>,  <28.550003, 35.796196, 30.153322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934246, 35.759930, 30.258408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268521, 0.059070, -0.961461,
		0.071653, 0.994128, 0.081089,
		0.960605, -0.090665, 0.262712,
		29.222427, 35.732731, 30.337221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007193, 36.207455, 29.625135>,  <28.550003, 35.796196, 30.153322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007193, 36.207455, 29.625135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244997, 35.946445, 29.813080>,  <29.387680, 35.789841, 29.925846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244997, 35.946445, 29.813080>,  <29.007193, 36.207455, 29.625135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244997, 35.946445, 29.813080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456706, -0.206913, -0.865221,
		0.661797, 0.728972, 0.174999,
		0.594512, -0.652524, 0.469860,
		29.423351, 35.750687, 29.954039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778427, 36.342419, 29.358854>,  <29.007193, 36.207455, 29.625135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778427, 36.342419, 29.358854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708323, 35.973698, 29.497166>,  <29.666260, 35.752464, 29.580153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708323, 35.973698, 29.497166>,  <29.778427, 36.342419, 29.358854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708323, 35.973698, 29.497166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484426, -0.386499, -0.784825,
		0.857096, 0.029952, 0.514285,
		-0.175263, -0.921803, 0.345776,
		29.655743, 35.697155, 29.600899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304815, 35.949291, 29.096649>,  <29.778427, 36.342419, 29.358854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304815, 35.949291, 29.096649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.049995, 35.667332, 29.221409>,  <29.897104, 35.498154, 29.296265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.049995, 35.667332, 29.221409>,  <30.304815, 35.949291, 29.096649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049995, 35.667332, 29.221409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226269, -0.557813, -0.798528,
		0.736865, -0.438129, 0.514852,
		-0.637049, -0.704903, 0.311898,
		29.858881, 35.455860, 29.314978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689659, 35.337746, 29.024471>,  <30.304815, 35.949291, 29.096649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689659, 35.337746, 29.024471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302631, 35.237206, 29.034521>,  <30.070415, 35.176880, 29.040550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302631, 35.237206, 29.034521>,  <30.689659, 35.337746, 29.024471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302631, 35.237206, 29.034521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141750, -0.622585, -0.769607,
		0.209086, -0.741087, 0.638023,
		-0.967569, -0.251353, 0.025125,
		30.012360, 35.161800, 29.042059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695673, 34.651405, 28.756477>,  <30.689659, 35.337746, 29.024471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695673, 34.651405, 28.756477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314087, 34.764381, 28.716120>,  <30.085136, 34.832169, 28.691906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.314087, 34.764381, 28.716120>,  <30.695673, 34.651405, 28.756477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314087, 34.764381, 28.716120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042575, -0.460515, -0.886630,
		-0.296883, -0.841518, 0.451340,
		-0.953964, 0.282441, -0.100891,
		30.027897, 34.849113, 28.685852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303577, 34.069599, 28.692446>,  <30.695673, 34.651405, 28.756477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303577, 34.069599, 28.692446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081945, 34.358059, 28.526102>,  <29.948967, 34.531136, 28.426296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081945, 34.358059, 28.526102>,  <30.303577, 34.069599, 28.692446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081945, 34.358059, 28.526102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145934, -0.575959, -0.804347,
		-0.819573, -0.384983, 0.424367,
		-0.554078, 0.721151, -0.415858,
		29.915722, 34.574406, 28.401344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690853, 33.748981, 28.426916>,  <30.303577, 34.069599, 28.692446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690853, 33.748981, 28.426916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719856, 34.105915, 28.248711>,  <29.737257, 34.320076, 28.141787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719856, 34.105915, 28.248711>,  <29.690853, 33.748981, 28.426916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719856, 34.105915, 28.248711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054169, -0.442508, -0.895127,
		-0.995896, 0.089036, 0.016252,
		0.072507, 0.892334, -0.445515,
		29.741608, 34.373615, 28.115057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185261, 33.736809, 27.952641>,  <29.690853, 33.748981, 28.426916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185261, 33.736809, 27.952641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422150, 34.025707, 27.809740>,  <29.564283, 34.199047, 27.723999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.422150, 34.025707, 27.809740>,  <29.185261, 33.736809, 27.952641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422150, 34.025707, 27.809740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064041, -0.399773, -0.914374,
		-0.803224, 0.564393, -0.190502,
		0.592224, 0.722248, -0.357252,
		29.599817, 34.242382, 27.702564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852842, 33.794426, 27.300699>,  <29.185261, 33.736809, 27.952641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852842, 33.794426, 27.300699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214323, 33.965675, 27.298386>,  <29.431211, 34.068424, 27.296997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214323, 33.965675, 27.298386>,  <28.852842, 33.794426, 27.300699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214323, 33.965675, 27.298386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183704, -0.399903, -0.897959,
		-0.386747, 0.810426, -0.440041,
		0.903703, 0.428120, -0.005782,
		29.485434, 34.094112, 27.296650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917406, 34.265965, 26.751532>,  <28.852842, 33.794426, 27.300699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917406, 34.265965, 26.751532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285105, 34.141365, 26.847830>,  <29.505724, 34.066605, 26.905609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285105, 34.141365, 26.847830>,  <28.917406, 34.265965, 26.751532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285105, 34.141365, 26.847830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097669, -0.411958, -0.905953,
		0.381378, 0.856306, -0.348267,
		0.919245, -0.311496, 0.240746,
		29.560879, 34.047916, 26.920053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280317, 34.314293, 26.162176>,  <28.917406, 34.265965, 26.751532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280317, 34.314293, 26.162176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455181, 34.034904, 26.388813>,  <29.560099, 33.867271, 26.524796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455181, 34.034904, 26.388813>,  <29.280317, 34.314293, 26.162176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455181, 34.034904, 26.388813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005618, -0.632085, -0.774879,
		0.899366, 0.335562, -0.280246,
		0.437160, -0.698475, 0.566591,
		29.586329, 33.825363, 26.558790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.594276, 36.832012, 49.895473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228153, 36.753246, 49.754940>,  <39.008480, 36.705986, 49.670620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228153, 36.753246, 49.754940>,  <39.594276, 36.832012, 49.895473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228153, 36.753246, 49.754940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397320, 0.298718, 0.867701,
		-0.065911, 0.933806, -0.351656,
		-0.915310, -0.196911, -0.351331,
		38.953560, 36.694172, 49.649540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108200, 37.376259, 50.082966>,  <39.594276, 36.832012, 49.895473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108200, 37.376259, 50.082966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876652, 37.053555, 50.035564>,  <38.737724, 36.859932, 50.007122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876652, 37.053555, 50.035564>,  <39.108200, 37.376259, 50.082966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876652, 37.053555, 50.035564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551394, 0.280215, 0.785776,
		-0.600728, 0.520204, -0.607053,
		-0.578869, -0.806763, -0.118504,
		38.702991, 36.811527, 50.000011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452251, 37.624146, 50.214916>,  <39.108200, 37.376259, 50.082966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452251, 37.624146, 50.214916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.381718, 37.231514, 50.244347>,  <38.339397, 36.995937, 50.262005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.381718, 37.231514, 50.244347>,  <38.452251, 37.624146, 50.214916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381718, 37.231514, 50.244347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492154, 0.152655, 0.857019,
		-0.852462, 0.114909, -0.510005,
		-0.176334, -0.981577, 0.073579,
		38.328819, 36.937042, 50.266418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744919, 37.645229, 50.332016>,  <38.452251, 37.624146, 50.214916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744919, 37.645229, 50.332016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872845, 37.283688, 50.445698>,  <37.949600, 37.066765, 50.513908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872845, 37.283688, 50.445698>,  <37.744919, 37.645229, 50.332016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872845, 37.283688, 50.445698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651614, 0.007941, 0.758509,
		-0.687837, -0.427771, -0.586423,
		0.319812, -0.903852, 0.284203,
		37.968788, 37.012531, 50.530960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086903, 37.217178, 50.483841>,  <37.744919, 37.645229, 50.332016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086903, 37.217178, 50.483841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392563, 37.054398, 50.684025>,  <37.575958, 36.956730, 50.804134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392563, 37.054398, 50.684025>,  <37.086903, 37.217178, 50.483841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392563, 37.054398, 50.684025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569068, -0.060029, 0.820096,
		-0.303695, -0.911477, -0.277453,
		0.764153, -0.406948, 0.500462,
		37.621811, 36.932312, 50.834164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766880, 36.828365, 50.792149>,  <37.086903, 37.217178, 50.483841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766880, 36.828365, 50.792149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114239, 36.829239, 50.990498>,  <37.322655, 36.829765, 51.109505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114239, 36.829239, 50.990498>,  <36.766880, 36.828365, 50.792149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114239, 36.829239, 50.990498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495853, -0.005364, 0.868390,
		0.004553, -0.999983, -0.003577,
		0.868395, 0.002180, 0.495869,
		37.374756, 36.829895, 51.139259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593430, 36.402229, 51.339462>,  <36.766880, 36.828365, 50.792149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593430, 36.402229, 51.339462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913967, 36.622295, 51.433422>,  <37.106289, 36.754333, 51.489796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913967, 36.622295, 51.433422>,  <36.593430, 36.402229, 51.339462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913967, 36.622295, 51.433422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332387, 0.083022, 0.939482,
		0.497365, -0.830921, 0.249396,
		0.801340, 0.550161, 0.234896,
		37.154369, 36.787342, 51.503891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753895, 36.170551, 51.984043>,  <36.593430, 36.402229, 51.339462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753895, 36.170551, 51.984043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945274, 36.520081, 51.949371>,  <37.060101, 36.729797, 51.928570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945274, 36.520081, 51.949371>,  <36.753895, 36.170551, 51.984043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945274, 36.520081, 51.949371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142845, 0.174842, 0.974179,
		0.866418, -0.453715, 0.208475,
		0.478450, 0.873826, -0.086676,
		37.088810, 36.782230, 51.923370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169762, 36.222565, 52.530182>,  <36.753895, 36.170551, 51.984043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169762, 36.222565, 52.530182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088154, 36.597515, 52.417259>,  <37.039188, 36.822487, 52.349506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088154, 36.597515, 52.417259>,  <37.169762, 36.222565, 52.530182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088154, 36.597515, 52.417259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156067, 0.253543, 0.954652,
		0.966447, 0.238826, 0.094567,
		-0.204018, 0.937379, -0.282309,
		37.026947, 36.878727, 52.332565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477947, 36.633602, 53.035065>,  <37.169762, 36.222565, 52.530182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477947, 36.633602, 53.035065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238018, 36.901905, 52.860573>,  <37.094059, 37.062889, 52.755878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238018, 36.901905, 52.860573>,  <37.477947, 36.633602, 53.035065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238018, 36.901905, 52.860573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324426, 0.294487, 0.898902,
		0.731411, 0.680705, 0.040972,
		-0.599822, 0.670759, -0.436229,
		37.058071, 37.103134, 52.729706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522999, 37.356346, 53.333714>,  <37.477947, 36.633602, 53.035065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522999, 37.356346, 53.333714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164642, 37.276283, 53.175060>,  <36.949631, 37.228245, 53.079868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164642, 37.276283, 53.175060>,  <37.522999, 37.356346, 53.333714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164642, 37.276283, 53.175060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444011, 0.372414, 0.814961,
		-0.015407, 0.906225, -0.422514,
		-0.895889, -0.200157, -0.396636,
		36.895874, 37.216236, 53.056068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107628, 38.028133, 53.559265>,  <37.522999, 37.356346, 53.333714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107628, 38.028133, 53.559265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850906, 37.749676, 53.430592>,  <36.696873, 37.582603, 53.353390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850906, 37.749676, 53.430592>,  <37.107628, 38.028133, 53.559265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850906, 37.749676, 53.430592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668590, 0.302485, 0.679331,
		-0.375607, 0.651068, -0.659568,
		-0.641800, -0.696141, -0.321682,
		36.658367, 37.540833, 53.334087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569088, 38.390892, 53.548767>,  <37.107628, 38.028133, 53.559265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569088, 38.390892, 53.548767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446602, 38.010174, 53.555847>,  <36.373112, 37.781742, 53.560093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446602, 38.010174, 53.555847>,  <36.569088, 38.390892, 53.548767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446602, 38.010174, 53.555847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600145, 0.207443, 0.772524,
		-0.738958, 0.225935, -0.634739,
		-0.306213, -0.951799, 0.017698,
		36.354736, 37.724636, 53.561157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750397, 38.334122, 53.599197>,  <36.569088, 38.390892, 53.548767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750397, 38.334122, 53.599197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918606, 38.006687, 53.755703>,  <36.019531, 37.810226, 53.849606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918606, 38.006687, 53.755703>,  <35.750397, 38.334122, 53.599197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918606, 38.006687, 53.755703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505539, 0.146688, 0.850243,
		-0.753387, -0.555344, -0.352139,
		0.420522, -0.818582, 0.391261,
		36.044762, 37.761112, 53.873081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337070, 38.360920, 54.124470>,  <35.750397, 38.334122, 53.599197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337070, 38.360920, 54.124470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072681, 38.661011, 54.117847>,  <34.914047, 38.841064, 54.113873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072681, 38.661011, 54.117847>,  <35.337070, 38.360920, 54.124470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072681, 38.661011, 54.117847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147907, 0.108613, -0.983019,
		-0.735689, -0.652199, -0.182754,
		-0.660973, 0.750227, -0.016560,
		34.874390, 38.886078, 54.112881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727642, 38.097290, 53.658745>,  <35.337070, 38.360920, 54.124470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727642, 38.097290, 53.658745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729115, 38.497044, 53.672699>,  <34.729996, 38.736897, 53.681072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729115, 38.497044, 53.672699>,  <34.727642, 38.097290, 53.658745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729115, 38.497044, 53.672699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203103, 0.033411, -0.978587,
		-0.979151, 0.010684, -0.202855,
		0.003678, 0.999385, 0.034885,
		34.730217, 38.796860, 53.683163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315742, 38.216068, 53.158596>,  <34.727642, 38.097290, 53.658745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315742, 38.216068, 53.158596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515514, 38.557037, 53.220501>,  <34.635376, 38.761620, 53.257645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515514, 38.557037, 53.220501>,  <34.315742, 38.216068, 53.158596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515514, 38.557037, 53.220501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040718, 0.201536, -0.978634,
		-0.865399, 0.482455, 0.135361,
		0.499427, 0.852421, 0.154764,
		34.665344, 38.812763, 53.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953674, 38.671860, 52.706444>,  <34.315742, 38.216068, 53.158596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953674, 38.671860, 52.706444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303925, 38.856033, 52.764801>,  <34.514072, 38.966537, 52.799816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.303925, 38.856033, 52.764801>,  <33.953674, 38.671860, 52.706444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303925, 38.856033, 52.764801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031615, 0.356042, -0.933935,
		-0.481961, 0.813162, 0.326315,
		0.875622, 0.460437, 0.145890,
		34.566612, 38.994164, 52.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871212, 39.453468, 52.556435>,  <33.953674, 38.671860, 52.706444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871212, 39.453468, 52.556435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259827, 39.363380, 52.527081>,  <34.492996, 39.309326, 52.509468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259827, 39.363380, 52.527081>,  <33.871212, 39.453468, 52.556435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259827, 39.363380, 52.527081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019889, 0.386288, -0.922164,
		0.236039, 0.894459, 0.379774,
		0.971540, -0.225220, -0.073389,
		34.551289, 39.295815, 52.505062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209633, 40.010002, 52.285198>,  <33.871212, 39.453468, 52.556435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209633, 40.010002, 52.285198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452782, 39.702972, 52.203884>,  <34.598671, 39.518757, 52.155098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452782, 39.702972, 52.203884>,  <34.209633, 40.010002, 52.285198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452782, 39.702972, 52.203884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089560, 0.320657, -0.942952,
		0.788966, 0.554991, 0.263663,
		0.607875, -0.767570, -0.203283,
		34.635143, 39.472702, 52.142899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577614, 40.092045, 51.738625>,  <34.209633, 40.010002, 52.285198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577614, 40.092045, 51.738625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733543, 39.723701, 51.735477>,  <34.827103, 39.502697, 51.733589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733543, 39.723701, 51.735477>,  <34.577614, 40.092045, 51.738625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733543, 39.723701, 51.735477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211718, 0.097937, -0.972411,
		0.896222, 0.377402, 0.233140,
		0.389823, -0.920856, -0.007871,
		34.850491, 39.447445, 51.733116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263947, 40.123104, 51.421082>,  <34.577614, 40.092045, 51.738625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263947, 40.123104, 51.421082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153130, 39.741680, 51.373783>,  <35.086639, 39.512825, 51.345406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153130, 39.741680, 51.373783>,  <35.263947, 40.123104, 51.421082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153130, 39.741680, 51.373783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205586, 0.061388, -0.976712,
		0.938608, -0.294896, 0.179030,
		-0.277038, -0.953556, -0.118246,
		35.070019, 39.455612, 51.338310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736057, 39.840675, 51.052341>,  <35.263947, 40.123104, 51.421082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736057, 39.840675, 51.052341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426815, 39.594322, 50.991684>,  <35.241268, 39.446510, 50.955292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426815, 39.594322, 50.991684>,  <35.736057, 39.840675, 51.052341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426815, 39.594322, 50.991684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151608, 0.052713, -0.987034,
		0.615886, -0.786076, 0.052619,
		-0.773110, -0.615878, -0.151640,
		35.194881, 39.409557, 50.946194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988155, 39.290249, 50.628761>,  <35.736057, 39.840675, 51.052341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988155, 39.290249, 50.628761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596802, 39.226177, 50.576435>,  <35.361992, 39.187733, 50.545040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596802, 39.226177, 50.576435>,  <35.988155, 39.290249, 50.628761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596802, 39.226177, 50.576435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153635, -0.139476, -0.978235,
		0.138447, -0.977184, 0.161069,
		-0.978381, -0.160179, -0.130819,
		35.303288, 39.178123, 50.537189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874779, 38.684906, 50.211281>,  <35.988155, 39.290249, 50.628761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874779, 38.684906, 50.211281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532459, 38.889759, 50.182079>,  <35.327068, 39.012669, 50.164558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532459, 38.889759, 50.182079>,  <35.874779, 38.684906, 50.211281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532459, 38.889759, 50.182079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013369, -0.162971, -0.986540,
		-0.517136, -0.843304, 0.146318,
		-0.855799, 0.512131, -0.073004,
		35.275719, 39.043400, 50.160179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349590, 38.209076, 49.846992>,  <35.874779, 38.684906, 50.211281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349590, 38.209076, 49.846992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197735, 38.574818, 49.790665>,  <35.106621, 38.794262, 49.756870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197735, 38.574818, 49.790665>,  <35.349590, 38.209076, 49.846992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197735, 38.574818, 49.790665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032541, -0.165315, -0.985704,
		-0.924564, -0.369625, 0.092514,
		-0.379634, 0.914357, -0.140816,
		35.083843, 38.849125, 49.748421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832527, 38.074314, 49.370205>,  <35.349590, 38.209076, 49.846992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832527, 38.074314, 49.370205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918598, 38.463795, 49.340263>,  <34.970242, 38.697483, 49.322300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918598, 38.463795, 49.340263>,  <34.832527, 38.074314, 49.370205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918598, 38.463795, 49.340263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053469, -0.088279, -0.994660,
		-0.975111, 0.210023, -0.071058,
		0.215174, 0.973703, -0.074852,
		34.983150, 38.755905, 49.317806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363670, 38.385021, 48.888393>,  <34.832527, 38.074314, 49.370205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363670, 38.385021, 48.888393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679600, 38.630093, 48.877075>,  <34.869156, 38.777138, 48.870285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679600, 38.630093, 48.877075>,  <34.363670, 38.385021, 48.888393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679600, 38.630093, 48.877075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000714, -0.045223, -0.998977,
		-0.613333, 0.789036, -0.035280,
		0.789824, 0.612680, -0.028300,
		34.916546, 38.813896, 48.868584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695118, 38.436596, 48.568600>,  <34.363670, 38.385021, 48.888393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695118, 38.436596, 48.568600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401810, 38.275578, 48.349411>,  <33.225826, 38.178967, 48.217896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401810, 38.275578, 48.349411>,  <33.695118, 38.436596, 48.568600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401810, 38.275578, 48.349411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503942, -0.219289, 0.835437,
		-0.456468, 0.888745, -0.042064,
		-0.733267, -0.402548, -0.547974,
		33.181831, 38.154812, 48.185020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062145, 38.867695, 48.732895>,  <33.695118, 38.436596, 48.568600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062145, 38.867695, 48.732895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965706, 38.493992, 48.627804>,  <32.907845, 38.269768, 48.564747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965706, 38.493992, 48.627804>,  <33.062145, 38.867695, 48.732895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965706, 38.493992, 48.627804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645478, -0.047795, 0.762282,
		-0.724728, 0.353370, -0.591522,
		-0.241096, -0.934262, -0.262730,
		32.893375, 38.213715, 48.548985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395088, 38.728088, 48.894669>,  <33.062145, 38.867695, 48.732895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395088, 38.728088, 48.894669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500908, 38.343102, 48.870407>,  <32.564400, 38.112110, 48.855850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500908, 38.343102, 48.870407>,  <32.395088, 38.728088, 48.894669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500908, 38.343102, 48.870407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373275, -0.160183, 0.913787,
		-0.889202, -0.219102, -0.401640,
		0.264549, -0.962463, -0.060650,
		32.580273, 38.054363, 48.852211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808296, 38.189716, 49.136471>,  <32.395088, 38.728088, 48.894669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808296, 38.189716, 49.136471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155693, 37.992332, 49.155342>,  <32.364132, 37.873901, 49.166664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.155693, 37.992332, 49.155342>,  <31.808296, 38.189716, 49.136471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155693, 37.992332, 49.155342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164522, -0.197156, 0.966469,
		-0.467608, -0.847131, -0.252413,
		0.868490, -0.493456, 0.047180,
		32.416241, 37.844296, 49.169495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677603, 37.718056, 49.601364>,  <31.808296, 38.189716, 49.136471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677603, 37.718056, 49.601364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067841, 37.630245, 49.599457>,  <32.301983, 37.577557, 49.598312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067841, 37.630245, 49.599457>,  <31.677603, 37.718056, 49.601364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067841, 37.630245, 49.599457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056610, -0.272435, 0.960507,
		-0.212155, -0.936796, -0.278214,
		0.975595, -0.219526, -0.004767,
		32.360519, 37.564384, 49.598026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863461, 36.948212, 49.912766>,  <31.677603, 37.718056, 49.601364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863461, 36.948212, 49.912766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177322, 37.193634, 49.948235>,  <32.365639, 37.340889, 49.969517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177322, 37.193634, 49.948235>,  <31.863461, 36.948212, 49.912766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177322, 37.193634, 49.948235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003249, -0.147106, 0.989115,
		0.619924, -0.775826, -0.117421,
		0.784655, 0.613558, 0.088673,
		32.412720, 37.377701, 49.974838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265797, 36.613392, 50.366501>,  <31.863461, 36.948212, 49.912766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265797, 36.613392, 50.366501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387459, 36.993626, 50.391407>,  <32.460457, 37.221767, 50.406349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387459, 36.993626, 50.391407>,  <32.265797, 36.613392, 50.366501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387459, 36.993626, 50.391407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240595, -0.139893, 0.960492,
		0.921739, -0.277160, -0.271255,
		0.304156, 0.950585, 0.062261,
		32.478706, 37.278801, 50.410084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454941, 35.803547, 50.432762>,  <32.265797, 36.613392, 50.366501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454941, 35.803547, 50.432762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111057, 35.599689, 50.446396>,  <31.904726, 35.477375, 50.454575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111057, 35.599689, 50.446396>,  <32.454941, 35.803547, 50.432762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111057, 35.599689, 50.446396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078497, -0.197765, -0.977102,
		0.504714, -0.837349, 0.210026,
		-0.859711, -0.509643, 0.034085,
		31.853144, 35.446796, 50.456623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588226, 35.003235, 50.172909>,  <32.454941, 35.803547, 50.432762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588226, 35.003235, 50.172909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196693, 35.071671, 50.127979>,  <31.961773, 35.112732, 50.101021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196693, 35.071671, 50.127979>,  <32.588226, 35.003235, 50.172909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196693, 35.071671, 50.127979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048689, -0.338393, -0.939744,
		-0.198787, -0.925321, 0.322900,
		-0.978832, 0.171088, -0.112321,
		31.903044, 35.122997, 50.094284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249958, 34.341099, 49.965107>,  <32.588226, 35.003235, 50.172909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249958, 34.341099, 49.965107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058109, 34.669579, 49.841431>,  <31.943001, 34.866665, 49.767223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058109, 34.669579, 49.841431>,  <32.249958, 34.341099, 49.965107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058109, 34.669579, 49.841431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100331, -0.298731, -0.949049,
		-0.871721, -0.486205, 0.060886,
		-0.479621, 0.821197, -0.309191,
		31.914223, 34.915939, 49.748672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193169, 34.235821, 49.320065>,  <32.249958, 34.341099, 49.965107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193169, 34.235821, 49.320065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107285, 34.626427, 49.327187>,  <32.055756, 34.860790, 49.331459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107285, 34.626427, 49.327187>,  <32.193169, 34.235821, 49.320065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107285, 34.626427, 49.327187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005431, 0.017040, -0.999840,
		-0.976663, -0.214771, 0.001644,
		-0.214709, 0.976516, 0.017809,
		32.042873, 34.919380, 49.332531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688253, 34.347504, 48.853706>,  <32.193169, 34.235821, 49.320065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688253, 34.347504, 48.853706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832800, 34.718945, 48.887421>,  <31.919529, 34.941811, 48.907650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832800, 34.718945, 48.887421>,  <31.688253, 34.347504, 48.853706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832800, 34.718945, 48.887421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070382, 0.062973, -0.995530,
		-0.929763, 0.365685, -0.042601,
		0.361368, 0.928606, 0.084288,
		31.941210, 34.997528, 48.912708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413441, 34.734779, 48.279148>,  <31.688253, 34.347504, 48.853706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413441, 34.734779, 48.279148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739782, 34.935547, 48.394012>,  <31.935587, 35.056007, 48.462929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739782, 34.935547, 48.394012>,  <31.413441, 34.734779, 48.279148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739782, 34.935547, 48.394012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191298, 0.234362, -0.953142,
		-0.545699, 0.832557, 0.095189,
		0.815854, 0.501919, 0.287157,
		31.984539, 35.086124, 48.480160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300669, 35.416805, 47.925999>,  <31.413441, 34.734779, 48.279148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300669, 35.416805, 47.925999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691977, 35.385242, 48.002697>,  <31.926762, 35.366306, 48.048714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691977, 35.385242, 48.002697>,  <31.300669, 35.416805, 47.925999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691977, 35.385242, 48.002697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207337, 0.380128, -0.901396,
		-0.001762, 0.921562, 0.388227,
		0.978268, -0.078905, 0.191743,
		31.985456, 35.361572, 48.060219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.414764, 34.642467, 53.063122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568089, 35.001976, 52.978004>,  <34.660084, 35.217682, 52.926933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568089, 35.001976, 52.978004>,  <34.414764, 34.642467, 53.063122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568089, 35.001976, 52.978004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532331, -0.403255, -0.744318,
		-0.754780, 0.172033, -0.633017,
		0.383314, 0.898771, -0.212790,
		34.683083, 35.271606, 52.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468071, 34.656902, 52.314148>,  <34.414764, 34.642467, 53.063122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468071, 34.656902, 52.314148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746342, 34.913231, 52.444000>,  <34.913303, 35.067028, 52.521912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746342, 34.913231, 52.444000>,  <34.468071, 34.656902, 52.314148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746342, 34.913231, 52.444000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648717, -0.366320, -0.667065,
		-0.308555, 0.674650, -0.670553,
		0.695672, 0.640826, 0.324627,
		34.955044, 35.105480, 52.541389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706131, 34.997845, 51.731758>,  <34.468071, 34.656902, 52.314148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706131, 34.997845, 51.731758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.988796, 35.033764, 52.012489>,  <35.158398, 35.055313, 52.180927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.988796, 35.033764, 52.012489>,  <34.706131, 34.997845, 51.731758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988796, 35.033764, 52.012489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701900, -0.214037, -0.679356,
		0.089213, 0.972690, -0.214280,
		0.706666, 0.089796, 0.701826,
		35.200794, 35.060703, 52.223038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228138, 35.479179, 51.424240>,  <34.706131, 34.997845, 51.731758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228138, 35.479179, 51.424240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395126, 35.247524, 51.704334>,  <35.495319, 35.108532, 51.872391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395126, 35.247524, 51.704334>,  <35.228138, 35.479179, 51.424240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395126, 35.247524, 51.704334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723358, -0.254597, -0.641821,
		0.549977, 0.774458, 0.312635,
		0.417467, -0.579133, 0.700233,
		35.520367, 35.073784, 51.914406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958458, 35.667839, 51.431488>,  <35.228138, 35.479179, 51.424240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958458, 35.667839, 51.431488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946259, 35.304562, 51.598469>,  <35.938938, 35.086597, 51.698658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.946259, 35.304562, 51.598469>,  <35.958458, 35.667839, 51.431488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946259, 35.304562, 51.598469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748985, -0.297325, -0.592132,
		0.661885, 0.294602, 0.689288,
		-0.030499, -0.908189, 0.417447,
		35.937107, 35.032104, 51.723701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737991, 35.461983, 51.724010>,  <35.958458, 35.667839, 51.431488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737991, 35.461983, 51.724010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.544098, 35.114010, 51.687683>,  <36.427761, 34.905228, 51.665886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.544098, 35.114010, 51.687683>,  <36.737991, 35.461983, 51.724010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544098, 35.114010, 51.687683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809096, -0.406535, -0.424373,
		0.332256, -0.279189, 0.900922,
		-0.484736, -0.869933, -0.090817,
		36.398678, 34.853031, 51.660439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278912, 34.847797, 51.790180>,  <36.737991, 35.461983, 51.724010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278912, 34.847797, 51.790180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.951565, 34.721821, 51.597893>,  <36.755157, 34.646236, 51.482521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.951565, 34.721821, 51.597893>,  <37.278912, 34.847797, 51.790180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951565, 34.721821, 51.597893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574589, -0.464777, -0.673669,
		-0.011262, -0.827523, 0.561318,
		-0.818364, -0.314940, -0.480721,
		36.706055, 34.627338, 51.453678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528759, 34.210632, 51.582188>,  <37.278912, 34.847797, 51.790180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528759, 34.210632, 51.582188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.208195, 34.266891, 51.349651>,  <37.015858, 34.300648, 51.210129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.208195, 34.266891, 51.349651>,  <37.528759, 34.210632, 51.582188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208195, 34.266891, 51.349651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500946, -0.373215, -0.780874,
		-0.326789, -0.917023, 0.228645,
		-0.801413, 0.140642, -0.581341,
		36.967770, 34.309086, 51.175247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430672, 33.605652, 51.205624>,  <37.528759, 34.210632, 51.582188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430672, 33.605652, 51.205624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.225399, 33.874699, 50.992371>,  <37.102234, 34.036129, 50.864418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.225399, 33.874699, 50.992371>,  <37.430672, 33.605652, 51.205624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225399, 33.874699, 50.992371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381562, -0.377611, -0.843695,
		-0.768802, -0.636389, -0.062864,
		-0.513180, 0.672621, -0.533130,
		37.071445, 34.076485, 50.832432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125122, 33.237518, 50.654385>,  <37.430672, 33.605652, 51.205624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125122, 33.237518, 50.654385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.102795, 33.611618, 50.514557>,  <37.089397, 33.836079, 50.430660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.102795, 33.611618, 50.514557>,  <37.125122, 33.237518, 50.654385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102795, 33.611618, 50.514557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204198, -0.332024, -0.920903,
		-0.977337, -0.122783, -0.172443,
		-0.055816, 0.935246, -0.349571,
		37.086048, 33.892193, 50.409687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718498, 33.264362, 50.037384>,  <37.125122, 33.237518, 50.654385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718498, 33.264362, 50.037384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.930870, 33.601624, 50.003433>,  <37.058292, 33.803982, 49.983063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.930870, 33.601624, 50.003433>,  <36.718498, 33.264362, 50.037384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930870, 33.601624, 50.003433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312208, -0.287739, -0.905391,
		-0.787804, 0.454204, -0.416009,
		0.530934, 0.843152, -0.084876,
		37.090149, 33.854568, 49.977970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490440, 33.587906, 49.378040>,  <36.718498, 33.264362, 50.037384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490440, 33.587906, 49.378040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.838276, 33.768185, 49.458725>,  <37.046978, 33.876350, 49.507137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.838276, 33.768185, 49.458725>,  <36.490440, 33.587906, 49.378040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838276, 33.768185, 49.458725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273016, -0.098477, -0.956956,
		-0.411432, 0.887229, -0.208681,
		0.869589, 0.450696, 0.201711,
		37.099152, 33.903393, 49.519238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719837, 33.918171, 49.194260>,  <36.490440, 33.587906, 49.378040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719837, 33.918171, 49.194260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.400730, 33.781445, 48.995571>,  <35.209267, 33.699409, 48.876358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.400730, 33.781445, 48.995571>,  <35.719837, 33.918171, 49.194260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400730, 33.781445, 48.995571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418866, -0.278406, 0.864316,
		-0.433727, 0.897581, 0.078928,
		-0.797767, -0.341817, -0.496718,
		35.161400, 33.678898, 48.846554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071251, 34.162045, 49.566128>,  <35.719837, 33.918171, 49.194260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071251, 34.162045, 49.566128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968590, 33.833847, 49.361809>,  <34.906994, 33.636929, 49.239216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968590, 33.833847, 49.361809>,  <35.071251, 34.162045, 49.566128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968590, 33.833847, 49.361809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550649, -0.310207, 0.774956,
		-0.794301, 0.480168, -0.372188,
		-0.256654, -0.820494, -0.510802,
		34.891594, 33.587700, 49.208569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249302, 34.150639, 49.589062>,  <35.071251, 34.162045, 49.566128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249302, 34.150639, 49.589062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314220, 33.776379, 49.463696>,  <34.353172, 33.551823, 49.388477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.314220, 33.776379, 49.463696>,  <34.249302, 34.150639, 49.589062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314220, 33.776379, 49.463696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628083, -0.342925, 0.698509,
		-0.761035, 0.083488, -0.643317,
		0.162293, -0.935645, -0.313415,
		34.362907, 33.495686, 49.369671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535946, 33.826996, 49.593147>,  <34.249302, 34.150639, 49.589062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535946, 33.826996, 49.593147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.808823, 33.534611, 49.585987>,  <33.972549, 33.359180, 49.581692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.808823, 33.534611, 49.585987>,  <33.535946, 33.826996, 49.593147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808823, 33.534611, 49.585987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539753, -0.519955, 0.662052,
		-0.493234, -0.441988, -0.749244,
		0.682193, -0.730953, -0.017895,
		34.013477, 33.315323, 49.580616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127510, 33.259926, 49.540577>,  <33.535946, 33.826996, 49.593147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127510, 33.259926, 49.540577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.484299, 33.118916, 49.653793>,  <33.698372, 33.034309, 49.721725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.484299, 33.118916, 49.653793>,  <33.127510, 33.259926, 49.540577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484299, 33.118916, 49.653793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449098, -0.618996, 0.644325,
		-0.051935, -0.701835, -0.710444,
		0.891972, -0.352522, 0.283045,
		33.751892, 33.013161, 49.738708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968384, 32.559612, 49.740566>,  <33.127510, 33.259926, 49.540577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968384, 32.559612, 49.740566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.310577, 32.647827, 49.927979>,  <33.515892, 32.700756, 50.040424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.310577, 32.647827, 49.927979>,  <32.968384, 32.559612, 49.740566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310577, 32.647827, 49.927979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331554, -0.461745, 0.822718,
		0.397778, -0.859161, -0.321895,
		0.855479, 0.220533, 0.468529,
		33.567223, 32.713985, 50.068539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229702, 31.891253, 50.058819>,  <32.968384, 32.559612, 49.740566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229702, 31.891253, 50.058819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385681, 32.200817, 50.258423>,  <33.479267, 32.386555, 50.378185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385681, 32.200817, 50.258423>,  <33.229702, 31.891253, 50.058819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385681, 32.200817, 50.258423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295819, -0.407898, 0.863777,
		0.872029, -0.484441, 0.069879,
		0.389945, 0.773910, 0.499005,
		33.502666, 32.432991, 50.408123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459057, 31.612043, 50.635872>,  <33.229702, 31.891253, 50.058819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459057, 31.612043, 50.635872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445339, 31.998922, 50.736549>,  <33.437107, 32.231049, 50.796955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.445339, 31.998922, 50.736549>,  <33.459057, 31.612043, 50.635872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445339, 31.998922, 50.736549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315595, -0.249435, 0.915523,
		0.948274, -0.048036, 0.313798,
		-0.034294, 0.967200, 0.251692,
		33.435051, 32.289082, 50.812057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806557, 31.613174, 51.329529>,  <33.459057, 31.612043, 50.635872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806557, 31.613174, 51.329529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593075, 31.947632, 51.278885>,  <33.464985, 32.148304, 51.248497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593075, 31.947632, 51.278885>,  <33.806557, 31.613174, 51.329529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593075, 31.947632, 51.278885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371820, -0.097543, 0.923166,
		0.759547, 0.539772, 0.362953,
		-0.533702, 0.836141, -0.126610,
		33.432964, 32.198475, 51.240902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791851, 32.034660, 51.996555>,  <33.806557, 31.613174, 51.329529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791851, 32.034660, 51.996555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476086, 32.213768, 51.828587>,  <33.286629, 32.321232, 51.727806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476086, 32.213768, 51.828587>,  <33.791851, 32.034660, 51.996555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476086, 32.213768, 51.828587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475256, -0.012835, 0.879754,
		0.388536, 0.894057, 0.222936,
		-0.789412, 0.447768, -0.419920,
		33.239262, 32.348099, 51.702610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650986, 32.719437, 52.289528>,  <33.791851, 32.034660, 51.996555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650986, 32.719437, 52.289528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303585, 32.582375, 52.146255>,  <33.095146, 32.500137, 52.060291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303585, 32.582375, 52.146255>,  <33.650986, 32.719437, 52.289528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303585, 32.582375, 52.146255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451560, 0.248897, 0.856822,
		-0.204449, 0.905889, -0.370899,
		-0.868501, -0.342659, -0.358177,
		33.043034, 32.479576, 52.038803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197453, 33.151905, 52.621067>,  <33.650986, 32.719437, 52.289528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197453, 33.151905, 52.621067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944813, 32.879177, 52.473450>,  <32.793228, 32.715538, 52.384880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944813, 32.879177, 52.473450>,  <33.197453, 33.151905, 52.621067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944813, 32.879177, 52.473450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546758, 0.054245, 0.835531,
		-0.549665, 0.729503, -0.407053,
		-0.631604, -0.681822, -0.369045,
		32.755333, 32.674629, 52.362736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499424, 33.449368, 52.773411>,  <33.197453, 33.151905, 52.621067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499424, 33.449368, 52.773411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.453503, 33.056808, 52.711861>,  <32.425949, 32.821274, 52.674931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.453503, 33.056808, 52.711861>,  <32.499424, 33.449368, 52.773411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453503, 33.056808, 52.711861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662828, -0.039700, 0.747718,
		-0.739918, 0.187833, -0.645941,
		-0.114802, -0.981398, -0.153876,
		32.419064, 32.762390, 52.665699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782051, 33.387341, 52.814709>,  <32.499424, 33.449368, 52.773411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782051, 33.387341, 52.814709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954941, 33.038467, 52.906349>,  <32.058674, 32.829144, 52.961334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954941, 33.038467, 52.906349>,  <31.782051, 33.387341, 52.814709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954941, 33.038467, 52.906349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759699, -0.215307, 0.613596,
		-0.485840, -0.439256, -0.755655,
		0.432223, -0.872180, 0.229098,
		32.084606, 32.776814, 52.975079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534660, 34.058601, 53.046513>,  <31.782051, 33.387341, 52.814709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534660, 34.058601, 53.046513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.528446, 34.455772, 53.093609>,  <31.524717, 34.694073, 53.121864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.528446, 34.455772, 53.093609>,  <31.534660, 34.058601, 53.046513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528446, 34.455772, 53.093609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214039, 0.111719, -0.970415,
		-0.976701, -0.040278, 0.210789,
		-0.015537, 0.992923, 0.117737,
		31.523785, 34.753651, 53.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937607, 34.319931, 52.705196>,  <31.534660, 34.058601, 53.046513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937607, 34.319931, 52.705196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.169422, 34.643429, 52.745342>,  <31.308512, 34.837528, 52.769428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.169422, 34.643429, 52.745342>,  <30.937607, 34.319931, 52.705196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169422, 34.643429, 52.745342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113474, 0.202038, -0.972782,
		-0.807006, 0.552376, 0.208860,
		0.579539, 0.808740, 0.100366,
		31.343285, 34.886051, 52.775452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560459, 34.772633, 52.268158>,  <30.937607, 34.319931, 52.705196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560459, 34.772633, 52.268158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924231, 34.927662, 52.328457>,  <31.142494, 35.020679, 52.364635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924231, 34.927662, 52.328457>,  <30.560459, 34.772633, 52.268158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924231, 34.927662, 52.328457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026876, 0.306951, -0.951346,
		-0.414989, 0.869233, 0.268734,
		0.909429, 0.387576, 0.150743,
		31.197060, 35.043934, 52.373680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480623, 35.364567, 51.812927>,  <30.560459, 34.772633, 52.268158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480623, 35.364567, 51.812927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.867113, 35.308777, 51.899609>,  <31.099007, 35.275303, 51.951618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.867113, 35.308777, 51.899609>,  <30.480623, 35.364567, 51.812927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867113, 35.308777, 51.899609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251183, 0.321716, -0.912911,
		0.057610, 0.936507, 0.345883,
		0.966224, -0.139473, 0.216701,
		31.156981, 35.266933, 51.964619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967403, 36.003204, 51.657913>,  <30.480623, 35.364567, 51.812927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967403, 36.003204, 51.657913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188017, 35.670269, 51.635906>,  <31.320385, 35.470509, 51.622700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188017, 35.670269, 51.635906>,  <30.967403, 36.003204, 51.657913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188017, 35.670269, 51.635906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351026, 0.291425, -0.889861,
		0.756697, 0.471475, 0.452903,
		0.551534, -0.832336, -0.055020,
		31.353477, 35.420567, 51.619400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449631, 36.253407, 51.254093>,  <30.967403, 36.003204, 51.657913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449631, 36.253407, 51.254093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.494459, 35.856117, 51.241745>,  <31.521357, 35.617744, 51.234337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.494459, 35.856117, 51.241745>,  <31.449631, 36.253407, 51.254093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494459, 35.856117, 51.241745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248803, 0.058120, -0.966809,
		0.962048, 0.100671, 0.253630,
		0.112070, -0.993221, -0.030867,
		31.528080, 35.558151, 51.232487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116562, 36.181408, 51.106323>,  <31.449631, 36.253407, 51.254093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116562, 36.181408, 51.106323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912176, 35.855892, 50.995579>,  <31.789543, 35.660583, 50.929131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912176, 35.855892, 50.995579>,  <32.116562, 36.181408, 51.106323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912176, 35.855892, 50.995579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195034, 0.203931, -0.959361,
		0.837182, -0.544200, 0.054515,
		-0.510967, -0.813793, -0.276865,
		31.758886, 35.611755, 50.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779915, 36.582840, 50.935120>,  <32.116562, 36.181408, 51.106323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779915, 36.582840, 50.935120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700451, 36.973843, 50.906796>,  <32.652775, 37.208443, 50.889801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700451, 36.973843, 50.906796>,  <32.779915, 36.582840, 50.935120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700451, 36.973843, 50.906796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031178, 0.078520, 0.996425,
		0.979573, 0.195738, -0.046076,
		-0.198656, 0.977508, -0.070813,
		32.640854, 37.267094, 50.885551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374092, 37.002144, 51.251839>,  <32.779915, 36.582840, 50.935120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374092, 37.002144, 51.251839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.055183, 37.243553, 51.256023>,  <32.863838, 37.388401, 51.258533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.055183, 37.243553, 51.256023>,  <33.374092, 37.002144, 51.251839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055183, 37.243553, 51.256023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192588, 0.237918, 0.952000,
		0.572068, 0.761020, -0.305918,
		-0.797275, 0.603526, 0.010459,
		32.816002, 37.424610, 51.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498924, 37.551563, 51.708107>,  <33.374092, 37.002144, 51.251839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498924, 37.551563, 51.708107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108418, 37.637024, 51.693890>,  <32.874115, 37.688301, 51.685360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108418, 37.637024, 51.693890>,  <33.498924, 37.551563, 51.708107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108418, 37.637024, 51.693890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061483, 0.430738, 0.900380,
		0.207674, 0.876824, -0.433650,
		-0.976264, 0.213647, -0.035544,
		32.815536, 37.701118, 51.683228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395210, 38.188984, 52.001190>,  <33.498924, 37.551563, 51.708107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395210, 38.188984, 52.001190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.037811, 38.016850, 52.052532>,  <32.823372, 37.913570, 52.083336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.037811, 38.016850, 52.052532>,  <33.395210, 38.188984, 52.001190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037811, 38.016850, 52.052532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059285, 0.396354, 0.916182,
		-0.445137, 0.810997, -0.379654,
		-0.893498, -0.430334, 0.128352,
		32.769760, 37.887749, 52.091038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943890, 38.640152, 52.416004>,  <33.395210, 38.188984, 52.001190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943890, 38.640152, 52.416004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811024, 38.265568, 52.461090>,  <32.731304, 38.040817, 52.488140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811024, 38.265568, 52.461090>,  <32.943890, 38.640152, 52.416004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811024, 38.265568, 52.461090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064994, 0.141938, 0.987739,
		-0.940978, 0.320769, -0.108012,
		-0.332167, -0.936462, 0.112713,
		32.711372, 37.984631, 52.494904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511082, 38.719006, 52.873520>,  <32.943890, 38.640152, 52.416004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511082, 38.719006, 52.873520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595642, 38.328545, 52.893261>,  <32.646378, 38.094269, 52.905106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595642, 38.328545, 52.893261>,  <32.511082, 38.719006, 52.873520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595642, 38.328545, 52.893261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089989, 0.069723, 0.993499,
		-0.973247, -0.205590, 0.102583,
		0.211405, -0.976151, 0.049357,
		32.659065, 38.035698, 52.908070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132256, 38.499317, 53.362629>,  <32.511082, 38.719006, 52.873520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132256, 38.499317, 53.362629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.384537, 38.190022, 53.336349>,  <32.535908, 38.004444, 53.320583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.384537, 38.190022, 53.336349>,  <32.132256, 38.499317, 53.362629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384537, 38.190022, 53.336349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098436, -0.004256, 0.995134,
		-0.769753, -0.634104, 0.073430,
		0.630706, -0.773236, -0.065695,
		32.573750, 37.958050, 53.316643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871559, 37.961197, 53.787102>,  <32.132256, 38.499317, 53.362629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871559, 37.961197, 53.787102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261578, 37.891438, 53.732155>,  <32.495590, 37.849583, 53.699188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261578, 37.891438, 53.732155>,  <31.871559, 37.961197, 53.787102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261578, 37.891438, 53.732155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122244, -0.094725, 0.987970,
		-0.185312, -0.980109, -0.071042,
		0.975047, -0.174398, -0.137366,
		32.554092, 37.839119, 53.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037998, 37.379101, 54.266998>,  <31.871559, 37.961197, 53.787102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037998, 37.379101, 54.266998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371693, 37.583065, 54.183056>,  <32.571911, 37.705444, 54.132690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371693, 37.583065, 54.183056>,  <32.037998, 37.379101, 54.266998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371693, 37.583065, 54.183056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255271, -0.019802, 0.966667,
		0.488757, -0.860000, -0.146685,
		0.834238, 0.509909, -0.209855,
		32.621964, 37.736038, 54.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.040886, 36.857014, 38.011509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368088, 36.916672, 38.233727>,  <36.564407, 36.952465, 38.367058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368088, 36.916672, 38.233727>,  <36.040886, 36.857014, 38.011509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368088, 36.916672, 38.233727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553942, -0.055988, 0.830671,
		0.154994, -0.987229, 0.036820,
		0.818001, 0.149145, 0.555545,
		36.613487, 36.961414, 38.400391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096115, 36.350590, 38.601940>,  <36.040886, 36.857014, 38.011509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096115, 36.350590, 38.601940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307064, 36.674309, 38.705418>,  <36.433632, 36.868538, 38.767502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307064, 36.674309, 38.705418>,  <36.096115, 36.350590, 38.601940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307064, 36.674309, 38.705418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514564, 0.061946, 0.855212,
		0.676094, -0.584127, 0.449102,
		0.527372, 0.809295, 0.258689,
		36.465275, 36.917099, 38.783024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425274, 36.264259, 39.358322>,  <36.096115, 36.350590, 38.601940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425274, 36.264259, 39.358322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395233, 36.653687, 39.272034>,  <36.377209, 36.887341, 39.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395233, 36.653687, 39.272034>,  <36.425274, 36.264259, 39.358322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395233, 36.653687, 39.272034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572709, 0.134979, 0.808570,
		0.816311, 0.184269, 0.547432,
		-0.075103, 0.973563, -0.215717,
		36.372704, 36.945755, 39.207317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618679, 36.613701, 39.915283>,  <36.425274, 36.264259, 39.358322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618679, 36.613701, 39.915283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393513, 36.868084, 39.704117>,  <36.258415, 37.020714, 39.577419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393513, 36.868084, 39.704117>,  <36.618679, 36.613701, 39.915283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393513, 36.868084, 39.704117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573710, 0.159135, 0.803450,
		0.594968, 0.755140, 0.275275,
		-0.562912, 0.635955, -0.527912,
		36.224640, 37.058872, 39.545742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358818, 37.146782, 40.426388>,  <36.618679, 36.613701, 39.915283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358818, 37.146782, 40.426388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092937, 37.224335, 40.137783>,  <35.933411, 37.270866, 39.964619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092937, 37.224335, 40.137783>,  <36.358818, 37.146782, 40.426388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092937, 37.224335, 40.137783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617109, 0.401887, 0.676508,
		0.421127, 0.894929, -0.147491,
		-0.664702, 0.193878, -0.721514,
		35.893528, 37.282497, 39.921329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261806, 37.895966, 40.419716>,  <36.358818, 37.146782, 40.426388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261806, 37.895966, 40.419716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930359, 37.758354, 40.243061>,  <35.731491, 37.675785, 40.137070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930359, 37.758354, 40.243061>,  <36.261806, 37.895966, 40.419716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930359, 37.758354, 40.243061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558180, 0.447408, 0.698757,
		-0.042805, 0.825511, -0.562761,
		-0.828615, -0.344032, -0.441632,
		35.681774, 37.655144, 40.110573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714169, 38.349709, 40.637554>,  <36.261806, 37.895966, 40.419716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714169, 38.349709, 40.637554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508999, 38.039940, 40.489403>,  <35.385899, 37.854080, 40.400513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508999, 38.039940, 40.489403>,  <35.714169, 38.349709, 40.637554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508999, 38.039940, 40.489403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704987, 0.133838, 0.696477,
		-0.489798, 0.618349, -0.614607,
		-0.512924, -0.774423, -0.370375,
		35.355122, 37.807613, 40.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985825, 38.640049, 40.576469>,  <35.714169, 38.349709, 40.637554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985825, 38.640049, 40.576469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008995, 38.241993, 40.608334>,  <35.022896, 38.003159, 40.627453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008995, 38.241993, 40.608334>,  <34.985825, 38.640049, 40.576469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008995, 38.241993, 40.608334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651051, 0.022839, 0.758690,
		-0.756821, -0.095809, -0.646562,
		0.057923, -0.995137, 0.079661,
		35.026371, 37.943451, 40.632233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321754, 38.430172, 40.717442>,  <34.985825, 38.640049, 40.576469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321754, 38.430172, 40.717442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569382, 38.143074, 40.844933>,  <34.717960, 37.970814, 40.921429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569382, 38.143074, 40.844933>,  <34.321754, 38.430172, 40.717442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569382, 38.143074, 40.844933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554111, -0.111607, 0.824927,
		-0.556516, -0.687302, -0.466804,
		0.619073, -0.717746, 0.318731,
		34.755104, 37.927750, 40.940552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830402, 38.119850, 41.190357>,  <34.321754, 38.430172, 40.717442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830402, 38.119850, 41.190357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191048, 37.993237, 41.308270>,  <34.407436, 37.917267, 41.379017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191048, 37.993237, 41.308270>,  <33.830402, 38.119850, 41.190357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191048, 37.993237, 41.308270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360306, -0.172554, 0.916736,
		-0.239318, -0.932753, -0.269629,
		0.901613, -0.316540, 0.294781,
		34.461533, 37.898277, 41.396706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698235, 37.473507, 41.542480>,  <33.830402, 38.119850, 41.190357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698235, 37.473507, 41.542480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033688, 37.646790, 41.674557>,  <34.234959, 37.750759, 41.753803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033688, 37.646790, 41.674557>,  <33.698235, 37.473507, 41.542480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033688, 37.646790, 41.674557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357951, -0.018610, 0.933555,
		0.410569, -0.901101, 0.139460,
		0.838632, 0.433209, 0.330191,
		34.285278, 37.776752, 41.773613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811443, 37.133263, 42.111095>,  <33.698235, 37.473507, 41.542480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811443, 37.133263, 42.111095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064137, 37.434811, 42.183311>,  <34.215752, 37.615738, 42.226643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064137, 37.434811, 42.183311>,  <33.811443, 37.133263, 42.111095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064137, 37.434811, 42.183311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175336, -0.087906, 0.980576,
		0.755093, -0.651122, 0.076647,
		0.631737, 0.753865, 0.180542,
		34.253658, 37.660969, 42.237473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598709, 36.441486, 42.150368>,  <33.811443, 37.133263, 42.111095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598709, 36.441486, 42.150368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214275, 36.398788, 42.252289>,  <32.983616, 36.373169, 42.313442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214275, 36.398788, 42.252289>,  <33.598709, 36.441486, 42.150368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214275, 36.398788, 42.252289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234987, -0.169080, -0.957179,
		0.145256, -0.979805, 0.137417,
		-0.961083, -0.106745, 0.254802,
		32.925949, 36.366764, 42.328728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492348, 35.884949, 41.804493>,  <33.598709, 36.441486, 42.150368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492348, 35.884949, 41.804493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152603, 36.089745, 41.855804>,  <32.948757, 36.212624, 41.886589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152603, 36.089745, 41.855804>,  <33.492348, 35.884949, 41.804493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152603, 36.089745, 41.855804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207900, -0.101140, -0.972907,
		-0.485148, -0.853014, 0.192347,
		-0.849358, 0.511993, 0.128274,
		32.897797, 36.243343, 41.894287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093201, 35.671162, 41.309982>,  <33.492348, 35.884949, 41.804493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093201, 35.671162, 41.309982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862331, 35.983387, 41.405972>,  <32.723808, 36.170723, 41.463566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862331, 35.983387, 41.405972>,  <33.093201, 35.671162, 41.309982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862331, 35.983387, 41.405972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234341, 0.123185, -0.964318,
		-0.782273, -0.612818, 0.111818,
		-0.577178, 0.780564, 0.239973,
		32.689178, 36.217556, 41.477962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480030, 35.587154, 40.986504>,  <33.093201, 35.671162, 41.309982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480030, 35.587154, 40.986504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535019, 35.978825, 41.046253>,  <32.568012, 36.213829, 41.082104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535019, 35.978825, 41.046253>,  <32.480030, 35.587154, 40.986504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535019, 35.978825, 41.046253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169488, 0.171833, -0.970437,
		-0.975898, 0.108087, 0.189580,
		0.137468, 0.979179, 0.149372,
		32.576260, 36.272579, 41.091064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062374, 35.791389, 40.575443>,  <32.480030, 35.587154, 40.986504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062374, 35.791389, 40.575443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273846, 36.125954, 40.633286>,  <32.400730, 36.326694, 40.667992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273846, 36.125954, 40.633286>,  <32.062374, 35.791389, 40.575443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273846, 36.125954, 40.633286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149107, 0.259219, -0.954239,
		-0.835621, 0.482927, 0.261759,
		0.528681, 0.836413, 0.144602,
		32.432449, 36.376877, 40.676666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661045, 36.298603, 40.320473>,  <32.062374, 35.791389, 40.575443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661045, 36.298603, 40.320473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038818, 36.430080, 40.321068>,  <32.265484, 36.508968, 40.321423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038818, 36.430080, 40.321068>,  <31.661045, 36.298603, 40.320473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038818, 36.430080, 40.321068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078794, 0.230779, -0.969811,
		-0.319113, 0.915806, 0.243856,
		0.944436, 0.328694, 0.001485,
		32.322147, 36.528690, 40.321514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708673, 36.830257, 39.768337>,  <31.661045, 36.298603, 40.320473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708673, 36.830257, 39.768337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095856, 36.743172, 39.818398>,  <32.328167, 36.690922, 39.848434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095856, 36.743172, 39.818398>,  <31.708673, 36.830257, 39.768337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095856, 36.743172, 39.818398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174794, 0.226317, -0.958242,
		0.180297, 0.949411, 0.257120,
		0.967956, -0.217712, 0.125147,
		32.386242, 36.677856, 39.855942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066422, 37.390980, 39.399479>,  <31.708673, 36.830257, 39.768337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066422, 37.390980, 39.399479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330875, 37.093235, 39.437065>,  <32.489548, 36.914589, 39.459618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330875, 37.093235, 39.437065>,  <32.066422, 37.390980, 39.399479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330875, 37.093235, 39.437065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262815, 0.112459, -0.958270,
		0.702731, 0.658240, 0.269979,
		0.661133, -0.744361, 0.093967,
		32.529217, 36.869926, 39.465256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464249, 37.664078, 38.991436>,  <32.066422, 37.390980, 39.399479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464249, 37.664078, 38.991436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580956, 37.287266, 39.057720>,  <32.650978, 37.061180, 39.097492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580956, 37.287266, 39.057720>,  <32.464249, 37.664078, 38.991436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580956, 37.287266, 39.057720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154233, -0.124649, -0.980140,
		0.943974, 0.311528, 0.108923,
		0.291764, -0.942026, 0.165713,
		32.668484, 37.004658, 39.107433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075031, 37.527977, 38.552750>,  <32.464249, 37.664078, 38.991436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075031, 37.527977, 38.552750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872356, 37.191948, 38.630257>,  <32.750751, 36.990330, 38.676762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872356, 37.191948, 38.630257>,  <33.075031, 37.527977, 38.552750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872356, 37.191948, 38.630257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157953, -0.130490, -0.978787,
		0.847540, -0.526539, -0.066575,
		-0.506682, -0.840077, 0.193764,
		32.720352, 36.939926, 38.688385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162720, 37.174320, 37.901142>,  <33.075031, 37.527977, 38.552750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162720, 37.174320, 37.901142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865078, 36.958225, 38.058346>,  <32.686493, 36.828568, 38.152668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865078, 36.958225, 38.058346>,  <33.162720, 37.174320, 37.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865078, 36.958225, 38.058346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151677, -0.436305, -0.886923,
		0.650620, -0.719571, 0.242714,
		-0.744102, -0.540236, 0.393012,
		32.641846, 36.796154, 38.176250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339317, 36.525387, 37.748299>,  <33.162720, 37.174320, 37.901142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339317, 36.525387, 37.748299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946861, 36.529381, 37.825516>,  <32.711388, 36.531776, 37.871845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946861, 36.529381, 37.825516>,  <33.339317, 36.525387, 37.748299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946861, 36.529381, 37.825516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179566, -0.416797, -0.891087,
		0.071565, -0.908945, 0.410729,
		-0.981140, 0.009982, 0.193044,
		32.652519, 36.532375, 37.883430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187027, 35.867077, 37.440109>,  <33.339317, 36.525387, 37.748299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187027, 35.867077, 37.440109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847378, 36.075592, 37.474144>,  <32.643589, 36.200703, 37.494564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847378, 36.075592, 37.474144>,  <33.187027, 35.867077, 37.440109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847378, 36.075592, 37.474144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330611, -0.398922, -0.855312,
		-0.411925, -0.754397, 0.511080,
		-0.849125, 0.521293, 0.085086,
		32.592640, 36.231979, 37.499672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644203, 35.435432, 37.300556>,  <33.187027, 35.867077, 37.440109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644203, 35.435432, 37.300556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514839, 35.806492, 37.225853>,  <32.437222, 36.029125, 37.181030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514839, 35.806492, 37.225853>,  <32.644203, 35.435432, 37.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514839, 35.806492, 37.225853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313424, -0.291241, -0.903850,
		-0.892845, -0.233776, 0.384936,
		-0.323408, 0.927646, -0.186762,
		32.417816, 36.084785, 37.169823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733047, 35.098255, 37.938747>,  <32.644203, 35.435432, 37.300556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733047, 35.098255, 37.938747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874653, 34.959000, 38.285957>,  <32.959618, 34.875446, 38.494286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874653, 34.959000, 38.285957>,  <32.733047, 35.098255, 37.938747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874653, 34.959000, 38.285957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715203, 0.698823, -0.011411,
		-0.602627, 0.624857, 0.496382,
		0.354013, -0.348137, 0.868029,
		32.980858, 34.854557, 38.546368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440926, 35.124027, 38.157551>,  <32.733047, 35.098255, 37.938747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440926, 35.124027, 38.157551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831673, 35.114494, 38.242558>,  <34.066120, 35.108776, 38.293560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831673, 35.114494, 38.242558>,  <33.440926, 35.124027, 38.157551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831673, 35.114494, 38.242558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213590, -0.060041, 0.975077,
		-0.010471, -0.997912, -0.063741,
		0.976867, -0.023824, 0.212515,
		34.124733, 35.107346, 38.306313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413284, 35.089863, 38.922855>,  <33.440926, 35.124027, 38.157551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413284, 35.089863, 38.922855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806644, 35.044716, 38.866013>,  <34.042660, 35.017628, 38.831909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806644, 35.044716, 38.866013>,  <33.413284, 35.089863, 38.922855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806644, 35.044716, 38.866013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114953, -0.218496, 0.969044,
		-0.140420, -0.969289, -0.201894,
		0.983397, -0.112865, -0.142104,
		34.101662, 35.010857, 38.823380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693348, 34.429909, 39.046803>,  <33.413284, 35.089863, 38.922855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693348, 34.429909, 39.046803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012997, 34.661911, 39.110054>,  <34.204784, 34.801113, 39.148006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012997, 34.661911, 39.110054>,  <33.693348, 34.429909, 39.046803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012997, 34.661911, 39.110054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069832, -0.350808, 0.933840,
		0.597103, -0.735207, -0.320840,
		0.799119, 0.580004, 0.158128,
		34.252731, 34.835911, 39.157494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265766, 34.010834, 39.266525>,  <33.693348, 34.429909, 39.046803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265766, 34.010834, 39.266525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342457, 34.383766, 39.389160>,  <34.388470, 34.607525, 39.462742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342457, 34.383766, 39.389160>,  <34.265766, 34.010834, 39.266525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342457, 34.383766, 39.389160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157580, -0.337571, 0.928016,
		0.968715, -0.129615, -0.211639,
		0.191728, 0.932334, 0.306586,
		34.399975, 34.663467, 39.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848186, 33.962067, 39.763653>,  <34.265766, 34.010834, 39.266525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848186, 33.962067, 39.763653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673069, 34.318584, 39.810863>,  <34.567997, 34.532494, 39.839188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673069, 34.318584, 39.810863>,  <34.848186, 33.962067, 39.763653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673069, 34.318584, 39.810863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184910, -0.039206, 0.981973,
		0.879854, 0.451728, -0.147646,
		-0.437796, 0.891294, 0.118024,
		34.541729, 34.585972, 39.846272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315048, 34.404411, 40.224445>,  <34.848186, 33.962067, 39.763653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315048, 34.404411, 40.224445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931232, 34.515446, 40.243343>,  <34.700943, 34.582066, 40.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931232, 34.515446, 40.243343>,  <35.315048, 34.404411, 40.224445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931232, 34.515446, 40.243343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036271, -0.044550, 0.998349,
		0.279229, 0.959668, 0.032679,
		-0.959539, 0.277582, 0.047248,
		34.643372, 34.598721, 40.257519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425278, 34.873840, 40.694408>,  <35.315048, 34.404411, 40.224445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425278, 34.873840, 40.694408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032410, 34.800392, 40.678276>,  <34.796688, 34.756325, 40.668598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032410, 34.800392, 40.678276>,  <35.425278, 34.873840, 40.694408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032410, 34.800392, 40.678276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057030, 0.086595, 0.994610,
		-0.179135, 0.979176, -0.095523,
		-0.982170, -0.183617, -0.040330,
		34.737759, 34.745308, 40.666176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985241, 35.396557, 41.209290>,  <35.425278, 34.873840, 40.694408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985241, 35.396557, 41.209290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746159, 35.079796, 41.159267>,  <34.602707, 34.889740, 41.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746159, 35.079796, 41.159267>,  <34.985241, 35.396557, 41.209290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746159, 35.079796, 41.159267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075166, -0.099946, 0.992150,
		-0.798182, 0.602416, 0.000215,
		-0.597709, -0.791900, -0.125056,
		34.566845, 34.842224, 41.121750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378880, 35.548714, 41.501263>,  <34.985241, 35.396557, 41.209290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378880, 35.548714, 41.501263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431053, 35.152153, 41.497093>,  <34.462357, 34.914215, 41.494591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431053, 35.152153, 41.497093>,  <34.378880, 35.548714, 41.501263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431053, 35.152153, 41.497093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035652, -0.005818, 0.999347,
		-0.990816, -0.130720, 0.034587,
		0.130434, -0.991402, -0.010425,
		34.470184, 34.854733, 41.493965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183186, 35.415066, 42.199768>,  <34.378880, 35.548714, 41.501263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183186, 35.415066, 42.199768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377705, 35.102070, 42.044216>,  <34.494415, 34.914272, 41.950886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377705, 35.102070, 42.044216>,  <34.183186, 35.415066, 42.199768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377705, 35.102070, 42.044216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137579, -0.370928, 0.918414,
		-0.862893, -0.500126, -0.072728,
		0.486299, -0.782488, -0.388878,
		34.523594, 34.867325, 41.927551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867092, 34.805878, 42.444523>,  <34.183186, 35.415066, 42.199768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867092, 34.805878, 42.444523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247948, 34.721661, 42.355896>,  <34.476463, 34.671131, 42.302719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247948, 34.721661, 42.355896>,  <33.867092, 34.805878, 42.444523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247948, 34.721661, 42.355896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126591, -0.388175, 0.912850,
		-0.278206, -0.897213, -0.342945,
		0.952143, -0.210546, -0.221571,
		34.533592, 34.658497, 42.289425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953400, 34.220108, 42.784767>,  <33.867092, 34.805878, 42.444523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953400, 34.220108, 42.784767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314995, 34.376095, 42.714638>,  <34.531952, 34.469685, 42.672558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314995, 34.376095, 42.714638>,  <33.953400, 34.220108, 42.784767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314995, 34.376095, 42.714638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327185, -0.366941, 0.870807,
		0.275249, -0.844560, -0.459299,
		0.903984, 0.389965, -0.175327,
		34.586189, 34.493084, 42.662041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352238, 33.739315, 42.971329>,  <33.953400, 34.220108, 42.784767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352238, 33.739315, 42.971329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634163, 34.022202, 42.993515>,  <34.803318, 34.191933, 43.006824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634163, 34.022202, 42.993515>,  <34.352238, 33.739315, 42.971329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634163, 34.022202, 42.993515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267613, -0.337480, 0.902491,
		0.656975, -0.621249, -0.427123,
		0.704817, 0.707218, 0.055462,
		34.845608, 34.234367, 43.010155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779106, 33.417046, 43.287598>,  <34.352238, 33.739315, 42.971329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779106, 33.417046, 43.287598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943638, 33.780899, 43.310837>,  <35.042355, 33.999210, 43.324780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943638, 33.780899, 43.310837>,  <34.779106, 33.417046, 43.287598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943638, 33.780899, 43.310837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506888, -0.281255, 0.814837,
		0.757545, -0.305713, -0.576771,
		0.411326, 0.909634, 0.058101,
		35.067036, 34.053791, 43.328266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514912, 33.338760, 43.476158>,  <34.779106, 33.417046, 43.287598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514912, 33.338760, 43.476158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408485, 33.709858, 43.580841>,  <35.344627, 33.932518, 43.643650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408485, 33.709858, 43.580841>,  <35.514912, 33.338760, 43.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408485, 33.709858, 43.580841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506317, -0.096527, 0.856928,
		0.820274, 0.360512, -0.444051,
		-0.266070, 0.927746, 0.261712,
		35.328663, 33.988182, 43.659355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112926, 33.564156, 43.785873>,  <35.514912, 33.338760, 43.476158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112926, 33.564156, 43.785873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828083, 33.816883, 43.908318>,  <35.657177, 33.968521, 43.981785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828083, 33.816883, 43.908318>,  <36.112926, 33.564156, 43.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828083, 33.816883, 43.908318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299840, -0.120558, 0.946341,
		0.634823, 0.765681, -0.103595,
		-0.712107, 0.631821, 0.306114,
		35.614452, 34.006428, 44.000153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348591, 33.958305, 44.366840>,  <36.112926, 33.564156, 43.785873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348591, 33.958305, 44.366840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962055, 34.042274, 44.426323>,  <35.730133, 34.092655, 44.462013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962055, 34.042274, 44.426323>,  <36.348591, 33.958305, 44.366840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962055, 34.042274, 44.426323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155799, 0.017569, 0.987633,
		0.204717, 0.977560, -0.049684,
		-0.966342, 0.209926, 0.148706,
		35.672153, 34.105251, 44.470936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257889, 34.564720, 44.792198>,  <36.348591, 33.958305, 44.366840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257889, 34.564720, 44.792198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915722, 34.364567, 44.845676>,  <35.710423, 34.244476, 44.877766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915722, 34.364567, 44.845676>,  <36.257889, 34.564720, 44.792198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915722, 34.364567, 44.845676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084663, 0.119576, 0.989209,
		-0.510970, 0.857507, -0.059923,
		-0.855419, -0.500383, 0.133699,
		35.659096, 34.214451, 44.885788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866604, 35.005562, 45.377182>,  <36.257889, 34.564720, 44.792198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866604, 35.005562, 45.377182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666561, 34.660511, 45.346825>,  <35.546535, 34.453480, 45.328609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666561, 34.660511, 45.346825>,  <35.866604, 35.005562, 45.377182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666561, 34.660511, 45.346825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030136, -0.070252, 0.997074,
		-0.865437, 0.500935, 0.009137,
		-0.500111, -0.862629, -0.075895,
		35.516529, 34.401722, 45.324055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268291, 35.023365, 45.891731>,  <35.866604, 35.005562, 45.377182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268291, 35.023365, 45.891731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281639, 34.634033, 45.800941>,  <35.289646, 34.400433, 45.746468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281639, 34.634033, 45.800941>,  <35.268291, 35.023365, 45.891731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281639, 34.634033, 45.800941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133733, -0.229407, 0.964099,
		-0.990456, -0.001813, -0.137820,
		0.033365, -0.973329, -0.226975,
		35.291649, 34.342033, 45.732849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569698, 34.678627, 46.173450>,  <35.268291, 35.023365, 45.891731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569698, 34.678627, 46.173450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867966, 34.417789, 46.118671>,  <35.046928, 34.261288, 46.085804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867966, 34.417789, 46.118671>,  <34.569698, 34.678627, 46.173450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867966, 34.417789, 46.118671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103555, -0.316441, 0.942943,
		-0.658219, -0.688943, -0.303488,
		0.745670, -0.652090, -0.136944,
		35.091667, 34.222164, 46.077587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287724, 33.980381, 46.398758>,  <34.569698, 34.678627, 46.173450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287724, 33.980381, 46.398758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687263, 33.961430, 46.395859>,  <34.926987, 33.950058, 46.394119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687263, 33.961430, 46.395859>,  <34.287724, 33.980381, 46.398758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687263, 33.961430, 46.395859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007700, -0.307973, 0.951364,
		-0.047304, -0.950215, -0.307984,
		0.998851, -0.047375, -0.007251,
		34.986919, 33.947216, 46.393684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451538, 33.388962, 46.780632>,  <34.287724, 33.980381, 46.398758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451538, 33.388962, 46.780632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787655, 33.605576, 46.790848>,  <34.989323, 33.735542, 46.796978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787655, 33.605576, 46.790848>,  <34.451538, 33.388962, 46.780632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787655, 33.605576, 46.790848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170998, -0.309452, 0.935414,
		0.514463, -0.781651, -0.352631,
		0.840290, 0.541535, 0.025541,
		35.039742, 33.768036, 46.798512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839783, 33.035366, 47.203403>,  <34.451538, 33.388962, 46.780632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839783, 33.035366, 47.203403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039143, 33.382107, 47.208626>,  <35.158756, 33.590153, 47.211758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039143, 33.382107, 47.208626>,  <34.839783, 33.035366, 47.203403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039143, 33.382107, 47.208626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168356, -0.111543, 0.979395,
		0.850446, -0.485930, -0.201532,
		0.498396, 0.866851, 0.013052,
		35.188660, 33.642162, 47.212540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477009, 32.955463, 47.446819>,  <34.839783, 33.035366, 47.203403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477009, 32.955463, 47.446819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372009, 33.330940, 47.536221>,  <35.309010, 33.556225, 47.589863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372009, 33.330940, 47.536221>,  <35.477009, 32.955463, 47.446819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372009, 33.330940, 47.536221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011089, -0.228679, 0.973439,
		0.964869, 0.258003, 0.049619,
		-0.262497, 0.938691, 0.223506,
		35.293259, 33.612549, 47.603271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919613, 33.160141, 47.947010>,  <35.477009, 32.955463, 47.446819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919613, 33.160141, 47.947010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628479, 33.432285, 47.981346>,  <35.453800, 33.595573, 48.001949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628479, 33.432285, 47.981346>,  <35.919613, 33.160141, 47.947010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628479, 33.432285, 47.981346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118522, -0.248100, 0.961457,
		0.675435, 0.689605, 0.261213,
		-0.727833, 0.680361, 0.085843,
		35.410130, 33.636395, 48.007099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955544, 33.517372, 48.516159>,  <35.919613, 33.160141, 47.947010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955544, 33.517372, 48.516159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572010, 33.617588, 48.462685>,  <35.341892, 33.677715, 48.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572010, 33.617588, 48.462685>,  <35.955544, 33.517372, 48.516159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572010, 33.617588, 48.462685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163195, -0.100864, 0.981424,
		0.232398, 0.962838, 0.137598,
		-0.958832, 0.250537, -0.133689,
		35.284359, 33.692749, 48.422577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565125, 34.027260, 48.748432>,  <35.955544, 33.517372, 48.516159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565125, 34.027260, 48.748432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922939, 34.057987, 48.924564>,  <37.137630, 34.076424, 49.030243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922939, 34.057987, 48.924564>,  <36.565125, 34.027260, 48.748432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922939, 34.057987, 48.924564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442462, -0.012393, -0.896702,
		-0.063428, 0.996968, -0.045076,
		0.894542, 0.076820, 0.440334,
		37.191303, 34.081032, 49.056664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900948, 34.609024, 48.499542>,  <36.565125, 34.027260, 48.748432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900948, 34.609024, 48.499542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196678, 34.370262, 48.624187>,  <37.374115, 34.227005, 48.698975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196678, 34.370262, 48.624187>,  <36.900948, 34.609024, 48.499542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196678, 34.370262, 48.624187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439839, 0.077701, -0.894709,
		0.509841, 0.798543, 0.319987,
		0.739327, -0.596902, 0.311615,
		37.418476, 34.191193, 48.717670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452354, 34.844128, 48.220867>,  <36.900948, 34.609024, 48.499542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452354, 34.844128, 48.220867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575321, 34.473286, 48.306629>,  <37.649101, 34.250782, 48.358086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575321, 34.473286, 48.306629>,  <37.452354, 34.844128, 48.220867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575321, 34.473286, 48.306629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469880, -0.048034, -0.881423,
		0.827470, 0.371712, 0.420861,
		0.307420, -0.927104, 0.214407,
		37.667545, 34.195156, 48.370953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174397, 34.892761, 48.056446>,  <37.452354, 34.844128, 48.220867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174397, 34.892761, 48.056446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084797, 34.502956, 48.051426>,  <38.031036, 34.269073, 48.048412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084797, 34.502956, 48.051426>,  <38.174397, 34.892761, 48.056446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084797, 34.502956, 48.051426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569041, -0.120321, -0.813459,
		0.791212, -0.189358, 0.581487,
		-0.224000, -0.974508, -0.012554,
		38.017597, 34.210606, 48.047661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671337, 34.409683, 48.103519>,  <38.174397, 34.892761, 48.056446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671337, 34.409683, 48.103519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387646, 34.218578, 47.896160>,  <38.217430, 34.103916, 47.771744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387646, 34.218578, 47.896160>,  <38.671337, 34.409683, 48.103519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387646, 34.218578, 47.896160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650272, -0.159326, -0.742806,
		0.272287, -0.863922, 0.423672,
		-0.709229, -0.477759, -0.518402,
		38.174877, 34.075253, 47.740639>
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
