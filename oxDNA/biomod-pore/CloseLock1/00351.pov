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
	<24.892054, 34.786556, 35.061661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567137, 35.017647, 35.029625>,  <24.372187, 35.156300, 35.010403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567137, 35.017647, 35.029625>,  <24.892054, 34.786556, 35.061661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567137, 35.017647, 35.029625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470945, 0.568661, -0.674415,
		-0.344082, -0.585541, -0.733995,
		-0.812292, 0.577726, -0.080091,
		24.323448, 35.190964, 35.005596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545290, 34.716076, 34.427853>,  <24.892054, 34.786556, 35.061661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545290, 34.716076, 34.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525944, 35.071457, 34.610416>,  <24.514336, 35.284687, 34.719955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525944, 35.071457, 34.610416>,  <24.545290, 34.716076, 34.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525944, 35.071457, 34.610416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498394, 0.417465, -0.759820,
		-0.865600, 0.190724, -0.462991,
		-0.048367, 0.888452, 0.456413,
		24.511435, 35.337994, 34.747341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302801, 35.312153, 34.011913>,  <24.545290, 34.716076, 34.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302801, 35.312153, 34.011913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565754, 35.424412, 34.291653>,  <24.723526, 35.491768, 34.459496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565754, 35.424412, 34.291653>,  <24.302801, 35.312153, 34.011913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565754, 35.424412, 34.291653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545999, 0.462240, -0.698727,
		-0.519360, 0.841174, 0.150636,
		0.657381, 0.280644, 0.699350,
		24.762968, 35.508606, 34.501457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327442, 36.022484, 34.004673>,  <24.302801, 35.312153, 34.011913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327442, 36.022484, 34.004673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665531, 35.854591, 34.136993>,  <24.868383, 35.753857, 34.216385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665531, 35.854591, 34.136993>,  <24.327442, 36.022484, 34.004673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665531, 35.854591, 34.136993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505001, 0.424759, -0.751368,
		0.174857, 0.802128, 0.570978,
		0.845221, -0.419727, 0.330803,
		24.919098, 35.728672, 34.236233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767010, 36.558514, 34.047722>,  <24.327442, 36.022484, 34.004673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767010, 36.558514, 34.047722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980097, 36.221771, 34.013100>,  <25.107948, 36.019726, 33.992325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980097, 36.221771, 34.013100>,  <24.767010, 36.558514, 34.047722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980097, 36.221771, 34.013100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395748, 0.338208, -0.853814,
		0.748062, 0.420587, 0.513332,
		0.532717, -0.841856, -0.086554,
		25.139912, 35.969215, 33.987133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591295, 36.690098, 33.810253>,  <24.767010, 36.558514, 34.047722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591295, 36.690098, 33.810253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511713, 36.314781, 33.697094>,  <25.463964, 36.089592, 33.629196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511713, 36.314781, 33.697094>,  <25.591295, 36.690098, 33.810253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511713, 36.314781, 33.697094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608817, 0.107875, -0.785942,
		0.767958, -0.328601, 0.549783,
		-0.198954, -0.938288, -0.282902,
		25.452026, 36.033295, 33.612225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253141, 36.483040, 33.424492>,  <25.591295, 36.690098, 33.810253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253141, 36.483040, 33.424492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964386, 36.219265, 33.340569>,  <25.791132, 36.061001, 33.290215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964386, 36.219265, 33.340569>,  <26.253141, 36.483040, 33.424492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964386, 36.219265, 33.340569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202696, 0.088398, -0.975243,
		0.661657, -0.746546, 0.069851,
		-0.721889, -0.659435, -0.209811,
		25.747820, 36.021435, 33.277626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558123, 35.827133, 33.039185>,  <26.253141, 36.483040, 33.424492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558123, 35.827133, 33.039185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170328, 35.805965, 32.943439>,  <25.937651, 35.793266, 32.885990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170328, 35.805965, 32.943439>,  <26.558123, 35.827133, 33.039185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170328, 35.805965, 32.943439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229162, 0.151157, -0.961580,
		0.087065, -0.987092, -0.134418,
		-0.969487, -0.052917, -0.239365,
		25.879482, 35.790089, 32.871632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496271, 35.269707, 32.558922>,  <26.558123, 35.827133, 33.039185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496271, 35.269707, 32.558922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160376, 35.484310, 32.525459>,  <25.958839, 35.613071, 32.505383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160376, 35.484310, 32.525459>,  <26.496271, 35.269707, 32.558922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160376, 35.484310, 32.525459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082176, -0.026715, -0.996260,
		-0.536739, -0.843470, -0.021654,
		-0.839737, 0.536511, -0.083652,
		25.908455, 35.645264, 32.500362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924000, 34.918835, 32.220955>,  <26.496271, 35.269707, 32.558922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924000, 34.918835, 32.220955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828112, 35.299751, 32.145412>,  <25.770578, 35.528301, 32.100086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828112, 35.299751, 32.145412>,  <25.924000, 34.918835, 32.220955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828112, 35.299751, 32.145412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082009, -0.213700, -0.973451,
		-0.967372, -0.217867, 0.129325,
		-0.239719, 0.952295, -0.188861,
		25.756195, 35.585442, 32.088753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479618, 34.853996, 31.574560>,  <25.924000, 34.918835, 32.220955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479618, 34.853996, 31.574560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551788, 35.245472, 31.613777>,  <25.595091, 35.480358, 31.637308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551788, 35.245472, 31.613777>,  <25.479618, 34.853996, 31.574560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551788, 35.245472, 31.613777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013856, 0.102198, -0.994667,
		-0.983491, 0.178104, 0.032000,
		0.180424, 0.978690, 0.098043,
		25.605915, 35.539078, 31.643190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.937414, 35.267769, 31.238379>,  <25.479618, 34.853996, 31.574560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.937414, 35.267769, 31.238379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249283, 35.515522, 31.275219>,  <25.436403, 35.664173, 31.297323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249283, 35.515522, 31.275219>,  <24.937414, 35.267769, 31.238379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249283, 35.515522, 31.275219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186133, -0.088798, -0.978504,
		-0.597887, 0.780053, -0.184520,
		0.779670, 0.619380, 0.092102,
		25.483183, 35.701336, 31.302849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709509, 35.729118, 30.781040>,  <24.937414, 35.267769, 31.238379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709509, 35.729118, 30.781040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107325, 35.756855, 30.812235>,  <25.346014, 35.773499, 30.830952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107325, 35.756855, 30.812235>,  <24.709509, 35.729118, 30.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107325, 35.756855, 30.812235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068893, 0.125061, -0.989754,
		-0.078389, 0.989723, 0.119601,
		0.994540, 0.069346, 0.077989,
		25.405687, 35.777660, 30.835632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850826, 36.286572, 30.397604>,  <24.709509, 35.729118, 30.781040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850826, 36.286572, 30.397604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182493, 36.063713, 30.415792>,  <25.381495, 35.929996, 30.426706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182493, 36.063713, 30.415792>,  <24.850826, 36.286572, 30.397604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182493, 36.063713, 30.415792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162124, 0.161834, -0.973409,
		0.534971, 0.814493, 0.224514,
		0.829169, -0.557145, 0.045473,
		25.431244, 35.896568, 30.429434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221523, 36.656178, 29.950798>,  <24.850826, 36.286572, 30.397604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221523, 36.656178, 29.950798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454599, 36.331379, 29.964279>,  <25.594444, 36.136501, 29.972368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454599, 36.331379, 29.964279>,  <25.221523, 36.656178, 29.950798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454599, 36.331379, 29.964279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089400, 0.022823, -0.995734,
		0.807762, 0.583218, 0.085891,
		0.582690, -0.811995, 0.033704,
		25.629406, 36.087780, 29.974390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780123, 36.768421, 29.475237>,  <25.221523, 36.656178, 29.950798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780123, 36.768421, 29.475237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787121, 36.368954, 29.494646>,  <25.791321, 36.129272, 29.506290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787121, 36.368954, 29.494646>,  <25.780123, 36.768421, 29.475237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787121, 36.368954, 29.494646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049801, -0.049339, -0.997540,
		0.998606, 0.015037, -0.050598,
		0.017496, -0.998669, 0.048521,
		25.792370, 36.069351, 29.509203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244255, 36.670120, 29.051920>,  <25.780123, 36.768421, 29.475237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244255, 36.670120, 29.051920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076866, 36.307930, 29.080206>,  <25.976433, 36.090618, 29.097178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076866, 36.307930, 29.080206>,  <26.244255, 36.670120, 29.051920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076866, 36.307930, 29.080206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202876, -0.169083, -0.964496,
		0.885281, -0.389268, 0.254455,
		-0.418471, -0.905473, 0.070713,
		25.951324, 36.036289, 29.101419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710629, 36.253822, 28.583490>,  <26.244255, 36.670120, 29.051920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710629, 36.253822, 28.583490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350897, 36.085690, 28.631704>,  <26.135057, 35.984810, 28.660633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350897, 36.085690, 28.631704>,  <26.710629, 36.253822, 28.583490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350897, 36.085690, 28.631704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009190, -0.293753, -0.955837,
		0.437180, -0.858503, 0.268043,
		-0.899327, -0.420336, 0.120533,
		26.081099, 35.959587, 28.667864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810308, 35.693027, 28.296572>,  <26.710629, 36.253822, 28.583490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810308, 35.693027, 28.296572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414408, 35.748936, 28.308252>,  <26.176867, 35.782478, 28.315262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414408, 35.748936, 28.308252>,  <26.810308, 35.693027, 28.296572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414408, 35.748936, 28.308252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084021, -0.404734, -0.910566,
		-0.115448, -0.903690, 0.412331,
		-0.989754, 0.139768, 0.029203,
		26.117481, 35.790867, 28.317013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580368, 35.179661, 27.922703>,  <26.810308, 35.693027, 28.296572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580368, 35.179661, 27.922703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257183, 35.415123, 27.933107>,  <26.063272, 35.556400, 27.939350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257183, 35.415123, 27.933107>,  <26.580368, 35.179661, 27.922703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257183, 35.415123, 27.933107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246004, -0.296883, -0.922682,
		-0.535424, -0.751891, 0.384683,
		-0.807963, 0.588660, 0.026010,
		26.014793, 35.591721, 27.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004436, 34.749176, 27.876358>,  <26.580368, 35.179661, 27.922703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004436, 34.749176, 27.876358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841768, 35.094158, 27.755833>,  <25.744167, 35.301147, 27.683517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841768, 35.094158, 27.755833>,  <26.004436, 34.749176, 27.876358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841768, 35.094158, 27.755833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406823, -0.466274, -0.785547,
		-0.817994, -0.196877, 0.540486,
		-0.406670, 0.862455, -0.301315,
		25.719767, 35.352894, 27.665438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226978, 34.685242, 27.766468>,  <26.004436, 34.749176, 27.876358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226978, 34.685242, 27.766468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322062, 34.998394, 27.536480>,  <25.379110, 35.186287, 27.398487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322062, 34.998394, 27.536480>,  <25.226978, 34.685242, 27.766468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322062, 34.998394, 27.536480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419940, -0.450928, -0.787601,
		-0.875869, 0.428671, 0.221575,
		0.237707, 0.782883, -0.574970,
		25.393373, 35.233257, 27.363989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604731, 34.938572, 27.533066>,  <25.226978, 34.685242, 27.766468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604731, 34.938572, 27.533066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883892, 35.060078, 27.273634>,  <25.051390, 35.132980, 27.117975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883892, 35.060078, 27.273634>,  <24.604731, 34.938572, 27.533066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883892, 35.060078, 27.273634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549244, -0.354177, -0.756895,
		-0.459631, 0.884469, -0.080340,
		0.697904, 0.303766, -0.648580,
		25.093264, 35.151207, 27.079060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207939, 35.251259, 26.963825>,  <24.604731, 34.938572, 27.533066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207939, 35.251259, 26.963825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568144, 35.221123, 26.792521>,  <24.784266, 35.203041, 26.689737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568144, 35.221123, 26.792521>,  <24.207939, 35.251259, 26.963825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568144, 35.221123, 26.792521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433651, -0.082933, -0.897256,
		0.032083, 0.993703, -0.107353,
		0.900510, -0.075340, -0.428259,
		24.838297, 35.198521, 26.664043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.282122, 35.702522, 26.424868>,  <24.207939, 35.251259, 26.963825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.282122, 35.702522, 26.424868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495598, 35.372906, 26.348841>,  <24.623684, 35.175137, 26.303225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495598, 35.372906, 26.348841>,  <24.282122, 35.702522, 26.424868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495598, 35.372906, 26.348841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486042, -0.114963, -0.866341,
		0.692053, 0.554738, -0.461875,
		0.533691, -0.824044, -0.190066,
		24.655704, 35.125694, 26.291821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.367641, 35.702366, 25.696758>,  <24.282122, 35.702522, 26.424868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.367641, 35.702366, 25.696758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456514, 35.333591, 25.823675>,  <24.509838, 35.112328, 25.899824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456514, 35.333591, 25.823675>,  <24.367641, 35.702366, 25.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456514, 35.333591, 25.823675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474570, -0.386532, -0.790807,
		0.851715, 0.025128, -0.523403,
		0.222183, -0.921934, 0.317290,
		24.523169, 35.057011, 25.918861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710373, 35.367413, 25.135904>,  <24.367641, 35.702366, 25.696758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710373, 35.367413, 25.135904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494642, 35.124336, 25.369085>,  <24.365204, 34.978489, 25.508993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494642, 35.124336, 25.369085>,  <24.710373, 35.367413, 25.135904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494642, 35.124336, 25.369085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405694, -0.419125, -0.812248,
		0.737929, -0.674567, -0.020492,
		-0.539327, -0.607695, 0.582953,
		24.332844, 34.942028, 25.543972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908457, 34.742977, 24.856543>,  <24.710373, 35.367413, 25.135904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908457, 34.742977, 24.856543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548452, 34.741520, 25.030882>,  <24.332449, 34.740646, 25.135485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548452, 34.741520, 25.030882>,  <24.908457, 34.742977, 24.856543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548452, 34.741520, 25.030882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428083, -0.180700, -0.885490,
		0.081987, -0.983531, 0.161071,
		-0.900013, -0.003647, 0.435848,
		24.278448, 34.740425, 25.161636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455221, 34.093727, 24.835789>,  <24.908457, 34.742977, 24.856543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455221, 34.093727, 24.835789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213234, 34.412128, 24.843708>,  <24.068041, 34.603168, 24.848459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213234, 34.412128, 24.843708>,  <24.455221, 34.093727, 24.835789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213234, 34.412128, 24.843708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395554, -0.278858, -0.875086,
		-0.691051, -0.537231, 0.483562,
		-0.604968, 0.796004, 0.019799,
		24.031744, 34.650928, 24.849648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884336, 33.654888, 25.336391>,  <24.455221, 34.093727, 24.835789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884336, 33.654888, 25.336391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883474, 33.266396, 25.241138>,  <24.882957, 33.033298, 25.183987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883474, 33.266396, 25.241138>,  <24.884336, 33.654888, 25.336391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883474, 33.266396, 25.241138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003361, -0.238140, 0.971225,
		-0.999992, 0.001292, 0.003777,
		-0.002154, -0.971230, -0.238133,
		24.882828, 32.975025, 25.169699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.420851, 33.269371, 25.808176>,  <24.884336, 33.654888, 25.336391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.420851, 33.269371, 25.808176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737017, 33.065105, 25.672844>,  <24.926716, 32.942547, 25.591644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737017, 33.065105, 25.672844>,  <24.420851, 33.269371, 25.808176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737017, 33.065105, 25.672844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217857, -0.281861, 0.934394,
		-0.572524, -0.812266, -0.111535,
		0.790414, -0.510665, -0.338330,
		24.974140, 32.911907, 25.571344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357725, 32.596874, 26.215775>,  <24.420851, 33.269371, 25.808176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357725, 32.596874, 26.215775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728035, 32.631172, 26.068483>,  <24.950220, 32.651752, 25.980108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.728035, 32.631172, 26.068483>,  <24.357725, 32.596874, 26.215775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.728035, 32.631172, 26.068483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373915, -0.351782, 0.858159,
		-0.055953, -0.932147, -0.357731,
		0.925774, 0.085744, -0.368227,
		25.005768, 32.656895, 25.958015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760048, 31.956768, 26.069052>,  <24.357725, 32.596874, 26.215775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760048, 31.956768, 26.069052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919228, 32.299736, 26.199570>,  <25.014736, 32.505516, 26.277882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919228, 32.299736, 26.199570>,  <24.760048, 31.956768, 26.069052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919228, 32.299736, 26.199570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118560, -0.400756, 0.908481,
		0.909714, -0.322844, -0.261136,
		0.397949, 0.857419, 0.326297,
		25.038612, 32.556961, 26.297459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330631, 31.863867, 26.453047>,  <24.760048, 31.956768, 26.069052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330631, 31.863867, 26.453047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199575, 32.222752, 26.571478>,  <25.120941, 32.438084, 26.642536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199575, 32.222752, 26.571478>,  <25.330631, 31.863867, 26.453047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199575, 32.222752, 26.571478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044714, -0.298301, 0.953424,
		0.943744, 0.325619, 0.057617,
		-0.327640, 0.897212, 0.296080,
		25.101284, 32.491917, 26.660301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731758, 32.285469, 26.904165>,  <25.330631, 31.863867, 26.453047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731758, 32.285469, 26.904165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352179, 32.370754, 26.997150>,  <25.124432, 32.421925, 27.052942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352179, 32.370754, 26.997150>,  <25.731758, 32.285469, 26.904165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352179, 32.370754, 26.997150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233073, -0.022631, 0.972196,
		0.212543, 0.976744, -0.028217,
		-0.948948, 0.213210, 0.232463,
		25.067493, 32.434719, 27.066889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673601, 32.946953, 27.178982>,  <25.731758, 32.285469, 26.904165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673601, 32.946953, 27.178982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380789, 32.707623, 27.309298>,  <25.205101, 32.564026, 27.387487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380789, 32.707623, 27.309298>,  <25.673601, 32.946953, 27.178982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380789, 32.707623, 27.309298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288296, 0.161218, 0.943872,
		-0.617263, 0.784869, 0.054477,
		-0.732033, -0.598323, 0.325788,
		25.161179, 32.528126, 27.407034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218971, 33.306957, 27.617231>,  <25.673601, 32.946953, 27.178982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218971, 33.306957, 27.617231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205315, 32.918709, 27.712500>,  <25.197121, 32.685760, 27.769661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205315, 32.918709, 27.712500>,  <25.218971, 33.306957, 27.617231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205315, 32.918709, 27.712500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160688, 0.229879, 0.959862,
		-0.986415, 0.071043, 0.148118,
		-0.034142, -0.970623, 0.238172,
		25.195072, 32.627522, 27.783951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861969, 33.302929, 28.219080>,  <25.218971, 33.306957, 27.617231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861969, 33.302929, 28.219080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049704, 32.950378, 28.197535>,  <25.162344, 32.738850, 28.184607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049704, 32.950378, 28.197535>,  <24.861969, 33.302929, 28.219080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049704, 32.950378, 28.197535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153690, 0.021466, 0.987886,
		-0.869542, -0.471929, 0.145534,
		0.469336, -0.881375, -0.053865,
		25.190504, 32.685966, 28.181376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.576866, 32.909538, 28.790960>,  <24.861969, 33.302929, 28.219080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.576866, 32.909538, 28.790960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931955, 32.761246, 28.681776>,  <25.145008, 32.672268, 28.616266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931955, 32.761246, 28.681776>,  <24.576866, 32.909538, 28.790960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931955, 32.761246, 28.681776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267590, -0.066960, 0.961203,
		-0.374629, -0.926322, 0.039763,
		0.887721, -0.370735, -0.272959,
		25.198273, 32.650024, 28.599888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.632671, 32.453979, 29.308847>,  <24.576866, 32.909538, 28.790960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.632671, 32.453979, 29.308847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004961, 32.434673, 29.163839>,  <25.228334, 32.423088, 29.076834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004961, 32.434673, 29.163839>,  <24.632671, 32.453979, 29.308847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004961, 32.434673, 29.163839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358867, -0.070467, 0.930725,
		-0.070467, -0.996346, -0.048265,
		-0.930725, 0.048265, 0.362522,
		25.284178, 32.420193, 29.055082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941517, 32.063957, 29.754238>,  <24.632671, 32.453979, 29.308847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941517, 32.063957, 29.754238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238823, 32.266392, 29.579226>,  <25.417206, 32.387852, 29.474218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238823, 32.266392, 29.579226>,  <24.941517, 32.063957, 29.754238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238823, 32.266392, 29.579226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501174, 0.012008, 0.865263,
		0.443152, -0.862399, -0.244713,
		0.743264, 0.506087, -0.437533,
		25.461802, 32.418217, 29.447966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627031, 31.694393, 30.001574>,  <24.941517, 32.063957, 29.754238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627031, 31.694393, 30.001574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665482, 32.074966, 29.884586>,  <25.688551, 32.303310, 29.814394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665482, 32.074966, 29.884586>,  <25.627031, 31.694393, 30.001574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665482, 32.074966, 29.884586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674552, 0.153797, 0.722029,
		0.731942, -0.266689, -0.627007,
		0.096125, 0.951432, -0.292466,
		25.694319, 32.360397, 29.796846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326553, 31.838886, 30.044579>,  <25.627031, 31.694393, 30.001574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326553, 31.838886, 30.044579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164528, 32.204391, 30.056976>,  <26.067312, 32.423695, 30.064415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164528, 32.204391, 30.056976>,  <26.326553, 31.838886, 30.044579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164528, 32.204391, 30.056976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465900, 0.177124, 0.866928,
		0.786676, 0.365604, -0.497468,
		-0.405066, 0.913762, 0.030996,
		26.043009, 32.478519, 30.066275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843307, 32.126331, 30.343685>,  <26.326553, 31.838886, 30.044579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843307, 32.126331, 30.343685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554863, 32.395145, 30.411047>,  <26.381796, 32.556435, 30.451464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554863, 32.395145, 30.411047>,  <26.843307, 32.126331, 30.343685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554863, 32.395145, 30.411047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482020, 0.312061, 0.818703,
		0.497648, 0.671551, -0.548968,
		-0.721112, 0.672039, 0.168405,
		26.338530, 32.596756, 30.461569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155790, 32.710552, 30.594753>,  <26.843307, 32.126331, 30.343685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155790, 32.710552, 30.594753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777475, 32.764214, 30.713066>,  <26.550486, 32.796410, 30.784054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777475, 32.764214, 30.713066>,  <27.155790, 32.710552, 30.594753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777475, 32.764214, 30.713066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324667, 0.366239, 0.872044,
		0.008661, 0.920800, -0.389940,
		-0.945789, 0.134153, 0.295782,
		26.493738, 32.804459, 30.801800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138071, 33.345436, 30.939991>,  <27.155790, 32.710552, 30.594753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138071, 33.345436, 30.939991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798418, 33.165241, 31.050289>,  <26.594627, 33.057125, 31.116468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798418, 33.165241, 31.050289>,  <27.138071, 33.345436, 30.939991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798418, 33.165241, 31.050289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113355, 0.354476, 0.928169,
		-0.515875, 0.819394, -0.249931,
		-0.849131, -0.450488, 0.275748,
		26.543678, 33.030094, 31.133013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799664, 33.839649, 31.130186>,  <27.138071, 33.345436, 30.939991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799664, 33.839649, 31.130186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627089, 33.534458, 31.322741>,  <26.523544, 33.351345, 31.438272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627089, 33.534458, 31.322741>,  <26.799664, 33.839649, 31.130186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627089, 33.534458, 31.322741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136043, 0.472476, 0.870781,
		-0.891826, 0.441176, -0.100047,
		-0.431438, -0.762974, 0.481385,
		26.497658, 33.305565, 31.467155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446917, 34.058739, 31.629210>,  <26.799664, 33.839649, 31.130186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446917, 34.058739, 31.629210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481430, 33.678711, 31.749157>,  <26.502138, 33.450695, 31.821125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481430, 33.678711, 31.749157>,  <26.446917, 34.058739, 31.629210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481430, 33.678711, 31.749157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142564, 0.309667, 0.940097,
		-0.986018, -0.038363, 0.162165,
		0.086282, -0.950071, 0.299868,
		26.507315, 33.393688, 31.839117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896009, 33.918465, 32.184879>,  <26.446917, 34.058739, 31.629210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896009, 33.918465, 32.184879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180841, 33.643124, 32.240181>,  <26.351740, 33.477921, 32.273361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180841, 33.643124, 32.240181>,  <25.896009, 33.918465, 32.184879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180841, 33.643124, 32.240181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088865, 0.283693, 0.954789,
		-0.696453, -0.667599, 0.263182,
		0.712079, -0.688353, 0.138253,
		26.394464, 33.436619, 32.281658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902271, 33.867184, 32.884697>,  <25.896009, 33.918465, 32.184879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902271, 33.867184, 32.884697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245754, 33.686577, 32.787743>,  <26.451843, 33.578213, 32.729572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245754, 33.686577, 32.787743>,  <25.902271, 33.867184, 32.884697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245754, 33.686577, 32.787743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305597, 0.071499, 0.949473,
		-0.411378, -0.889391, 0.199380,
		0.858708, -0.451522, -0.242381,
		26.503366, 33.551121, 32.715027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086784, 33.269321, 33.279434>,  <25.902271, 33.867184, 32.884697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086784, 33.269321, 33.279434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433275, 33.421619, 33.150013>,  <26.641171, 33.512997, 33.072361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433275, 33.421619, 33.150013>,  <26.086784, 33.269321, 33.279434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433275, 33.421619, 33.150013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348766, 0.002949, 0.937205,
		0.357790, -0.924676, -0.130236,
		0.866227, 0.380744, -0.323550,
		26.693144, 33.535843, 33.052948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513048, 32.980576, 33.733894>,  <26.086784, 33.269321, 33.279434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513048, 32.980576, 33.733894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754524, 33.235836, 33.542763>,  <26.899410, 33.388992, 33.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754524, 33.235836, 33.542763>,  <26.513048, 32.980576, 33.733894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754524, 33.235836, 33.542763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452845, 0.218797, 0.864326,
		0.656119, -0.738167, -0.156899,
		0.603688, 0.638152, -0.477832,
		26.935631, 33.427280, 33.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103024, 32.760746, 33.812714>,  <26.513048, 32.980576, 33.733894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103024, 32.760746, 33.812714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148451, 33.149296, 33.729248>,  <27.175707, 33.382423, 33.679169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148451, 33.149296, 33.729248>,  <27.103024, 32.760746, 33.812714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148451, 33.149296, 33.729248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400314, 0.147480, 0.904432,
		0.909313, -0.186247, -0.372105,
		0.113569, 0.971371, -0.208663,
		27.182522, 33.440708, 33.666649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835997, 32.868206, 33.955418>,  <27.103024, 32.760746, 33.812714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835997, 32.868206, 33.955418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647766, 33.221127, 33.959587>,  <27.534828, 33.432877, 33.962090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647766, 33.221127, 33.959587>,  <27.835997, 32.868206, 33.955418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647766, 33.221127, 33.959587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520978, 0.268291, 0.810310,
		0.712137, 0.386744, -0.585909,
		-0.470576, 0.882298, 0.010425,
		27.506594, 33.485817, 33.962715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279812, 33.268257, 34.209362>,  <27.835997, 32.868206, 33.955418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279812, 33.268257, 34.209362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942261, 33.471523, 34.278229>,  <27.739729, 33.593483, 34.319550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942261, 33.471523, 34.278229>,  <28.279812, 33.268257, 34.209362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942261, 33.471523, 34.278229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440375, 0.472706, 0.763295,
		0.306494, 0.719946, -0.622688,
		-0.843879, 0.508161, 0.172164,
		27.689096, 33.623970, 34.329880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308981, 33.973904, 34.050674>,  <28.279812, 33.268257, 34.209362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308981, 33.973904, 34.050674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064079, 33.925674, 34.363239>,  <27.917139, 33.896736, 34.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064079, 33.925674, 34.363239>,  <28.308981, 33.973904, 34.050674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064079, 33.925674, 34.363239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556019, 0.636989, 0.533936,
		-0.562129, 0.761386, -0.322960,
		-0.612253, -0.120569, 0.781415,
		27.880404, 33.889503, 34.597664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797012, 34.171776, 33.497375>,  <28.308981, 33.973904, 34.050674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797012, 34.171776, 33.497375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055233, 34.082489, 33.205227>,  <29.210165, 34.028919, 33.029938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055233, 34.082489, 33.205227>,  <28.797012, 34.171776, 33.497375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055233, 34.082489, 33.205227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625039, 0.395116, -0.673209,
		0.438849, 0.891100, 0.115551,
		0.645552, -0.223213, -0.730369,
		29.248899, 34.015526, 32.986115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421568, 33.748425, 33.453075>,  <28.797012, 34.171776, 33.497375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421568, 33.748425, 33.453075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805780, 33.676758, 33.367958>,  <30.036308, 33.633759, 33.316887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805780, 33.676758, 33.367958>,  <29.421568, 33.748425, 33.453075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805780, 33.676758, 33.367958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246656, 0.194857, 0.949311,
		-0.128621, -0.964329, 0.231359,
		0.960529, -0.179167, -0.212795,
		30.093939, 33.623009, 33.304119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606564, 33.233589, 33.949486>,  <29.421568, 33.748425, 33.453075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606564, 33.233589, 33.949486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876787, 33.493744, 33.810562>,  <30.038921, 33.649837, 33.727207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876787, 33.493744, 33.810562>,  <29.606564, 33.233589, 33.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876787, 33.493744, 33.810562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280345, 0.209084, 0.936852,
		0.681929, -0.730264, -0.041083,
		0.675559, 0.650383, -0.347306,
		30.079454, 33.688858, 33.706371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412975, 33.097168, 34.217125>,  <29.606564, 33.233589, 33.949486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412975, 33.097168, 34.217125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307678, 33.477306, 34.150738>,  <30.244499, 33.705391, 34.110905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307678, 33.477306, 34.150738>,  <30.412975, 33.097168, 34.217125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307678, 33.477306, 34.150738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198838, 0.221791, 0.954606,
		0.944016, 0.218292, -0.247350,
		-0.263243, 0.950346, -0.165969,
		30.228704, 33.762409, 34.100948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048155, 33.620884, 34.302761>,  <30.412975, 33.097168, 34.217125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048155, 33.620884, 34.302761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680149, 33.746040, 34.397141>,  <30.459345, 33.821133, 34.453766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680149, 33.746040, 34.397141>,  <31.048155, 33.620884, 34.302761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680149, 33.746040, 34.397141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302636, 0.184782, 0.935023,
		0.248963, 0.931641, -0.264695,
		-0.920016, 0.312892, 0.235944,
		30.404144, 33.839909, 34.467922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107082, 34.240215, 34.750546>,  <31.048155, 33.620884, 34.302761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107082, 34.240215, 34.750546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781513, 34.019592, 34.823555>,  <30.586172, 33.887218, 34.867363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781513, 34.019592, 34.823555>,  <31.107082, 34.240215, 34.750546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781513, 34.019592, 34.823555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215859, 0.004587, 0.976414,
		-0.539384, 0.834126, 0.115325,
		-0.813923, -0.551555, 0.182527,
		30.537336, 33.854126, 34.878315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747019, 34.537846, 35.245365>,  <31.107082, 34.240215, 34.750546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747019, 34.537846, 35.245365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621571, 34.158028, 35.246052>,  <30.546303, 33.930138, 35.246464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621571, 34.158028, 35.246052>,  <30.747019, 34.537846, 35.245365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621571, 34.158028, 35.246052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013647, -0.002698, 0.999903,
		-0.949451, 0.313612, 0.013805,
		-0.313619, -0.949548, 0.001719,
		30.527485, 33.873165, 35.246567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204903, 34.536091, 35.693989>,  <30.747019, 34.537846, 35.245365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204903, 34.536091, 35.693989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379744, 34.176559, 35.681011>,  <30.484648, 33.960842, 35.673225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379744, 34.176559, 35.681011>,  <30.204903, 34.536091, 35.693989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379744, 34.176559, 35.681011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012178, -0.041985, 0.999044,
		-0.899330, -0.436289, -0.029297,
		0.437102, -0.898827, -0.032446,
		30.510874, 33.906910, 35.671276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047762, 34.289009, 36.272121>,  <30.204903, 34.536091, 35.693989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047762, 34.289009, 36.272121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330772, 34.017956, 36.191902>,  <30.500580, 33.855324, 36.143772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330772, 34.017956, 36.191902>,  <30.047762, 34.289009, 36.272121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330772, 34.017956, 36.191902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253195, -0.021871, 0.967168,
		-0.659771, -0.735075, 0.156099,
		0.707527, -0.677633, -0.200548,
		30.543030, 33.814667, 36.131737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953100, 33.642872, 36.680645>,  <30.047762, 34.289009, 36.272121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953100, 33.642872, 36.680645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340788, 33.657089, 36.583195>,  <30.573400, 33.665619, 36.524727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340788, 33.657089, 36.583195>,  <29.953100, 33.642872, 36.680645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340788, 33.657089, 36.583195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241439, 0.056488, 0.968770,
		0.048208, -0.997770, 0.046164,
		0.969218, 0.035556, -0.243624,
		30.631554, 33.667751, 36.510109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309410, 33.263699, 37.176376>,  <29.953100, 33.642872, 36.680645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309410, 33.263699, 37.176376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586189, 33.492565, 37.000271>,  <30.752256, 33.629887, 36.894608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586189, 33.492565, 37.000271>,  <30.309410, 33.263699, 37.176376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586189, 33.492565, 37.000271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495754, 0.066740, 0.865895,
		0.524819, -0.817418, -0.237473,
		0.691949, 0.572166, -0.440265,
		30.793774, 33.664215, 36.868191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873095, 33.034698, 37.476757>,  <30.309410, 33.263699, 37.176376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873095, 33.034698, 37.476757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999399, 33.367107, 37.293587>,  <31.075182, 33.566555, 37.183685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999399, 33.367107, 37.293587>,  <30.873095, 33.034698, 37.476757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999399, 33.367107, 37.293587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663864, 0.151321, 0.732384,
		0.677922, -0.535258, -0.503905,
		0.315763, 0.831024, -0.457922,
		31.094128, 33.616413, 37.156212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617901, 32.978466, 37.411636>,  <30.873095, 33.034698, 37.476757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617901, 32.978466, 37.411636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544930, 33.371628, 37.401653>,  <31.501146, 33.607525, 37.395664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544930, 33.371628, 37.401653>,  <31.617901, 32.978466, 37.411636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544930, 33.371628, 37.401653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742003, 0.154281, 0.652402,
		0.645098, 0.100500, -0.757462,
		-0.182429, 0.982902, -0.024955,
		31.490200, 33.666500, 37.394165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246307, 33.338165, 37.391712>,  <31.617901, 32.978466, 37.411636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246307, 33.338165, 37.391712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993347, 33.620590, 37.519180>,  <31.841572, 33.790043, 37.595661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993347, 33.620590, 37.519180>,  <32.246307, 33.338165, 37.391712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993347, 33.620590, 37.519180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733737, 0.414062, 0.538685,
		0.248395, 0.574484, -0.779915,
		-0.632400, 0.706060, 0.318670,
		31.803627, 33.832409, 37.614780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590771, 33.932919, 37.409843>,  <32.246307, 33.338165, 37.391712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590771, 33.932919, 37.409843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289795, 34.007370, 37.662571>,  <32.109211, 34.052040, 37.814209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289795, 34.007370, 37.662571>,  <32.590771, 33.932919, 37.409843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289795, 34.007370, 37.662571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651818, 0.072476, 0.754904,
		0.094715, 0.979849, -0.175854,
		-0.752438, 0.186125, 0.631819,
		32.064064, 34.063206, 37.852116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894123, 34.408058, 37.887730>,  <32.590771, 33.932919, 37.409843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894123, 34.408058, 37.887730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563667, 34.268410, 38.064640>,  <32.365395, 34.184620, 38.170788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563667, 34.268410, 38.064640>,  <32.894123, 34.408058, 37.887730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563667, 34.268410, 38.064640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506651, -0.116776, 0.854206,
		-0.246575, 0.929773, 0.273356,
		-0.826139, -0.349122, 0.442276,
		32.315826, 34.163673, 38.197323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060654, 34.601120, 38.597366>,  <32.894123, 34.408058, 37.887730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060654, 34.601120, 38.597366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777843, 34.318272, 38.601276>,  <32.608158, 34.148563, 38.603622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777843, 34.318272, 38.601276>,  <33.060654, 34.601120, 38.597366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777843, 34.318272, 38.601276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105286, -0.091589, 0.990215,
		-0.699307, 0.701136, 0.139205,
		-0.707026, -0.707121, 0.009771,
		32.565735, 34.106136, 38.604206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617580, 34.732334, 39.181843>,  <33.060654, 34.601120, 38.597366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617580, 34.732334, 39.181843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654179, 34.347176, 39.080288>,  <32.676136, 34.116081, 39.019356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654179, 34.347176, 39.080288>,  <32.617580, 34.732334, 39.181843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654179, 34.347176, 39.080288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255885, -0.223660, 0.940478,
		-0.962368, -0.151013, 0.225927,
		0.091494, -0.962897, -0.253885,
		32.681625, 34.058308, 39.004124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355755, 34.462109, 39.770786>,  <32.617580, 34.732334, 39.181843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355755, 34.462109, 39.770786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504211, 34.138916, 39.587734>,  <32.593285, 33.945000, 39.477905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504211, 34.138916, 39.587734>,  <32.355755, 34.462109, 39.770786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504211, 34.138916, 39.587734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148265, -0.434941, 0.888169,
		-0.916662, -0.397490, -0.041632,
		0.371146, -0.807978, -0.457627,
		32.615555, 33.896523, 39.450447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033066, 33.897606, 40.098763>,  <32.355755, 34.462109, 39.770786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033066, 33.897606, 40.098763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359486, 33.755615, 39.916309>,  <32.555340, 33.670422, 39.806839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359486, 33.755615, 39.916309>,  <32.033066, 33.897606, 40.098763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359486, 33.755615, 39.916309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193720, -0.575550, 0.794490,
		-0.544548, -0.736706, -0.400914,
		0.816052, -0.354973, -0.456129,
		32.604301, 33.649124, 39.779472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930588, 33.257427, 40.227703>,  <32.033066, 33.897606, 40.098763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930588, 33.257427, 40.227703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318291, 33.287617, 40.134026>,  <32.550911, 33.305729, 40.077820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318291, 33.287617, 40.134026>,  <31.930588, 33.257427, 40.227703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318291, 33.287617, 40.134026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245204, -0.375124, 0.893956,
		-0.020383, -0.923897, -0.382097,
		0.969257, 0.075470, -0.234190,
		32.609066, 33.310257, 40.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263676, 32.620224, 40.441998>,  <31.930588, 33.257427, 40.227703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263676, 32.620224, 40.441998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579048, 32.866016, 40.430779>,  <32.768272, 33.013493, 40.424046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579048, 32.866016, 40.430779>,  <32.263676, 32.620224, 40.441998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579048, 32.866016, 40.430779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298865, -0.342820, 0.890592,
		0.537633, -0.710557, -0.453937,
		0.788435, 0.614478, -0.028049,
		32.815578, 33.050358, 40.422363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866169, 32.223488, 40.565205>,  <32.263676, 32.620224, 40.441998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866169, 32.223488, 40.565205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960831, 32.600544, 40.659374>,  <33.017628, 32.826778, 40.715878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960831, 32.600544, 40.659374>,  <32.866169, 32.223488, 40.565205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960831, 32.600544, 40.659374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324366, -0.305058, 0.895392,
		0.915851, -0.135531, -0.377953,
		0.236651, 0.942640, 0.235426,
		33.031826, 32.883335, 40.730003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532612, 32.149105, 40.894993>,  <32.866169, 32.223488, 40.565205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532612, 32.149105, 40.894993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400967, 32.505985, 41.018711>,  <33.321980, 32.720112, 41.092941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400967, 32.505985, 41.018711>,  <33.532612, 32.149105, 40.894993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400967, 32.505985, 41.018711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198664, -0.254787, 0.946370,
		0.923156, 0.372909, -0.093394,
		-0.329114, 0.892201, 0.309291,
		33.302231, 32.773647, 41.111500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057655, 32.534618, 41.220787>,  <33.532612, 32.149105, 40.894993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057655, 32.534618, 41.220787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717842, 32.667007, 41.385105>,  <33.513954, 32.746441, 41.483696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717842, 32.667007, 41.385105>,  <34.057655, 32.534618, 41.220787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717842, 32.667007, 41.385105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319800, -0.296206, 0.899994,
		0.419552, 0.895947, 0.145792,
		-0.849532, 0.330970, 0.410798,
		33.462982, 32.766300, 41.508343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303848, 32.881405, 41.825996>,  <34.057655, 32.534618, 41.220787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303848, 32.881405, 41.825996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908703, 32.868225, 41.886703>,  <33.671616, 32.860317, 41.923126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908703, 32.868225, 41.886703>,  <34.303848, 32.881405, 41.825996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908703, 32.868225, 41.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155298, -0.205249, 0.966310,
		-0.000692, 0.978155, 0.207877,
		-0.987867, -0.032952, 0.151763,
		33.612343, 32.858341, 41.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203526, 33.216312, 42.349941>,  <34.303848, 32.881405, 41.825996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203526, 33.216312, 42.349941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864079, 33.005474, 42.367935>,  <33.660412, 32.878971, 42.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864079, 33.005474, 42.367935>,  <34.203526, 33.216312, 42.349941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864079, 33.005474, 42.367935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196778, -0.235582, 0.951724,
		-0.491048, 0.816502, 0.303639,
		-0.848617, -0.527092, 0.044987,
		33.609493, 32.847347, 42.381432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850685, 33.472874, 42.936874>,  <34.203526, 33.216312, 42.349941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850685, 33.472874, 42.936874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706154, 33.113144, 42.838360>,  <33.619434, 32.897305, 42.779251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706154, 33.113144, 42.838360>,  <33.850685, 33.472874, 42.936874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706154, 33.113144, 42.838360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149517, -0.316593, 0.936704,
		-0.920373, 0.301633, 0.248858,
		-0.361327, -0.899325, -0.246285,
		33.597755, 32.843346, 42.764473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459213, 33.225567, 43.500374>,  <33.850685, 33.472874, 42.936874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459213, 33.225567, 43.500374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518719, 32.885880, 43.297714>,  <33.554424, 32.682068, 43.176117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518719, 32.885880, 43.297714>,  <33.459213, 33.225567, 43.500374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518719, 32.885880, 43.297714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034935, -0.507520, 0.860932,
		-0.988255, -0.145777, -0.045834,
		0.148766, -0.849219, -0.506652,
		33.563347, 32.631115, 43.145718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097370, 32.739227, 43.971222>,  <33.459213, 33.225567, 43.500374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097370, 32.739227, 43.971222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297832, 32.500801, 43.720287>,  <33.418110, 32.357746, 43.569725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297832, 32.500801, 43.720287>,  <33.097370, 32.739227, 43.971222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297832, 32.500801, 43.720287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218682, -0.614180, 0.758262,
		-0.837270, -0.517193, -0.177451,
		0.501155, -0.596065, -0.627336,
		33.448177, 32.321983, 43.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844227, 31.999332, 43.973007>,  <33.097370, 32.739227, 43.971222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844227, 31.999332, 43.973007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231079, 31.990047, 43.871723>,  <33.463192, 31.984476, 43.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231079, 31.990047, 43.871723>,  <32.844227, 31.999332, 43.973007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231079, 31.990047, 43.871723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212025, -0.476064, 0.853468,
		-0.140356, -0.879104, -0.455495,
		0.967133, -0.023213, -0.253211,
		33.521217, 31.983084, 43.795761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092331, 31.299526, 44.198772>,  <32.844227, 31.999332, 43.973007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092331, 31.299526, 44.198772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414375, 31.533756, 44.161049>,  <33.607601, 31.674294, 44.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414375, 31.533756, 44.161049>,  <33.092331, 31.299526, 44.198772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414375, 31.533756, 44.161049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382318, -0.390806, 0.837319,
		0.453459, -0.710191, -0.538519,
		0.805114, 0.585575, -0.094304,
		33.655910, 31.709429, 44.132759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636902, 30.762239, 44.246647>,  <33.092331, 31.299526, 44.198772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636902, 30.762239, 44.246647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737423, 31.137541, 44.341747>,  <33.797737, 31.362722, 44.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737423, 31.137541, 44.341747>,  <33.636902, 30.762239, 44.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737423, 31.137541, 44.341747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348588, -0.316888, 0.882082,
		0.902958, -0.138791, -0.406699,
		0.251303, 0.938253, 0.237755,
		33.812813, 31.419016, 44.413074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287361, 30.686743, 44.613403>,  <33.636902, 30.762239, 44.246647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287361, 30.686743, 44.613403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140358, 31.044065, 44.716896>,  <34.052158, 31.258459, 44.778992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140358, 31.044065, 44.716896>,  <34.287361, 30.686743, 44.613403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140358, 31.044065, 44.716896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392210, -0.103384, 0.914047,
		0.843274, 0.437395, -0.312370,
		-0.367505, 0.893307, 0.258731,
		34.030106, 31.312057, 44.794514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840504, 30.974180, 45.014069>,  <34.287361, 30.686743, 44.613403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840504, 30.974180, 45.014069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528423, 31.201052, 45.119595>,  <34.341175, 31.337173, 45.182911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528423, 31.201052, 45.119595>,  <34.840504, 30.974180, 45.014069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528423, 31.201052, 45.119595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325324, 0.007691, 0.945571,
		0.534278, 0.823559, -0.190517,
		-0.780199, 0.567178, 0.263815,
		34.294365, 31.371204, 45.198738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038597, 31.476515, 45.482025>,  <34.840504, 30.974180, 45.014069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038597, 31.476515, 45.482025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648327, 31.411686, 45.541077>,  <34.414165, 31.372789, 45.576508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648327, 31.411686, 45.541077>,  <35.038597, 31.476515, 45.482025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648327, 31.411686, 45.541077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135125, 0.085706, 0.987115,
		-0.172636, 0.983050, -0.061721,
		-0.975673, -0.162071, 0.147630,
		34.355625, 31.363064, 45.585365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679054, 32.081135, 45.783283>,  <35.038597, 31.476515, 45.482025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679054, 32.081135, 45.783283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423706, 31.780258, 45.848637>,  <34.270496, 31.599733, 45.887848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423706, 31.780258, 45.848637>,  <34.679054, 32.081135, 45.783283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423706, 31.780258, 45.848637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082990, 0.143761, 0.986127,
		-0.765242, 0.643073, -0.029349,
		-0.638371, -0.752190, 0.163381,
		34.232193, 31.554602, 45.897652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206470, 32.282322, 46.377018>,  <34.679054, 32.081135, 45.783283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206470, 32.282322, 46.377018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187092, 31.882868, 46.384727>,  <34.175465, 31.643194, 46.389351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187092, 31.882868, 46.384727>,  <34.206470, 32.282322, 46.377018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187092, 31.882868, 46.384727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256686, 0.006196, 0.966475,
		-0.965280, 0.051770, 0.256037,
		-0.048448, -0.998640, 0.019269,
		34.172558, 31.583277, 46.390507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825275, 32.135880, 46.955711>,  <34.206470, 32.282322, 46.377018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825275, 32.135880, 46.955711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013000, 31.792435, 46.873222>,  <34.125637, 31.586369, 46.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013000, 31.792435, 46.873222>,  <33.825275, 32.135880, 46.955711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013000, 31.792435, 46.873222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261233, -0.088089, 0.961248,
		-0.843504, -0.505003, 0.182955,
		0.469317, -0.858610, -0.206227,
		34.153797, 31.534851, 46.811356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506435, 31.587311, 47.201565>,  <33.825275, 32.135880, 46.955711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506435, 31.587311, 47.201565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880913, 31.447725, 47.184738>,  <34.105598, 31.363974, 47.174644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880913, 31.447725, 47.184738>,  <33.506435, 31.587311, 47.201565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880913, 31.447725, 47.184738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041575, -0.228774, 0.972592,
		-0.349022, -0.908784, -0.228684,
		0.936192, -0.348963, -0.042064,
		34.161770, 31.343037, 47.172119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403484, 31.003498, 47.472149>,  <33.506435, 31.587311, 47.201565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403484, 31.003498, 47.472149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797161, 31.065601, 47.506218>,  <34.033367, 31.102863, 47.526661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797161, 31.065601, 47.506218>,  <33.403484, 31.003498, 47.472149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797161, 31.065601, 47.506218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013520, -0.413703, 0.910312,
		0.176572, -0.897075, -0.405065,
		0.984195, 0.155260, 0.085177,
		34.092419, 31.112179, 47.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522156, 30.483381, 47.927040>,  <33.403484, 31.003498, 47.472149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522156, 30.483381, 47.927040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857368, 30.700800, 47.946087>,  <34.058495, 30.831251, 47.957516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857368, 30.700800, 47.946087>,  <33.522156, 30.483381, 47.927040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857368, 30.700800, 47.946087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099123, -0.237475, 0.966323,
		0.536548, -0.805086, -0.252888,
		0.838027, 0.543546, 0.047615,
		34.108776, 30.863863, 47.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994804, 30.075148, 48.238247>,  <33.522156, 30.483381, 47.927040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994804, 30.075148, 48.238247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166286, 30.430576, 48.303555>,  <34.269176, 30.643833, 48.342739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166286, 30.430576, 48.303555>,  <33.994804, 30.075148, 48.238247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166286, 30.430576, 48.303555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313498, -0.315798, 0.895539,
		0.847310, -0.332735, -0.413948,
		0.428701, 0.888571, 0.163267,
		34.294895, 30.697147, 48.352535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692505, 29.924698, 48.514919>,  <33.994804, 30.075148, 48.238247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692505, 29.924698, 48.514919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600327, 30.295603, 48.632954>,  <34.545021, 30.518147, 48.703773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600327, 30.295603, 48.632954>,  <34.692505, 29.924698, 48.514919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600327, 30.295603, 48.632954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379964, -0.193431, 0.904550,
		0.895836, 0.320572, -0.307752,
		-0.230444, 0.927264, 0.295088,
		34.531193, 30.573782, 48.721481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310936, 30.107294, 48.698341>,  <34.692505, 29.924698, 48.514919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310936, 30.107294, 48.698341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045723, 30.345362, 48.879959>,  <34.886593, 30.488203, 48.988930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045723, 30.345362, 48.879959>,  <35.310936, 30.107294, 48.698341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045723, 30.345362, 48.879959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465378, -0.147370, 0.872757,
		0.586351, 0.789972, -0.179267,
		-0.663036, 0.595169, 0.454046,
		34.846813, 30.523912, 49.016174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586994, 30.452517, 49.203999>,  <35.310936, 30.107294, 48.698341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586994, 30.452517, 49.203999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211990, 30.501513, 49.334274>,  <34.986988, 30.530910, 49.412441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211990, 30.501513, 49.334274>,  <35.586994, 30.452517, 49.203999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211990, 30.501513, 49.334274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299965, -0.189885, 0.934861,
		0.176357, 0.974135, 0.141275,
		-0.937507, 0.122492, 0.325694,
		34.930737, 30.538260, 49.431984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702415, 30.812517, 49.793182>,  <35.586994, 30.452517, 49.203999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702415, 30.812517, 49.793182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330757, 30.668394, 49.826340>,  <35.107761, 30.581921, 49.846233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330757, 30.668394, 49.826340>,  <35.702415, 30.812517, 49.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330757, 30.668394, 49.826340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205544, -0.317047, 0.925869,
		-0.307319, 0.877302, 0.368642,
		-0.929143, -0.360309, 0.082890,
		35.052013, 30.560301, 49.851208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423473, 31.165567, 50.324234>,  <35.702415, 30.812517, 49.793182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423473, 31.165567, 50.324234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243690, 30.811293, 50.277687>,  <35.135818, 30.598728, 50.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243690, 30.811293, 50.277687>,  <35.423473, 31.165567, 50.324234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243690, 30.811293, 50.277687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203548, -0.228381, 0.952056,
		-0.869801, 0.404225, 0.282928,
		-0.449460, -0.885689, -0.116366,
		35.108852, 30.545586, 50.242779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083965, 31.043163, 50.855133>,  <35.423473, 31.165567, 50.324234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083965, 31.043163, 50.855133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126762, 30.657949, 50.756248>,  <35.152443, 30.426821, 50.696918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126762, 30.657949, 50.756248>,  <35.083965, 31.043163, 50.855133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126762, 30.657949, 50.756248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316807, -0.202656, 0.926587,
		-0.942436, -0.177460, 0.283413,
		0.106997, -0.963036, -0.247210,
		35.158863, 30.369040, 50.682087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800877, 30.820391, 51.482876>,  <35.083965, 31.043163, 50.855133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800877, 30.820391, 51.482876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026077, 30.591406, 51.244442>,  <35.161198, 30.454016, 51.101379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026077, 30.591406, 51.244442>,  <34.800877, 30.820391, 51.482876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026077, 30.591406, 51.244442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465115, -0.376724, 0.801091,
		-0.683155, -0.728262, 0.054165,
		0.562999, -0.572462, -0.596086,
		35.194977, 30.419666, 51.065617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722240, 30.022053, 51.611240>,  <34.800877, 30.820391, 51.482876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722240, 30.022053, 51.611240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083794, 30.161633, 51.512268>,  <35.300728, 30.245380, 51.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083794, 30.161633, 51.512268>,  <34.722240, 30.022053, 51.611240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083794, 30.161633, 51.512268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290754, -0.076892, 0.953703,
		0.313770, -0.933981, -0.170960,
		0.903887, 0.348951, -0.247432,
		35.354961, 30.266317, 51.438038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460709, 29.397291, 51.942638>,  <34.722240, 30.022053, 51.611240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460709, 29.397291, 51.942638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855473, 29.436710, 51.993706>,  <35.092331, 29.460361, 52.024345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855473, 29.436710, 51.993706>,  <34.460709, 29.397291, 51.942638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855473, 29.436710, 51.993706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139476, 0.124096, 0.982419,
		0.080969, -0.987365, 0.136216,
		0.986909, 0.098544, 0.127665,
		35.151546, 29.466274, 52.032005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756069, 28.799623, 52.307617>,  <34.460709, 29.397291, 51.942638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756069, 28.799623, 52.307617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951176, 29.143818, 52.366470>,  <35.068241, 29.350334, 52.401783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951176, 29.143818, 52.366470>,  <34.756069, 28.799623, 52.307617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951176, 29.143818, 52.366470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186085, -0.062186, 0.980564,
		0.852910, -0.505666, 0.129791,
		0.487767, 0.860485, 0.147136,
		35.097507, 29.401964, 52.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350266, 28.687883, 52.730621>,  <34.756069, 28.799623, 52.307617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350266, 28.687883, 52.730621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220940, 29.057531, 52.812077>,  <35.143345, 29.279320, 52.860950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220940, 29.057531, 52.812077>,  <35.350266, 28.687883, 52.730621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220940, 29.057531, 52.812077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014255, -0.219928, 0.975412,
		0.946185, 0.312460, 0.084279,
		-0.323312, 0.924121, 0.203639,
		35.123947, 29.334768, 52.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931934, 28.480892, 52.411228>,  <35.350266, 28.687883, 52.730621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931934, 28.480892, 52.411228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960678, 28.082167, 52.425091>,  <35.977924, 27.842932, 52.433407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960678, 28.082167, 52.425091>,  <35.931934, 28.480892, 52.411228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960678, 28.082167, 52.425091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240746, -0.016384, -0.970450,
		0.967925, 0.078076, 0.238801,
		0.071857, -0.996813, 0.034655,
		35.982235, 27.783123, 52.435486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522858, 28.430826, 52.086594>,  <35.931934, 28.480892, 52.411228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522858, 28.430826, 52.086594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340454, 28.075108, 52.072666>,  <36.231014, 27.861677, 52.064308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340454, 28.075108, 52.072666>,  <36.522858, 28.430826, 52.086594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340454, 28.075108, 52.072666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203487, -0.066092, -0.976844,
		0.866402, -0.452532, 0.211099,
		-0.456006, -0.889296, -0.034822,
		36.203651, 27.808319, 52.062218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980118, 27.838726, 51.830700>,  <36.522858, 28.430826, 52.086594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980118, 27.838726, 51.830700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589775, 27.777987, 51.767895>,  <36.355572, 27.741543, 51.730213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589775, 27.777987, 51.767895>,  <36.980118, 27.838726, 51.830700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589775, 27.777987, 51.767895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167774, -0.060817, -0.983948,
		0.139862, -0.986531, 0.084825,
		-0.975854, -0.151848, -0.157008,
		36.297020, 27.732431, 51.720791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962528, 27.453819, 51.228737>,  <36.980118, 27.838726, 51.830700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962528, 27.453819, 51.228737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575935, 27.550150, 51.264328>,  <36.343979, 27.607948, 51.285683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575935, 27.550150, 51.264328>,  <36.962528, 27.453819, 51.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575935, 27.550150, 51.264328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070036, 0.086125, -0.993820,
		-0.247001, -0.966740, -0.066372,
		-0.966481, 0.240826, 0.088980,
		36.285992, 27.622398, 51.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807522, 27.871571, 50.709290>,  <36.962528, 27.453819, 51.228737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807522, 27.871571, 50.709290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442581, 27.745737, 50.814102>,  <36.223618, 27.670237, 50.876987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442581, 27.745737, 50.814102>,  <36.807522, 27.871571, 50.709290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442581, 27.745737, 50.814102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368638, 0.352767, -0.860036,
		0.178115, -0.881246, -0.437813,
		-0.912349, -0.314580, 0.262028,
		36.168877, 27.651363, 50.892712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518177, 27.304731, 50.288563>,  <36.807522, 27.871571, 50.709290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518177, 27.304731, 50.288563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277775, 27.593571, 50.425602>,  <36.133533, 27.766874, 50.507824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277775, 27.593571, 50.425602>,  <36.518177, 27.304731, 50.288563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277775, 27.593571, 50.425602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004794, 0.425386, -0.904999,
		-0.799234, -0.545548, -0.252195,
		-0.601001, 0.722097, 0.342598,
		36.097473, 27.810200, 50.528381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803463, 27.251007, 50.098038>,  <36.518177, 27.304731, 50.288563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803463, 27.251007, 50.098038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923092, 27.630424, 50.139645>,  <35.994869, 27.858076, 50.164608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923092, 27.630424, 50.139645>,  <35.803463, 27.251007, 50.098038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923092, 27.630424, 50.139645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086911, 0.135626, -0.986941,
		-0.950265, 0.286123, 0.123000,
		0.299069, 0.948546, 0.104013,
		36.012814, 27.914988, 50.170849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255154, 27.663685, 49.904320>,  <35.803463, 27.251007, 50.098038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255154, 27.663685, 49.904320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598465, 27.862642, 49.853779>,  <35.804451, 27.982018, 49.823456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598465, 27.862642, 49.853779>,  <35.255154, 27.663685, 49.904320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598465, 27.862642, 49.853779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260014, 0.209206, -0.942669,
		-0.442444, 0.841922, 0.308885,
		0.858275, 0.497393, -0.126350,
		35.855946, 28.011860, 49.815872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054394, 28.077030, 49.405499>,  <35.255154, 27.663685, 49.904320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054394, 28.077030, 49.405499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447449, 28.151163, 49.402157>,  <35.683281, 28.195642, 49.400150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447449, 28.151163, 49.402157>,  <35.054394, 28.077030, 49.405499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447449, 28.151163, 49.402157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053051, 0.237545, -0.969927,
		-0.177773, 0.953533, 0.243253,
		0.982641, 0.185331, -0.008357,
		35.742241, 28.206762, 49.399651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109341, 28.814930, 49.122921>,  <35.054394, 28.077030, 49.405499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109341, 28.814930, 49.122921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445011, 28.601568, 49.080471>,  <35.646412, 28.473551, 49.055000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445011, 28.601568, 49.080471>,  <35.109341, 28.814930, 49.122921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445011, 28.601568, 49.080471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017087, 0.220890, -0.975149,
		0.543590, 0.816509, 0.194480,
		0.839177, -0.533404, -0.106122,
		35.696766, 28.441547, 49.048634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452507, 29.168531, 48.607853>,  <35.109341, 28.814930, 49.122921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452507, 29.168531, 48.607853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644402, 28.819283, 48.642513>,  <35.759537, 28.609734, 48.663311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644402, 28.819283, 48.642513>,  <35.452507, 29.168531, 48.607853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644402, 28.819283, 48.642513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169479, -0.004687, -0.985523,
		0.860889, 0.487477, 0.145727,
		0.479737, -0.873123, 0.086653,
		35.788322, 28.557346, 48.668510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158337, 29.304327, 48.316956>,  <35.452507, 29.168531, 48.607853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158337, 29.304327, 48.316956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046413, 28.920719, 48.299137>,  <35.979259, 28.690554, 48.288445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046413, 28.920719, 48.299137>,  <36.158337, 29.304327, 48.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046413, 28.920719, 48.299137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246616, -0.026952, -0.968738,
		0.927841, -0.282047, 0.244052,
		-0.279808, -0.959022, -0.044550,
		35.962471, 28.633013, 48.285770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669655, 29.035460, 47.986786>,  <36.158337, 29.304327, 48.316956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669655, 29.035460, 47.986786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360451, 28.792194, 47.914577>,  <36.174927, 28.646236, 47.871250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360451, 28.792194, 47.914577>,  <36.669655, 29.035460, 47.986786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360451, 28.792194, 47.914577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238084, -0.014353, -0.971139,
		0.588017, -0.793684, 0.155888,
		-0.773015, -0.608161, -0.180523,
		36.128548, 28.609747, 47.860420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833912, 28.504614, 47.504002>,  <36.669655, 29.035460, 47.986786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833912, 28.504614, 47.504002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434086, 28.500950, 47.492798>,  <36.194191, 28.498751, 47.486076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434086, 28.500950, 47.492798>,  <36.833912, 28.504614, 47.504002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434086, 28.500950, 47.492798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028876, -0.114035, -0.993057,
		0.005904, -0.993435, 0.114250,
		-0.999566, -0.009162, -0.028013,
		36.134216, 28.498201, 47.484394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681126, 28.008507, 47.033741>,  <36.833912, 28.504614, 47.504002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681126, 28.008507, 47.033741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321365, 28.183302, 47.038254>,  <36.105511, 28.288179, 47.040962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321365, 28.183302, 47.038254>,  <36.681126, 28.008507, 47.033741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321365, 28.183302, 47.038254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012907, 0.052342, -0.998546,
		-0.436943, -0.897943, -0.052716,
		-0.899397, 0.436988, 0.011280,
		36.051548, 28.314398, 47.041637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388916, 27.716488, 46.520374>,  <36.681126, 28.008507, 47.033741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388916, 27.716488, 46.520374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182369, 28.050611, 46.595879>,  <36.058441, 28.251085, 46.641182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182369, 28.050611, 46.595879>,  <36.388916, 27.716488, 46.520374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182369, 28.050611, 46.595879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107265, 0.155595, -0.981980,
		-0.849625, -0.527307, 0.009255,
		-0.516364, 0.835307, 0.188759,
		36.027458, 28.301203, 46.652508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745296, 27.758558, 46.101242>,  <36.388916, 27.716488, 46.520374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745296, 27.758558, 46.101242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809093, 28.141893, 46.196026>,  <35.847370, 28.371895, 46.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809093, 28.141893, 46.196026>,  <35.745296, 27.758558, 46.101242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809093, 28.141893, 46.196026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236673, 0.270150, -0.933276,
		-0.958409, 0.092768, 0.269900,
		0.159491, 0.958338, 0.236959,
		35.856941, 28.429396, 46.267113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254143, 28.084690, 45.817734>,  <35.745296, 27.758558, 46.101242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254143, 28.084690, 45.817734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549362, 28.353403, 45.842995>,  <35.726494, 28.514631, 45.858150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549362, 28.353403, 45.842995>,  <35.254143, 28.084690, 45.817734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549362, 28.353403, 45.842995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287671, 0.397949, -0.871138,
		-0.610347, 0.624778, 0.486959,
		0.738053, 0.671780, 0.063157,
		35.770779, 28.554937, 45.861942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006893, 28.520458, 45.366516>,  <35.254143, 28.084690, 45.817734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006893, 28.520458, 45.366516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379807, 28.660482, 45.402958>,  <35.603554, 28.744497, 45.424824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379807, 28.660482, 45.402958>,  <35.006893, 28.520458, 45.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379807, 28.660482, 45.402958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038660, 0.346855, -0.937122,
		-0.359649, 0.870144, 0.336902,
		0.932286, 0.350060, 0.091106,
		35.659492, 28.765501, 45.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969170, 29.142881, 45.123314>,  <35.006893, 28.520458, 45.366516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969170, 29.142881, 45.123314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357754, 29.050661, 45.100998>,  <35.590904, 28.995329, 45.087608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357754, 29.050661, 45.100998>,  <34.969170, 29.142881, 45.123314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357754, 29.050661, 45.100998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005267, 0.256092, -0.966638,
		0.237148, 0.938756, 0.249997,
		0.971459, -0.230553, -0.055787,
		35.649193, 28.981495, 45.084263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308270, 29.592646, 44.789021>,  <34.969170, 29.142881, 45.123314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308270, 29.592646, 44.789021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582455, 29.304546, 44.746342>,  <35.746967, 29.131687, 44.720734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582455, 29.304546, 44.746342>,  <35.308270, 29.592646, 44.789021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582455, 29.304546, 44.746342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119605, 0.033165, -0.992267,
		0.718215, 0.692926, -0.063412,
		0.685464, -0.720246, -0.106697,
		35.788094, 29.088472, 44.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545074, 29.824989, 44.220955>,  <35.308270, 29.592646, 44.789021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545074, 29.824989, 44.220955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623806, 29.435717, 44.268585>,  <35.671043, 29.202154, 44.297161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623806, 29.435717, 44.268585>,  <35.545074, 29.824989, 44.220955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623806, 29.435717, 44.268585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158618, -0.151457, -0.975654,
		0.967522, 0.173150, -0.184175,
		0.196829, -0.973180, 0.119073,
		35.682854, 29.143763, 44.304306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065746, 29.680597, 43.791882>,  <35.545074, 29.824989, 44.220955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065746, 29.680597, 43.791882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884338, 29.329071, 43.851215>,  <35.775494, 29.118155, 43.886814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884338, 29.329071, 43.851215>,  <36.065746, 29.680597, 43.791882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884338, 29.329071, 43.851215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297992, -0.007329, -0.954540,
		0.839952, -0.477106, -0.258555,
		-0.453521, -0.878815, 0.148330,
		35.748283, 29.065426, 43.895714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310299, 29.276178, 43.138786>,  <36.065746, 29.680597, 43.791882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310299, 29.276178, 43.138786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010925, 29.062378, 43.295837>,  <35.831303, 28.934097, 43.390068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010925, 29.062378, 43.295837>,  <36.310299, 29.276178, 43.138786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010925, 29.062378, 43.295837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392986, -0.119458, -0.911752,
		0.534236, -0.836682, -0.120645,
		-0.748435, -0.534503, 0.392623,
		35.786396, 28.902027, 43.413624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224586, 28.785826, 42.723412>,  <36.310299, 29.276178, 43.138786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224586, 28.785826, 42.723412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867786, 28.790127, 42.904179>,  <35.653706, 28.792707, 43.012638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867786, 28.790127, 42.904179>,  <36.224586, 28.785826, 42.723412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867786, 28.790127, 42.904179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437161, -0.274913, -0.856337,
		0.115029, -0.961409, 0.249922,
		-0.891997, 0.010753, 0.451914,
		35.600189, 28.793352, 43.039753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859783, 28.287840, 42.267017>,  <36.224586, 28.785826, 42.723412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859783, 28.287840, 42.267017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571220, 28.502323, 42.442314>,  <35.398083, 28.631014, 42.547493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571220, 28.502323, 42.442314>,  <35.859783, 28.287840, 42.267017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571220, 28.502323, 42.442314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396111, 0.199581, -0.896250,
		-0.568042, -0.820151, 0.068419,
		-0.721404, 0.536209, 0.438241,
		35.354797, 28.663185, 42.573788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229454, 28.056227, 41.969246>,  <35.859783, 28.287840, 42.267017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229454, 28.056227, 41.969246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101799, 28.404345, 42.119305>,  <35.025208, 28.613216, 42.209339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101799, 28.404345, 42.119305>,  <35.229454, 28.056227, 41.969246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101799, 28.404345, 42.119305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541867, 0.157191, -0.825633,
		-0.777516, -0.466771, 0.421420,
		-0.319138, 0.870297, 0.375147,
		35.006058, 28.665434, 42.231850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482536, 28.060234, 41.897449>,  <35.229454, 28.056227, 41.969246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482536, 28.060234, 41.897449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575985, 28.448017, 41.927322>,  <34.632053, 28.680687, 41.945244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575985, 28.448017, 41.927322>,  <34.482536, 28.060234, 41.897449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575985, 28.448017, 41.927322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610383, 0.206010, -0.764849,
		-0.756872, 0.133101, 0.639867,
		0.233621, 0.969456, 0.074680,
		34.646072, 28.738853, 41.949726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870155, 28.432835, 41.881733>,  <34.482536, 28.060234, 41.897449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870155, 28.432835, 41.881733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158524, 28.685234, 41.767109>,  <34.331543, 28.836674, 41.698334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158524, 28.685234, 41.767109>,  <33.870155, 28.432835, 41.881733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158524, 28.685234, 41.767109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576508, 0.316575, -0.753272,
		-0.384596, 0.708252, 0.592001,
		0.720919, 0.630999, -0.286560,
		34.374798, 28.874535, 41.681141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527149, 28.853708, 41.435001>,  <33.870155, 28.432835, 41.881733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527149, 28.853708, 41.435001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896259, 28.977127, 41.342663>,  <34.117725, 29.051178, 41.287258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896259, 28.977127, 41.342663>,  <33.527149, 28.853708, 41.435001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896259, 28.977127, 41.342663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374808, 0.579522, -0.723653,
		-0.089502, 0.754289, 0.650413,
		0.922772, 0.308548, -0.230845,
		34.173092, 29.069691, 41.273411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540611, 29.575600, 41.363750>,  <33.527149, 28.853708, 41.435001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540611, 29.575600, 41.363750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857643, 29.453373, 41.152679>,  <34.047863, 29.380037, 41.026039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857643, 29.453373, 41.152679>,  <33.540611, 29.575600, 41.363750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857643, 29.453373, 41.152679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298151, 0.560663, -0.772504,
		0.531898, 0.769601, 0.353268,
		0.792584, -0.305567, -0.527673,
		34.095417, 29.361702, 40.994377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694859, 30.171961, 41.013191>,  <33.540611, 29.575600, 41.363750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694859, 30.171961, 41.013191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879555, 29.885605, 40.803696>,  <33.990372, 29.713791, 40.677998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879555, 29.885605, 40.803696>,  <33.694859, 30.171961, 41.013191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879555, 29.885605, 40.803696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300331, 0.429398, -0.851715,
		0.834625, 0.550564, -0.016733,
		0.461739, -0.715888, -0.523738,
		34.018078, 29.670839, 40.646576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227196, 30.490780, 40.554790>,  <33.694859, 30.171961, 41.013191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227196, 30.490780, 40.554790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137505, 30.140852, 40.383018>,  <34.083691, 29.930895, 40.279953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137505, 30.140852, 40.383018>,  <34.227196, 30.490780, 40.554790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137505, 30.140852, 40.383018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246938, 0.477277, -0.843344,
		0.942732, -0.083059, -0.323045,
		-0.224230, -0.874819, -0.429434,
		34.070236, 29.878407, 40.254189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473713, 30.583618, 39.962093>,  <34.227196, 30.490780, 40.554790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473713, 30.583618, 39.962093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226086, 30.274519, 39.906063>,  <34.077511, 30.089060, 39.872444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226086, 30.274519, 39.906063>,  <34.473713, 30.583618, 39.962093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226086, 30.274519, 39.906063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322450, 0.412742, -0.851863,
		0.716091, -0.482188, -0.504685,
		-0.619063, -0.772748, -0.140079,
		34.040367, 30.042694, 39.864040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594616, 30.427229, 39.273487>,  <34.473713, 30.583618, 39.962093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594616, 30.427229, 39.273487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256691, 30.235958, 39.369522>,  <34.053936, 30.121195, 39.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256691, 30.235958, 39.369522>,  <34.594616, 30.427229, 39.273487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256691, 30.235958, 39.369522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426531, 0.330929, -0.841758,
		0.323042, -0.813540, -0.483525,
		-0.844817, -0.478161, 0.240096,
		34.003246, 30.092505, 39.441547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511654, 29.940811, 38.769718>,  <34.594616, 30.427229, 39.273487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511654, 29.940811, 38.769718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153812, 30.018742, 38.930576>,  <33.939106, 30.065500, 39.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153812, 30.018742, 38.930576>,  <34.511654, 29.940811, 38.769718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153812, 30.018742, 38.930576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362438, 0.210055, -0.908028,
		-0.261383, -0.958081, -0.117302,
		-0.894605, 0.194829, 0.402150,
		33.885429, 30.077190, 39.051220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065063, 29.621086, 38.216606>,  <34.511654, 29.940811, 38.769718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065063, 29.621086, 38.216606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857655, 29.857422, 38.463844>,  <33.733208, 29.999224, 38.612186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857655, 29.857422, 38.463844>,  <34.065063, 29.621086, 38.216606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857655, 29.857422, 38.463844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481641, 0.395457, -0.782071,
		-0.706507, -0.703225, 0.079516,
		-0.518527, 0.590837, 0.618095,
		33.702095, 30.034674, 38.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327583, 29.476709, 38.210835>,  <34.065063, 29.621086, 38.216606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327583, 29.476709, 38.210835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407425, 29.860487, 38.290455>,  <33.455330, 30.090754, 38.338226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407425, 29.860487, 38.290455>,  <33.327583, 29.476709, 38.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407425, 29.860487, 38.290455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638429, 0.281446, -0.716377,
		-0.743348, 0.015911, 0.668716,
		0.199606, 0.959445, 0.199054,
		33.467308, 30.148321, 38.350170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700001, 29.895658, 37.936840>,  <33.327583, 29.476709, 38.210835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700001, 29.895658, 37.936840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952835, 30.193338, 38.023220>,  <33.104534, 30.371946, 38.075050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952835, 30.193338, 38.023220>,  <32.700001, 29.895658, 37.936840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952835, 30.193338, 38.023220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436115, 0.572002, -0.694707,
		-0.640526, 0.344933, 0.686110,
		0.632084, 0.744200, 0.215952,
		33.142460, 30.416599, 38.088005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337212, 30.430344, 37.974159>,  <32.700001, 29.895658, 37.936840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337212, 30.430344, 37.974159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695805, 30.593958, 37.906040>,  <32.910961, 30.692127, 37.865170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695805, 30.593958, 37.906040>,  <32.337212, 30.430344, 37.974159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695805, 30.593958, 37.906040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436124, 0.746858, -0.501995,
		-0.078146, 0.524303, 0.847938,
		0.896487, 0.409035, -0.170297,
		32.964752, 30.716669, 37.854950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268238, 31.104626, 38.188770>,  <32.337212, 30.430344, 37.974159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268238, 31.104626, 38.188770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577881, 31.093899, 37.935776>,  <32.763668, 31.087461, 37.783978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577881, 31.093899, 37.935776>,  <32.268238, 31.104626, 38.188770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577881, 31.093899, 37.935776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409052, 0.741331, -0.532076,
		0.483153, 0.670603, 0.562898,
		0.774106, -0.026820, -0.632488,
		32.810112, 31.085854, 37.746029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375980, 31.827185, 37.962162>,  <32.268238, 31.104626, 38.188770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375980, 31.827185, 37.962162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593143, 31.609324, 37.706470>,  <32.723442, 31.478607, 37.553055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593143, 31.609324, 37.706470>,  <32.375980, 31.827185, 37.962162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593143, 31.609324, 37.706470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271851, 0.606204, -0.747405,
		0.794577, 0.579543, 0.181046,
		0.542904, -0.544653, -0.639225,
		32.756016, 31.445927, 37.514702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781681, 32.388626, 37.608624>,  <32.375980, 31.827185, 37.962162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781681, 32.388626, 37.608624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761429, 32.054028, 37.390373>,  <32.749279, 31.853268, 37.259422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761429, 32.054028, 37.390373>,  <32.781681, 32.388626, 37.608624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761429, 32.054028, 37.390373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231344, 0.541291, -0.808383,
		0.971554, 0.085301, -0.220923,
		-0.050628, -0.836497, -0.545627,
		32.746239, 31.803078, 37.226685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178169, 32.686180, 37.040314>,  <32.781681, 32.388626, 37.608624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178169, 32.686180, 37.040314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990959, 32.358051, 36.908848>,  <32.878632, 32.161175, 36.829967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990959, 32.358051, 36.908848>,  <33.178169, 32.686180, 37.040314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990959, 32.358051, 36.908848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182568, 0.453648, -0.872280,
		0.864650, -0.348247, -0.362084,
		-0.468027, -0.820322, -0.328668,
		32.850552, 32.111954, 36.810249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456959, 32.493717, 36.407749>,  <33.178169, 32.686180, 37.040314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456959, 32.493717, 36.407749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100258, 32.313305, 36.393009>,  <32.886238, 32.205059, 36.384163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100258, 32.313305, 36.393009>,  <33.456959, 32.493717, 36.407749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100258, 32.313305, 36.393009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158459, 0.387500, -0.908149,
		0.423886, -0.803998, -0.417022,
		-0.891746, -0.451033, -0.036855,
		32.832733, 32.177998, 36.381954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033867, 32.911602, 36.531948>,  <33.456959, 32.493717, 36.407749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033867, 32.911602, 36.531948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363262, 33.098667, 36.403481>,  <34.560902, 33.210907, 36.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363262, 33.098667, 36.403481>,  <34.033867, 32.911602, 36.531948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363262, 33.098667, 36.403481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567055, -0.696033, 0.440439,
		-0.017568, -0.544820, -0.838369,
		0.823493, 0.467663, -0.321171,
		34.610310, 33.238968, 36.307129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445480, 32.487774, 36.272011>,  <34.033867, 32.911602, 36.531948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445480, 32.487774, 36.272011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708782, 32.771225, 36.373634>,  <34.866764, 32.941296, 36.434608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708782, 32.771225, 36.373634>,  <34.445480, 32.487774, 36.272011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708782, 32.771225, 36.373634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556719, -0.685407, 0.469341,
		0.506724, -0.167505, -0.845679,
		0.658252, 0.708632, 0.254059,
		34.906258, 32.983814, 36.449852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139450, 32.222012, 36.171730>,  <34.445480, 32.487774, 36.272011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139450, 32.222012, 36.171730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184719, 32.530582, 36.422199>,  <35.211880, 32.715725, 36.572479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184719, 32.530582, 36.422199>,  <35.139450, 32.222012, 36.171730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184719, 32.530582, 36.422199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578122, -0.563677, 0.589951,
		0.808064, 0.295241, -0.509770,
		0.113168, 0.771428, 0.626173,
		35.218670, 32.762012, 36.610050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919518, 32.309586, 36.369217>,  <35.139450, 32.222012, 36.171730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919518, 32.309586, 36.369217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709949, 32.496128, 36.654316>,  <35.584209, 32.608055, 36.825375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709949, 32.496128, 36.654316>,  <35.919518, 32.309586, 36.369217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709949, 32.496128, 36.654316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593028, -0.400942, 0.698257,
		0.611409, 0.788515, -0.066500,
		-0.523924, 0.466357, 0.712751,
		35.552773, 32.636036, 36.868141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371265, 32.568485, 36.767891>,  <35.919518, 32.309586, 36.369217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371265, 32.568485, 36.767891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034187, 32.526962, 36.979206>,  <35.831940, 32.502048, 37.105995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034187, 32.526962, 36.979206>,  <36.371265, 32.568485, 36.767891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034187, 32.526962, 36.979206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536186, -0.250527, 0.806065,
		0.048675, 0.962528, 0.266777,
		-0.842695, -0.103807, 0.528289,
		35.781380, 32.495819, 37.137691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563366, 32.851288, 37.490036>,  <36.371265, 32.568485, 36.767891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563366, 32.851288, 37.490036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232777, 32.632015, 37.541328>,  <36.034424, 32.500454, 37.572105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232777, 32.632015, 37.541328>,  <36.563366, 32.851288, 37.490036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232777, 32.632015, 37.541328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354488, -0.329771, 0.874980,
		-0.437358, 0.768604, 0.466869,
		-0.826473, -0.548178, 0.128233,
		35.984837, 32.467560, 37.579800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556705, 32.830681, 38.238346>,  <36.563366, 32.851288, 37.490036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556705, 32.830681, 38.238346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320175, 32.537926, 38.102890>,  <36.178257, 32.362274, 38.021618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320175, 32.537926, 38.102890>,  <36.556705, 32.830681, 38.238346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320175, 32.537926, 38.102890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279418, -0.579856, 0.765305,
		-0.756481, 0.357919, 0.547385,
		-0.591322, -0.731889, -0.338641,
		36.142780, 32.318359, 38.001297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262764, 32.558002, 38.815037>,  <36.556705, 32.830681, 38.238346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262764, 32.558002, 38.815037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177296, 32.259430, 38.562946>,  <36.126015, 32.080288, 38.411694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177296, 32.259430, 38.562946>,  <36.262764, 32.558002, 38.815037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177296, 32.259430, 38.562946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086367, -0.657030, 0.748900,
		-0.973079, 0.105591, 0.204859,
		-0.213676, -0.746433, -0.630223,
		36.113194, 32.035500, 38.373878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808849, 32.173256, 39.178108>,  <36.262764, 32.558002, 38.815037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808849, 32.173256, 39.178108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951923, 31.923100, 38.900707>,  <36.037766, 31.773006, 38.734264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951923, 31.923100, 38.900707>,  <35.808849, 32.173256, 39.178108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951923, 31.923100, 38.900707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346439, -0.600778, 0.720449,
		-0.867205, -0.497949, 0.001772,
		0.357682, -0.625391, -0.693506,
		36.059227, 31.735483, 38.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610138, 31.572500, 39.308022>,  <35.808849, 32.173256, 39.178108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610138, 31.572500, 39.308022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941502, 31.458481, 39.115154>,  <36.140320, 31.390068, 38.999435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941502, 31.458481, 39.115154>,  <35.610138, 31.572500, 39.308022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941502, 31.458481, 39.115154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200627, -0.652703, 0.730567,
		-0.522957, -0.701945, -0.483518,
		0.828411, -0.285048, -0.482164,
		36.190025, 31.372967, 38.970505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615284, 30.817396, 39.332798>,  <35.610138, 31.572500, 39.308022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615284, 30.817396, 39.332798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983078, 30.960936, 39.268570>,  <36.203754, 31.047060, 39.230034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983078, 30.960936, 39.268570>,  <35.615284, 30.817396, 39.332798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983078, 30.960936, 39.268570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365340, -0.629102, 0.686118,
		0.145198, -0.689534, -0.709549,
		0.919480, 0.358849, -0.160570,
		36.258923, 31.068590, 39.220398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082211, 30.229052, 39.306156>,  <35.615284, 30.817396, 39.332798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082211, 30.229052, 39.306156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338039, 30.528225, 39.377193>,  <36.491535, 30.707729, 39.419815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338039, 30.528225, 39.377193>,  <36.082211, 30.229052, 39.306156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338039, 30.528225, 39.377193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522076, -0.592183, 0.613804,
		0.564256, -0.299853, -0.769223,
		0.639572, 0.747935, 0.177597,
		36.529911, 30.752605, 39.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711678, 29.921261, 39.296593>,  <36.082211, 30.229052, 39.306156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711678, 29.921261, 39.296593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789005, 30.265274, 39.485474>,  <36.835400, 30.471682, 39.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789005, 30.265274, 39.485474>,  <36.711678, 29.921261, 39.296593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789005, 30.265274, 39.485474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346144, -0.510118, 0.787378,
		0.918048, 0.011237, -0.396309,
		0.193316, 0.860031, 0.472202,
		36.847000, 30.523283, 39.627136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509342, 30.029066, 39.453995>,  <36.711678, 29.921261, 39.296593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509342, 30.029066, 39.453995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305859, 30.244726, 39.722481>,  <37.183769, 30.374123, 39.883572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305859, 30.244726, 39.722481>,  <37.509342, 30.029066, 39.453995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305859, 30.244726, 39.722481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540263, -0.407108, 0.736464,
		0.670321, 0.737281, -0.084182,
		-0.508709, 0.539148, 0.671218,
		37.153244, 30.406471, 39.923847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002052, 30.252466, 39.947941>,  <37.509342, 30.029066, 39.453995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002052, 30.252466, 39.947941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656960, 30.299057, 40.144764>,  <37.449905, 30.327011, 40.262859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656960, 30.299057, 40.144764>,  <38.002052, 30.252466, 39.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656960, 30.299057, 40.144764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425072, -0.359987, 0.830496,
		0.273871, 0.925658, 0.261061,
		-0.862733, 0.116478, 0.492061,
		37.398140, 30.334000, 40.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172035, 30.492771, 40.538048>,  <38.002052, 30.252466, 39.947941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172035, 30.492771, 40.538048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806705, 30.349184, 40.614975>,  <37.587509, 30.263033, 40.661133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806705, 30.349184, 40.614975>,  <38.172035, 30.492771, 40.538048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806705, 30.349184, 40.614975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283439, -0.221235, 0.933123,
		-0.292413, 0.906752, 0.303804,
		-0.913322, -0.358967, 0.192317,
		37.532707, 30.241493, 40.672668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073769, 30.686396, 41.141327>,  <38.172035, 30.492771, 40.538048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073769, 30.686396, 41.141327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798557, 30.396860, 41.120644>,  <37.633430, 30.223139, 41.108234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798557, 30.396860, 41.120644>,  <38.073769, 30.686396, 41.141327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798557, 30.396860, 41.120644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329522, -0.375118, 0.866430,
		-0.646555, 0.579087, 0.496613,
		-0.688027, -0.723840, -0.051713,
		37.592148, 30.179708, 41.105129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680706, 30.801888, 41.717655>,  <38.073769, 30.686396, 41.141327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680706, 30.801888, 41.717655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645393, 30.416084, 41.618111>,  <37.624207, 30.184603, 41.558384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645393, 30.416084, 41.618111>,  <37.680706, 30.801888, 41.717655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645393, 30.416084, 41.618111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259190, -0.263476, 0.929193,
		-0.961783, 0.017529, 0.273251,
		-0.088283, -0.964507, -0.248863,
		37.618908, 30.126732, 41.543453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372669, 30.539829, 42.353035>,  <37.680706, 30.801888, 41.717655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372669, 30.539829, 42.353035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513748, 30.225765, 42.149414>,  <37.598396, 30.037327, 42.027241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513748, 30.225765, 42.149414>,  <37.372669, 30.539829, 42.353035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513748, 30.225765, 42.149414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195172, -0.470318, 0.860644,
		-0.915159, -0.402896, -0.012637,
		0.352693, -0.785160, -0.509050,
		37.619556, 29.990217, 41.996700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976669, 29.969160, 42.494457>,  <37.372669, 30.539829, 42.353035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976669, 29.969160, 42.494457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317429, 29.808859, 42.359596>,  <37.521885, 29.712679, 42.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317429, 29.808859, 42.359596>,  <36.976669, 29.969160, 42.494457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317429, 29.808859, 42.359596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134565, -0.454656, 0.880443,
		-0.506130, -0.795414, -0.333392,
		0.851895, -0.400755, -0.337150,
		37.572998, 29.688633, 42.258453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944397, 29.276533, 42.709023>,  <36.976669, 29.969160, 42.494457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944397, 29.276533, 42.709023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331596, 29.366644, 42.664780>,  <37.563915, 29.420710, 42.638233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331596, 29.366644, 42.664780>,  <36.944397, 29.276533, 42.709023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331596, 29.366644, 42.664780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197758, -0.413335, 0.888845,
		0.154516, -0.882273, -0.444656,
		0.967996, 0.225276, -0.110610,
		37.621994, 29.434227, 42.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219208, 28.763062, 43.131844>,  <36.944397, 29.276533, 42.709023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219208, 28.763062, 43.131844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497036, 29.043844, 43.068813>,  <37.663734, 29.212313, 43.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497036, 29.043844, 43.068813>,  <37.219208, 28.763062, 43.131844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497036, 29.043844, 43.068813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401258, -0.196191, 0.894707,
		0.597129, -0.684666, -0.417933,
		0.694571, 0.701955, -0.157577,
		37.705406, 29.254431, 43.021542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819176, 28.440872, 43.204350>,  <37.219208, 28.763062, 43.131844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819176, 28.440872, 43.204350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866833, 28.830757, 43.279972>,  <37.895428, 29.064688, 43.325348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866833, 28.830757, 43.279972>,  <37.819176, 28.440872, 43.204350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866833, 28.830757, 43.279972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268385, -0.214943, 0.939025,
		0.955916, -0.061135, -0.287207,
		0.119141, 0.974711, 0.189060,
		37.902576, 29.123171, 43.336689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447853, 28.565067, 43.554585>,  <37.819176, 28.440872, 43.204350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447853, 28.565067, 43.554585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228767, 28.883293, 43.658188>,  <38.097317, 29.074228, 43.720348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228767, 28.883293, 43.658188>,  <38.447853, 28.565067, 43.554585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228767, 28.883293, 43.658188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216146, -0.164511, 0.962402,
		0.808260, 0.583108, -0.081853,
		-0.547719, 0.795563, 0.259004,
		38.064453, 29.121962, 43.735889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877590, 28.866409, 44.118179>,  <38.447853, 28.565067, 43.554585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877590, 28.866409, 44.118179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518696, 29.035694, 44.168537>,  <38.303360, 29.137266, 44.198753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518696, 29.035694, 44.168537>,  <38.877590, 28.866409, 44.118179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518696, 29.035694, 44.168537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207852, 0.153273, 0.966077,
		0.389560, 0.892971, -0.225488,
		-0.897240, 0.423214, 0.125897,
		38.249523, 29.162659, 44.206306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996265, 29.443905, 44.459827>,  <38.877590, 28.866409, 44.118179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996265, 29.443905, 44.459827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609684, 29.371115, 44.532326>,  <38.377735, 29.327440, 44.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609684, 29.371115, 44.532326>,  <38.996265, 29.443905, 44.459827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609684, 29.371115, 44.532326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124976, 0.283286, 0.950858,
		-0.224377, 0.941612, -0.251041,
		-0.966455, -0.181977, 0.181241,
		38.319748, 29.316521, 44.586697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749973, 30.032343, 44.789326>,  <38.996265, 29.443905, 44.459827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749973, 30.032343, 44.789326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517544, 29.735085, 44.922047>,  <38.378086, 29.556730, 45.001678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517544, 29.735085, 44.922047>,  <38.749973, 30.032343, 44.789326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517544, 29.735085, 44.922047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123193, 0.322677, 0.938458,
		-0.804475, 0.586186, -0.095947,
		-0.581071, -0.743146, 0.331799,
		38.343224, 29.512140, 45.021587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789806, 30.045414, 45.591145>,  <38.749973, 30.032343, 44.789326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789806, 30.045414, 45.591145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469761, 29.812857, 45.532093>,  <38.277733, 29.673323, 45.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469761, 29.812857, 45.532093>,  <38.789806, 30.045414, 45.591145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469761, 29.812857, 45.532093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239598, 0.084137, 0.967220,
		-0.549915, 0.809260, -0.206620,
		-0.800116, -0.581395, -0.147629,
		38.229725, 29.638439, 45.487804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050148, 30.321236, 45.630028>,  <38.789806, 30.045414, 45.591145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050148, 30.321236, 45.630028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104301, 29.954115, 45.779324>,  <38.136795, 29.733843, 45.868900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104301, 29.954115, 45.779324>,  <38.050148, 30.321236, 45.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104301, 29.954115, 45.779324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233833, 0.336470, 0.912201,
		-0.962805, -0.210773, -0.169060,
		0.135383, -0.917803, 0.373241,
		38.144917, 29.678774, 45.891296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379940, 30.154385, 46.044384>,  <38.050148, 30.321236, 45.630028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379940, 30.154385, 46.044384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696102, 29.943300, 46.168827>,  <37.885799, 29.816650, 46.243492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696102, 29.943300, 46.168827>,  <37.379940, 30.154385, 46.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696102, 29.943300, 46.168827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242937, 0.196185, 0.949996,
		-0.562356, -0.826458, 0.026865,
		0.790403, -0.527710, 0.311103,
		37.933224, 29.784986, 46.262157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173523, 29.916065, 46.643543>,  <37.379940, 30.154385, 46.044384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173523, 29.916065, 46.643543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566334, 29.849091, 46.678398>,  <37.802021, 29.808907, 46.699310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566334, 29.849091, 46.678398>,  <37.173523, 29.916065, 46.643543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566334, 29.849091, 46.678398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053869, 0.193832, 0.979555,
		-0.180904, -0.966641, 0.181328,
		0.982024, -0.167438, 0.087137,
		37.860943, 29.798859, 46.704540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124527, 29.539133, 47.205296>,  <37.173523, 29.916065, 46.643543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124527, 29.539133, 47.205296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509483, 29.634386, 47.153004>,  <37.740459, 29.691538, 47.121628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509483, 29.634386, 47.153004>,  <37.124527, 29.539133, 47.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509483, 29.634386, 47.153004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122222, 0.050231, 0.991231,
		0.242614, -0.969932, 0.019237,
		0.962393, 0.238135, -0.130734,
		37.798203, 29.705826, 47.113785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484821, 29.062294, 47.621040>,  <37.124527, 29.539133, 47.205296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484821, 29.062294, 47.621040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699501, 29.393427, 47.555740>,  <37.828308, 29.592108, 47.516560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699501, 29.393427, 47.555740>,  <37.484821, 29.062294, 47.621040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699501, 29.393427, 47.555740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213317, 0.054070, 0.975486,
		0.816367, -0.558362, -0.147572,
		0.536695, 0.827834, -0.163249,
		37.860508, 29.641777, 47.506767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191387, 28.952028, 47.931553>,  <37.484821, 29.062294, 47.621040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191387, 28.952028, 47.931553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077991, 29.333584, 47.892094>,  <38.009953, 29.562517, 47.868416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077991, 29.333584, 47.892094>,  <38.191387, 28.952028, 47.931553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077991, 29.333584, 47.892094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158218, 0.147986, 0.976252,
		0.945833, 0.261150, -0.192875,
		-0.283491, 0.953887, -0.098651,
		37.992943, 29.619751, 47.862499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508717, 29.180084, 48.509892>,  <38.191387, 28.952028, 47.931553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508717, 29.180084, 48.509892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322067, 29.513144, 48.390587>,  <38.210079, 29.712978, 48.319004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322067, 29.513144, 48.390587>,  <38.508717, 29.180084, 48.509892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322067, 29.513144, 48.390587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062611, 0.367476, 0.927923,
		0.882237, 0.414316, -0.223606,
		-0.466623, 0.832648, -0.298261,
		38.182079, 29.762938, 48.301109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807388, 29.711084, 48.856312>,  <38.508717, 29.180084, 48.509892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807388, 29.711084, 48.856312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468174, 29.893259, 48.747936>,  <38.264645, 30.002563, 48.682911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468174, 29.893259, 48.747936>,  <38.807388, 29.711084, 48.856312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468174, 29.893259, 48.747936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070625, 0.409583, 0.909535,
		0.525207, 0.790457, -0.315177,
		-0.848039, 0.455434, -0.270942,
		38.213764, 30.029890, 48.666653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899727, 30.375010, 49.158226>,  <38.807388, 29.711084, 48.856312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899727, 30.375010, 49.158226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504128, 30.333422, 49.116146>,  <38.266766, 30.308470, 49.090897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504128, 30.333422, 49.116146>,  <38.899727, 30.375010, 49.158226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504128, 30.333422, 49.116146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134308, 0.333345, 0.933189,
		-0.061956, 0.937055, -0.343642,
		-0.989001, -0.103970, -0.105201,
		38.207428, 30.302231, 49.084587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447102, 31.028563, 49.110542>,  <38.899727, 30.375010, 49.158226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447102, 31.028563, 49.110542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243809, 30.718172, 49.259975>,  <38.121834, 30.531939, 49.349636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243809, 30.718172, 49.259975>,  <38.447102, 31.028563, 49.110542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243809, 30.718172, 49.259975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027802, 0.418774, 0.907665,
		-0.860772, 0.471689, -0.191260,
		-0.508231, -0.775975, 0.373583,
		38.091339, 30.485380, 49.372051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274265, 31.226589, 49.855713>,  <38.447102, 31.028563, 49.110542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274265, 31.226589, 49.855713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537201, 31.478264, 50.021618>,  <38.694962, 31.629269, 50.121159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537201, 31.478264, 50.021618>,  <38.274265, 31.226589, 49.855713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537201, 31.478264, 50.021618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124545, 0.452106, -0.883226,
		-0.743229, 0.632238, 0.218826,
		0.657342, 0.629186, 0.414761,
		38.734402, 31.667019, 50.146046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095016, 31.964264, 49.832153>,  <38.274265, 31.226589, 49.855713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095016, 31.964264, 49.832153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495010, 31.961800, 49.832211>,  <38.735004, 31.960321, 49.832245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495010, 31.961800, 49.832211>,  <38.095016, 31.964264, 49.832153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495010, 31.961800, 49.832211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002768, 0.429042, -0.903280,
		0.005503, 0.903264, 0.429051,
		0.999981, -0.006159, 0.000139,
		38.795006, 31.959951, 49.832253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241051, 32.503967, 49.340446>,  <38.095016, 31.964264, 49.832153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241051, 32.503967, 49.340446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609039, 32.357822, 49.397259>,  <38.829830, 32.270138, 49.431347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609039, 32.357822, 49.397259>,  <38.241051, 32.503967, 49.340446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609039, 32.357822, 49.397259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304318, 0.437284, -0.846270,
		0.247085, 0.821763, 0.513473,
		0.919967, -0.365360, 0.142030,
		38.885029, 32.248215, 49.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680035, 33.081291, 49.268253>,  <38.241051, 32.503967, 49.340446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680035, 33.081291, 49.268253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883583, 32.749176, 49.177322>,  <39.005711, 32.549908, 49.122765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883583, 32.749176, 49.177322>,  <38.680035, 33.081291, 49.268253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883583, 32.749176, 49.177322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034877, 0.283745, -0.958265,
		0.860135, 0.479706, 0.173348,
		0.508872, -0.830284, -0.227328,
		39.036243, 32.500092, 49.109123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198990, 33.258270, 48.843624>,  <38.680035, 33.081291, 49.268253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198990, 33.258270, 48.843624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173412, 32.867943, 48.760014>,  <39.158066, 32.633747, 48.709846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173412, 32.867943, 48.760014>,  <39.198990, 33.258270, 48.843624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173412, 32.867943, 48.760014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095710, 0.202491, -0.974596,
		0.993353, -0.082325, 0.080447,
		-0.063943, -0.975818, -0.209024,
		39.154228, 32.575199, 48.697308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707657, 33.109261, 48.479839>,  <39.198990, 33.258270, 48.843624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707657, 33.109261, 48.479839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478275, 32.793472, 48.392300>,  <39.340649, 32.604000, 48.339775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478275, 32.793472, 48.392300>,  <39.707657, 33.109261, 48.479839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478275, 32.793472, 48.392300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327582, 0.023890, -0.944520,
		0.750897, -0.613327, 0.244916,
		-0.573449, -0.789468, -0.218854,
		39.306240, 32.556633, 48.326645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079872, 32.776184, 47.930710>,  <39.707657, 33.109261, 48.479839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079872, 32.776184, 47.930710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720242, 32.604725, 47.895126>,  <39.504463, 32.501850, 47.873775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720242, 32.604725, 47.895126>,  <40.079872, 32.776184, 47.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720242, 32.604725, 47.895126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099294, -0.001759, -0.995057,
		0.426375, -0.903468, 0.044144,
		-0.899080, -0.428651, -0.088959,
		39.450516, 32.476131, 47.868439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147182, 32.205692, 47.411926>,  <40.079872, 32.776184, 47.930710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147182, 32.205692, 47.411926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757751, 32.292702, 47.439743>,  <39.524094, 32.344906, 47.456432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757751, 32.292702, 47.439743>,  <40.147182, 32.205692, 47.411926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757751, 32.292702, 47.439743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099109, -0.128094, -0.986798,
		-0.205744, -0.967613, 0.146268,
		-0.973574, 0.217524, 0.069545,
		39.465679, 32.357960, 47.460606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806480, 31.637894, 47.017654>,  <40.147182, 32.205692, 47.411926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806480, 31.637894, 47.017654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563549, 31.954824, 47.040859>,  <39.417789, 32.144981, 47.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563549, 31.954824, 47.040859>,  <39.806480, 31.637894, 47.017654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563549, 31.954824, 47.040859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174281, -0.061629, -0.982765,
		-0.775095, -0.606977, 0.175517,
		-0.607333, 0.792326, 0.058017,
		39.381348, 32.192524, 47.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208794, 31.513433, 46.641571>,  <39.806480, 31.637894, 47.017654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208794, 31.513433, 46.641571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207275, 31.913054, 46.658939>,  <39.206364, 32.152824, 46.669361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207275, 31.913054, 46.658939>,  <39.208794, 31.513433, 46.641571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207275, 31.913054, 46.658939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122322, 0.042635, -0.991574,
		-0.992483, -0.009076, 0.122044,
		-0.003796, 0.999049, 0.043425,
		39.206135, 32.212769, 46.671967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650341, 31.671017, 46.053288>,  <39.208794, 31.513433, 46.641571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650341, 31.671017, 46.053288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770405, 32.037457, 46.159618>,  <38.842442, 32.257320, 46.223415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770405, 32.037457, 46.159618>,  <38.650341, 31.671017, 46.053288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770405, 32.037457, 46.159618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206616, 0.334499, -0.919468,
		-0.931244, 0.221062, 0.289683,
		0.300158, 0.916102, 0.265826,
		38.860451, 32.312286, 46.239365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117779, 32.053211, 45.739685>,  <38.650341, 31.671017, 46.053288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117779, 32.053211, 45.739685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466595, 32.244888, 45.779530>,  <38.675884, 32.359894, 45.803436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466595, 32.244888, 45.779530>,  <38.117779, 32.053211, 45.739685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466595, 32.244888, 45.779530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033468, 0.261424, -0.964644,
		-0.488290, 0.837874, 0.244009,
		0.872039, 0.479192, 0.099609,
		38.728207, 32.388645, 45.809414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061043, 32.606918, 45.386009>,  <38.117779, 32.053211, 45.739685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061043, 32.606918, 45.386009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456905, 32.552643, 45.404629>,  <38.694424, 32.520077, 45.415802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456905, 32.552643, 45.404629>,  <38.061043, 32.606918, 45.386009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456905, 32.552643, 45.404629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080636, 0.257815, -0.962824,
		0.118641, 0.956619, 0.266089,
		0.989658, -0.135687, 0.046550,
		38.753803, 32.511936, 45.418594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397991, 33.189217, 45.058193>,  <38.061043, 32.606918, 45.386009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397991, 33.189217, 45.058193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638992, 32.870747, 45.035912>,  <38.783592, 32.679665, 45.022541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638992, 32.870747, 45.035912>,  <38.397991, 33.189217, 45.058193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638992, 32.870747, 45.035912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168498, 0.195112, -0.966199,
		0.780128, 0.572751, 0.251709,
		0.602502, -0.796171, -0.055705,
		38.819744, 32.631897, 45.019199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771088, 33.460407, 44.507175>,  <38.397991, 33.189217, 45.058193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771088, 33.460407, 44.507175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881886, 33.078743, 44.552517>,  <38.948364, 32.849743, 44.579720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881886, 33.078743, 44.552517>,  <38.771088, 33.460407, 44.507175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881886, 33.078743, 44.552517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113694, -0.084592, -0.989908,
		0.954121, 0.287089, 0.085051,
		0.276997, -0.954162, 0.113351,
		38.964985, 32.792496, 44.586521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446327, 33.393333, 44.129230>,  <38.771088, 33.460407, 44.507175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446327, 33.393333, 44.129230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280075, 33.031719, 44.169174>,  <39.180325, 32.814751, 44.193142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280075, 33.031719, 44.169174>,  <39.446327, 33.393333, 44.129230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280075, 33.031719, 44.169174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062298, -0.081239, -0.994746,
		0.907399, -0.419664, -0.022555,
		-0.415627, -0.904037, 0.099861,
		39.155388, 32.760509, 44.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818054, 32.947193, 43.660374>,  <39.446327, 33.393333, 44.129230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818054, 32.947193, 43.660374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459808, 32.790993, 43.745579>,  <39.244862, 32.697273, 43.796703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459808, 32.790993, 43.745579>,  <39.818054, 32.947193, 43.660374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459808, 32.790993, 43.745579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193688, -0.088747, -0.977041,
		0.400444, -0.916313, 0.003847,
		-0.895617, -0.390505, 0.213017,
		39.191124, 32.673840, 43.809483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735153, 32.398941, 43.194149>,  <39.818054, 32.947193, 43.660374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735153, 32.398941, 43.194149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357513, 32.448669, 43.316277>,  <39.130928, 32.478508, 43.389553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357513, 32.448669, 43.316277>,  <39.735153, 32.398941, 43.194149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357513, 32.448669, 43.316277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316266, -0.080251, -0.945270,
		-0.093050, -0.988987, 0.115095,
		-0.944096, 0.124358, 0.305315,
		39.074284, 32.485966, 43.407871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253342, 31.824547, 42.836884>,  <39.735153, 32.398941, 43.194149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253342, 31.824547, 42.836884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006546, 32.117413, 42.952305>,  <38.858471, 32.293133, 43.021557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006546, 32.117413, 42.952305>,  <39.253342, 31.824547, 42.836884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006546, 32.117413, 42.952305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432463, -0.009097, -0.901606,
		-0.657498, -0.681069, 0.322246,
		-0.616987, 0.732163, 0.288555,
		38.821449, 32.337063, 43.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579979, 31.568214, 42.691414>,  <39.253342, 31.824547, 42.836884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579979, 31.568214, 42.691414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579746, 31.968157, 42.684673>,  <38.579609, 32.208122, 42.680630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579746, 31.968157, 42.684673>,  <38.579979, 31.568214, 42.691414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579746, 31.968157, 42.684673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533258, -0.014564, -0.845827,
		-0.845952, 0.008498, 0.533191,
		-0.000578, 0.999858, -0.016852,
		38.579575, 32.268116, 42.679619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922607, 31.727097, 42.424133>,  <38.579979, 31.568214, 42.691414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922607, 31.727097, 42.424133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123924, 32.068253, 42.368595>,  <38.244713, 32.272945, 42.335274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123924, 32.068253, 42.368595>,  <37.922607, 31.727097, 42.424133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123924, 32.068253, 42.368595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362551, 0.062570, -0.929861,
		-0.784380, 0.518331, 0.340706,
		0.503293, 0.852888, -0.138843,
		38.274914, 32.324120, 42.326942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385715, 32.200024, 42.183956>,  <37.922607, 31.727097, 42.424133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385715, 32.200024, 42.183956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727097, 32.383533, 42.085045>,  <37.931927, 32.493637, 42.025696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727097, 32.383533, 42.085045>,  <37.385715, 32.200024, 42.183956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727097, 32.383533, 42.085045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373377, 0.207197, -0.904245,
		-0.363606, 0.864059, 0.348128,
		0.853452, 0.458772, -0.247282,
		37.983131, 32.521164, 42.010860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163624, 32.727482, 41.567650>,  <37.385715, 32.200024, 42.183956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163624, 32.727482, 41.567650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562954, 32.707462, 41.556030>,  <37.802551, 32.695450, 41.549057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562954, 32.707462, 41.556030>,  <37.163624, 32.727482, 41.567650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562954, 32.707462, 41.556030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023464, 0.108796, -0.993787,
		0.052903, 0.992803, 0.107439,
		0.998324, -0.050053, -0.029051,
		37.862450, 32.692448, 41.547314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383392, 33.335995, 41.214767>,  <37.163624, 32.727482, 41.567650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383392, 33.335995, 41.214767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676624, 33.065613, 41.184624>,  <37.852566, 32.903385, 41.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676624, 33.065613, 41.184624>,  <37.383392, 33.335995, 41.214767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676624, 33.065613, 41.184624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102709, 0.219551, -0.970180,
		0.672341, 0.703481, 0.230375,
		0.733082, -0.675953, -0.075359,
		37.896549, 32.862827, 41.162018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918686, 33.619286, 40.889103>,  <37.383392, 33.335995, 41.214767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918686, 33.619286, 40.889103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997467, 33.230171, 40.840294>,  <38.044735, 32.996700, 40.811008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997467, 33.230171, 40.840294>,  <37.918686, 33.619286, 40.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997467, 33.230171, 40.840294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273715, 0.174065, -0.945929,
		0.941430, 0.152904, 0.300550,
		0.196952, -0.972790, -0.122018,
		38.056553, 32.938335, 40.803688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514095, 33.565456, 40.430496>,  <37.918686, 33.619286, 40.889103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514095, 33.565456, 40.430496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356636, 33.197815, 40.423767>,  <38.262161, 32.977230, 40.419727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356636, 33.197815, 40.423767>,  <38.514095, 33.565456, 40.430496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356636, 33.197815, 40.423767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129051, -0.037132, -0.990943,
		0.910158, -0.392253, 0.133229,
		-0.393647, -0.919108, -0.016825,
		38.238541, 32.922081, 40.418720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023239, 33.294975, 40.128506>,  <38.514095, 33.565456, 40.430496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023239, 33.294975, 40.128506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686291, 33.085514, 40.077587>,  <38.484123, 32.959839, 40.047035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686291, 33.085514, 40.077587>,  <39.023239, 33.294975, 40.128506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686291, 33.085514, 40.077587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149841, -0.000696, -0.988710,
		0.517650, -0.851933, 0.079051,
		-0.842369, -0.523651, -0.127294,
		38.433578, 32.928417, 40.039398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246204, 32.785671, 39.753819>,  <39.023239, 33.294975, 40.128506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246204, 32.785671, 39.753819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850906, 32.810108, 39.697769>,  <38.613728, 32.824772, 39.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850906, 32.810108, 39.697769>,  <39.246204, 32.785671, 39.753819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850906, 32.810108, 39.697769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143280, 0.050688, -0.988383,
		-0.053282, -0.996844, -0.058846,
		-0.988247, 0.061095, -0.140127,
		38.554432, 32.828434, 39.655731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023159, 32.320190, 39.186352>,  <39.246204, 32.785671, 39.753819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023159, 32.320190, 39.186352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715370, 32.575096, 39.203331>,  <38.530697, 32.728039, 39.213520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715370, 32.575096, 39.203331>,  <39.023159, 32.320190, 39.186352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715370, 32.575096, 39.203331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094829, 0.179722, -0.979136,
		-0.631597, -0.749396, -0.198723,
		-0.769475, 0.637264, 0.042447,
		38.484528, 32.766273, 39.216064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607380, 32.164474, 38.576790>,  <39.023159, 32.320190, 39.186352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607380, 32.164474, 38.576790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515934, 32.533272, 38.701790>,  <38.461067, 32.754551, 38.776791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515934, 32.533272, 38.701790>,  <38.607380, 32.164474, 38.576790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515934, 32.533272, 38.701790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104994, 0.295779, -0.949469,
		-0.967838, -0.249876, 0.029184,
		-0.228617, 0.921996, 0.312502,
		38.447350, 32.809872, 38.795540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014694, 32.185524, 38.284981>,  <38.607380, 32.164474, 38.576790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014694, 32.185524, 38.284981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151695, 32.550983, 38.372566>,  <38.233894, 32.770260, 38.425117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151695, 32.550983, 38.372566>,  <38.014694, 32.185524, 38.284981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151695, 32.550983, 38.372566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266696, 0.318017, -0.909802,
		-0.900869, 0.253213, 0.352587,
		0.342502, 0.913646, 0.218961,
		38.254444, 32.825077, 38.438255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636009, 32.585243, 37.893482>,  <38.014694, 32.185524, 38.284981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636009, 32.585243, 37.893482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912300, 32.857796, 37.990326>,  <38.078075, 33.021328, 38.048431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912300, 32.857796, 37.990326>,  <37.636009, 32.585243, 37.893482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912300, 32.857796, 37.990326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135414, 0.450780, -0.882304,
		-0.710324, 0.576645, 0.403634,
		0.690727, 0.681379, 0.242114,
		38.119518, 33.062210, 38.062962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220463, 33.195869, 37.810261>,  <37.636009, 32.585243, 37.893482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220463, 33.195869, 37.810261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611568, 33.271896, 37.774807>,  <37.846230, 33.317513, 37.753536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611568, 33.271896, 37.774807>,  <37.220463, 33.195869, 37.810261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611568, 33.271896, 37.774807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152591, 0.354856, -0.922384,
		-0.143863, 0.915397, 0.375967,
		0.977762, 0.190066, -0.088631,
		37.904896, 33.328915, 37.748219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370426, 33.916428, 37.430237>,  <37.220463, 33.195869, 37.810261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370426, 33.916428, 37.430237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724342, 33.733017, 37.396996>,  <37.936691, 33.622971, 37.377052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724342, 33.733017, 37.396996>,  <37.370426, 33.916428, 37.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724342, 33.733017, 37.396996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162080, 0.470011, -0.867652,
		0.436898, 0.754219, 0.490177,
		0.884788, -0.458523, -0.083103,
		37.989780, 33.595459, 37.372066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846275, 34.396526, 37.304947>,  <37.370426, 33.916428, 37.430237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846275, 34.396526, 37.304947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019207, 34.069324, 37.153183>,  <38.122967, 33.873001, 37.062126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019207, 34.069324, 37.153183>,  <37.846275, 34.396526, 37.304947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019207, 34.069324, 37.153183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166482, 0.485941, -0.857989,
		0.886212, 0.307771, 0.346272,
		0.432332, -0.818009, -0.379408,
		38.148907, 33.823921, 37.039360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503780, 34.652397, 37.075066>,  <37.846275, 34.396526, 37.304947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503780, 34.652397, 37.075066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467499, 34.300228, 36.888893>,  <38.445728, 34.088928, 36.777187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467499, 34.300228, 36.888893>,  <38.503780, 34.652397, 37.075066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467499, 34.300228, 36.888893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142864, 0.451025, -0.881003,
		0.985577, -0.146404, 0.084871,
		-0.090704, -0.880422, -0.465436,
		38.440289, 34.036102, 36.749264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025509, 34.610512, 36.596256>,  <38.503780, 34.652397, 37.075066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025509, 34.610512, 36.596256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747120, 34.367798, 36.442673>,  <38.580086, 34.222168, 36.350521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747120, 34.367798, 36.442673>,  <39.025509, 34.610512, 36.596256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747120, 34.367798, 36.442673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074066, 0.471200, -0.878911,
		0.714235, -0.640139, -0.283002,
		-0.695976, -0.606788, -0.383960,
		38.538326, 34.185760, 36.327484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333649, 34.323441, 36.013538>,  <39.025509, 34.610512, 36.596256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333649, 34.323441, 36.013538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942390, 34.251816, 35.971268>,  <38.707634, 34.208843, 35.945904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942390, 34.251816, 35.971268>,  <39.333649, 34.323441, 36.013538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942390, 34.251816, 35.971268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033958, 0.363874, -0.930829,
		0.205127, -0.914075, -0.349842,
		-0.978146, -0.179058, -0.105681,
		38.648945, 34.198097, 35.939564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247780, 33.951584, 35.255806>,  <39.333649, 34.323441, 36.013538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247780, 33.951584, 35.255806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879654, 34.075146, 35.351814>,  <38.658779, 34.149281, 35.409420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879654, 34.075146, 35.351814>,  <39.247780, 33.951584, 35.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879654, 34.075146, 35.351814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206026, 0.138836, -0.968647,
		-0.332539, -0.940906, -0.064130,
		-0.920310, 0.308901, 0.240020,
		38.603561, 34.167816, 35.423820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801407, 33.611454, 34.878361>,  <39.247780, 33.951584, 35.255806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801407, 33.611454, 34.878361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651432, 33.968452, 34.978664>,  <38.561447, 34.182652, 35.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651432, 33.968452, 34.978664>,  <38.801407, 33.611454, 34.878361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651432, 33.968452, 34.978664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129365, 0.217476, -0.967455,
		-0.917980, -0.395175, 0.033917,
		-0.374937, 0.892491, 0.250760,
		38.538952, 34.236198, 35.053894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973343, 33.050522, 35.425930>,  <38.801407, 33.611454, 34.878361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973343, 33.050522, 35.425930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856728, 32.910664, 35.069782>,  <38.786758, 32.826748, 34.856094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856728, 32.910664, 35.069782>,  <38.973343, 33.050522, 35.425930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856728, 32.910664, 35.069782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940024, -0.277044, -0.199000,
		-0.177092, -0.894983, 0.409444,
		-0.291536, -0.349646, -0.890368,
		38.769268, 32.805771, 34.802673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671543, 33.226341, 35.746338>,  <38.973343, 33.050522, 35.425930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671543, 33.226341, 35.746338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655460, 33.035202, 35.395329>,  <39.645809, 32.920521, 35.184723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655460, 33.035202, 35.395329>,  <39.671543, 33.226341, 35.746338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655460, 33.035202, 35.395329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929272, -0.340633, 0.142910,
		-0.367202, -0.809711, 0.457745,
		-0.040207, -0.477846, -0.877523,
		39.643398, 32.891850, 35.132072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864384, 32.459160, 35.756420>,  <39.671543, 33.226341, 35.746338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864384, 32.459160, 35.756420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976284, 32.640625, 35.417969>,  <40.043423, 32.749504, 35.214897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976284, 32.640625, 35.417969>,  <39.864384, 32.459160, 35.756420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976284, 32.640625, 35.417969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916822, -0.387778, 0.095212,
		-0.284916, -0.802386, -0.524405,
		0.279749, 0.453658, -0.846129,
		40.060207, 32.776722, 35.164131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426434, 32.687874, 36.106693>,  <39.864384, 32.459160, 35.756420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426434, 32.687874, 36.106693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475983, 32.877254, 35.757866>,  <40.505711, 32.990883, 35.548569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475983, 32.877254, 35.757866>,  <40.426434, 32.687874, 36.106693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475983, 32.877254, 35.757866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403435, 0.778890, 0.480176,
		0.906584, -0.411303, -0.094524,
		0.123874, 0.473455, -0.872064,
		40.513145, 33.019291, 35.496246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127964, 32.827045, 35.907440>,  <40.426434, 32.687874, 36.106693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127964, 32.827045, 35.907440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830273, 33.079868, 35.821064>,  <40.651657, 33.231564, 35.769238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830273, 33.079868, 35.821064>,  <41.127964, 32.827045, 35.907440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830273, 33.079868, 35.821064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442708, 0.708867, 0.549105,
		0.500139, 0.313060, -0.807375,
		-0.744225, 0.632060, -0.215938,
		40.607006, 33.269485, 35.756283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474449, 33.523621, 36.039459>,  <41.127964, 32.827045, 35.907440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474449, 33.523621, 36.039459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857845, 33.488304, 36.147907>,  <42.087883, 33.467113, 36.212978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857845, 33.488304, 36.147907>,  <41.474449, 33.523621, 36.039459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857845, 33.488304, 36.147907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216610, 0.392888, 0.893711,
		-0.185425, -0.915338, 0.357454,
		0.958487, -0.088288, 0.271122,
		42.145393, 33.461819, 36.229244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472584, 33.375980, 36.788361>,  <41.474449, 33.523621, 36.039459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472584, 33.375980, 36.788361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848484, 33.476292, 36.695427>,  <42.074024, 33.536480, 36.639668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848484, 33.476292, 36.695427>,  <41.472584, 33.375980, 36.788361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848484, 33.476292, 36.695427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139424, 0.339384, 0.930258,
		0.312135, -0.906604, 0.283973,
		0.939751, 0.250774, -0.232336,
		42.130409, 33.551525, 36.625725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019688, 33.109657, 37.264816>,  <41.472584, 33.375980, 36.788361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019688, 33.109657, 37.264816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109547, 33.477406, 37.135643>,  <42.163464, 33.698055, 37.058140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109547, 33.477406, 37.135643>,  <42.019688, 33.109657, 37.264816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109547, 33.477406, 37.135643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280141, 0.256475, 0.925063,
		0.933303, -0.298278, -0.199938,
		0.224647, 0.919375, -0.322929,
		42.176941, 33.753220, 37.038765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675327, 33.313316, 37.556530>,  <42.019688, 33.109657, 37.264816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675327, 33.313316, 37.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500278, 33.656563, 37.449112>,  <42.395248, 33.862511, 37.384663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500278, 33.656563, 37.449112>,  <42.675327, 33.313316, 37.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500278, 33.656563, 37.449112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034462, 0.314450, 0.948648,
		0.898497, 0.405897, -0.167184,
		-0.437625, 0.858119, -0.268545,
		42.368992, 33.913998, 37.368549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096607, 33.756271, 37.845623>,  <42.675327, 33.313316, 37.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096607, 33.756271, 37.845623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767345, 33.973682, 37.779892>,  <42.569790, 34.104130, 37.740456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767345, 33.973682, 37.779892>,  <43.096607, 33.756271, 37.845623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767345, 33.973682, 37.779892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114770, 0.442680, 0.889305,
		0.556101, 0.713174, -0.426773,
		-0.823153, 0.543523, -0.164324,
		42.520401, 34.136738, 37.730595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342178, 34.388222, 37.937038>,  <43.096607, 33.756271, 37.845623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342178, 34.388222, 37.937038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948593, 34.436375, 37.989704>,  <42.712444, 34.465267, 38.021305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948593, 34.436375, 37.989704>,  <43.342178, 34.388222, 37.937038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948593, 34.436375, 37.989704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173789, 0.480107, 0.859822,
		0.040291, 0.868911, -0.493326,
		-0.983958, 0.120378, 0.131663,
		42.653404, 34.472488, 38.029202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136089, 35.134758, 38.099342>,  <43.342178, 34.388222, 37.937038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136089, 35.134758, 38.099342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818306, 34.927982, 38.226849>,  <42.627636, 34.803917, 38.303352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818306, 34.927982, 38.226849>,  <43.136089, 35.134758, 38.099342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818306, 34.927982, 38.226849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109722, 0.394062, 0.912511,
		-0.597325, 0.759927, -0.256346,
		-0.794458, -0.516939, 0.318763,
		42.579967, 34.772900, 38.322479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730949, 35.518894, 38.527824>,  <43.136089, 35.134758, 38.099342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730949, 35.518894, 38.527824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597717, 35.156799, 38.633350>,  <42.517780, 34.939541, 38.696667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597717, 35.156799, 38.633350>,  <42.730949, 35.518894, 38.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597717, 35.156799, 38.633350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001068, 0.280155, 0.959954,
		-0.942899, 0.319457, -0.094280,
		-0.333077, -0.905240, 0.263817,
		42.497795, 34.885227, 38.712494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302814, 35.657120, 39.066528>,  <42.730949, 35.518894, 38.527824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302814, 35.657120, 39.066528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370270, 35.266270, 39.118355>,  <42.410744, 35.031761, 39.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370270, 35.266270, 39.118355>,  <42.302814, 35.657120, 39.066528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370270, 35.266270, 39.118355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237404, 0.167842, 0.956801,
		-0.956660, -0.130598, 0.260279,
		0.168642, -0.977125, 0.129563,
		42.420864, 34.973133, 39.157223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936401, 35.494194, 39.721184>,  <42.302814, 35.657120, 39.066528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936401, 35.494194, 39.721184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195427, 35.198875, 39.645737>,  <42.350842, 35.021687, 39.600468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195427, 35.198875, 39.645737>,  <41.936401, 35.494194, 39.721184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195427, 35.198875, 39.645737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360101, 0.078357, 0.929617,
		-0.671552, -0.669911, 0.316602,
		0.647568, -0.738295, -0.188615,
		42.389698, 34.977386, 39.589153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987110, 35.133472, 40.301735>,  <41.936401, 35.494194, 39.721184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987110, 35.133472, 40.301735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330414, 35.064514, 40.108372>,  <42.536396, 35.023140, 39.992355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330414, 35.064514, 40.108372>,  <41.987110, 35.133472, 40.301735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330414, 35.064514, 40.108372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512462, 0.236593, 0.825473,
		-0.027936, -0.956193, 0.291401,
		0.858255, -0.172392, -0.483404,
		42.587891, 35.012798, 39.963352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385101, 34.754063, 40.852795>,  <41.987110, 35.133472, 40.301735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385101, 34.754063, 40.852795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629864, 34.898327, 40.571232>,  <42.776722, 34.984886, 40.402294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629864, 34.898327, 40.571232>,  <42.385101, 34.754063, 40.852795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629864, 34.898327, 40.571232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489616, 0.526221, 0.695247,
		0.621162, -0.770073, 0.145413,
		0.611910, 0.360665, -0.703909,
		42.813438, 35.006527, 40.360058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994576, 34.761044, 41.254730>,  <42.385101, 34.754063, 40.852795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994576, 34.761044, 41.254730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083874, 34.984478, 40.935196>,  <43.137451, 35.118538, 40.743477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083874, 34.984478, 40.935196>,  <42.994576, 34.761044, 41.254730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083874, 34.984478, 40.935196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563607, 0.594672, 0.573335,
		0.795304, -0.578225, -0.182066,
		0.223247, 0.558589, -0.798836,
		43.150848, 35.152054, 40.695545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732887, 34.885319, 41.272797>,  <42.994576, 34.761044, 41.254730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732887, 34.885319, 41.272797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539272, 35.157482, 41.052704>,  <43.423103, 35.320782, 40.920650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539272, 35.157482, 41.052704>,  <43.732887, 34.885319, 41.272797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539272, 35.157482, 41.052704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365333, 0.728508, 0.579490,
		0.795137, 0.079477, -0.601199,
		-0.484034, 0.680412, -0.550228,
		43.394062, 35.361607, 40.887634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242981, 35.316608, 41.282242>,  <43.732887, 34.885319, 41.272797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242981, 35.316608, 41.282242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935913, 35.533966, 41.146351>,  <43.751671, 35.664379, 41.064816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935913, 35.533966, 41.146351>,  <44.242981, 35.316608, 41.282242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935913, 35.533966, 41.146351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356183, 0.802480, 0.478707,
		0.532746, 0.246484, -0.809584,
		-0.767668, 0.543389, -0.339725,
		43.705612, 35.696983, 41.044434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483719, 35.953735, 40.904125>,  <44.242981, 35.316608, 41.282242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483719, 35.953735, 40.904125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108612, 36.034576, 41.017086>,  <43.883549, 36.083080, 41.084862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108612, 36.034576, 41.017086>,  <44.483719, 35.953735, 40.904125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108612, 36.034576, 41.017086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312327, 0.846347, 0.431451,
		-0.151811, 0.492801, -0.856797,
		-0.937766, 0.202102, 0.282400,
		43.827282, 36.095207, 41.101807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306503, 36.695808, 40.762878>,  <44.483719, 35.953735, 40.904125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306503, 36.695808, 40.762878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052170, 36.589828, 41.052849>,  <43.899570, 36.526241, 41.226830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052170, 36.589828, 41.052849>,  <44.306503, 36.695808, 40.762878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052170, 36.589828, 41.052849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264352, 0.807668, 0.527058,
		-0.725145, 0.526756, -0.443501,
		-0.635833, -0.264953, 0.724925,
		43.861420, 36.510342, 41.270325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980129, 37.300503, 40.965981>,  <44.306503, 36.695808, 40.762878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980129, 37.300503, 40.965981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912632, 37.047386, 41.268265>,  <43.872135, 36.895515, 41.449635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912632, 37.047386, 41.268265>,  <43.980129, 37.300503, 40.965981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912632, 37.047386, 41.268265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002364, 0.766963, 0.641687,
		-0.985658, 0.106492, -0.130913,
		-0.168740, -0.632793, 0.755712,
		43.862011, 36.857548, 41.494980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549385, 37.557076, 41.422604>,  <43.980129, 37.300503, 40.965981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549385, 37.557076, 41.422604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700977, 37.280514, 41.668640>,  <43.791935, 37.114578, 41.816261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700977, 37.280514, 41.668640>,  <43.549385, 37.557076, 41.422604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700977, 37.280514, 41.668640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105661, 0.692655, 0.713488,
		-0.919351, -0.205411, 0.335560,
		0.378985, -0.691402, 0.615089,
		43.814674, 37.073093, 41.853168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226631, 37.720226, 42.060997>,  <43.549385, 37.557076, 41.422604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226631, 37.720226, 42.060997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550861, 37.506359, 42.156574>,  <43.745399, 37.378036, 42.213921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550861, 37.506359, 42.156574>,  <43.226631, 37.720226, 42.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550861, 37.506359, 42.156574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269313, 0.702625, 0.658626,
		-0.520033, -0.469518, 0.713525,
		0.810578, -0.534670, 0.238941,
		43.794033, 37.345959, 42.228256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286026, 37.826344, 42.819801>,  <43.226631, 37.720226, 42.060997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286026, 37.826344, 42.819801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645855, 37.684429, 42.717903>,  <43.861752, 37.599281, 42.656765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645855, 37.684429, 42.717903>,  <43.286026, 37.826344, 42.819801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645855, 37.684429, 42.717903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433733, 0.656910, 0.616721,
		-0.051459, -0.665277, 0.744820,
		0.899571, -0.354789, -0.254749,
		43.915726, 37.577991, 42.641479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643768, 37.630146, 43.416897>,  <43.286026, 37.826344, 42.819801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643768, 37.630146, 43.416897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915836, 37.728123, 43.140526>,  <44.079075, 37.786907, 42.974705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915836, 37.728123, 43.140526>,  <43.643768, 37.630146, 43.416897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915836, 37.728123, 43.140526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353384, 0.716218, 0.601790,
		0.642257, -0.653479, 0.400589,
		0.680167, 0.244942, -0.690925,
		44.119884, 37.801605, 42.933247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081654, 37.961472, 43.805954>,  <43.643768, 37.630146, 43.416897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081654, 37.961472, 43.805954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221539, 38.059654, 43.444302>,  <44.305470, 38.118565, 43.227310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221539, 38.059654, 43.444302>,  <44.081654, 37.961472, 43.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221539, 38.059654, 43.444302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140658, 0.940371, 0.309707,
		0.926236, -0.235482, 0.294338,
		0.349717, 0.245461, -0.904128,
		44.326454, 38.133293, 43.173061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576893, 38.458702, 43.927700>,  <44.081654, 37.961472, 43.805954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576893, 38.458702, 43.927700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497696, 38.548588, 43.546062>,  <44.450176, 38.602520, 43.317078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497696, 38.548588, 43.546062>,  <44.576893, 38.458702, 43.927700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497696, 38.548588, 43.546062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055631, 0.969222, 0.239823,
		0.978623, 0.100562, -0.179401,
		-0.197996, 0.224716, -0.954097,
		44.438297, 38.616001, 43.259834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615807, 39.194344, 43.990211>,  <44.576893, 38.458702, 43.927700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615807, 39.194344, 43.990211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482052, 39.120155, 43.620609>,  <44.401798, 39.075642, 43.398846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482052, 39.120155, 43.620609>,  <44.615807, 39.194344, 43.990211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482052, 39.120155, 43.620609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398295, 0.916394, -0.039802,
		0.854136, 0.354718, -0.380298,
		-0.334384, -0.185466, -0.924007,
		44.381737, 39.064514, 43.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793617, 39.734886, 43.609943>,  <44.615807, 39.194344, 43.990211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793617, 39.734886, 43.609943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465271, 39.543175, 43.485703>,  <44.268261, 39.428150, 43.411160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465271, 39.543175, 43.485703>,  <44.793617, 39.734886, 43.609943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465271, 39.543175, 43.485703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491702, 0.869724, -0.042546,
		0.290525, 0.117797, -0.949589,
		-0.820868, -0.479275, -0.310598,
		44.219009, 39.399391, 43.392525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557693, 40.053532, 43.113213>,  <44.793617, 39.734886, 43.609943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557693, 40.053532, 43.113213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225380, 39.893974, 43.268486>,  <44.025993, 39.798241, 43.361652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225380, 39.893974, 43.268486>,  <44.557693, 40.053532, 43.113213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225380, 39.893974, 43.268486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466504, 0.879435, -0.094700,
		-0.303610, -0.259766, -0.916702,
		-0.830780, -0.398893, 0.388187,
		43.976147, 39.774307, 43.384941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191788, 40.703804, 42.962120>,  <44.557693, 40.053532, 43.113213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191788, 40.703804, 42.962120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545467, 40.888069, 42.993061>,  <44.757675, 40.998631, 43.011623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545467, 40.888069, 42.993061>,  <44.191788, 40.703804, 42.962120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545467, 40.888069, 42.993061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337518, -0.515587, -0.787561,
		-0.322923, 0.722465, -0.611363,
		0.884196, 0.460667, 0.077350,
		44.810726, 41.026268, 43.016266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340240, 40.993172, 42.304638>,  <44.191788, 40.703804, 42.962120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340240, 40.993172, 42.304638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687630, 40.928608, 42.492126>,  <44.896065, 40.889870, 42.604618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687630, 40.928608, 42.492126>,  <44.340240, 40.993172, 42.304638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687630, 40.928608, 42.492126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326925, -0.524279, -0.786290,
		0.372653, 0.836109, -0.402556,
		0.868475, -0.161408, 0.468719,
		44.948174, 40.880184, 42.632744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813816, 41.097630, 41.804993>,  <44.340240, 40.993172, 42.304638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813816, 41.097630, 41.804993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948978, 40.835850, 42.075550>,  <45.030075, 40.678780, 42.237885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948978, 40.835850, 42.075550>,  <44.813816, 41.097630, 41.804993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948978, 40.835850, 42.075550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149706, -0.672142, -0.725129,
		0.929196, 0.346289, -0.129148,
		0.337910, -0.654453, 0.676394,
		45.050350, 40.639515, 42.278469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376930, 40.813065, 41.496605>,  <44.813816, 41.097630, 41.804993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376930, 40.813065, 41.496605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240585, 40.558315, 41.773216>,  <45.158779, 40.405468, 41.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240585, 40.558315, 41.773216>,  <45.376930, 40.813065, 41.496605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240585, 40.558315, 41.773216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080062, -0.752572, -0.653625,
		0.936697, -0.167433, 0.307514,
		-0.340865, -0.636869, 0.691527,
		45.138325, 40.367256, 41.980675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856091, 40.213509, 41.610523>,  <45.376930, 40.813065, 41.496605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856091, 40.213509, 41.610523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465279, 40.139744, 41.653229>,  <45.230789, 40.095486, 41.678852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465279, 40.139744, 41.653229>,  <45.856091, 40.213509, 41.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465279, 40.139744, 41.653229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060048, -0.718993, -0.692418,
		0.204455, -0.670104, 0.713553,
		-0.977032, -0.184416, 0.106763,
		45.172169, 40.084419, 41.685257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730415, 39.472801, 41.597252>,  <45.856091, 40.213509, 41.610523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730415, 39.472801, 41.597252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394611, 39.652008, 41.474285>,  <45.193130, 39.759533, 41.400505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394611, 39.652008, 41.474285>,  <45.730415, 39.472801, 41.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394611, 39.652008, 41.474285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055978, -0.634088, -0.771232,
		-0.540453, -0.630249, 0.557402,
		-0.839510, 0.448016, -0.307415,
		45.142757, 39.786415, 41.382061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190918, 39.058426, 41.645542>,  <45.730415, 39.472801, 41.597252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190918, 39.058426, 41.645542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192772, 39.320358, 41.343239>,  <45.193882, 39.477516, 41.161858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192772, 39.320358, 41.343239>,  <45.190918, 39.058426, 41.645542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192772, 39.320358, 41.343239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121611, -0.750529, -0.649552,
		-0.992567, -0.088902, -0.083110,
		0.004630, 0.654831, -0.755762,
		45.194160, 39.516808, 41.116508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791443, 38.730637, 41.185780>,  <45.190918, 39.058426, 41.645542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791443, 38.730637, 41.185780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983929, 38.974686, 40.934006>,  <45.099422, 39.121113, 40.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983929, 38.974686, 40.934006>,  <44.791443, 38.730637, 41.185780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983929, 38.974686, 40.934006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055549, -0.695368, -0.716504,
		-0.874840, 0.379758, -0.300731,
		0.481216, 0.610121, -0.629431,
		45.128292, 39.157722, 40.745178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352093, 38.771740, 40.550758>,  <44.791443, 38.730637, 41.185780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352093, 38.771740, 40.550758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718754, 38.872635, 40.426743>,  <44.938751, 38.933170, 40.352333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718754, 38.872635, 40.426743>,  <44.352093, 38.771740, 40.550758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718754, 38.872635, 40.426743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137095, -0.530227, -0.836699,
		-0.375441, 0.809466, -0.451452,
		0.916651, 0.252239, -0.310042,
		44.993748, 38.948307, 40.333729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266571, 39.018772, 39.872257>,  <44.352093, 38.771740, 40.550758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266571, 39.018772, 39.872257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650635, 38.909264, 39.894722>,  <44.881073, 38.843559, 39.908199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650635, 38.909264, 39.894722>,  <44.266571, 39.018772, 39.872257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650635, 38.909264, 39.894722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102599, -0.532225, -0.840363,
		0.259955, 0.801116, -0.539106,
		0.960155, -0.273769, 0.056161,
		44.938683, 38.827133, 39.911572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384640, 38.831917, 39.183929>,  <44.266571, 39.018772, 39.872257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384640, 38.831917, 39.183929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719555, 38.689346, 39.349777>,  <44.920506, 38.603806, 39.449284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719555, 38.689346, 39.349777>,  <44.384640, 38.831917, 39.183929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719555, 38.689346, 39.349777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033843, -0.723079, -0.689936,
		0.545707, 0.591710, -0.593365,
		0.837292, -0.356422, 0.414615,
		44.970741, 38.582420, 39.474163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853107, 38.636726, 38.621140>,  <44.384640, 38.831917, 39.183929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853107, 38.636726, 38.621140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022663, 38.448299, 38.930569>,  <45.124397, 38.335243, 39.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022663, 38.448299, 38.930569>,  <44.853107, 38.636726, 38.621140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022663, 38.448299, 38.930569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027787, -0.846937, -0.530967,
		0.905287, 0.246567, -0.345919,
		0.423891, -0.471066, 0.773572,
		45.149830, 38.306980, 39.162640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455040, 38.358673, 38.369865>,  <44.853107, 38.636726, 38.621140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455040, 38.358673, 38.369865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322323, 38.137135, 38.675327>,  <45.242691, 38.004211, 38.858604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322323, 38.137135, 38.675327>,  <45.455040, 38.358673, 38.369865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322323, 38.137135, 38.675327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263851, -0.831689, -0.488545,
		0.905702, 0.039396, 0.422080,
		-0.331793, -0.553843, 0.763657,
		45.222786, 37.970982, 38.904423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929386, 37.882256, 38.368565>,  <45.455040, 38.358673, 38.369865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929386, 37.882256, 38.368565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628208, 37.714939, 38.571781>,  <45.447502, 37.614548, 38.693710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628208, 37.714939, 38.571781>,  <45.929386, 37.882256, 38.368565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628208, 37.714939, 38.571781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137510, -0.854964, -0.500128,
		0.643558, -0.306708, 0.701259,
		-0.752944, -0.418291, 0.508043,
		45.402325, 37.589451, 38.724194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213963, 37.195423, 38.542999>,  <45.929386, 37.882256, 38.368565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213963, 37.195423, 38.542999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815380, 37.174500, 38.569351>,  <45.576229, 37.161945, 38.585163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815380, 37.174500, 38.569351>,  <46.213963, 37.195423, 38.542999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815380, 37.174500, 38.569351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024920, -0.931575, -0.362695,
		0.080341, -0.359767, 0.929577,
		-0.996456, -0.052305, 0.065878,
		45.516445, 37.158810, 38.589115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162945, 36.574509, 38.647850>,  <46.213963, 37.195423, 38.542999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162945, 36.574509, 38.647850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785419, 36.665756, 38.552204>,  <45.558903, 36.720505, 38.494816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785419, 36.665756, 38.552204>,  <46.162945, 36.574509, 38.647850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785419, 36.665756, 38.552204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093871, -0.878792, -0.467881,
		-0.316863, -0.419147, 0.850831,
		-0.943815, 0.228122, -0.239111,
		45.502274, 36.734192, 38.480469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788185, 35.964912, 38.795643>,  <46.162945, 36.574509, 38.647850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788185, 35.964912, 38.795643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556351, 36.174282, 38.545811>,  <45.417248, 36.299904, 38.395912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556351, 36.174282, 38.545811>,  <45.788185, 35.964912, 38.795643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556351, 36.174282, 38.545811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235334, -0.841298, -0.486657,
		-0.780188, -0.135075, 0.610787,
		-0.579589, 0.523423, -0.624583,
		45.382473, 36.331310, 38.358437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188087, 35.602489, 38.604790>,  <45.788185, 35.964912, 38.795643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188087, 35.602489, 38.604790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197525, 35.851795, 38.292130>,  <45.203186, 36.001381, 38.104534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197525, 35.851795, 38.292130>,  <45.188087, 35.602489, 38.604790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197525, 35.851795, 38.292130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310584, -0.738611, -0.598324,
		-0.950253, 0.256886, 0.176149,
		0.023595, 0.623268, -0.781652,
		45.204605, 36.038776, 38.057632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528728, 35.527870, 38.315933>,  <45.188087, 35.602489, 38.604790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528728, 35.527870, 38.315933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752392, 35.672081, 38.017307>,  <44.886589, 35.758606, 37.838131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752392, 35.672081, 38.017307>,  <44.528728, 35.527870, 38.315933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752392, 35.672081, 38.017307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308835, -0.745108, -0.591130,
		-0.769392, 0.561101, -0.305290,
		0.559158, 0.360527, -0.746567,
		44.920139, 35.780239, 37.793339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085865, 35.540897, 37.682835>,  <44.528728, 35.527870, 38.315933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085865, 35.540897, 37.682835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457478, 35.557831, 37.535805>,  <44.680447, 35.567993, 37.447586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457478, 35.557831, 37.535805>,  <44.085865, 35.540897, 37.682835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457478, 35.557831, 37.535805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219482, -0.736713, -0.639595,
		-0.297874, 0.674879, -0.675137,
		0.929031, 0.042338, -0.367571,
		44.736187, 35.570534, 37.425533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994164, 35.377831, 37.029758>,  <44.085865, 35.540897, 37.682835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994164, 35.377831, 37.029758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392941, 35.350914, 37.045643>,  <44.632206, 35.334763, 37.055172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392941, 35.350914, 37.045643>,  <43.994164, 35.377831, 37.029758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392941, 35.350914, 37.045643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014203, -0.655798, -0.754803,
		0.076836, 0.751931, -0.654749,
		0.996943, -0.067296, 0.039709,
		44.692024, 35.330727, 37.057556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059666, 35.359665, 36.388618>,  <43.994164, 35.377831, 37.029758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059666, 35.359665, 36.388618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396713, 35.220947, 36.553413>,  <44.598942, 35.137718, 36.652290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396713, 35.220947, 36.553413>,  <44.059666, 35.359665, 36.388618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396713, 35.220947, 36.553413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054497, -0.706199, -0.705913,
		0.535750, 0.617266, -0.576155,
		0.842616, -0.346794, 0.411985,
		44.649498, 35.116909, 36.677010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612637, 35.434048, 35.932484>,  <44.059666, 35.359665, 36.388618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612637, 35.434048, 35.932484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693913, 35.124378, 36.172276>,  <44.742676, 34.938576, 36.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693913, 35.124378, 36.172276>,  <44.612637, 35.434048, 35.932484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693913, 35.124378, 36.172276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024960, -0.616147, -0.787236,
		0.978822, 0.144992, -0.144515,
		0.203185, -0.774171, 0.599479,
		44.754868, 34.892128, 36.352119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108276, 35.121216, 35.573296>,  <44.612637, 35.434048, 35.932484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108276, 35.121216, 35.573296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975033, 34.852360, 35.837799>,  <44.895084, 34.691048, 35.996502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.975033, 34.852360, 35.837799>,  <45.108276, 35.121216, 35.573296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975033, 34.852360, 35.837799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024690, -0.694854, -0.718727,
		0.942564, -0.255742, 0.214869,
		-0.333111, -0.672141, 0.661259,
		44.875099, 34.650719, 36.036179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408634, 34.467365, 35.369965>,  <45.108276, 35.121216, 35.573296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408634, 34.467365, 35.369965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106438, 34.368416, 35.612633>,  <44.925121, 34.309048, 35.758232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106438, 34.368416, 35.612633>,  <45.408634, 34.467365, 35.369965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106438, 34.368416, 35.612633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328700, -0.657895, -0.677592,
		0.566738, -0.711325, 0.415722,
		-0.755489, -0.247369, 0.606667,
		44.879791, 34.294205, 35.794632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440434, 33.656086, 35.573250>,  <45.408634, 34.467365, 35.369965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440434, 33.656086, 35.573250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078884, 33.826962, 35.582428>,  <44.861954, 33.929485, 35.587933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078884, 33.826962, 35.582428>,  <45.440434, 33.656086, 35.573250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078884, 33.826962, 35.582428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270642, -0.529463, -0.804004,
		-0.331313, -0.732926, 0.594181,
		-0.903872, 0.427187, 0.022942,
		44.807724, 33.955116, 35.589310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163242, 33.893860, 35.237537>,  <45.440434, 33.656086, 35.573250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163242, 33.893860, 35.237537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244381, 34.244072, 35.062130>,  <46.293064, 34.454201, 34.956886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244381, 34.244072, 35.062130>,  <46.163242, 33.893860, 35.237537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244381, 34.244072, 35.062130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692749, 0.444817, 0.567658,
		0.692063, 0.188635, 0.696754,
		0.202847, 0.875531, -0.438518,
		46.305237, 34.506733, 34.930576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436687, 34.424492, 35.730621>,  <46.163242, 33.893860, 35.237537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436687, 34.424492, 35.730621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213295, 34.604839, 35.452106>,  <46.079258, 34.713047, 35.284996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213295, 34.604839, 35.452106>,  <46.436687, 34.424492, 35.730621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213295, 34.604839, 35.452106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750827, 0.082081, 0.655379,
		0.352644, 0.888807, 0.292687,
		-0.558481, 0.450872, -0.696286,
		46.045750, 34.740101, 35.243221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706203, 35.138218, 35.525684>,  <46.436687, 34.424492, 35.730621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706203, 35.138218, 35.525684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720402, 35.095852, 35.128189>,  <46.728920, 35.070431, 34.889690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720402, 35.095852, 35.128189>,  <46.706203, 35.138218, 35.525684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720402, 35.095852, 35.128189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998668, 0.041026, 0.031295,
		0.037455, -0.993528, 0.107231,
		0.035492, -0.105916, -0.993741,
		46.731049, 35.064075, 34.830067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.236279, 34.602280, 35.501774>,  <46.706203, 35.138218, 35.525684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.236279, 34.602280, 35.501774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195480, 34.838493, 35.181557>,  <47.171001, 34.980221, 34.989426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195480, 34.838493, 35.181557>,  <47.236279, 34.602280, 35.501774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195480, 34.838493, 35.181557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992426, 0.115792, -0.041029,
		0.068467, -0.798659, -0.597876,
		-0.101997, 0.590538, -0.800538,
		47.164883, 35.015656, 34.941395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.789417, 34.401905, 35.051201>,  <47.236279, 34.602280, 35.501774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.789417, 34.401905, 35.051201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715836, 34.787800, 34.975903>,  <47.671688, 35.019337, 34.930725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715836, 34.787800, 34.975903>,  <47.789417, 34.401905, 35.051201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715836, 34.787800, 34.975903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960471, 0.135711, -0.243057,
		-0.208941, -0.225513, -0.951571,
		-0.183951, 0.964742, -0.188243,
		47.660648, 35.077221, 34.919430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.636765, 35.519386, 44.184582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404709, 35.195820, 44.146439>,  <35.265476, 35.001682, 44.123554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404709, 35.195820, 44.146439>,  <35.636765, 35.519386, 44.184582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404709, 35.195820, 44.146439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049846, 0.081597, -0.995418,
		0.812989, -0.582237, -0.007017,
		-0.580142, -0.808914, -0.095359,
		35.230667, 34.953144, 44.117832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867855, 35.226318, 43.639538>,  <35.636765, 35.519386, 44.184582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867855, 35.226318, 43.639538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523033, 35.023659, 43.634258>,  <35.316139, 34.902061, 43.631092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523033, 35.023659, 43.634258>,  <35.867855, 35.226318, 43.639538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523033, 35.023659, 43.634258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088876, 0.176754, -0.980234,
		0.498969, -0.843838, -0.197400,
		-0.862050, -0.506651, -0.013198,
		35.264420, 34.871662, 43.630299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961430, 34.672138, 43.112427>,  <35.867855, 35.226318, 43.639538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961430, 34.672138, 43.112427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566994, 34.713093, 43.164791>,  <35.330330, 34.737667, 43.196209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566994, 34.713093, 43.164791>,  <35.961430, 34.672138, 43.112427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566994, 34.713093, 43.164791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121661, 0.091911, -0.988307,
		-0.113220, -0.990490, -0.078176,
		-0.986093, 0.102385, 0.130910,
		35.271164, 34.743809, 43.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583309, 34.162010, 42.716385>,  <35.961430, 34.672138, 43.112427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583309, 34.162010, 42.716385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306087, 34.446766, 42.761787>,  <35.139755, 34.617619, 42.789028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306087, 34.446766, 42.761787>,  <35.583309, 34.162010, 42.716385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306087, 34.446766, 42.761787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060949, 0.099018, -0.993217,
		-0.718303, -0.695273, -0.025236,
		-0.693055, 0.711893, 0.113502,
		35.098171, 34.660336, 42.795837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973572, 33.886761, 42.320587>,  <35.583309, 34.162010, 42.716385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973572, 33.886761, 42.320587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928219, 34.283195, 42.348572>,  <34.901009, 34.521057, 42.365364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928219, 34.283195, 42.348572>,  <34.973572, 33.886761, 42.320587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928219, 34.283195, 42.348572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080760, 0.060994, -0.994866,
		-0.990263, -0.118452, 0.073124,
		-0.113384, 0.991084, 0.069966,
		34.894203, 34.580521, 42.369560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340153, 34.016018, 41.986961>,  <34.973572, 33.886761, 42.320587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340153, 34.016018, 41.986961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504299, 34.380787, 41.987133>,  <34.602787, 34.599648, 41.987236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504299, 34.380787, 41.987133>,  <34.340153, 34.016018, 41.986961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504299, 34.380787, 41.987133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299976, 0.135430, -0.944284,
		-0.861171, 0.387373, 0.329131,
		0.410364, 0.911922, 0.000426,
		34.627407, 34.654362, 41.987263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772243, 34.499268, 41.757637>,  <34.340153, 34.016018, 41.986961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772243, 34.499268, 41.757637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117905, 34.692814, 41.702343>,  <34.325302, 34.808941, 41.669167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117905, 34.692814, 41.702343>,  <33.772243, 34.499268, 41.757637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117905, 34.692814, 41.702343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263936, 0.201919, -0.943168,
		-0.428458, 0.851527, 0.302200,
		0.864153, 0.483870, -0.138235,
		34.377151, 34.837975, 41.660873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550636, 35.194626, 41.369678>,  <33.772243, 34.499268, 41.757637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550636, 35.194626, 41.369678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935425, 35.115135, 41.294712>,  <34.166298, 35.067440, 41.249733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.935425, 35.115135, 41.294712>,  <33.550636, 35.194626, 41.369678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935425, 35.115135, 41.294712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184347, 0.034003, -0.982273,
		0.201577, 0.979465, -0.003925,
		0.961968, -0.198727, -0.187415,
		34.224014, 35.055515, 41.238487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723522, 35.720985, 40.859669>,  <33.550636, 35.194626, 41.369678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723522, 35.720985, 40.859669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.020668, 35.454288, 40.835667>,  <34.198956, 35.294270, 40.821266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.020668, 35.454288, 40.835667>,  <33.723522, 35.720985, 40.859669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020668, 35.454288, 40.835667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071523, 0.168165, -0.983161,
		0.665609, 0.726065, 0.172611,
		0.742866, -0.666746, -0.060002,
		34.243526, 35.254265, 40.817665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286903, 36.081135, 40.511528>,  <33.723522, 35.720985, 40.859669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286903, 36.081135, 40.511528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341141, 35.687366, 40.466747>,  <34.373684, 35.451107, 40.439877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.341141, 35.687366, 40.466747>,  <34.286903, 36.081135, 40.511528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341141, 35.687366, 40.466747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201803, 0.138070, -0.969646,
		0.969995, 0.108883, 0.217380,
		0.135591, -0.984419, -0.111955,
		34.381817, 35.392040, 40.433163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895248, 36.012600, 40.236965>,  <34.286903, 36.081135, 40.511528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895248, 36.012600, 40.236965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.711319, 35.671082, 40.139320>,  <34.600960, 35.466171, 40.080734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.711319, 35.671082, 40.139320>,  <34.895248, 36.012600, 40.236965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711319, 35.671082, 40.139320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309146, 0.103793, -0.945334,
		0.832460, -0.510156, 0.216221,
		-0.459825, -0.853796, -0.244116,
		34.573372, 35.414944, 40.066086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369362, 35.790470, 39.771347>,  <34.895248, 36.012600, 40.236965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369362, 35.790470, 39.771347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043816, 35.563850, 39.719749>,  <34.848488, 35.427879, 39.688793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043816, 35.563850, 39.719749>,  <35.369362, 35.790470, 39.771347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043816, 35.563850, 39.719749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288099, -0.200677, -0.936337,
		0.504600, -0.799215, 0.326548,
		-0.813866, -0.566554, -0.128992,
		34.799656, 35.393883, 39.681053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613232, 35.174664, 39.394512>,  <35.369362, 35.790470, 39.771347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613232, 35.174664, 39.394512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224346, 35.238651, 39.326138>,  <34.991016, 35.277042, 39.285114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224346, 35.238651, 39.326138>,  <35.613232, 35.174664, 39.394512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224346, 35.238651, 39.326138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144596, -0.163946, -0.975814,
		-0.184130, -0.973411, 0.136258,
		-0.972208, 0.159974, -0.170939,
		34.932682, 35.286640, 39.274857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384155, 34.644230, 38.858387>,  <35.613232, 35.174664, 39.394512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384155, 34.644230, 38.858387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127853, 34.951271, 38.852299>,  <34.974072, 35.135494, 38.848644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127853, 34.951271, 38.852299>,  <35.384155, 34.644230, 38.858387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127853, 34.951271, 38.852299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001856, -0.018280, -0.999831,
		-0.767747, -0.640670, 0.010289,
		-0.640750, 0.767599, -0.015223,
		34.935627, 35.181549, 38.847733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876423, 34.544411, 38.298031>,  <35.384155, 34.644230, 38.858387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876423, 34.544411, 38.298031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844730, 34.941647, 38.332653>,  <34.825714, 35.179989, 38.353424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844730, 34.941647, 38.332653>,  <34.876423, 34.544411, 38.298031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844730, 34.941647, 38.332653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072564, 0.092339, -0.993080,
		-0.994212, -0.072398, -0.079378,
		-0.079227, 0.993092, 0.086551,
		34.820961, 35.239574, 38.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421215, 34.698883, 37.822937>,  <34.876423, 34.544411, 38.298031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421215, 34.698883, 37.822937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613956, 35.040249, 37.902435>,  <34.729603, 35.245068, 37.950134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613956, 35.040249, 37.902435>,  <34.421215, 34.698883, 37.822937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613956, 35.040249, 37.902435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174870, 0.128591, -0.976158,
		-0.858624, 0.505123, -0.087274,
		0.481857, 0.853414, 0.198742,
		34.758514, 35.296272, 37.962059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294323, 35.096386, 37.302185>,  <34.421215, 34.698883, 37.822937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294323, 35.096386, 37.302185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609314, 35.292480, 37.451614>,  <34.798309, 35.410137, 37.541271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609314, 35.292480, 37.451614>,  <34.294323, 35.096386, 37.302185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609314, 35.292480, 37.451614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351700, 0.140335, -0.925534,
		-0.506154, 0.860219, -0.061905,
		0.787474, 0.490234, 0.373570,
		34.845558, 35.439552, 37.563686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307343, 35.827084, 37.063496>,  <34.294323, 35.096386, 37.302185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307343, 35.827084, 37.063496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682049, 35.730892, 37.165192>,  <34.906872, 35.673180, 37.226208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682049, 35.730892, 37.165192>,  <34.307343, 35.827084, 37.063496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682049, 35.730892, 37.165192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314105, 0.257501, -0.913800,
		0.154280, 0.935876, 0.316754,
		0.936769, -0.240475, 0.254236,
		34.963078, 35.658749, 37.241463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760593, 36.387108, 36.800007>,  <34.307343, 35.827084, 37.063496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760593, 36.387108, 36.800007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.012726, 36.084267, 36.868671>,  <35.164005, 35.902561, 36.909870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.012726, 36.084267, 36.868671>,  <34.760593, 36.387108, 36.800007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012726, 36.084267, 36.868671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494689, 0.221308, -0.840420,
		0.598298, 0.614665, 0.514030,
		0.630336, -0.757106, 0.171660,
		35.201828, 35.857136, 36.920170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474930, 36.631695, 36.792740>,  <34.760593, 36.387108, 36.800007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474930, 36.631695, 36.792740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.495884, 36.243660, 36.697929>,  <35.508457, 36.010838, 36.641045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.495884, 36.243660, 36.697929>,  <35.474930, 36.631695, 36.792740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495884, 36.243660, 36.697929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489695, 0.231813, -0.840513,
		0.870318, -0.072036, 0.487193,
		0.052390, -0.970089, -0.237027,
		35.511600, 35.952633, 36.626820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090683, 36.582180, 36.556061>,  <35.474930, 36.631695, 36.792740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090683, 36.582180, 36.556061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902035, 36.266247, 36.399227>,  <35.788845, 36.076687, 36.305126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902035, 36.266247, 36.399227>,  <36.090683, 36.582180, 36.556061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902035, 36.266247, 36.399227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512603, 0.116228, -0.850723,
		0.717502, -0.602206, 0.350056,
		-0.471624, -0.789835, -0.392086,
		35.760548, 36.029297, 36.281601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545033, 36.098164, 36.161026>,  <36.090683, 36.582180, 36.556061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545033, 36.098164, 36.161026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894432, 35.913555, 36.222996>,  <37.104073, 35.802788, 36.260178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894432, 35.913555, 36.222996>,  <36.545033, 36.098164, 36.161026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894432, 35.913555, 36.222996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222937, 0.662109, 0.715480,
		-0.432788, -0.590430, 0.681239,
		0.873495, -0.461524, 0.154924,
		37.156479, 35.775097, 36.269474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585030, 35.679092, 36.837502>,  <36.545033, 36.098164, 36.161026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585030, 35.679092, 36.837502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914158, 35.862701, 36.703472>,  <37.111633, 35.972866, 36.623055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914158, 35.862701, 36.703472>,  <36.585030, 35.679092, 36.837502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914158, 35.862701, 36.703472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143774, 0.402292, 0.904152,
		0.549822, -0.792125, 0.265017,
		0.822815, 0.459020, -0.335075,
		37.161003, 36.000408, 36.602951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197243, 35.390938, 37.216999>,  <36.585030, 35.679092, 36.837502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197243, 35.390938, 37.216999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307556, 35.743324, 37.063202>,  <37.373745, 35.954758, 36.970924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307556, 35.743324, 37.063202>,  <37.197243, 35.390938, 37.216999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307556, 35.743324, 37.063202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253163, 0.319315, 0.913207,
		0.927282, -0.349188, -0.134967,
		0.275784, 0.880969, -0.384497,
		37.390293, 36.007614, 36.947853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843941, 35.481777, 37.558826>,  <37.197243, 35.390938, 37.216999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843941, 35.481777, 37.558826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730148, 35.837265, 37.415020>,  <37.661873, 36.050556, 37.328735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730148, 35.837265, 37.415020>,  <37.843941, 35.481777, 37.558826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730148, 35.837265, 37.415020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195160, 0.420846, 0.885890,
		0.938608, 0.181852, -0.293164,
		-0.284477, 0.888717, -0.359519,
		37.644806, 36.103882, 37.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371059, 35.853809, 37.880295>,  <37.843941, 35.481777, 37.558826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371059, 35.853809, 37.880295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077633, 36.102642, 37.770828>,  <37.901577, 36.251942, 37.705147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077633, 36.102642, 37.770828>,  <38.371059, 35.853809, 37.880295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077633, 36.102642, 37.770828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142218, 0.534276, 0.833260,
		0.664569, 0.572333, -0.480399,
		-0.733568, 0.622081, -0.273667,
		37.857563, 36.289265, 37.688728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637028, 36.608551, 37.947399>,  <38.371059, 35.853809, 37.880295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637028, 36.608551, 37.947399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237232, 36.602604, 37.958733>,  <37.997356, 36.599037, 37.965530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237232, 36.602604, 37.958733>,  <38.637028, 36.608551, 37.947399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237232, 36.602604, 37.958733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020107, 0.396899, 0.917642,
		-0.024884, 0.917742, -0.396397,
		-0.999488, -0.014865, 0.028330,
		37.937386, 36.598145, 37.967232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431126, 37.183571, 38.504929>,  <38.637028, 36.608551, 37.947399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431126, 37.183571, 38.504929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086857, 36.983479, 38.466934>,  <37.880295, 36.863422, 38.444138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086857, 36.983479, 38.466934>,  <38.431126, 37.183571, 38.504929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086857, 36.983479, 38.466934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222640, 0.201960, 0.953752,
		-0.457910, 0.842012, -0.285191,
		-0.860668, -0.500227, -0.094986,
		37.828655, 36.833412, 38.438438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910500, 37.605480, 38.837292>,  <38.431126, 37.183571, 38.504929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910500, 37.605480, 38.837292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774670, 37.229652, 38.819897>,  <37.693172, 37.004154, 38.809460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774670, 37.229652, 38.819897>,  <37.910500, 37.605480, 38.837292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774670, 37.229652, 38.819897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123991, -0.001113, 0.992283,
		-0.932370, 0.342348, -0.116120,
		-0.339577, -0.939573, -0.043485,
		37.672798, 36.947781, 38.806850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483269, 37.679535, 39.284328>,  <37.910500, 37.605480, 38.837292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483269, 37.679535, 39.284328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509979, 37.281986, 39.249115>,  <37.526005, 37.043457, 39.227985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509979, 37.281986, 39.249115>,  <37.483269, 37.679535, 39.284328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509979, 37.281986, 39.249115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287554, -0.103662, 0.952138,
		-0.955433, -0.038267, -0.292716,
		0.066779, -0.993876, -0.088038,
		37.530014, 36.983822, 39.222702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959293, 37.339317, 39.608505>,  <37.483269, 37.679535, 39.284328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959293, 37.339317, 39.608505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248150, 37.063339, 39.628426>,  <37.421463, 36.897751, 39.640377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248150, 37.063339, 39.628426>,  <36.959293, 37.339317, 39.608505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248150, 37.063339, 39.628426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196276, -0.135343, 0.971163,
		-0.663311, -0.711095, -0.233157,
		0.722146, -0.689946, 0.049796,
		37.464794, 36.856354, 39.643364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666752, 36.740993, 39.913033>,  <36.959293, 37.339317, 39.608505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666752, 36.740993, 39.913033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062119, 36.718056, 39.969231>,  <37.299339, 36.704292, 40.002949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062119, 36.718056, 39.969231>,  <36.666752, 36.740993, 39.913033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062119, 36.718056, 39.969231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150899, -0.273564, 0.949943,
		-0.016035, -0.960143, -0.279048,
		0.988419, -0.057341, 0.140498,
		37.358643, 36.700855, 40.011379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645287, 36.338131, 40.390648>,  <36.666752, 36.740993, 39.913033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645287, 36.338131, 40.390648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019218, 36.476307, 40.423565>,  <37.243576, 36.559212, 40.443314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019218, 36.476307, 40.423565>,  <36.645287, 36.338131, 40.390648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019218, 36.476307, 40.423565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010464, -0.204840, 0.978739,
		0.354949, -0.915813, -0.187875,
		0.934827, 0.345437, 0.082291,
		37.299667, 36.579937, 40.448254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034515, 35.868584, 40.801750>,  <36.645287, 36.338131, 40.390648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034515, 35.868584, 40.801750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191765, 36.236298, 40.809391>,  <37.286114, 36.456928, 40.813976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191765, 36.236298, 40.809391>,  <37.034515, 35.868584, 40.801750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191765, 36.236298, 40.809391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129103, -0.075754, 0.988734,
		0.910377, -0.386228, -0.148463,
		0.393123, 0.919287, 0.019101,
		37.309700, 36.512085, 40.815121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194199, 35.805840, 41.500862>,  <37.034515, 35.868584, 40.801750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194199, 35.805840, 41.500862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333763, 36.167873, 41.403629>,  <37.417503, 36.385094, 41.345291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333763, 36.167873, 41.403629>,  <37.194199, 35.805840, 41.500862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333763, 36.167873, 41.403629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273779, 0.149621, 0.950083,
		0.896272, -0.398048, -0.195587,
		0.348915, 0.905081, -0.243078,
		37.438438, 36.439396, 41.330708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991180, 35.862675, 41.530403>,  <37.194199, 35.805840, 41.500862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991180, 35.862675, 41.530403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729301, 36.143757, 41.641811>,  <37.572174, 36.312408, 41.708656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729301, 36.143757, 41.641811>,  <37.991180, 35.862675, 41.530403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729301, 36.143757, 41.641811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223594, -0.171947, 0.959396,
		0.722067, 0.690387, -0.044549,
		-0.654694, 0.702709, 0.278524,
		37.532894, 36.354568, 41.725368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294819, 36.255432, 42.062805>,  <37.991180, 35.862675, 41.530403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294819, 36.255432, 42.062805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904709, 36.321918, 42.121071>,  <37.670643, 36.361809, 42.156033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904709, 36.321918, 42.121071>,  <38.294819, 36.255432, 42.062805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904709, 36.321918, 42.121071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141311, -0.037795, 0.989243,
		0.169929, 0.985365, 0.013373,
		-0.975272, 0.166211, 0.145666,
		37.612129, 36.371780, 42.164772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336056, 36.712032, 42.455769>,  <38.294819, 36.255432, 42.062805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336056, 36.712032, 42.455769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.975624, 36.549244, 42.515682>,  <37.759365, 36.451569, 42.551632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.975624, 36.549244, 42.515682>,  <38.336056, 36.712032, 42.455769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975624, 36.549244, 42.515682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176716, -0.029162, 0.983830,
		-0.396024, 0.912975, 0.098196,
		-0.901075, -0.406973, 0.149788,
		37.705303, 36.427151, 42.560619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122005, 36.864479, 43.080883>,  <38.336056, 36.712032, 42.455769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122005, 36.864479, 43.080883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830872, 36.592785, 43.043140>,  <37.656193, 36.429768, 43.020493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830872, 36.592785, 43.043140>,  <38.122005, 36.864479, 43.080883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830872, 36.592785, 43.043140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043156, -0.182694, 0.982222,
		-0.684396, 0.710821, 0.162283,
		-0.727832, -0.679233, -0.094359,
		37.612522, 36.389015, 43.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698147, 36.928955, 43.717033>,  <38.122005, 36.864479, 43.080883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698147, 36.928955, 43.717033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563931, 36.590126, 43.552166>,  <37.483402, 36.386829, 43.453247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563931, 36.590126, 43.552166>,  <37.698147, 36.928955, 43.717033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563931, 36.590126, 43.552166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199789, -0.363587, 0.909884,
		-0.920596, 0.387648, -0.047238,
		-0.335540, -0.847073, -0.412165,
		37.463268, 36.336002, 43.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.011978, 36.858738, 43.875801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198910, 36.509075, 43.822964>,  <37.311069, 36.299278, 43.791260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.198910, 36.509075, 43.822964>,  <37.011978, 36.858738, 43.875801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198910, 36.509075, 43.822964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287345, -0.291488, 0.912397,
		-0.836082, -0.388436, -0.387407,
		0.467332, -0.874158, -0.132093,
		37.339108, 36.246826, 43.783337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502510, 36.397739, 44.079895>,  <37.011978, 36.858738, 43.875801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502510, 36.397739, 44.079895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839581, 36.182377, 44.078175>,  <37.041821, 36.053158, 44.077145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839581, 36.182377, 44.078175>,  <36.502510, 36.397739, 44.079895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839581, 36.182377, 44.078175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247193, -0.393953, 0.885266,
		-0.478327, -0.744928, -0.465065,
		0.842673, -0.538408, -0.004297,
		37.092384, 36.020855, 44.076885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337749, 35.683777, 43.977787>,  <36.502510, 36.397739, 44.079895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337749, 35.683777, 43.977787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.683029, 35.714493, 44.177383>,  <36.890198, 35.732922, 44.297142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.683029, 35.714493, 44.177383>,  <36.337749, 35.683777, 43.977787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683029, 35.714493, 44.177383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395517, -0.511423, 0.762897,
		0.313782, -0.855891, -0.411086,
		0.863196, 0.076792, 0.498995,
		36.941990, 35.737530, 44.327084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381233, 35.136074, 44.457378>,  <36.337749, 35.683777, 43.977787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381233, 35.136074, 44.457378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686859, 35.348774, 44.603497>,  <36.870235, 35.476395, 44.691170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686859, 35.348774, 44.603497>,  <36.381233, 35.136074, 44.457378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686859, 35.348774, 44.603497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119037, -0.440311, 0.889919,
		0.634057, -0.723444, -0.273131,
		0.764069, 0.531746, 0.365299,
		36.916080, 35.508297, 44.713085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686516, 34.716354, 44.820374>,  <36.381233, 35.136074, 44.457378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686516, 34.716354, 44.820374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812260, 35.075626, 44.943306>,  <36.887707, 35.291191, 45.017063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812260, 35.075626, 44.943306>,  <36.686516, 34.716354, 44.820374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812260, 35.075626, 44.943306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384477, -0.175539, 0.906291,
		0.867962, -0.403059, 0.290149,
		0.314356, 0.898181, 0.307328,
		36.906567, 35.345081, 45.035503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975399, 34.588676, 45.420761>,  <36.686516, 34.716354, 44.820374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975399, 34.588676, 45.420761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.900146, 34.979618, 45.459492>,  <36.854996, 35.214184, 45.482731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.900146, 34.979618, 45.459492>,  <36.975399, 34.588676, 45.420761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900146, 34.979618, 45.459492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244324, -0.142060, 0.959232,
		0.951268, 0.156808, 0.265518,
		-0.188135, 0.977359, 0.096825,
		36.843704, 35.272827, 45.488541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289665, 34.691013, 45.966969>,  <36.975399, 34.588676, 45.420761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289665, 34.691013, 45.966969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051437, 35.012070, 45.953892>,  <36.908501, 35.204704, 45.946045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051437, 35.012070, 45.953892>,  <37.289665, 34.691013, 45.966969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051437, 35.012070, 45.953892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279038, -0.168544, 0.945373,
		0.753285, 0.572155, 0.324347,
		-0.595566, 0.802641, -0.032691,
		36.872768, 35.252861, 45.944084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611702, 35.265030, 46.513065>,  <37.289665, 34.691013, 45.966969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611702, 35.265030, 46.513065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.224228, 35.327271, 46.435673>,  <36.991745, 35.364616, 46.389236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.224228, 35.327271, 46.435673>,  <37.611702, 35.265030, 46.513065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224228, 35.327271, 46.435673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202736, -0.045805, 0.978162,
		0.143341, 0.986757, 0.075917,
		-0.968685, 0.155602, -0.193485,
		36.933620, 35.373951, 46.377628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457863, 35.771805, 46.916172>,  <37.611702, 35.265030, 46.513065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457863, 35.771805, 46.916172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126850, 35.551895, 46.870651>,  <36.928242, 35.419949, 46.843338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126850, 35.551895, 46.870651>,  <37.457863, 35.771805, 46.916172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126850, 35.551895, 46.870651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125696, -0.016124, 0.991938,
		-0.547173, 0.835160, -0.055761,
		-0.827528, -0.549771, -0.113799,
		36.878593, 35.386963, 46.836510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060795, 36.104530, 47.420609>,  <37.457863, 35.771805, 46.916172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060795, 36.104530, 47.420609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.924675, 35.736828, 47.341454>,  <36.843002, 35.516205, 47.293961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.924675, 35.736828, 47.341454>,  <37.060795, 36.104530, 47.420609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924675, 35.736828, 47.341454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229861, -0.122739, 0.965453,
		-0.911790, 0.374028, -0.169534,
		-0.340298, -0.919260, -0.197886,
		36.822586, 35.461048, 47.282089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491280, 35.955856, 47.843887>,  <37.060795, 36.104530, 47.420609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491280, 35.955856, 47.843887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597122, 35.582794, 47.745796>,  <36.660629, 35.358955, 47.686943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597122, 35.582794, 47.745796>,  <36.491280, 35.955856, 47.843887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597122, 35.582794, 47.745796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123952, -0.285076, 0.950457,
		-0.956357, -0.221103, -0.191038,
		0.264609, -0.932655, -0.245228,
		36.676506, 35.302998, 47.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923325, 35.503384, 48.020973>,  <36.491280, 35.955856, 47.843887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923325, 35.503384, 48.020973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254528, 35.279102, 48.022453>,  <36.453251, 35.144531, 48.023342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254528, 35.279102, 48.022453>,  <35.923325, 35.503384, 48.020973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254528, 35.279102, 48.022453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123804, -0.176375, 0.976506,
		-0.546882, -0.809011, -0.215457,
		0.828005, -0.560708, 0.003702,
		36.502930, 35.110889, 48.023563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912060, 34.833050, 48.390488>,  <35.923325, 35.503384, 48.020973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912060, 34.833050, 48.390488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307800, 34.887497, 48.369846>,  <36.545242, 34.920166, 48.357460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307800, 34.887497, 48.369846>,  <35.912060, 34.833050, 48.390488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307800, 34.887497, 48.369846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088441, -0.280481, 0.955777,
		0.115620, -0.950160, -0.289531,
		0.989349, 0.136114, -0.051604,
		36.604607, 34.928329, 48.354366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225605, 34.209549, 48.550114>,  <35.912060, 34.833050, 48.390488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225605, 34.209549, 48.550114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516426, 34.473312, 48.626617>,  <36.690918, 34.631569, 48.672520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516426, 34.473312, 48.626617>,  <36.225605, 34.209549, 48.550114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516426, 34.473312, 48.626617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162921, -0.436302, 0.884928,
		0.666977, -0.612225, -0.424644,
		0.727048, 0.659410, 0.191259,
		36.734539, 34.671135, 48.683994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491230, 33.858891, 48.923462>,  <36.225605, 34.209549, 48.550114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491230, 33.858891, 48.923462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660324, 34.213779, 48.997364>,  <36.761780, 34.426712, 49.041706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660324, 34.213779, 48.997364>,  <36.491230, 33.858891, 48.923462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660324, 34.213779, 48.997364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259250, -0.313740, 0.913431,
		0.868379, -0.338244, -0.362641,
		0.422738, 0.887220, 0.184756,
		36.787144, 34.479946, 49.052792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115452, 33.785423, 49.034878>,  <36.491230, 33.858891, 48.923462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115452, 33.785423, 49.034878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050373, 34.134499, 49.219025>,  <37.011326, 34.343945, 49.329514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050373, 34.134499, 49.219025>,  <37.115452, 33.785423, 49.034878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050373, 34.134499, 49.219025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232993, -0.419410, 0.877388,
		0.958771, 0.250015, -0.135092,
		-0.162702, 0.872690, 0.460370,
		37.001564, 34.396305, 49.357136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743187, 33.814640, 49.503826>,  <37.115452, 33.785423, 49.034878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743187, 33.814640, 49.503826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470230, 34.070637, 49.645100>,  <37.306454, 34.224236, 49.729866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470230, 34.070637, 49.645100>,  <37.743187, 33.814640, 49.503826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470230, 34.070637, 49.645100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274472, -0.223480, 0.935266,
		0.677496, 0.735162, -0.023159,
		-0.682396, 0.639995, 0.353188,
		37.265511, 34.262634, 49.751057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070724, 34.167709, 49.879230>,  <37.743187, 33.814640, 49.503826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070724, 34.167709, 49.879230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701702, 34.187057, 50.032360>,  <37.480289, 34.198666, 50.124237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701702, 34.187057, 50.032360>,  <38.070724, 34.167709, 49.879230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701702, 34.187057, 50.032360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370582, -0.165386, 0.913957,
		0.107523, 0.985042, 0.134652,
		-0.922555, 0.048372, 0.382821,
		37.424934, 34.201569, 50.147205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210545, 34.480465, 50.478531>,  <38.070724, 34.167709, 49.879230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210545, 34.480465, 50.478531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845089, 34.318520, 50.493237>,  <37.625816, 34.221352, 50.502060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.845089, 34.318520, 50.493237>,  <38.210545, 34.480465, 50.478531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845089, 34.318520, 50.493237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110822, -0.161032, 0.980708,
		-0.391133, 0.900086, 0.191993,
		-0.913638, -0.404864, 0.036764,
		37.570999, 34.197060, 50.504265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117138, 34.611828, 51.174995>,  <38.210545, 34.480465, 50.478531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117138, 34.611828, 51.174995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861847, 34.328461, 51.054459>,  <37.708672, 34.158440, 50.982136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861847, 34.328461, 51.054459>,  <38.117138, 34.611828, 51.174995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861847, 34.328461, 51.054459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019152, -0.376703, 0.926136,
		-0.769613, 0.596853, 0.226853,
		-0.638223, -0.708422, -0.301347,
		37.670380, 34.115932, 50.964054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645233, 34.593971, 51.645638>,  <38.117138, 34.611828, 51.174995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645233, 34.593971, 51.645638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596546, 34.233505, 51.479225>,  <37.567333, 34.017223, 51.379379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596546, 34.233505, 51.479225>,  <37.645233, 34.593971, 51.645638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596546, 34.233505, 51.479225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063926, -0.425393, 0.902749,
		-0.990504, 0.083283, 0.109385,
		-0.121716, -0.901169, -0.416029,
		37.560032, 33.963154, 51.354416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043774, 34.300518, 52.031261>,  <37.645233, 34.593971, 51.645638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043774, 34.300518, 52.031261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232761, 33.997749, 51.850662>,  <37.346153, 33.816090, 51.742302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232761, 33.997749, 51.850662>,  <37.043774, 34.300518, 52.031261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232761, 33.997749, 51.850662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161465, -0.429271, 0.888625,
		-0.866433, -0.492745, -0.080600,
		0.472465, -0.756920, -0.451495,
		37.374500, 33.770672, 51.715214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644730, 33.705349, 52.294334>,  <37.043774, 34.300518, 52.031261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644730, 33.705349, 52.294334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013332, 33.621723, 52.163414>,  <37.234493, 33.571548, 52.084862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013332, 33.621723, 52.163414>,  <36.644730, 33.705349, 52.294334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013332, 33.621723, 52.163414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199486, -0.468286, 0.860764,
		-0.333220, -0.858488, -0.389823,
		0.921504, -0.209060, -0.327298,
		37.289783, 33.559006, 52.065224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656178, 33.031116, 52.365520>,  <36.644730, 33.705349, 52.294334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656178, 33.031116, 52.365520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038448, 33.148300, 52.353783>,  <37.267811, 33.218609, 52.346741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038448, 33.148300, 52.353783>,  <36.656178, 33.031116, 52.365520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038448, 33.148300, 52.353783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243418, -0.730112, 0.638502,
		0.165633, -0.617342, -0.769061,
		0.955675, 0.292960, -0.029341,
		37.325150, 33.236187, 52.344978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024826, 32.941250, 51.860889>,  <36.656178, 33.031116, 52.365520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024826, 32.941250, 51.860889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712128, 32.715919, 51.753899>,  <35.524509, 32.580723, 51.689705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712128, 32.715919, 51.753899>,  <36.024826, 32.941250, 51.860889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712128, 32.715919, 51.753899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150902, 0.587060, -0.795355,
		0.605069, -0.581399, -0.543936,
		-0.781742, -0.563325, -0.267477,
		35.477604, 32.546921, 51.673656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100136, 32.624851, 51.140656>,  <36.024826, 32.941250, 51.860889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100136, 32.624851, 51.140656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707455, 32.656395, 51.209976>,  <35.471844, 32.675320, 51.251568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707455, 32.656395, 51.209976>,  <36.100136, 32.624851, 51.140656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707455, 32.656395, 51.209976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137003, 0.339487, -0.930580,
		-0.132216, -0.937299, -0.322473,
		-0.981707, 0.078858, 0.173299,
		35.412941, 32.680054, 51.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836781, 32.437885, 50.547096>,  <36.100136, 32.624851, 51.140656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836781, 32.437885, 50.547096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531033, 32.633408, 50.715286>,  <35.347584, 32.750721, 50.816200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531033, 32.633408, 50.715286>,  <35.836781, 32.437885, 50.547096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531033, 32.633408, 50.715286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291279, 0.320006, -0.901528,
		-0.575229, -0.811580, -0.102224,
		-0.764375, 0.488809, 0.420473,
		35.301720, 32.780048, 50.841427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290607, 32.330700, 50.119946>,  <35.836781, 32.437885, 50.547096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290607, 32.330700, 50.119946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176670, 32.655964, 50.322975>,  <35.108307, 32.851124, 50.444794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176670, 32.655964, 50.322975>,  <35.290607, 32.330700, 50.119946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176670, 32.655964, 50.322975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362422, 0.398845, -0.842362,
		-0.887421, -0.423895, 0.181101,
		-0.284841, 0.813164, 0.507572,
		35.091217, 32.899914, 50.475246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584499, 32.382507, 50.063969>,  <35.290607, 32.330700, 50.119946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584499, 32.382507, 50.063969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710232, 32.754417, 50.140621>,  <34.785671, 32.977562, 50.186611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710232, 32.754417, 50.140621>,  <34.584499, 32.382507, 50.063969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710232, 32.754417, 50.140621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566321, 0.345663, -0.748196,
		-0.761892, 0.126653, 0.635200,
		0.314327, 0.929772, 0.191632,
		34.804531, 33.033348, 50.198112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946701, 32.743046, 49.923431>,  <34.584499, 32.382507, 50.063969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946701, 32.743046, 49.923431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276104, 32.969799, 49.914623>,  <34.473747, 33.105850, 49.909340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276104, 32.969799, 49.914623>,  <33.946701, 32.743046, 49.923431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276104, 32.969799, 49.914623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337540, 0.458413, -0.822146,
		-0.455965, 0.684474, 0.568850,
		0.823506, 0.566880, -0.022017,
		34.523155, 33.139862, 49.908020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679245, 33.244545, 49.579872>,  <33.946701, 32.743046, 49.923431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679245, 33.244545, 49.579872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077087, 33.282757, 49.563744>,  <34.315792, 33.305683, 49.554066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077087, 33.282757, 49.563744>,  <33.679245, 33.244545, 49.579872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077087, 33.282757, 49.563744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063436, 0.252978, -0.965390,
		-0.082023, 0.962744, 0.257674,
		0.994609, 0.095530, -0.040323,
		34.375469, 33.311417, 49.551647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748272, 33.848888, 49.221500>,  <33.679245, 33.244545, 49.579872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748272, 33.848888, 49.221500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099594, 33.661263, 49.184513>,  <34.310387, 33.548687, 49.162319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099594, 33.661263, 49.184513>,  <33.748272, 33.848888, 49.221500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099594, 33.661263, 49.184513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011369, 0.172866, -0.984880,
		0.477960, 0.866079, 0.146497,
		0.878308, -0.469068, -0.092469,
		34.363087, 33.520542, 49.156773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036041, 34.215237, 48.689148>,  <33.748272, 33.848888, 49.221500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036041, 34.215237, 48.689148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270466, 33.891140, 48.691757>,  <34.411121, 33.696682, 48.693325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270466, 33.891140, 48.691757>,  <34.036041, 34.215237, 48.689148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270466, 33.891140, 48.691757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142677, 0.095267, -0.985174,
		0.797604, 0.578306, 0.171435,
		0.586064, -0.810238, 0.006525,
		34.446285, 33.648067, 48.693714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678120, 34.500027, 48.394115>,  <34.036041, 34.215237, 48.689148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678120, 34.500027, 48.394115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687801, 34.100735, 48.372398>,  <34.693611, 33.861160, 48.359367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687801, 34.100735, 48.372398>,  <34.678120, 34.500027, 48.394115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687801, 34.100735, 48.372398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242620, 0.058553, -0.968352,
		0.969819, 0.010262, 0.243608,
		0.024201, -0.998231, -0.054296,
		34.695061, 33.801266, 48.356110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427052, 34.226818, 48.118904>,  <34.678120, 34.500027, 48.394115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427052, 34.226818, 48.118904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141430, 33.961243, 48.030083>,  <34.970058, 33.801895, 47.976791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.141430, 33.961243, 48.030083>,  <35.427052, 34.226818, 48.118904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141430, 33.961243, 48.030083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254287, 0.049544, -0.965859,
		0.652276, -0.746141, 0.133455,
		-0.714055, -0.663942, -0.222051,
		34.927212, 33.762058, 47.963467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625370, 34.001358, 47.445858>,  <35.427052, 34.226818, 48.118904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625370, 34.001358, 47.445858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262035, 33.834087, 47.448845>,  <35.044033, 33.733727, 47.450638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262035, 33.834087, 47.448845>,  <35.625370, 34.001358, 47.445858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262035, 33.834087, 47.448845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009758, -0.039044, -0.999190,
		0.418126, -0.907528, 0.039546,
		-0.908337, -0.418173, 0.007470,
		34.989532, 33.708637, 47.451084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654854, 33.537746, 47.004269>,  <35.625370, 34.001358, 47.445858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654854, 33.537746, 47.004269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260826, 33.604633, 47.020657>,  <35.024410, 33.644768, 47.030487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260826, 33.604633, 47.020657>,  <35.654854, 33.537746, 47.004269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260826, 33.604633, 47.020657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052730, -0.066518, -0.996391,
		-0.163896, -0.983672, 0.074343,
		-0.985067, 0.167224, 0.040967,
		34.965305, 33.654800, 47.032948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420071, 33.160877, 46.524269>,  <35.654854, 33.537746, 47.004269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420071, 33.160877, 46.524269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123699, 33.422176, 46.586628>,  <34.945877, 33.578957, 46.624043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123699, 33.422176, 46.586628>,  <35.420071, 33.160877, 46.524269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123699, 33.422176, 46.586628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026883, 0.203094, -0.978790,
		-0.671049, -0.729401, -0.132916,
		-0.740925, 0.653243, 0.155894,
		34.901421, 33.618149, 46.633396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819710, 33.031521, 46.031540>,  <35.420071, 33.160877, 46.524269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819710, 33.031521, 46.031540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827377, 33.413414, 46.150272>,  <34.831978, 33.642551, 46.221512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827377, 33.413414, 46.150272>,  <34.819710, 33.031521, 46.031540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827377, 33.413414, 46.150272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190377, 0.287970, -0.938525,
		-0.981524, 0.074501, -0.176240,
		0.019170, 0.954737, 0.296833,
		34.833130, 33.699837, 46.239323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428295, 33.362679, 45.613419>,  <34.819710, 33.031521, 46.031540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428295, 33.362679, 45.613419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633297, 33.664593, 45.777195>,  <34.756298, 33.845741, 45.875462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633297, 33.664593, 45.777195>,  <34.428295, 33.362679, 45.613419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633297, 33.664593, 45.777195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127466, 0.404672, -0.905535,
		-0.849173, 0.516278, 0.111185,
		0.512501, 0.754783, 0.409444,
		34.787048, 33.891029, 45.900028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044636, 33.927074, 45.430401>,  <34.428295, 33.362679, 45.613419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044636, 33.927074, 45.430401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411079, 34.064854, 45.512478>,  <34.630943, 34.147522, 45.561726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411079, 34.064854, 45.512478>,  <34.044636, 33.927074, 45.430401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411079, 34.064854, 45.512478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044392, 0.421504, -0.905740,
		-0.398471, 0.838862, 0.370851,
		0.916106, 0.344448, 0.205196,
		34.685913, 34.168190, 45.574036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055893, 34.680893, 45.307087>,  <34.044636, 33.927074, 45.430401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055893, 34.680893, 45.307087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436653, 34.561104, 45.281174>,  <34.665112, 34.489231, 45.265625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436653, 34.561104, 45.281174>,  <34.055893, 34.680893, 45.307087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436653, 34.561104, 45.281174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073206, 0.427614, -0.900993,
		0.297522, 0.852916, 0.428970,
		0.951904, -0.299468, -0.064786,
		34.722225, 34.471264, 45.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358292, 35.267807, 45.047188>,  <34.055893, 34.680893, 45.307087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358292, 35.267807, 45.047188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633450, 34.981689, 44.997948>,  <34.798546, 34.810020, 44.968403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633450, 34.981689, 44.997948>,  <34.358292, 35.267807, 45.047188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633450, 34.981689, 44.997948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238459, 0.382921, -0.892474,
		0.685521, 0.584572, 0.433977,
		0.687894, -0.715295, -0.123104,
		34.839817, 34.767101, 44.961018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950958, 35.632118, 44.625313>,  <34.358292, 35.267807, 45.047188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950958, 35.632118, 44.625313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023510, 35.241085, 44.582542>,  <35.067043, 35.006466, 44.556881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023510, 35.241085, 44.582542>,  <34.950958, 35.632118, 44.625313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023510, 35.241085, 44.582542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018079, 0.105395, -0.994266,
		0.983247, 0.182275, 0.001443,
		0.181382, -0.977583, -0.106925,
		35.077923, 34.947811, 44.550465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.664181, 38.501698, 41.980995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551762, 38.384777, 42.346634>,  <44.484310, 38.314625, 42.566017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551762, 38.384777, 42.346634>,  <44.664181, 38.501698, 41.980995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551762, 38.384777, 42.346634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042398, -0.947775, -0.316110,
		0.958758, -0.127597, 0.253973,
		-0.281044, -0.292305, 0.914096,
		44.467449, 38.297085, 42.620861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051579, 37.983734, 42.073284>,  <44.664181, 38.501698, 41.980995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051579, 37.983734, 42.073284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762047, 37.931557, 42.344296>,  <44.588326, 37.900249, 42.506905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762047, 37.931557, 42.344296>,  <45.051579, 37.983734, 42.073284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762047, 37.931557, 42.344296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131270, -0.937994, -0.320835,
		0.677374, -0.321170, 0.661827,
		-0.723832, -0.130447, 0.677533,
		44.544899, 37.892422, 42.547554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167953, 37.273449, 42.365513>,  <45.051579, 37.983734, 42.073284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167953, 37.273449, 42.365513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778889, 37.351009, 42.416618>,  <44.545448, 37.397545, 42.447281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778889, 37.351009, 42.416618>,  <45.167953, 37.273449, 42.365513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778889, 37.351009, 42.416618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228990, -0.892220, -0.389239,
		0.038516, -0.407856, 0.912234,
		-0.972666, 0.193901, 0.127760,
		44.487087, 37.409180, 42.454945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859589, 36.644405, 42.548870>,  <45.167953, 37.273449, 42.365513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859589, 36.644405, 42.548870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551174, 36.871067, 42.432663>,  <44.366127, 37.007065, 42.362938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551174, 36.871067, 42.432663>,  <44.859589, 36.644405, 42.548870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551174, 36.871067, 42.432663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406020, -0.788930, -0.461235,
		-0.490560, -0.237674, 0.838369,
		-0.771038, 0.566658, -0.290517,
		44.319862, 37.041065, 42.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204605, 36.224480, 42.750992>,  <44.859589, 36.644405, 42.548870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204605, 36.224480, 42.750992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104889, 36.479267, 42.459206>,  <44.045059, 36.632141, 42.284134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104889, 36.479267, 42.459206>,  <44.204605, 36.224480, 42.750992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104889, 36.479267, 42.459206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494639, -0.731332, -0.469559,
		-0.832578, 0.243766, 0.497385,
		-0.249291, 0.636970, -0.729467,
		44.030102, 36.670357, 42.240364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594898, 36.023548, 42.409920>,  <44.204605, 36.224480, 42.750992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594898, 36.023548, 42.409920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664455, 36.288784, 42.118694>,  <43.706192, 36.447926, 41.943958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664455, 36.288784, 42.118694>,  <43.594898, 36.023548, 42.409920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664455, 36.288784, 42.118694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602828, -0.512936, -0.611142,
		-0.778690, 0.545173, 0.310529,
		0.173896, 0.663086, -0.728064,
		43.716625, 36.487709, 41.900276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949696, 36.205482, 42.119213>,  <43.594898, 36.023548, 42.409920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949696, 36.205482, 42.119213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227295, 36.298710, 41.846729>,  <43.393856, 36.354645, 41.683239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227295, 36.298710, 41.846729>,  <42.949696, 36.205482, 42.119213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227295, 36.298710, 41.846729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483634, -0.549991, -0.680888,
		-0.533349, 0.801992, -0.268976,
		0.694001, 0.233065, -0.681207,
		43.435493, 36.368629, 41.642368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603832, 36.280079, 41.447479>,  <42.949696, 36.205482, 42.119213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603832, 36.280079, 41.447479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.988567, 36.237148, 41.346798>,  <43.219406, 36.211391, 41.286388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.988567, 36.237148, 41.346798>,  <42.603832, 36.280079, 41.447479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988567, 36.237148, 41.346798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271823, -0.480400, -0.833864,
		-0.031427, 0.870458, -0.491238,
		0.961834, -0.107324, -0.251708,
		43.277119, 36.204952, 41.271286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552723, 36.307346, 40.797836>,  <42.603832, 36.280079, 41.447479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552723, 36.307346, 40.797836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.907661, 36.131275, 40.852772>,  <43.120625, 36.025635, 40.885731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.907661, 36.131275, 40.852772>,  <42.552723, 36.307346, 40.797836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907661, 36.131275, 40.852772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242489, -0.698797, -0.672965,
		0.392192, 0.563851, -0.726813,
		0.887347, -0.440176, 0.137335,
		43.173866, 35.999222, 40.893970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874722, 36.295799, 40.144165>,  <42.552723, 36.307346, 40.797836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874722, 36.295799, 40.144165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.033558, 36.017765, 40.383888>,  <43.128860, 35.850945, 40.527721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.033558, 36.017765, 40.383888>,  <42.874722, 36.295799, 40.144165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033558, 36.017765, 40.383888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126089, -0.688128, -0.714550,
		0.909075, 0.208178, -0.360894,
		0.397095, -0.695084, 0.599311,
		43.152687, 35.809238, 40.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294804, 35.891109, 39.669525>,  <42.874722, 36.295799, 40.144165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294804, 35.891109, 39.669525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244087, 35.667042, 39.996971>,  <43.213657, 35.532600, 40.193439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244087, 35.667042, 39.996971>,  <43.294804, 35.891109, 39.669525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244087, 35.667042, 39.996971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194491, -0.795218, -0.574284,
		0.972675, -0.232030, -0.008118,
		-0.126795, -0.560171, 0.818616,
		43.206047, 35.498989, 40.242558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741539, 35.363438, 39.581223>,  <43.294804, 35.891109, 39.669525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741539, 35.363438, 39.581223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451279, 35.228661, 39.821190>,  <43.277122, 35.147793, 39.965172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451279, 35.228661, 39.821190>,  <43.741539, 35.363438, 39.581223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451279, 35.228661, 39.821190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274353, -0.657895, -0.701359,
		0.631003, -0.673530, 0.384958,
		-0.725649, -0.336946, 0.599918,
		43.233585, 35.127579, 40.001163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708183, 34.603027, 39.537247>,  <43.741539, 35.363438, 39.581223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708183, 34.603027, 39.537247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350166, 34.731594, 39.660915>,  <43.135357, 34.808735, 39.735115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350166, 34.731594, 39.660915>,  <43.708183, 34.603027, 39.537247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350166, 34.731594, 39.660915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442509, -0.553806, -0.705326,
		-0.055482, -0.768109, 0.637910,
		-0.895046, 0.321414, 0.309169,
		43.081654, 34.828018, 39.753666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272957, 34.080311, 39.308086>,  <43.708183, 34.603027, 39.537247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272957, 34.080311, 39.308086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.009777, 34.366550, 39.401905>,  <42.851868, 34.538296, 39.458199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.009777, 34.366550, 39.401905>,  <43.272957, 34.080311, 39.308086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009777, 34.366550, 39.401905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633908, -0.358164, -0.685477,
		-0.406524, -0.599691, 0.689281,
		-0.657951, 0.715604, 0.234547,
		42.812393, 34.581230, 39.472271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714211, 33.671997, 39.430801>,  <43.272957, 34.080311, 39.308086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714211, 33.671997, 39.430801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664684, 34.050983, 39.312828>,  <42.634968, 34.278374, 39.242046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664684, 34.050983, 39.312828>,  <42.714211, 33.671997, 39.430801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664684, 34.050983, 39.312828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485987, -0.317031, -0.814437,
		-0.865151, 0.042492, 0.499708,
		-0.123816, 0.947463, -0.294930,
		42.627541, 34.335224, 39.224350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015137, 33.710964, 39.083591>,  <42.714211, 33.671997, 39.430801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015137, 33.710964, 39.083591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187851, 34.054623, 38.973740>,  <42.291481, 34.260818, 38.907829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187851, 34.054623, 38.973740>,  <42.015137, 33.710964, 39.083591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187851, 34.054623, 38.973740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424743, -0.074930, -0.902208,
		-0.795710, 0.506208, 0.332564,
		0.431786, 0.859150, -0.274630,
		42.317387, 34.312366, 38.891350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561440, 34.100437, 38.714317>,  <42.015137, 33.710964, 39.083591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561440, 34.100437, 38.714317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888813, 34.300041, 38.600361>,  <42.085236, 34.419804, 38.531986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888813, 34.300041, 38.600361>,  <41.561440, 34.100437, 38.714317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888813, 34.300041, 38.600361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202311, -0.213802, -0.955698,
		-0.537810, 0.839810, -0.074028,
		0.818432, 0.499007, -0.284887,
		42.134342, 34.449745, 38.514896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327335, 34.443851, 38.189350>,  <41.561440, 34.100437, 38.714317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327335, 34.443851, 38.189350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.725800, 34.452888, 38.155499>,  <41.964878, 34.458309, 38.135185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.725800, 34.452888, 38.155499>,  <41.327335, 34.443851, 38.189350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725800, 34.452888, 38.155499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079610, -0.169539, -0.982303,
		-0.036542, 0.985265, -0.167089,
		0.996156, 0.022593, -0.084633,
		42.024647, 34.459667, 38.130108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454430, 34.856812, 37.593704>,  <41.327335, 34.443851, 38.189350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454430, 34.856812, 37.593704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797382, 34.652832, 37.621552>,  <42.003155, 34.530445, 37.638260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797382, 34.652832, 37.621552>,  <41.454430, 34.856812, 37.593704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797382, 34.652832, 37.621552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008765, -0.149716, -0.988690,
		0.514608, 0.847074, -0.132834,
		0.857381, -0.509952, 0.069620,
		42.054596, 34.499847, 37.642437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867611, 35.063702, 37.010872>,  <41.454430, 34.856812, 37.593704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867611, 35.063702, 37.010872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032974, 34.716469, 37.120800>,  <42.132195, 34.508129, 37.186756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032974, 34.716469, 37.120800>,  <41.867611, 35.063702, 37.010872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032974, 34.716469, 37.120800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014678, -0.295426, -0.955253,
		0.910426, 0.398947, -0.109391,
		0.413412, -0.868081, 0.274819,
		42.156998, 34.456043, 37.203247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518482, 34.914696, 36.517467>,  <41.867611, 35.063702, 37.010872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518482, 34.914696, 36.517467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.427555, 34.560078, 36.678642>,  <42.373001, 34.347305, 36.775349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.427555, 34.560078, 36.678642>,  <42.518482, 34.914696, 36.517467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427555, 34.560078, 36.678642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075767, -0.396414, -0.914940,
		0.970870, -0.238507, 0.022938,
		-0.227313, -0.886550, 0.402937,
		42.359360, 34.294113, 36.799522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903030, 34.369259, 36.122772>,  <42.518482, 34.914696, 36.517467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903030, 34.369259, 36.122772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573399, 34.216778, 36.290382>,  <42.375622, 34.125290, 36.390949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573399, 34.216778, 36.290382>,  <42.903030, 34.369259, 36.122772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573399, 34.216778, 36.290382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183215, -0.520589, -0.833918,
		0.536033, -0.763984, 0.359162,
		-0.824076, -0.381204, 0.419026,
		42.326176, 34.102417, 36.416092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579575, 34.162140, 35.869099>,  <42.903030, 34.369259, 36.122772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579575, 34.162140, 35.869099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969799, 34.107643, 35.800137>,  <44.203934, 34.074947, 35.758759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969799, 34.107643, 35.800137>,  <43.579575, 34.162140, 35.869099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969799, 34.107643, 35.800137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217290, 0.481341, 0.849174,
		-0.032706, -0.865881, 0.499180,
		0.975559, -0.136240, -0.172405,
		44.262466, 34.066772, 35.748417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895073, 33.999596, 36.549129>,  <43.579575, 34.162140, 35.869099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895073, 33.999596, 36.549129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215366, 34.068851, 36.319748>,  <44.407543, 34.110405, 36.182117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.215366, 34.068851, 36.319748>,  <43.895073, 33.999596, 36.549129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215366, 34.068851, 36.319748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484192, 0.376563, 0.789784,
		0.352678, -0.910069, 0.217698,
		0.800735, 0.173132, -0.573453,
		44.455585, 34.120792, 36.147713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421242, 33.833393, 36.973030>,  <43.895073, 33.999596, 36.549129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421242, 33.833393, 36.973030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563198, 34.072960, 36.685879>,  <44.648373, 34.216698, 36.513588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563198, 34.072960, 36.685879>,  <44.421242, 33.833393, 36.973030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563198, 34.072960, 36.685879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357418, 0.622618, 0.696131,
		0.863889, -0.503634, 0.006898,
		0.354891, 0.598915, -0.717881,
		44.669666, 34.252636, 36.470516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115234, 33.960655, 37.147087>,  <44.421242, 33.833393, 36.973030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115234, 33.960655, 37.147087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988026, 34.260689, 36.915142>,  <44.911701, 34.440708, 36.775974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988026, 34.260689, 36.915142>,  <45.115234, 33.960655, 37.147087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988026, 34.260689, 36.915142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332698, 0.661011, 0.672589,
		0.887792, 0.020978, -0.459766,
		-0.318020, 0.750083, -0.579861,
		44.892620, 34.485714, 36.741184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634941, 34.518051, 37.215176>,  <45.115234, 33.960655, 37.147087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634941, 34.518051, 37.215176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322002, 34.706032, 37.051678>,  <45.134239, 34.818821, 36.953579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322002, 34.706032, 37.051678>,  <45.634941, 34.518051, 37.215176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322002, 34.706032, 37.051678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202517, 0.812542, 0.546592,
		0.588999, 0.344846, -0.730863,
		-0.782347, 0.469955, -0.408749,
		45.087299, 34.847019, 36.929054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945290, 35.149025, 37.154331>,  <45.634941, 34.518051, 37.215176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945290, 35.149025, 37.154331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550346, 35.209118, 37.134129>,  <45.313381, 35.245174, 37.122005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550346, 35.209118, 37.134129>,  <45.945290, 35.149025, 37.154331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550346, 35.209118, 37.134129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113630, 0.893125, 0.435219,
		0.110492, 0.423979, -0.898907,
		-0.987360, 0.150231, -0.050507,
		45.254139, 35.254189, 37.118977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898594, 35.768990, 36.866238>,  <45.945290, 35.149025, 37.154331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898594, 35.768990, 36.866238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537380, 35.704071, 37.025326>,  <45.320652, 35.665119, 37.120777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537380, 35.704071, 37.025326>,  <45.898594, 35.768990, 36.866238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537380, 35.704071, 37.025326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125343, 0.786033, 0.605344,
		-0.410865, 0.596501, -0.689475,
		-0.903039, -0.162295, 0.397721,
		45.266468, 35.655384, 37.144642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569450, 36.312740, 36.773842>,  <45.898594, 35.768990, 36.866238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569450, 36.312740, 36.773842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385456, 36.157703, 37.093388>,  <45.275059, 36.064682, 37.285114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385456, 36.157703, 37.093388>,  <45.569450, 36.312740, 36.773842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385456, 36.157703, 37.093388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155827, 0.850500, 0.502363,
		-0.874148, 0.355564, -0.330818,
		-0.459982, -0.387589, 0.798869,
		45.247463, 36.041428, 37.333050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145668, 36.816025, 37.029324>,  <45.569450, 36.312740, 36.773842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145668, 36.816025, 37.029324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169262, 36.594727, 37.361694>,  <45.183418, 36.461948, 37.561115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.169262, 36.594727, 37.361694>,  <45.145668, 36.816025, 37.029324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169262, 36.594727, 37.361694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056061, 0.832900, 0.550577,
		-0.996683, 0.014106, 0.080145,
		0.058987, -0.553244, 0.830928,
		45.186958, 36.428753, 37.610973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748730, 37.053467, 37.519444>,  <45.145668, 36.816025, 37.029324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748730, 37.053467, 37.519444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933495, 36.814838, 37.781971>,  <45.044353, 36.671661, 37.939487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933495, 36.814838, 37.781971>,  <44.748730, 37.053467, 37.519444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933495, 36.814838, 37.781971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207155, 0.646954, 0.733851,
		-0.862397, -0.474931, 0.175251,
		0.461908, -0.596567, 0.656315,
		45.072067, 36.635868, 37.978867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359978, 37.164886, 38.089550>,  <44.748730, 37.053467, 37.519444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359978, 37.164886, 38.089550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717628, 37.032894, 38.210644>,  <44.932220, 36.953701, 38.283298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.717628, 37.032894, 38.210644>,  <44.359978, 37.164886, 38.089550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717628, 37.032894, 38.210644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013345, 0.695367, 0.718531,
		-0.447611, -0.638419, 0.626152,
		0.894129, -0.329978, 0.302734,
		44.985867, 36.933899, 38.301464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197365, 37.044762, 38.796352>,  <44.359978, 37.164886, 38.089550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197365, 37.044762, 38.796352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591286, 37.060257, 38.728619>,  <44.827637, 37.069553, 38.687981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591286, 37.060257, 38.728619>,  <44.197365, 37.044762, 38.796352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591286, 37.060257, 38.728619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093771, 0.702032, 0.705944,
		0.146220, -0.711091, 0.687728,
		0.984798, 0.038734, -0.169331,
		44.886726, 37.071877, 38.677818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585659, 36.920887, 39.431023>,  <44.197365, 37.044762, 38.796352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585659, 36.920887, 39.431023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829529, 37.148643, 39.210442>,  <44.975849, 37.285297, 39.078094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829529, 37.148643, 39.210442>,  <44.585659, 36.920887, 39.431023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829529, 37.148643, 39.210442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018665, 0.685193, 0.728122,
		0.792436, -0.454207, 0.407114,
		0.609670, 0.569391, -0.551449,
		45.012432, 37.319462, 39.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905609, 37.320297, 39.961544>,  <44.585659, 36.920887, 39.431023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905609, 37.320297, 39.961544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.981747, 37.531139, 39.630260>,  <45.027428, 37.657642, 39.431488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.981747, 37.531139, 39.630260>,  <44.905609, 37.320297, 39.961544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981747, 37.531139, 39.630260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080188, 0.832468, 0.548240,
		0.978438, -0.170764, 0.116185,
		0.190340, 0.527102, -0.828211,
		45.038849, 37.689270, 39.381798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436211, 37.640179, 40.231537>,  <44.905609, 37.320297, 39.961544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436211, 37.640179, 40.231537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.328110, 37.839142, 39.901798>,  <45.263248, 37.958519, 39.703953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.328110, 37.839142, 39.901798>,  <45.436211, 37.640179, 40.231537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328110, 37.839142, 39.901798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298209, 0.857348, 0.419555,
		0.915443, -0.132443, -0.380031,
		-0.270251, 0.497407, -0.824349,
		45.247036, 37.988365, 39.654495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966629, 38.020477, 40.107677>,  <45.436211, 37.640179, 40.231537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966629, 38.020477, 40.107677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657818, 38.199928, 39.927582>,  <45.472530, 38.307598, 39.819527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657818, 38.199928, 39.927582>,  <45.966629, 38.020477, 40.107677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657818, 38.199928, 39.927582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275706, 0.874636, 0.398746,
		0.572681, 0.183709, -0.798929,
		-0.772026, 0.448623, -0.450237,
		45.426208, 38.334515, 39.792511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170246, 38.556973, 39.855534>,  <45.966629, 38.020477, 40.107677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170246, 38.556973, 39.855534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785114, 38.658218, 39.893265>,  <45.554035, 38.718967, 39.915905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785114, 38.658218, 39.893265>,  <46.170246, 38.556973, 39.855534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785114, 38.658218, 39.893265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266711, 0.835488, 0.480442,
		0.042795, 0.487741, -0.871939,
		-0.962826, 0.253116, 0.094332,
		45.496265, 38.734154, 39.921566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129967, 39.284721, 39.874435>,  <46.170246, 38.556973, 39.855534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129967, 39.284721, 39.874435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.783016, 39.164089, 40.032780>,  <45.574844, 39.091709, 40.127789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.783016, 39.164089, 40.032780>,  <46.129967, 39.284721, 39.874435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783016, 39.164089, 40.032780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006406, 0.788633, 0.614831,
		-0.497612, 0.535826, -0.682109,
		-0.867376, -0.301578, 0.395865,
		45.522804, 39.073616, 40.151539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741863, 39.908718, 39.965042>,  <46.129967, 39.284721, 39.874435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741863, 39.908718, 39.965042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.552231, 39.666031, 40.220272>,  <45.438450, 39.520420, 40.373409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.552231, 39.666031, 40.220272>,  <45.741863, 39.908718, 39.965042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552231, 39.666031, 40.220272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194213, 0.778900, 0.596319,
		-0.858795, 0.158780, -0.487093,
		-0.474080, -0.606716, 0.638078,
		45.410007, 39.484016, 40.411697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076878, 40.315197, 40.070412>,  <45.741863, 39.908718, 39.965042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076878, 40.315197, 40.070412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145027, 40.074585, 40.382599>,  <45.185917, 39.930218, 40.569912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145027, 40.074585, 40.382599>,  <45.076878, 40.315197, 40.070412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145027, 40.074585, 40.382599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357809, 0.700224, 0.617786,
		-0.918122, -0.384512, -0.095934,
		0.170371, -0.601529, 0.780473,
		45.196136, 39.894127, 40.616741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.109253, 37.390240, 40.920818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003452, 37.004616, 40.910755>,  <37.939972, 36.773243, 40.904716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003452, 37.004616, 40.910755>,  <38.109253, 37.390240, 40.920818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003452, 37.004616, 40.910755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134134, -0.010942, -0.990903,
		0.955010, -0.265474, 0.132207,
		-0.264506, -0.964056, -0.025159,
		37.924099, 36.715401, 40.903206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537601, 36.962395, 40.556213>,  <38.109253, 37.390240, 40.920818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537601, 36.962395, 40.556213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165211, 36.817699, 40.536488>,  <37.941776, 36.730881, 40.524651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165211, 36.817699, 40.536488>,  <38.537601, 36.962395, 40.556213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165211, 36.817699, 40.536488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080550, -0.071775, -0.994163,
		0.356087, -0.929513, 0.095958,
		-0.930975, -0.361738, -0.049314,
		37.885918, 36.709179, 40.521694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619938, 36.422565, 40.130257>,  <38.537601, 36.962395, 40.556213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619938, 36.422565, 40.130257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235020, 36.530468, 40.116276>,  <38.004070, 36.595211, 40.107887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235020, 36.530468, 40.116276>,  <38.619938, 36.422565, 40.130257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235020, 36.530468, 40.116276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022581, -0.207286, -0.978020,
		-0.271076, -0.940352, 0.205561,
		-0.962293, 0.269760, -0.034956,
		37.946331, 36.611393, 40.105789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324749, 35.921726, 39.690666>,  <38.619938, 36.422565, 40.130257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324749, 35.921726, 39.690666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052151, 36.214111, 39.676434>,  <37.888592, 36.389542, 39.667892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052151, 36.214111, 39.676434>,  <38.324749, 35.921726, 39.690666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052151, 36.214111, 39.676434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029951, -0.076439, -0.996624,
		-0.731212, -0.678126, 0.073986,
		-0.681492, 0.730960, -0.035583,
		37.847702, 36.433399, 39.665760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805023, 35.696564, 39.246574>,  <38.324749, 35.921726, 39.690666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805023, 35.696564, 39.246574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780643, 36.095818, 39.248165>,  <37.766018, 36.335369, 39.249119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780643, 36.095818, 39.248165>,  <37.805023, 35.696564, 39.246574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780643, 36.095818, 39.248165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219170, -0.009491, -0.975641,
		-0.973781, -0.060332, 0.219340,
		-0.060944, 0.998133, 0.003981,
		37.762360, 36.395256, 39.249359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243496, 35.716030, 38.682056>,  <37.805023, 35.696564, 39.246574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243496, 35.716030, 38.682056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367680, 36.092514, 38.735344>,  <37.442188, 36.318405, 38.767315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367680, 36.092514, 38.735344>,  <37.243496, 35.716030, 38.682056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367680, 36.092514, 38.735344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028918, 0.149427, -0.988350,
		-0.950147, 0.302989, 0.073609,
		0.310458, 0.941206, 0.133216,
		37.460815, 36.374874, 38.775311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781742, 36.073524, 38.330196>,  <37.243496, 35.716030, 38.682056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781742, 36.073524, 38.330196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084106, 36.333214, 38.363903>,  <37.265526, 36.489029, 38.384125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084106, 36.333214, 38.363903>,  <36.781742, 36.073524, 38.330196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084106, 36.333214, 38.363903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100514, 0.242280, -0.964986,
		-0.646910, 0.720975, 0.248399,
		0.755913, 0.649226, 0.084265,
		37.310879, 36.527981, 38.389183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637363, 36.721397, 38.066387>,  <36.781742, 36.073524, 38.330196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637363, 36.721397, 38.066387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032742, 36.668419, 38.036919>,  <37.269970, 36.636631, 38.019238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032742, 36.668419, 38.036919>,  <36.637363, 36.721397, 38.066387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032742, 36.668419, 38.036919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070132, 0.031207, -0.997049,
		0.134354, 0.990699, 0.021558,
		0.988449, -0.132446, -0.073672,
		37.329277, 36.628685, 38.014816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871502, 37.166260, 37.531761>,  <36.637363, 36.721397, 38.066387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871502, 37.166260, 37.531761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152885, 36.885395, 37.575790>,  <37.321716, 36.716877, 37.602207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152885, 36.885395, 37.575790>,  <36.871502, 37.166260, 37.531761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152885, 36.885395, 37.575790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009853, -0.145225, -0.989350,
		0.710670, 0.697049, -0.095242,
		0.703457, -0.702163, 0.110075,
		37.363922, 36.674747, 37.608814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165829, 37.255009, 36.858051>,  <36.871502, 37.166260, 37.531761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165829, 37.255009, 36.858051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302559, 36.904991, 36.995132>,  <37.384598, 36.694981, 37.077381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302559, 36.904991, 36.995132>,  <37.165829, 37.255009, 36.858051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302559, 36.904991, 36.995132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080066, -0.336228, -0.938371,
		0.936345, 0.348202, -0.044871,
		0.341829, -0.875047, 0.342705,
		37.405109, 36.642479, 37.097942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794334, 37.136391, 36.506714>,  <37.165829, 37.255009, 36.858051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794334, 37.136391, 36.506714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657887, 36.783684, 36.637024>,  <37.576015, 36.572060, 36.715210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657887, 36.783684, 36.637024>,  <37.794334, 37.136391, 36.506714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657887, 36.783684, 36.637024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161207, -0.396301, -0.903857,
		0.926093, -0.255809, 0.277334,
		-0.341123, -0.881763, 0.325774,
		37.555550, 36.519154, 36.734756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180397, 36.632153, 36.072727>,  <37.794334, 37.136391, 36.506714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180397, 36.632153, 36.072727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856953, 36.452251, 36.224445>,  <37.662884, 36.344311, 36.315475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856953, 36.452251, 36.224445>,  <38.180397, 36.632153, 36.072727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856953, 36.452251, 36.224445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036578, -0.605008, -0.795379,
		0.587200, -0.657029, 0.472768,
		-0.808615, -0.449753, 0.379293,
		37.614368, 36.317326, 36.338234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331547, 35.967571, 36.352779>,  <38.180397, 36.632153, 36.072727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331547, 35.967571, 36.352779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978085, 36.037491, 36.179066>,  <37.766006, 36.079441, 36.074837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978085, 36.037491, 36.179066>,  <38.331547, 35.967571, 36.352779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978085, 36.037491, 36.179066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130797, -0.798545, -0.587553,
		-0.449500, -0.575996, 0.682773,
		-0.883652, 0.174800, -0.434285,
		37.712990, 36.089931, 36.048779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949978, 35.386364, 36.087475>,  <38.331547, 35.967571, 36.352779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949978, 35.386364, 36.087475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727356, 35.620518, 35.851658>,  <37.593781, 35.761009, 35.710167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727356, 35.620518, 35.851658>,  <37.949978, 35.386364, 36.087475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727356, 35.620518, 35.851658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149959, -0.768731, -0.621743,
		-0.817163, -0.257628, 0.515628,
		-0.556558, 0.585388, -0.589545,
		37.560387, 35.796135, 35.674793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854630, 35.156517, 35.430740>,  <37.949978, 35.386364, 36.087475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854630, 35.156517, 35.430740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955318, 34.803509, 35.271843>,  <38.015732, 34.591705, 35.176506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955318, 34.803509, 35.271843>,  <37.854630, 35.156517, 35.430740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955318, 34.803509, 35.271843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148917, -0.370251, 0.916918,
		-0.956274, -0.289964, 0.038221,
		0.251722, -0.882516, -0.397242,
		38.030834, 34.538754, 35.152672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410843, 34.604530, 35.711311>,  <37.854630, 35.156517, 35.430740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410843, 34.604530, 35.711311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781548, 34.475258, 35.634720>,  <38.003971, 34.397694, 35.588764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781548, 34.475258, 35.634720>,  <37.410843, 34.604530, 35.711311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781548, 34.475258, 35.634720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059073, -0.378000, 0.923919,
		-0.370932, -0.867579, -0.331233,
		0.926779, -0.323144, -0.191463,
		38.059578, 34.378304, 35.577278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356869, 33.973125, 35.915489>,  <37.410843, 34.604530, 35.711311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356869, 33.973125, 35.915489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753468, 34.024223, 35.905525>,  <37.991425, 34.054882, 35.899548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753468, 34.024223, 35.905525>,  <37.356869, 33.973125, 35.915489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753468, 34.024223, 35.905525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081818, -0.462929, 0.882611,
		0.101218, -0.877142, -0.469443,
		0.991494, 0.127745, -0.024909,
		38.050915, 34.062546, 35.898052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685692, 33.265423, 35.954697>,  <37.356869, 33.973125, 35.915489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685692, 33.265423, 35.954697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937656, 33.552261, 36.074020>,  <38.088837, 33.724365, 36.145615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937656, 33.552261, 36.074020>,  <37.685692, 33.265423, 35.954697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937656, 33.552261, 36.074020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360017, -0.609925, 0.705960,
		0.688182, -0.337299, -0.642366,
		0.629914, 0.717092, 0.298306,
		38.126633, 33.767387, 36.163513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290928, 32.986851, 36.090042>,  <37.685692, 33.265423, 35.954697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290928, 32.986851, 36.090042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356693, 33.315163, 36.308872>,  <38.396152, 33.512150, 36.440170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356693, 33.315163, 36.308872>,  <38.290928, 32.986851, 36.090042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356693, 33.315163, 36.308872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159262, -0.569431, 0.806464,
		0.973449, -0.045466, -0.224342,
		0.164414, 0.820781, 0.547072,
		38.406017, 33.561398, 36.472992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823887, 32.832272, 36.570400>,  <38.290928, 32.986851, 36.090042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823887, 32.832272, 36.570400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627041, 33.144547, 36.724468>,  <38.508934, 33.331909, 36.816910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627041, 33.144547, 36.724468>,  <38.823887, 32.832272, 36.570400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627041, 33.144547, 36.724468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204850, -0.326179, 0.922846,
		0.846087, 0.533045, 0.000593,
		-0.492112, 0.780686, 0.385170,
		38.479408, 33.378754, 36.840019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037693, 32.962536, 37.247757>,  <38.823887, 32.832272, 36.570400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037693, 32.962536, 37.247757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709797, 33.188232, 37.287060>,  <38.513058, 33.323650, 37.310642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709797, 33.188232, 37.287060>,  <39.037693, 32.962536, 37.247757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709797, 33.188232, 37.287060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090670, -0.041545, 0.995014,
		0.565507, 0.824566, -0.017103,
		-0.819744, 0.564238, 0.098257,
		38.463875, 33.357506, 37.316536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227497, 33.466022, 37.666176>,  <39.037693, 32.962536, 37.247757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227497, 33.466022, 37.666176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828346, 33.469772, 37.691978>,  <38.588856, 33.472023, 37.707462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828346, 33.469772, 37.691978>,  <39.227497, 33.466022, 37.666176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828346, 33.469772, 37.691978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061960, -0.171045, 0.983313,
		0.020254, 0.985219, 0.170100,
		-0.997873, 0.009377, 0.064508,
		38.528984, 33.472584, 37.711330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164356, 33.582500, 38.296589>,  <39.227497, 33.466022, 37.666176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164356, 33.582500, 38.296589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781910, 33.509563, 38.204857>,  <38.552441, 33.465801, 38.149818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781910, 33.509563, 38.204857>,  <39.164356, 33.582500, 38.296589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781910, 33.509563, 38.204857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219718, -0.071576, 0.972934,
		-0.193823, 0.980626, 0.028371,
		-0.956115, -0.182343, -0.229334,
		38.495075, 33.454861, 38.136055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669186, 34.061890, 38.681950>,  <39.164356, 33.582500, 38.296589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669186, 34.061890, 38.681950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529343, 33.695217, 38.604523>,  <38.445435, 33.475212, 38.558067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529343, 33.695217, 38.604523>,  <38.669186, 34.061890, 38.681950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529343, 33.695217, 38.604523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100038, -0.168903, 0.980543,
		-0.931539, 0.362174, -0.032652,
		-0.349612, -0.916680, -0.193571,
		38.424458, 33.420212, 38.546452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133068, 34.021881, 39.156227>,  <38.669186, 34.061890, 38.681950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133068, 34.021881, 39.156227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209831, 33.648254, 39.035767>,  <38.255890, 33.424080, 38.963490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209831, 33.648254, 39.035767>,  <38.133068, 34.021881, 39.156227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209831, 33.648254, 39.035767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138548, -0.329567, 0.933912,
		-0.971585, -0.137497, -0.192658,
		0.191904, -0.934067, -0.301152,
		38.267403, 33.368034, 38.945419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496082, 33.614048, 39.233337>,  <38.133068, 34.021881, 39.156227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496082, 33.614048, 39.233337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817089, 33.375393, 39.233540>,  <38.009693, 33.232201, 39.233662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817089, 33.375393, 39.233540>,  <37.496082, 33.614048, 39.233337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817089, 33.375393, 39.233540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276571, -0.371253, 0.886386,
		-0.528662, -0.711475, -0.462947,
		0.802512, -0.596636, 0.000506,
		38.057842, 33.196404, 39.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261471, 32.959148, 39.588425>,  <37.496082, 33.614048, 39.233337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261471, 32.959148, 39.588425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659409, 32.918644, 39.586147>,  <37.898170, 32.894341, 39.584782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659409, 32.918644, 39.586147>,  <37.261471, 32.959148, 39.588425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659409, 32.918644, 39.586147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040219, -0.445406, 0.894425,
		-0.093102, -0.889585, -0.447182,
		0.994844, -0.101258, -0.005690,
		37.957863, 32.888268, 39.584442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330379, 32.289410, 39.847065>,  <37.261471, 32.959148, 39.588425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330379, 32.289410, 39.847065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681858, 32.472294, 39.901974>,  <37.892746, 32.582024, 39.934921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681858, 32.472294, 39.901974>,  <37.330379, 32.289410, 39.847065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681858, 32.472294, 39.901974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029850, -0.339624, 0.940087,
		0.476443, -0.821956, -0.312075,
		0.878699, 0.457214, 0.137276,
		37.945469, 32.609459, 39.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453838, 31.657158, 39.551895>,  <37.330379, 32.289410, 39.847065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453838, 31.657158, 39.551895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164803, 31.381172, 39.534904>,  <36.991379, 31.215580, 39.524712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164803, 31.381172, 39.534904>,  <37.453838, 31.657158, 39.551895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164803, 31.381172, 39.534904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200473, 0.267968, -0.942339,
		0.661565, -0.672413, -0.331952,
		-0.722594, -0.689966, -0.042478,
		36.948025, 31.174183, 39.522160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507511, 31.320160, 38.881557>,  <37.453838, 31.657158, 39.551895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507511, 31.320160, 38.881557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125668, 31.245127, 38.974102>,  <36.896561, 31.200108, 39.029629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125668, 31.245127, 38.974102>,  <37.507511, 31.320160, 38.881557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125668, 31.245127, 38.974102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282438, 0.323493, -0.903095,
		0.094560, -0.927451, -0.361791,
		-0.954614, -0.187580, 0.231358,
		36.839283, 31.188852, 39.043510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240952, 31.115076, 38.291931>,  <37.507511, 31.320160, 38.881557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240952, 31.115076, 38.291931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911522, 31.203753, 38.500767>,  <36.713863, 31.256958, 38.626068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911522, 31.203753, 38.500767>,  <37.240952, 31.115076, 38.291931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911522, 31.203753, 38.500767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434887, 0.344128, -0.832135,
		-0.364143, -0.912376, -0.187004,
		-0.823573, 0.221690, 0.522093,
		36.664452, 31.270260, 38.657394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618946, 31.002502, 37.795410>,  <37.240952, 31.115076, 38.291931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618946, 31.002502, 37.795410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448322, 31.223173, 38.082100>,  <36.345947, 31.355576, 38.254116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448322, 31.223173, 38.082100>,  <36.618946, 31.002502, 37.795410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448322, 31.223173, 38.082100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562644, 0.458591, -0.687842,
		-0.708150, -0.696670, 0.114778,
		-0.426563, 0.551675, 0.716728,
		36.320354, 31.388676, 38.297119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929714, 31.051329, 37.537025>,  <36.618946, 31.002502, 37.795410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929714, 31.051329, 37.537025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997559, 31.356794, 37.786201>,  <36.038265, 31.540073, 37.935707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997559, 31.356794, 37.786201>,  <35.929714, 31.051329, 37.537025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997559, 31.356794, 37.786201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612531, 0.576863, -0.540403,
		-0.772036, -0.289913, 0.565607,
		0.169608, 0.763662, 0.622939,
		36.048443, 31.585894, 37.973083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306530, 31.393347, 37.631294>,  <35.929714, 31.051329, 37.537025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306530, 31.393347, 37.631294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560627, 31.681299, 37.743179>,  <35.713085, 31.854071, 37.810310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560627, 31.681299, 37.743179>,  <35.306530, 31.393347, 37.631294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560627, 31.681299, 37.743179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434947, 0.632741, -0.640671,
		-0.638192, 0.285321, 0.715054,
		0.635241, 0.719882, 0.279711,
		35.751198, 31.897264, 37.827091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837475, 31.845400, 37.735218>,  <35.306530, 31.393347, 37.631294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837475, 31.845400, 37.735218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190159, 32.029560, 37.694004>,  <35.401772, 32.140057, 37.669273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190159, 32.029560, 37.694004>,  <34.837475, 31.845400, 37.735218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190159, 32.029560, 37.694004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442844, 0.732324, -0.517291,
		-0.162703, 0.501731, 0.849584,
		0.881712, 0.460399, -0.103037,
		35.454674, 32.167679, 37.663094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714882, 32.562923, 37.844688>,  <34.837475, 31.845400, 37.735218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714882, 32.562923, 37.844688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061142, 32.576447, 37.644886>,  <35.268898, 32.584560, 37.525005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061142, 32.576447, 37.644886>,  <34.714882, 32.562923, 37.844688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061142, 32.576447, 37.644886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355589, 0.743855, -0.565895,
		0.352432, 0.667486, 0.655938,
		0.865649, 0.033805, -0.499508,
		35.320835, 32.586590, 37.495033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893219, 33.235283, 37.801159>,  <34.714882, 32.562923, 37.844688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893219, 33.235283, 37.801159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097740, 33.053547, 37.509365>,  <35.220451, 32.944504, 37.334290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097740, 33.053547, 37.509365>,  <34.893219, 33.235283, 37.801159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097740, 33.053547, 37.509365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386959, 0.636198, -0.667468,
		0.767355, 0.623557, 0.149477,
		0.511301, -0.454344, -0.729481,
		35.251129, 32.917244, 37.290520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125656, 33.757023, 37.432442>,  <34.893219, 33.235283, 37.801159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125656, 33.757023, 37.432442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167976, 33.452553, 37.176498>,  <35.193371, 33.269871, 37.022934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167976, 33.452553, 37.176498>,  <35.125656, 33.757023, 37.432442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167976, 33.452553, 37.176498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186029, 0.616953, -0.764697,
		0.976831, 0.199940, -0.076325,
		0.105805, -0.761179, -0.639854,
		35.199718, 33.224197, 36.984543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752087, 33.849476, 36.853516>,  <35.125656, 33.757023, 37.432442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752087, 33.849476, 36.853516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452972, 33.611702, 36.735214>,  <35.273502, 33.469040, 36.664234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452972, 33.611702, 36.735214>,  <35.752087, 33.849476, 36.853516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452972, 33.611702, 36.735214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130939, 0.568733, -0.812033,
		0.650903, -0.568499, -0.503123,
		-0.747783, -0.594433, -0.295751,
		35.228638, 33.433372, 36.646488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587978, 34.127781, 36.105282>,  <35.752087, 33.849476, 36.853516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587978, 34.127781, 36.105282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314545, 33.837482, 36.136272>,  <35.150482, 33.663303, 36.154865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314545, 33.837482, 36.136272>,  <35.587978, 34.127781, 36.105282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314545, 33.837482, 36.136272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463018, 0.349150, -0.814683,
		0.564200, -0.592782, -0.574708,
		-0.683588, -0.725744, 0.077478,
		35.109467, 33.619759, 36.159515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.861507, 29.757576, 42.468399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478806, 29.645102, 42.498207>,  <38.249184, 29.577618, 42.516090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478806, 29.645102, 42.498207>,  <38.861507, 29.757576, 42.468399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478806, 29.645102, 42.498207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126348, 0.170944, -0.977146,
		0.262022, -0.944305, -0.199079,
		-0.956755, -0.281187, 0.074520,
		38.191780, 29.560747, 42.520565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692116, 29.208273, 41.849503>,  <38.861507, 29.757576, 42.468399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692116, 29.208273, 41.849503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353230, 29.375364, 41.980789>,  <38.149899, 29.475618, 42.059563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353230, 29.375364, 41.980789>,  <38.692116, 29.208273, 41.849503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353230, 29.375364, 41.980789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225944, 0.275834, -0.934272,
		-0.480805, -0.865690, -0.139308,
		-0.847216, 0.417727, 0.328220,
		38.099064, 29.500683, 42.079254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135281, 28.926579, 41.398777>,  <38.692116, 29.208273, 41.849503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135281, 28.926579, 41.398777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978207, 29.260067, 41.554062>,  <37.883965, 29.460159, 41.647232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978207, 29.260067, 41.554062>,  <38.135281, 28.926579, 41.398777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978207, 29.260067, 41.554062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422331, 0.211504, -0.881421,
		-0.816968, -0.510073, 0.269053,
		-0.392683, 0.833722, 0.388211,
		37.860401, 29.510183, 41.670525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505329, 28.933191, 41.129642>,  <38.135281, 28.926579, 41.398777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505329, 28.933191, 41.129642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529129, 29.303724, 41.278435>,  <37.543411, 29.526043, 41.367710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529129, 29.303724, 41.278435>,  <37.505329, 28.933191, 41.129642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529129, 29.303724, 41.278435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387928, 0.364811, -0.846419,
		-0.919767, -0.093937, 0.381058,
		0.059504, 0.926331, 0.371982,
		37.546982, 29.581623, 41.390030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784184, 29.187647, 41.023590>,  <37.505329, 28.933191, 41.129642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784184, 29.187647, 41.023590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044487, 29.490839, 41.041370>,  <37.200668, 29.672754, 41.052040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044487, 29.490839, 41.041370>,  <36.784184, 29.187647, 41.023590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044487, 29.490839, 41.041370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380019, 0.375830, -0.845185,
		-0.657341, 0.533119, 0.532622,
		0.650759, 0.757982, 0.044453,
		37.239716, 29.718233, 41.054707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321423, 29.846174, 40.941216>,  <36.784184, 29.187647, 41.023590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321423, 29.846174, 40.941216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695667, 29.948956, 40.844376>,  <36.920212, 30.010624, 40.786274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695667, 29.948956, 40.844376>,  <36.321423, 29.846174, 40.941216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695667, 29.948956, 40.844376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348525, 0.562990, -0.749381,
		-0.056258, 0.785505, 0.616293,
		0.935610, 0.256953, -0.242095,
		36.976349, 30.026041, 40.771748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135323, 30.470570, 40.743591>,  <36.321423, 29.846174, 40.941216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135323, 30.470570, 40.743591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512264, 30.402603, 40.628284>,  <36.738430, 30.361824, 40.559101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512264, 30.402603, 40.628284>,  <36.135323, 30.470570, 40.743591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512264, 30.402603, 40.628284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106971, 0.663308, -0.740662,
		0.317060, 0.728802, 0.606895,
		0.942354, -0.169914, -0.288269,
		36.794971, 30.351629, 40.541805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523849, 31.072397, 40.749798>,  <36.135323, 30.470570, 40.743591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523849, 31.072397, 40.749798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690586, 30.833179, 40.475986>,  <36.790630, 30.689650, 40.311699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690586, 30.833179, 40.475986>,  <36.523849, 31.072397, 40.749798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690586, 30.833179, 40.475986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180545, 0.683601, -0.707173,
		0.890866, 0.418371, 0.176983,
		0.416846, -0.598043, -0.684532,
		36.815639, 30.653767, 40.270626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971603, 31.576092, 40.432400>,  <36.523849, 31.072397, 40.749798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971603, 31.576092, 40.432400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900620, 31.263775, 40.192776>,  <36.858028, 31.076385, 40.049000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900620, 31.263775, 40.192776>,  <36.971603, 31.576092, 40.432400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900620, 31.263775, 40.192776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347181, 0.619256, -0.704264,
		0.920854, 0.083002, -0.380970,
		-0.177462, -0.780790, -0.599061,
		36.847382, 31.029537, 40.013058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754864, 31.743505, 40.358475>,  <36.971603, 31.576092, 40.432400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754864, 31.743505, 40.358475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915676, 32.108635, 40.387108>,  <38.012165, 32.327713, 40.404289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915676, 32.108635, 40.387108>,  <37.754864, 31.743505, 40.358475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915676, 32.108635, 40.387108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334165, -0.219067, 0.916703,
		0.852468, -0.344625, -0.393106,
		0.402035, 0.912822, 0.071586,
		38.036285, 32.382481, 40.408585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283951, 31.668240, 40.738914>,  <37.754864, 31.743505, 40.358475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283951, 31.668240, 40.738914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237438, 32.065136, 40.756508>,  <38.209530, 32.303276, 40.767063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237438, 32.065136, 40.756508>,  <38.283951, 31.668240, 40.738914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237438, 32.065136, 40.756508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074406, -0.035453, 0.996598,
		0.990426, 0.119154, -0.069706,
		-0.116278, 0.992243, 0.043979,
		38.202557, 32.362808, 40.769703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818157, 31.944239, 41.126831>,  <38.283951, 31.668240, 40.738914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818157, 31.944239, 41.126831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549339, 32.240410, 41.122437>,  <38.388046, 32.418114, 41.119801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549339, 32.240410, 41.122437>,  <38.818157, 31.944239, 41.126831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549339, 32.240410, 41.122437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126940, 0.129813, 0.983379,
		0.729546, 0.659483, -0.181231,
		-0.672048, 0.740426, -0.010990,
		38.347725, 32.462536, 41.119141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154137, 32.494553, 41.446865>,  <38.818157, 31.944239, 41.126831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154137, 32.494553, 41.446865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757969, 32.527855, 41.490932>,  <38.520267, 32.547836, 41.517372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.757969, 32.527855, 41.490932>,  <39.154137, 32.494553, 41.446865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757969, 32.527855, 41.490932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123666, 0.179826, 0.975894,
		0.061434, 0.980169, -0.188399,
		-0.990420, 0.083251, 0.110166,
		38.460842, 32.552830, 41.523983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060146, 33.167072, 41.738110>,  <39.154137, 32.494553, 41.446865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060146, 33.167072, 41.738110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722275, 32.974934, 41.832584>,  <38.519554, 32.859650, 41.889271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722275, 32.974934, 41.832584>,  <39.060146, 33.167072, 41.738110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722275, 32.974934, 41.832584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221267, 0.088448, 0.971194,
		-0.487404, 0.872605, 0.031576,
		-0.844676, -0.480351, 0.236189,
		38.468872, 32.830830, 41.903442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682419, 33.562679, 42.265156>,  <39.060146, 33.167072, 41.738110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682419, 33.562679, 42.265156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572029, 33.178944, 42.288853>,  <38.505795, 32.948704, 42.303070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572029, 33.178944, 42.288853>,  <38.682419, 33.562679, 42.265156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572029, 33.178944, 42.288853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198302, 0.003485, 0.980135,
		-0.940486, 0.282241, 0.189277,
		-0.275975, -0.959337, 0.059247,
		38.489235, 32.891144, 42.306625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378792, 33.553596, 42.962677>,  <38.682419, 33.562679, 42.265156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378792, 33.553596, 42.962677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451073, 33.172283, 42.865852>,  <38.494442, 32.943493, 42.807758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451073, 33.172283, 42.865852>,  <38.378792, 33.553596, 42.962677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451073, 33.172283, 42.865852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225397, -0.199428, 0.953638,
		-0.957363, -0.226882, 0.178832,
		0.180700, -0.953285, -0.242063,
		38.505283, 32.886299, 42.793232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979687, 33.278057, 43.419704>,  <38.378792, 33.553596, 42.962677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979687, 33.278057, 43.419704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235519, 32.994671, 43.300362>,  <38.389019, 32.824638, 43.228756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235519, 32.994671, 43.300362>,  <37.979687, 33.278057, 43.419704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235519, 32.994671, 43.300362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223020, -0.200420, 0.953989,
		-0.735663, -0.676691, 0.029817,
		0.639580, -0.708464, -0.298357,
		38.427395, 32.782131, 43.210854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849319, 32.710270, 43.870979>,  <37.979687, 33.278057, 43.419704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849319, 32.710270, 43.870979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214104, 32.635891, 43.724697>,  <38.432976, 32.591263, 43.636929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214104, 32.635891, 43.724697>,  <37.849319, 32.710270, 43.870979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214104, 32.635891, 43.724697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327016, -0.208822, 0.921658,
		-0.247756, -0.960111, -0.129627,
		0.911964, -0.185956, -0.365708,
		38.487694, 32.580105, 43.614986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034168, 32.065441, 44.113316>,  <37.849319, 32.710270, 43.870979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034168, 32.065441, 44.113316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371532, 32.262199, 44.026875>,  <38.573952, 32.380253, 43.975010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371532, 32.262199, 44.026875>,  <38.034168, 32.065441, 44.113316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371532, 32.262199, 44.026875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376724, -0.254652, 0.890636,
		0.383069, -0.832580, -0.400085,
		0.843408, 0.491897, -0.216103,
		38.624554, 32.409767, 43.962044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613197, 31.556700, 44.348328>,  <38.034168, 32.065441, 44.113316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613197, 31.556700, 44.348328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774403, 31.922033, 44.325024>,  <38.871128, 32.141235, 44.311039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.774403, 31.922033, 44.325024>,  <38.613197, 31.556700, 44.348328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774403, 31.922033, 44.325024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249122, -0.048225, 0.967270,
		0.880633, -0.404341, -0.246968,
		0.403017, 0.913336, -0.058262,
		38.895309, 32.196033, 44.307545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316761, 31.535204, 44.615993>,  <38.613197, 31.556700, 44.348328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316761, 31.535204, 44.615993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173141, 31.907671, 44.641338>,  <39.086971, 32.131149, 44.656544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173141, 31.907671, 44.641338>,  <39.316761, 31.535204, 44.615993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173141, 31.907671, 44.641338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242581, 0.027552, 0.969740,
		0.901244, 0.363552, -0.235775,
		-0.359047, 0.931166, 0.063360,
		39.065426, 32.187019, 44.660347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815315, 31.847183, 45.059795>,  <39.316761, 31.535204, 44.615993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815315, 31.847183, 45.059795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498119, 32.090733, 45.051399>,  <39.307804, 32.236862, 45.046364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498119, 32.090733, 45.051399>,  <39.815315, 31.847183, 45.059795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498119, 32.090733, 45.051399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124389, 0.195532, 0.972777,
		0.596404, 0.768790, -0.230792,
		-0.792988, 0.608876, -0.020987,
		39.260223, 32.273396, 45.045105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022957, 32.379814, 45.482059>,  <39.815315, 31.847183, 45.059795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022957, 32.379814, 45.482059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632469, 32.452385, 45.434605>,  <39.398174, 32.495926, 45.406132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632469, 32.452385, 45.434605>,  <40.022957, 32.379814, 45.482059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632469, 32.452385, 45.434605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067244, 0.266855, 0.961388,
		0.206080, 0.946506, -0.248310,
		-0.976222, 0.181426, -0.118641,
		39.339603, 32.506813, 45.399014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.270470, 32.140545, 45.444595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589279, 31.909651, 45.373543>,  <33.780563, 31.771114, 45.330910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589279, 31.909651, 45.373543>,  <33.270470, 32.140545, 45.444595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589279, 31.909651, 45.373543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109799, 0.150731, -0.982458,
		0.593883, 0.802547, 0.056756,
		0.797024, -0.577234, -0.177635,
		33.828384, 31.736481, 45.320251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577702, 32.506550, 44.963604>,  <33.270470, 32.140545, 45.444595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577702, 32.506550, 44.963604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769135, 32.157681, 44.923084>,  <33.883995, 31.948359, 44.898773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769135, 32.157681, 44.923084>,  <33.577702, 32.506550, 44.963604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769135, 32.157681, 44.923084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144540, 0.192058, -0.970681,
		0.866062, 0.449912, 0.217981,
		0.478586, -0.872177, -0.101304,
		33.912712, 31.896027, 44.892693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245411, 32.661350, 44.640762>,  <33.577702, 32.506550, 44.963604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245411, 32.661350, 44.640762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116692, 32.289577, 44.568535>,  <34.039459, 32.066513, 44.525200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116692, 32.289577, 44.568535>,  <34.245411, 32.661350, 44.640762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116692, 32.289577, 44.568535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160294, 0.241440, -0.957085,
		0.933140, -0.279047, -0.226677,
		-0.321801, -0.929429, -0.180568,
		34.020153, 32.010750, 44.514366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695091, 32.374596, 44.081318>,  <34.245411, 32.661350, 44.640762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695091, 32.374596, 44.081318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.376602, 32.132629, 44.077351>,  <34.185509, 31.987450, 44.074970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.376602, 32.132629, 44.077351>,  <34.695091, 32.374596, 44.081318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376602, 32.132629, 44.077351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121130, 0.175451, -0.977008,
		0.592749, -0.776718, -0.212972,
		-0.796226, -0.604918, -0.009915,
		34.137733, 31.951155, 44.074375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774834, 31.881470, 43.462955>,  <34.695091, 32.374596, 44.081318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774834, 31.881470, 43.462955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390366, 31.914680, 43.568218>,  <34.159683, 31.934607, 43.631378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390366, 31.914680, 43.568218>,  <34.774834, 31.881470, 43.462955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390366, 31.914680, 43.568218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240704, 0.214083, -0.946694,
		-0.134939, -0.973281, -0.185786,
		-0.961173, 0.083026, 0.263161,
		34.102013, 31.939589, 43.647167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368668, 31.730164, 42.857201>,  <34.774834, 31.881470, 43.462955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368668, 31.730164, 42.857201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091400, 31.924959, 43.069752>,  <33.925041, 32.041836, 43.197281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091400, 31.924959, 43.069752>,  <34.368668, 31.730164, 42.857201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091400, 31.924959, 43.069752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442556, 0.294343, -0.847057,
		-0.568915, -0.822316, 0.011491,
		-0.693167, 0.486989, 0.531378,
		33.883450, 32.071056, 43.229164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766838, 31.537958, 42.529369>,  <34.368668, 31.730164, 42.857201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766838, 31.537958, 42.529369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687752, 31.880804, 42.719639>,  <33.640301, 32.086510, 42.833801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687752, 31.880804, 42.719639>,  <33.766838, 31.537958, 42.529369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687752, 31.880804, 42.719639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327083, 0.399756, -0.856278,
		-0.924080, -0.324886, 0.201308,
		-0.197719, 0.857114, 0.475672,
		33.628437, 32.137939, 42.862339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087151, 31.750477, 42.272385>,  <33.766838, 31.537958, 42.529369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087151, 31.750477, 42.272385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251892, 32.077984, 42.432381>,  <33.350739, 32.274487, 42.528381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251892, 32.077984, 42.432381>,  <33.087151, 31.750477, 42.272385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251892, 32.077984, 42.432381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407205, 0.558052, -0.723023,
		-0.815205, 0.134901, 0.563243,
		0.411855, 0.818767, 0.399995,
		33.375450, 32.323612, 42.552380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586033, 32.147011, 42.249630>,  <33.087151, 31.750477, 42.272385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586033, 32.147011, 42.249630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915230, 32.372852, 42.274609>,  <33.112747, 32.508358, 42.289597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915230, 32.372852, 42.274609>,  <32.586033, 32.147011, 42.249630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915230, 32.372852, 42.274609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381380, 0.630666, -0.675877,
		-0.420986, 0.532429, 0.734364,
		0.822995, 0.564606, 0.062444,
		33.162128, 32.542233, 42.293343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315304, 32.803982, 42.113789>,  <32.586033, 32.147011, 42.249630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315304, 32.803982, 42.113789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.712013, 32.839146, 42.076572>,  <32.950039, 32.860245, 42.054241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.712013, 32.839146, 42.076572>,  <32.315304, 32.803982, 42.113789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712013, 32.839146, 42.076572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127958, 0.662024, -0.738479,
		-0.003325, 0.744309, 0.667827,
		0.991774, 0.087910, -0.093039,
		33.009544, 32.865517, 42.048660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540741, 33.488316, 41.988647>,  <32.315304, 32.803982, 42.113789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540741, 33.488316, 41.988647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834442, 33.272106, 41.824356>,  <33.010662, 33.142380, 41.725780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.834442, 33.272106, 41.824356>,  <32.540741, 33.488316, 41.988647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834442, 33.272106, 41.824356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096650, 0.515624, -0.851346,
		0.671958, 0.664802, 0.326358,
		0.734255, -0.540527, -0.410731,
		33.054718, 33.109947, 41.701138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868267, 33.976704, 41.409050>,  <32.540741, 33.488316, 41.988647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868267, 33.976704, 41.409050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.002872, 33.611584, 41.316479>,  <33.083637, 33.392513, 41.260937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.002872, 33.611584, 41.316479>,  <32.868267, 33.976704, 41.409050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002872, 33.611584, 41.316479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006267, 0.247929, -0.968758,
		0.941658, 0.324549, 0.089151,
		0.336513, -0.912797, -0.231431,
		33.103825, 33.337746, 41.247051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400291, 34.089329, 41.005352>,  <32.868267, 33.976704, 41.409050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400291, 34.089329, 41.005352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275703, 33.719131, 40.919144>,  <33.200951, 33.497013, 40.867416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275703, 33.719131, 40.919144>,  <33.400291, 34.089329, 41.005352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275703, 33.719131, 40.919144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076833, 0.201536, -0.976463,
		0.947143, -0.320703, 0.008335,
		-0.311475, -0.925491, -0.215524,
		33.182262, 33.441483, 40.854485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709652, 33.990982, 40.453972>,  <33.400291, 34.089329, 41.005352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709652, 33.990982, 40.453972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455090, 33.683777, 40.425274>,  <33.302353, 33.499454, 40.408054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455090, 33.683777, 40.425274>,  <33.709652, 33.990982, 40.453972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455090, 33.683777, 40.425274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019725, 0.109179, -0.993826,
		0.771101, -0.631063, -0.084631,
		-0.636407, -0.768010, -0.071740,
		33.264168, 33.453373, 40.403751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457642, 34.121262, 40.363400>,  <33.709652, 33.990982, 40.453972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457642, 34.121262, 40.363400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487083, 34.520081, 40.354607>,  <34.504749, 34.759373, 40.349331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487083, 34.520081, 40.354607>,  <34.457642, 34.121262, 40.363400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487083, 34.520081, 40.354607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291795, -0.000453, 0.956481,
		0.953645, -0.076816, -0.290966,
		0.073605, 0.997045, -0.021982,
		34.509167, 34.819195, 40.348011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147705, 34.331768, 40.600327>,  <34.457642, 34.121262, 40.363400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147705, 34.331768, 40.600327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904480, 34.641350, 40.671043>,  <34.758545, 34.827099, 40.713474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904480, 34.641350, 40.671043>,  <35.147705, 34.331768, 40.600327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904480, 34.641350, 40.671043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206850, -0.060550, 0.976497,
		0.766468, 0.630342, -0.123274,
		-0.608063, 0.773953, 0.176796,
		34.722061, 34.873535, 40.724083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528355, 34.969410, 40.934319>,  <35.147705, 34.331768, 40.600327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528355, 34.969410, 40.934319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142467, 34.986298, 41.038273>,  <34.910934, 34.996429, 41.100647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142467, 34.986298, 41.038273>,  <35.528355, 34.969410, 40.934319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142467, 34.986298, 41.038273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263240, 0.134944, 0.955246,
		0.005257, 0.989954, -0.141295,
		-0.964716, 0.042216, 0.259886,
		34.853054, 34.998962, 41.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519894, 35.426598, 41.444901>,  <35.528355, 34.969410, 40.934319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519894, 35.426598, 41.444901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170937, 35.240253, 41.504101>,  <34.961563, 35.128448, 41.539619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170937, 35.240253, 41.504101>,  <35.519894, 35.426598, 41.444901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170937, 35.240253, 41.504101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169002, -0.003362, 0.985610,
		-0.458657, 0.884853, 0.081664,
		-0.872395, -0.465858, 0.147999,
		34.909218, 35.100494, 41.548500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232052, 35.783577, 42.000343>,  <35.519894, 35.426598, 41.444901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232052, 35.783577, 42.000343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028587, 35.439445, 41.987080>,  <34.906509, 35.232967, 41.979122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028587, 35.439445, 41.987080>,  <35.232052, 35.783577, 42.000343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028587, 35.439445, 41.987080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033914, -0.058502, 0.997711,
		-0.860300, 0.506371, 0.058935,
		-0.508660, -0.860329, -0.033156,
		34.875988, 35.181347, 41.977135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645550, 35.823483, 42.428253>,  <35.232052, 35.783577, 42.000343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645550, 35.823483, 42.428253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732456, 35.433563, 42.408024>,  <34.784599, 35.199612, 42.395885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732456, 35.433563, 42.408024>,  <34.645550, 35.823483, 42.428253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732456, 35.433563, 42.408024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083729, -0.070232, 0.994010,
		-0.972514, -0.211734, -0.096878,
		0.217270, -0.974800, -0.050573,
		34.797638, 35.141125, 42.392853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211548, 35.575596, 42.935810>,  <34.645550, 35.823483, 42.428253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211548, 35.575596, 42.935810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498123, 35.299156, 42.897663>,  <34.670067, 35.133293, 42.874775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498123, 35.299156, 42.897663>,  <34.211548, 35.575596, 42.935810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498123, 35.299156, 42.897663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035058, -0.100855, 0.994283,
		-0.696769, -0.715685, -0.048028,
		0.716438, -0.691102, -0.095364,
		34.713055, 35.091824, 42.869053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028793, 35.003441, 43.375256>,  <34.211548, 35.575596, 42.935810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028793, 35.003441, 43.375256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.421238, 34.946594, 43.322758>,  <34.656704, 34.912487, 43.291260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.421238, 34.946594, 43.322758>,  <34.028793, 35.003441, 43.375256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421238, 34.946594, 43.322758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099578, -0.210661, 0.972474,
		-0.165853, -0.967174, -0.192530,
		0.981110, -0.142116, -0.131248,
		34.715572, 34.903957, 43.283382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109634, 34.335644, 43.696033>,  <34.028793, 35.003441, 43.375256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109634, 34.335644, 43.696033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467297, 34.513733, 43.676991>,  <34.681892, 34.620586, 43.665565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467297, 34.513733, 43.676991>,  <34.109634, 34.335644, 43.696033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467297, 34.513733, 43.676991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213145, -0.329728, 0.919700,
		0.393771, -0.832502, -0.389724,
		0.894155, 0.445219, -0.047607,
		34.735542, 34.647297, 43.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483757, 33.914383, 44.018375>,  <34.109634, 34.335644, 43.696033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483757, 33.914383, 44.018375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693378, 34.252247, 44.062046>,  <34.819153, 34.454964, 44.088249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693378, 34.252247, 44.062046>,  <34.483757, 33.914383, 44.018375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693378, 34.252247, 44.062046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237017, -0.267760, 0.933878,
		0.818039, -0.463528, -0.340519,
		0.524056, 0.844657, 0.109174,
		34.850594, 34.505646, 44.094799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993069, 33.638561, 44.467525>,  <34.483757, 33.914383, 44.018375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993069, 33.638561, 44.467525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028973, 34.036762, 44.479660>,  <35.050514, 34.275684, 44.486938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028973, 34.036762, 44.479660>,  <34.993069, 33.638561, 44.467525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028973, 34.036762, 44.479660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052094, -0.035109, 0.998025,
		0.994600, -0.088006, -0.055011,
		0.089764, 0.995501, 0.030334,
		35.055901, 34.335411, 44.488762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675953, 33.817543, 44.779770>,  <34.993069, 33.638561, 44.467525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675953, 33.817543, 44.779770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425549, 34.124123, 44.837269>,  <35.275307, 34.308071, 44.871769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.425549, 34.124123, 44.837269>,  <35.675953, 33.817543, 44.779770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425549, 34.124123, 44.837269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089516, -0.112493, 0.989612,
		0.774658, 0.632378, 0.001812,
		-0.626013, 0.766448, 0.143751,
		35.237743, 34.354057, 44.880394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962605, 34.143360, 45.342529>,  <35.675953, 33.817543, 44.779770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962605, 34.143360, 45.342529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582329, 34.259914, 45.300034>,  <35.354164, 34.329845, 45.274536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582329, 34.259914, 45.300034>,  <35.962605, 34.143360, 45.342529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582329, 34.259914, 45.300034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124366, -0.044347, 0.991245,
		0.284120, 0.955578, 0.078398,
		-0.950689, 0.291382, -0.106241,
		35.297123, 34.347328, 45.268162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842537, 34.732464, 45.812908>,  <35.962605, 34.143360, 45.342529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842537, 34.732464, 45.812908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503735, 34.529224, 45.750404>,  <35.300453, 34.407280, 45.712902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503735, 34.529224, 45.750404>,  <35.842537, 34.732464, 45.812908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503735, 34.529224, 45.750404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157794, -0.040391, 0.986646,
		-0.507621, 0.860353, -0.045963,
		-0.847008, -0.508095, -0.156262,
		35.249634, 34.376797, 45.703526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666843, 35.486023, 45.973492>,  <35.842537, 34.732464, 45.812908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666843, 35.486023, 45.973492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029522, 35.494747, 46.141979>,  <36.247128, 35.499981, 46.243073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029522, 35.494747, 46.141979>,  <35.666843, 35.486023, 45.973492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029522, 35.494747, 46.141979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364196, 0.463268, -0.807926,
		-0.212758, 0.885950, 0.412101,
		0.906695, 0.021807, 0.421223,
		36.301529, 35.501289, 46.268345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981514, 36.214867, 45.894543>,  <35.666843, 35.486023, 45.973492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981514, 36.214867, 45.894543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252232, 35.920502, 45.902287>,  <36.414661, 35.743881, 45.906933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252232, 35.920502, 45.902287>,  <35.981514, 36.214867, 45.894543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252232, 35.920502, 45.902287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413460, 0.358221, -0.837095,
		0.609095, 0.574549, 0.546714,
		0.676797, -0.735915, 0.019363,
		36.455269, 35.699726, 45.908096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590408, 36.502903, 45.744156>,  <35.981514, 36.214867, 45.894543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590408, 36.502903, 45.744156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.666237, 36.122414, 45.646805>,  <36.711735, 35.894119, 45.588394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.666237, 36.122414, 45.646805>,  <36.590408, 36.502903, 45.744156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666237, 36.122414, 45.646805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484667, 0.306224, -0.819344,
		0.853910, 0.037364, 0.519078,
		0.189568, -0.951226, -0.243378,
		36.723106, 35.837048, 45.573792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281315, 36.479843, 45.566986>,  <36.590408, 36.502903, 45.744156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281315, 36.479843, 45.566986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165287, 36.133816, 45.403267>,  <37.095673, 35.926201, 45.305035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.165287, 36.133816, 45.403267>,  <37.281315, 36.479843, 45.566986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165287, 36.133816, 45.403267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411139, 0.273563, -0.869557,
		0.864191, -0.420507, 0.276311,
		-0.290066, -0.865065, -0.409297,
		37.078266, 35.874298, 45.280479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857944, 36.265499, 45.216557>,  <37.281315, 36.479843, 45.566986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857944, 36.265499, 45.216557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557312, 36.060352, 45.050621>,  <37.376934, 35.937263, 44.951061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557312, 36.060352, 45.050621>,  <37.857944, 36.265499, 45.216557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557312, 36.060352, 45.050621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367184, 0.197169, -0.909011,
		0.547999, -0.835516, 0.040130,
		-0.751580, -0.512872, -0.414836,
		37.331837, 35.906490, 44.926170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240608, 35.865528, 44.758072>,  <37.857944, 36.265499, 45.216557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240608, 35.865528, 44.758072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864315, 35.814106, 44.632530>,  <37.638538, 35.783253, 44.557205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.864315, 35.814106, 44.632530>,  <38.240608, 35.865528, 44.758072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864315, 35.814106, 44.632530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305561, 0.080328, -0.948778,
		0.147183, -0.988443, -0.036285,
		-0.940728, -0.128557, -0.313853,
		37.582096, 35.775539, 44.538376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320744, 35.426735, 44.141953>,  <38.240608, 35.865528, 44.758072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320744, 35.426735, 44.141953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.953175, 35.583488, 44.124016>,  <37.732635, 35.677540, 44.113255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.953175, 35.583488, 44.124016>,  <38.320744, 35.426735, 44.141953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953175, 35.583488, 44.124016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155531, 0.255507, -0.954215,
		-0.362485, -0.883822, -0.295741,
		-0.918921, 0.391885, -0.044844,
		37.677498, 35.701054, 44.110561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812271, 35.014545, 43.608032>,  <38.320744, 35.426735, 44.141953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812271, 35.014545, 43.608032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675224, 35.387096, 43.657280>,  <37.592999, 35.610626, 43.686829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675224, 35.387096, 43.657280>,  <37.812271, 35.014545, 43.608032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675224, 35.387096, 43.657280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118018, 0.172682, -0.977882,
		-0.932034, -0.320504, -0.169082,
		-0.342612, 0.931374, 0.123120,
		37.572441, 35.666508, 43.694218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326859, 35.161533, 42.995701>,  <37.812271, 35.014545, 43.608032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326859, 35.161533, 42.995701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.379013, 35.533516, 43.133205>,  <37.410305, 35.756706, 43.215710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.379013, 35.533516, 43.133205>,  <37.326859, 35.161533, 42.995701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379013, 35.533516, 43.133205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063434, 0.353839, -0.933153,
		-0.989432, 0.099866, 0.105128,
		0.130389, 0.929960, 0.343764,
		37.418129, 35.812504, 43.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732239, 35.442005, 42.925804>,  <37.326859, 35.161533, 42.995701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732239, 35.442005, 42.925804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.990025, 35.747345, 42.943531>,  <37.144695, 35.930550, 42.954166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.990025, 35.747345, 42.943531>,  <36.732239, 35.442005, 42.925804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990025, 35.747345, 42.943531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328650, 0.328863, -0.885347,
		-0.690403, 0.556010, 0.462815,
		0.644464, 0.763350, 0.044316,
		37.183365, 35.976349, 42.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431671, 36.124664, 42.737015>,  <36.732239, 35.442005, 42.925804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431671, 36.124664, 42.737015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824123, 36.161541, 42.669025>,  <37.059593, 36.183666, 42.628231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824123, 36.161541, 42.669025>,  <36.431671, 36.124664, 42.737015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824123, 36.161541, 42.669025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191754, 0.350508, -0.916720,
		-0.024939, 0.932011, 0.361571,
		0.981126, 0.092195, -0.169976,
		37.118462, 36.189201, 42.618034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379940, 36.649010, 42.345665>,  <36.431671, 36.124664, 42.737015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379940, 36.649010, 42.345665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765438, 36.554951, 42.295216>,  <36.996735, 36.498516, 42.264946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765438, 36.554951, 42.295216>,  <36.379940, 36.649010, 42.345665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765438, 36.554951, 42.295216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038523, 0.345109, -0.937772,
		0.264044, 0.908628, 0.323538,
		0.963741, -0.235149, -0.126127,
		37.054562, 36.484406, 42.257378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643810, 37.244518, 41.963673>,  <36.379940, 36.649010, 42.345665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643810, 37.244518, 41.963673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.889385, 36.939816, 41.880913>,  <37.036732, 36.756992, 41.831257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.889385, 36.939816, 41.880913>,  <36.643810, 37.244518, 41.963673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889385, 36.939816, 41.880913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030113, 0.239320, -0.970474,
		0.788779, 0.602042, 0.123989,
		0.613939, -0.761756, -0.206900,
		37.073566, 36.711288, 41.818844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121334, 37.535980, 41.449619>,  <36.643810, 37.244518, 41.963673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121334, 37.535980, 41.449619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128742, 37.137398, 41.416779>,  <37.133186, 36.898251, 41.397072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128742, 37.137398, 41.416779>,  <37.121334, 37.535980, 41.449619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128742, 37.137398, 41.416779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035262, 0.081418, -0.996056,
		0.999206, 0.021343, -0.033629,
		0.018520, -0.996451, -0.082106,
		37.134296, 36.838463, 41.392147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.675468, 34.383045, 26.076180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375193, 34.642361, 26.127064>,  <25.195026, 34.797951, 26.157595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375193, 34.642361, 26.127064>,  <25.675468, 34.383045, 26.076180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375193, 34.642361, 26.127064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549727, 0.506159, 0.664533,
		0.366423, 0.568789, -0.736352,
		-0.750690, 0.648292, 0.127211,
		25.149986, 34.836849, 26.165226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081070, 34.971848, 26.206123>,  <25.675468, 34.383045, 26.076180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081070, 34.971848, 26.206123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.711447, 35.068283, 26.324778>,  <25.489674, 35.126144, 26.395971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.711447, 35.068283, 26.324778>,  <26.081070, 34.971848, 26.206123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711447, 35.068283, 26.324778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381719, 0.541054, 0.749367,
		0.020166, 0.805690, -0.591993,
		-0.924058, 0.241087, 0.296636,
		25.434229, 35.140610, 26.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068743, 35.835644, 26.388845>,  <26.081070, 34.971848, 26.206123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068743, 35.835644, 26.388845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770462, 35.632999, 26.561947>,  <25.591494, 35.511414, 26.665808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770462, 35.632999, 26.561947>,  <26.068743, 35.835644, 26.388845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770462, 35.632999, 26.561947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128012, 0.528468, 0.839247,
		-0.653867, 0.681225, -0.329227,
		-0.745701, -0.506611, 0.432753,
		25.546751, 35.481014, 26.691772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808218, 36.303677, 26.762924>,  <26.068743, 35.835644, 26.388845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808218, 36.303677, 26.762924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.654732, 35.974941, 26.931372>,  <25.562639, 35.777699, 27.032440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.654732, 35.974941, 26.931372>,  <25.808218, 36.303677, 26.762924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654732, 35.974941, 26.931372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023687, 0.447118, 0.894162,
		-0.923147, 0.353080, -0.152100,
		-0.383717, -0.821840, 0.421119,
		25.539618, 35.728390, 27.057707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295645, 36.509331, 27.270500>,  <25.808218, 36.303677, 26.762924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295645, 36.509331, 27.270500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.428928, 36.154091, 27.397150>,  <25.508898, 35.940948, 27.473141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.428928, 36.154091, 27.397150>,  <25.295645, 36.509331, 27.270500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428928, 36.154091, 27.397150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094475, 0.365576, 0.925975,
		-0.938108, -0.278629, 0.205716,
		0.333209, -0.888099, 0.316626,
		25.528891, 35.887661, 27.492138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961237, 36.384102, 27.920080>,  <25.295645, 36.509331, 27.270500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961237, 36.384102, 27.920080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.289690, 36.156048, 27.930552>,  <25.486763, 36.019215, 27.936834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.289690, 36.156048, 27.930552>,  <24.961237, 36.384102, 27.920080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289690, 36.156048, 27.930552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031841, 0.091559, 0.995291,
		-0.569846, -0.816434, 0.093336,
		0.821135, -0.570134, 0.026178,
		25.536030, 35.985008, 27.938406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804401, 35.942322, 28.432539>,  <24.961237, 36.384102, 27.920080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804401, 35.942322, 28.432539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.198648, 35.889359, 28.390530>,  <25.435196, 35.857582, 28.365324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.198648, 35.889359, 28.390530>,  <24.804401, 35.942322, 28.432539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198648, 35.889359, 28.390530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104868, -0.008181, 0.994452,
		-0.132536, -0.991161, 0.005823,
		0.985615, -0.132411, -0.105025,
		25.494333, 35.849636, 28.359022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927942, 35.361275, 28.816578>,  <24.804401, 35.942322, 28.432539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927942, 35.361275, 28.816578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.270557, 35.561016, 28.764442>,  <25.476128, 35.680859, 28.733160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.270557, 35.561016, 28.764442>,  <24.927942, 35.361275, 28.816578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270557, 35.561016, 28.764442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174683, -0.042872, 0.983691,
		0.485620, -0.865338, -0.123950,
		0.856539, 0.499352, -0.130341,
		25.527519, 35.710823, 28.725340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437733, 34.894035, 29.036577>,  <24.927942, 35.361275, 28.816578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437733, 34.894035, 29.036577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605524, 35.255726, 29.068609>,  <25.706198, 35.472740, 29.087830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605524, 35.255726, 29.068609>,  <25.437733, 34.894035, 29.036577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605524, 35.255726, 29.068609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008594, -0.092170, 0.995706,
		0.907726, -0.416987, -0.046434,
		0.419476, 0.904227, 0.080081,
		25.731367, 35.526993, 29.092634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776041, 34.799309, 29.598625>,  <25.437733, 34.894035, 29.036577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776041, 34.799309, 29.598625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795057, 35.197937, 29.571524>,  <25.806467, 35.437115, 29.555264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795057, 35.197937, 29.571524>,  <25.776041, 34.799309, 29.598625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795057, 35.197937, 29.571524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168866, 0.058835, 0.983881,
		0.984492, -0.058217, -0.165489,
		0.047542, 0.996569, -0.067754,
		25.809320, 35.496906, 29.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360363, 34.962769, 29.987310>,  <25.776041, 34.799309, 29.598625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360363, 34.962769, 29.987310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.137693, 35.294907, 29.977200>,  <26.004091, 35.494190, 29.971132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.137693, 35.294907, 29.977200>,  <26.360363, 34.962769, 29.987310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137693, 35.294907, 29.977200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002444, 0.032065, 0.999483,
		0.830728, 0.556323, -0.019880,
		-0.556673, 0.830347, -0.025278,
		25.970692, 35.544010, 29.969616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633606, 35.380428, 30.520887>,  <26.360363, 34.962769, 29.987310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633606, 35.380428, 30.520887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.269918, 35.544216, 30.490795>,  <26.051706, 35.642490, 30.472740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.269918, 35.544216, 30.490795>,  <26.633606, 35.380428, 30.520887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269918, 35.544216, 30.490795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030777, 0.246310, 0.968702,
		0.415184, 0.878445, -0.236552,
		-0.909217, 0.409470, -0.075228,
		25.997154, 35.667057, 30.468227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740139, 35.883793, 30.924580>,  <26.633606, 35.380428, 30.520887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740139, 35.883793, 30.924580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341476, 35.885910, 30.891962>,  <26.102280, 35.887180, 30.872393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341476, 35.885910, 30.891962>,  <26.740139, 35.883793, 30.924580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341476, 35.885910, 30.891962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073457, 0.379070, 0.922448,
		0.035793, 0.925353, -0.377413,
		-0.996656, 0.005294, -0.081542,
		26.042480, 35.887497, 30.867500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503700, 36.459351, 31.400843>,  <26.740139, 35.883793, 30.924580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503700, 36.459351, 31.400843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185425, 36.219765, 31.364807>,  <25.994459, 36.076012, 31.343185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185425, 36.219765, 31.364807>,  <26.503700, 36.459351, 31.400843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185425, 36.219765, 31.364807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252640, 0.193014, 0.948113,
		-0.550502, 0.777162, -0.304903,
		-0.795689, -0.598969, -0.090087,
		25.946718, 36.040073, 31.337780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902592, 36.784904, 31.648811>,  <26.503700, 36.459351, 31.400843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902592, 36.784904, 31.648811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795315, 36.399624, 31.655994>,  <25.730949, 36.168457, 31.660305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795315, 36.399624, 31.655994>,  <25.902592, 36.784904, 31.648811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795315, 36.399624, 31.655994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230483, 0.082254, 0.969594,
		-0.935388, 0.255898, -0.244061,
		-0.268192, -0.963198, 0.017960,
		25.714857, 36.110664, 31.661383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258619, 36.731831, 31.922522>,  <25.902592, 36.784904, 31.648811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258619, 36.731831, 31.922522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437660, 36.379566, 31.984604>,  <25.545086, 36.168209, 32.021854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437660, 36.379566, 31.984604>,  <25.258619, 36.731831, 31.922522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437660, 36.379566, 31.984604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424037, -0.056221, 0.903898,
		-0.787301, -0.470401, -0.398597,
		0.447604, -0.880661, 0.155205,
		25.571941, 36.115368, 32.031166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870932, 36.427116, 32.364380>,  <25.258619, 36.731831, 31.922522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870932, 36.427116, 32.364380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.188046, 36.183697, 32.377968>,  <25.378315, 36.037643, 32.386120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.188046, 36.183697, 32.377968>,  <24.870932, 36.427116, 32.364380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188046, 36.183697, 32.377968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233166, -0.251324, 0.939399,
		-0.563137, -0.752662, -0.341140,
		0.792787, -0.608552, 0.033965,
		25.425882, 36.001133, 32.388157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633612, 35.841705, 32.490768>,  <24.870932, 36.427116, 32.364380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633612, 35.841705, 32.490768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.006802, 35.796917, 32.627598>,  <25.230717, 35.770042, 32.709698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.006802, 35.796917, 32.627598>,  <24.633612, 35.841705, 32.490768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006802, 35.796917, 32.627598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359448, -0.240405, 0.901667,
		-0.018724, -0.964193, -0.264540,
		0.932977, -0.111971, 0.342076,
		25.286695, 35.763325, 32.730221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671576, 35.253586, 33.031227>,  <24.633612, 35.841705, 32.490768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671576, 35.253586, 33.031227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.012266, 35.455643, 33.086922>,  <25.216681, 35.576878, 33.120338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.012266, 35.455643, 33.086922>,  <24.671576, 35.253586, 33.031227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012266, 35.455643, 33.086922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007366, -0.254157, 0.967135,
		0.523933, -0.824761, -0.212752,
		0.851727, 0.505147, 0.139236,
		25.267784, 35.607185, 33.128693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230082, 34.797592, 33.371025>,  <24.671576, 35.253586, 33.031227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230082, 34.797592, 33.371025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.276415, 35.190002, 33.433224>,  <25.304214, 35.425449, 33.470543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.276415, 35.190002, 33.433224>,  <25.230082, 34.797592, 33.371025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276415, 35.190002, 33.433224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015223, -0.158284, 0.987276,
		0.993152, -0.111994, -0.033269,
		0.115835, 0.981022, 0.155495,
		25.311165, 35.484310, 33.479874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784304, 34.823223, 33.886501>,  <25.230082, 34.797592, 33.371025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784304, 34.823223, 33.886501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.586891, 35.170200, 33.911686>,  <25.468443, 35.378387, 33.926796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.586891, 35.170200, 33.911686>,  <25.784304, 34.823223, 33.886501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586891, 35.170200, 33.911686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207344, -0.187658, 0.960101,
		0.844651, 0.460784, 0.272475,
		-0.493532, 0.867446, 0.062965,
		25.438831, 35.430435, 33.930576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936810, 34.887352, 34.514881>,  <25.784304, 34.823223, 33.886501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936810, 34.887352, 34.514881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639174, 35.131157, 34.405468>,  <25.460592, 35.277439, 34.339821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.639174, 35.131157, 34.405468>,  <25.936810, 34.887352, 34.514881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639174, 35.131157, 34.405468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256843, 0.116980, 0.959347,
		0.616735, 0.784096, 0.069507,
		-0.744090, 0.609516, -0.273535,
		25.415947, 35.314011, 34.323406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612150, 34.400867, 34.502132>,  <25.936810, 34.887352, 34.514881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612150, 34.400867, 34.502132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941082, 34.179287, 34.450108>,  <27.138441, 34.046337, 34.418892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941082, 34.179287, 34.450108>,  <26.612150, 34.400867, 34.502132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941082, 34.179287, 34.450108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082213, 0.110510, -0.990469,
		0.563044, 0.825183, 0.045333,
		0.822327, -0.553951, -0.130063,
		27.187780, 34.013103, 34.411087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945103, 34.655106, 33.962257>,  <26.612150, 34.400867, 34.502132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945103, 34.655106, 33.962257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132898, 34.302872, 33.988056>,  <27.245575, 34.091534, 34.003536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132898, 34.302872, 33.988056>,  <26.945103, 34.655106, 33.962257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132898, 34.302872, 33.988056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134388, -0.143464, -0.980488,
		0.872651, 0.451660, -0.185694,
		0.469488, -0.880580, 0.064496,
		27.273745, 34.038696, 34.007404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388222, 34.695290, 33.381332>,  <26.945103, 34.655106, 33.962257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388222, 34.695290, 33.381332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343946, 34.306652, 33.465000>,  <27.317381, 34.073471, 33.515202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.343946, 34.306652, 33.465000>,  <27.388222, 34.695290, 33.381332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343946, 34.306652, 33.465000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169518, -0.188919, -0.967250,
		0.979291, -0.142522, -0.143791,
		-0.110689, -0.971595, 0.209167,
		27.310740, 34.015175, 33.527752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672932, 34.353592, 32.786327>,  <27.388222, 34.695290, 33.381332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672932, 34.353592, 32.786327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473982, 34.067833, 32.983204>,  <27.354612, 33.896378, 33.101330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473982, 34.067833, 32.983204>,  <27.672932, 34.353592, 32.786327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473982, 34.067833, 32.983204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271021, -0.410997, -0.870419,
		0.824116, -0.566319, 0.010802,
		-0.497374, -0.714399, 0.492193,
		27.324770, 33.853512, 33.130863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877625, 33.672115, 32.569344>,  <27.672932, 34.353592, 32.786327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877625, 33.672115, 32.569344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506983, 33.646149, 32.717503>,  <27.284597, 33.630569, 32.806396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506983, 33.646149, 32.717503>,  <27.877625, 33.672115, 32.569344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506983, 33.646149, 32.717503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280193, -0.537741, -0.795190,
		0.250798, -0.840607, 0.480083,
		-0.926602, -0.064916, 0.370396,
		27.229002, 33.626675, 32.828621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720547, 33.001732, 32.437881>,  <27.877625, 33.672115, 32.569344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720547, 33.001732, 32.437881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365286, 33.178391, 32.488686>,  <27.152130, 33.284386, 32.519169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365286, 33.178391, 32.488686>,  <27.720547, 33.001732, 32.437881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365286, 33.178391, 32.488686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369460, -0.521858, -0.768872,
		-0.273290, -0.729801, 0.626661,
		-0.888151, 0.441651, 0.127014,
		27.098841, 33.310886, 32.526791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313311, 32.532894, 32.364330>,  <27.720547, 33.001732, 32.437881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313311, 32.532894, 32.364330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.045126, 32.828762, 32.341080>,  <26.884216, 33.006283, 32.327129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.045126, 32.828762, 32.341080>,  <27.313311, 32.532894, 32.364330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045126, 32.828762, 32.341080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338633, -0.374768, -0.863062,
		-0.660160, -0.558966, 0.501742,
		-0.670460, 0.739666, -0.058123,
		26.843988, 33.050663, 32.323643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639854, 32.169582, 32.154766>,  <27.313311, 32.532894, 32.364330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639854, 32.169582, 32.154766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611517, 32.554127, 32.048359>,  <26.594515, 32.784855, 31.984516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611517, 32.554127, 32.048359>,  <26.639854, 32.169582, 32.154766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611517, 32.554127, 32.048359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429849, -0.270075, -0.861562,
		-0.900117, 0.053311, 0.432373,
		-0.070843, 0.961363, -0.266015,
		26.590263, 32.842537, 31.968554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919611, 32.205276, 31.974024>,  <26.639854, 32.169582, 32.154766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919611, 32.205276, 31.974024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115160, 32.518917, 31.821081>,  <26.232489, 32.707100, 31.729315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115160, 32.518917, 31.821081>,  <25.919611, 32.205276, 31.974024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115160, 32.518917, 31.821081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408468, -0.181538, -0.894538,
		-0.770816, 0.593495, 0.231530,
		0.488872, 0.784097, -0.382356,
		26.261822, 32.754147, 31.706375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501711, 32.355919, 31.485954>,  <25.919611, 32.205276, 31.974024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501711, 32.355919, 31.485954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818411, 32.578918, 31.386089>,  <26.008430, 32.712719, 31.326170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.818411, 32.578918, 31.386089>,  <25.501711, 32.355919, 31.485954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818411, 32.578918, 31.386089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312583, 0.018619, -0.949708,
		-0.524810, 0.829971, 0.189006,
		0.791749, 0.557496, -0.249663,
		26.055935, 32.746166, 31.311190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233904, 32.980694, 31.087450>,  <25.501711, 32.355919, 31.485954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233904, 32.980694, 31.087450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.620577, 32.923706, 31.002384>,  <25.852581, 32.889511, 30.951344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.620577, 32.923706, 31.002384>,  <25.233904, 32.980694, 31.087450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620577, 32.923706, 31.002384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217739, -0.020827, -0.975785,
		0.134595, 0.989579, -0.051155,
		0.966682, -0.142474, -0.212667,
		25.910582, 32.880962, 30.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314127, 33.402325, 30.617216>,  <25.233904, 32.980694, 31.087450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314127, 33.402325, 30.617216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632763, 33.166344, 30.564455>,  <25.823944, 33.024754, 30.532799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632763, 33.166344, 30.564455>,  <25.314127, 33.402325, 30.617216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632763, 33.166344, 30.564455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189729, -0.036814, -0.981146,
		0.573977, 0.806596, -0.141257,
		0.796589, -0.589956, -0.131904,
		25.871740, 32.989357, 30.524883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700380, 33.704269, 30.055664>,  <25.314127, 33.402325, 30.617216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700380, 33.704269, 30.055664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.775515, 33.311642, 30.069723>,  <25.820595, 33.076065, 30.078159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.775515, 33.311642, 30.069723>,  <25.700380, 33.704269, 30.055664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775515, 33.311642, 30.069723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179599, -0.069507, -0.981281,
		0.965641, 0.178005, -0.189345,
		0.187834, -0.981572, 0.035149,
		25.831865, 33.017170, 30.080269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944687, 33.584400, 29.411951>,  <25.700380, 33.704269, 30.055664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944687, 33.584400, 29.411951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896921, 33.203648, 29.524843>,  <25.868261, 32.975197, 29.592579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896921, 33.203648, 29.524843>,  <25.944687, 33.584400, 29.411951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896921, 33.203648, 29.524843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219999, -0.251830, -0.942434,
		0.968164, -0.174630, -0.179342,
		-0.119413, -0.951886, 0.282231,
		25.861097, 32.918083, 29.609512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380133, 33.158039, 28.881168>,  <25.944687, 33.584400, 29.411951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380133, 33.158039, 28.881168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119516, 32.903015, 29.045614>,  <25.963146, 32.750000, 29.144281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119516, 32.903015, 29.045614>,  <26.380133, 33.158039, 28.881168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119516, 32.903015, 29.045614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294300, -0.287061, -0.911583,
		0.699202, -0.714923, -0.000601,
		-0.651539, -0.637558, 0.411116,
		25.924055, 32.711746, 29.168949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417671, 32.618263, 28.485996>,  <26.380133, 33.158039, 28.881168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417671, 32.618263, 28.485996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.078865, 32.525421, 28.677282>,  <25.875582, 32.469715, 28.792053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.078865, 32.525421, 28.677282>,  <26.417671, 32.618263, 28.485996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078865, 32.525421, 28.677282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437656, -0.206092, -0.875205,
		0.301696, -0.950607, 0.072981,
		-0.847016, -0.232105, 0.478216,
		25.824760, 32.455791, 28.820747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248480, 31.928720, 28.369959>,  <26.417671, 32.618263, 28.485996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248480, 31.928720, 28.369959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.920574, 32.150593, 28.426975>,  <25.723831, 32.283718, 28.461185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.920574, 32.150593, 28.426975>,  <26.248480, 31.928720, 28.369959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920574, 32.150593, 28.426975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382436, -0.344919, -0.857189,
		-0.426302, -0.757204, 0.494882,
		-0.819761, 0.554683, 0.142542,
		25.674646, 32.316998, 28.469738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800028, 31.501589, 28.116627>,  <26.248480, 31.928720, 28.369959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800028, 31.501589, 28.116627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617563, 31.856895, 28.138157>,  <25.508085, 32.070080, 28.151075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617563, 31.856895, 28.138157>,  <25.800028, 31.501589, 28.116627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617563, 31.856895, 28.138157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482447, -0.196025, -0.853709,
		-0.747771, -0.415397, 0.517961,
		-0.456161, 0.888268, 0.053826,
		25.480715, 32.123375, 28.154305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047163, 31.351126, 27.888475>,  <25.800028, 31.501589, 28.116627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047163, 31.351126, 27.888475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.099051, 31.746792, 27.860979>,  <25.130184, 31.984192, 27.844482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.099051, 31.746792, 27.860979>,  <25.047163, 31.351126, 27.888475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099051, 31.746792, 27.860979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633210, 0.029293, -0.773426,
		-0.763032, 0.143856, 0.630149,
		0.129721, 0.989165, -0.068739,
		25.137966, 32.043541, 27.840357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560484, 31.719910, 28.281029>,  <25.047163, 31.351126, 27.888475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560484, 31.719910, 28.281029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.590961, 31.652561, 27.887918>,  <24.609249, 31.612152, 27.652052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.590961, 31.652561, 27.887918>,  <24.560484, 31.719910, 28.281029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590961, 31.652561, 27.887918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300321, 0.935993, -0.183640,
		0.950790, 0.309141, 0.020752,
		0.076195, -0.168371, -0.982774,
		24.613819, 31.602051, 27.593086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.944408, 32.985687, 45.910549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608002, 32.770634, 45.886433>,  <39.406158, 32.641602, 45.871964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608002, 32.770634, 45.886433>,  <39.944408, 32.985687, 45.910549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608002, 32.770634, 45.886433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253510, 0.293196, 0.921829,
		-0.477930, 0.790561, -0.382879,
		-0.841021, -0.537633, -0.060288,
		39.355694, 32.609344, 45.868347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525566, 33.380142, 46.247650>,  <39.944408, 32.985687, 45.910549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525566, 33.380142, 46.247650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346424, 33.022545, 46.253284>,  <39.238941, 32.807987, 46.256664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346424, 33.022545, 46.253284>,  <39.525566, 33.380142, 46.247650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346424, 33.022545, 46.253284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249923, 0.140299, 0.958047,
		-0.858468, 0.425543, -0.286264,
		-0.447852, -0.893997, 0.014089,
		39.212067, 32.754345, 46.257511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087059, 33.489407, 46.832623>,  <39.525566, 33.380142, 46.247650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087059, 33.489407, 46.832623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130920, 33.094616, 46.785542>,  <39.157238, 32.857742, 46.757294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.130920, 33.094616, 46.785542>,  <39.087059, 33.489407, 46.832623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130920, 33.094616, 46.785542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112056, -0.129939, 0.985169,
		-0.987633, -0.094836, -0.124844,
		0.109652, -0.986976, -0.117706,
		39.163815, 32.798523, 46.750229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586910, 33.241581, 47.153996>,  <39.087059, 33.489407, 46.832623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586910, 33.241581, 47.153996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823906, 32.920025, 47.133156>,  <38.966103, 32.727089, 47.120651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823906, 32.920025, 47.133156>,  <38.586910, 33.241581, 47.153996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823906, 32.920025, 47.133156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233744, -0.233440, 0.943859,
		-0.770923, -0.547048, -0.326215,
		0.592488, -0.803893, -0.052095,
		39.001652, 32.678856, 47.117527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198193, 32.687893, 47.502632>,  <38.586910, 33.241581, 47.153996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198193, 32.687893, 47.502632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578621, 32.565067, 47.488857>,  <38.806877, 32.491371, 47.480591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578621, 32.565067, 47.488857>,  <38.198193, 32.687893, 47.502632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578621, 32.565067, 47.488857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041007, -0.235910, 0.970909,
		-0.306255, -0.921986, -0.236957,
		0.951066, -0.307063, -0.034441,
		38.863941, 32.472950, 47.478527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210110, 32.094696, 47.775658>,  <38.198193, 32.687893, 47.502632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210110, 32.094696, 47.775658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592354, 32.205559, 47.815628>,  <38.821701, 32.272076, 47.839611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592354, 32.205559, 47.815628>,  <38.210110, 32.094696, 47.775658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592354, 32.205559, 47.815628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030647, -0.430830, 0.901913,
		0.293021, -0.858819, -0.420201,
		0.955614, 0.277158, 0.099922,
		38.879040, 32.288708, 47.845604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503666, 31.581028, 48.022133>,  <38.210110, 32.094696, 47.775658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503666, 31.581028, 48.022133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770641, 31.860039, 48.126431>,  <38.930828, 32.027443, 48.189011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770641, 31.860039, 48.126431>,  <38.503666, 31.581028, 48.022133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770641, 31.860039, 48.126431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027305, -0.326988, 0.944634,
		0.744165, -0.637603, -0.199198,
		0.667437, 0.697525, 0.260743,
		38.970871, 32.069298, 48.204655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965527, 31.334452, 48.446362>,  <38.503666, 31.581028, 48.022133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965527, 31.334452, 48.446362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.066097, 31.709730, 48.541500>,  <39.126438, 31.934896, 48.598583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.066097, 31.709730, 48.541500>,  <38.965527, 31.334452, 48.446362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066097, 31.709730, 48.541500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161240, -0.282911, 0.945496,
		0.954352, -0.199369, -0.222406,
		0.251424, 0.938196, 0.237851,
		39.141525, 31.991190, 48.612854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584286, 31.354771, 48.812733>,  <38.965527, 31.334452, 48.446362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584286, 31.354771, 48.812733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433838, 31.707230, 48.927357>,  <39.343571, 31.918705, 48.996132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433838, 31.707230, 48.927357>,  <39.584286, 31.354771, 48.812733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433838, 31.707230, 48.927357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282432, -0.185530, 0.941175,
		0.882478, 0.434927, -0.179082,
		-0.376118, 0.881145, 0.286563,
		39.321003, 31.971573, 49.013325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040234, 31.684315, 49.333469>,  <39.584286, 31.354771, 48.812733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040234, 31.684315, 49.333469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676178, 31.845079, 49.373692>,  <39.457745, 31.941538, 49.397827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.676178, 31.845079, 49.373692>,  <40.040234, 31.684315, 49.333469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676178, 31.845079, 49.373692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010854, -0.219509, 0.975550,
		0.414157, 0.888979, 0.195422,
		-0.910141, 0.401910, 0.100560,
		39.403137, 31.965652, 49.403858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047630, 31.833206, 50.103531>,  <40.040234, 31.684315, 49.333469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047630, 31.833206, 50.103531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666641, 31.866976, 49.986454>,  <39.438049, 31.887238, 49.916210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666641, 31.866976, 49.986454>,  <40.047630, 31.833206, 50.103531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666641, 31.866976, 49.986454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301582, -0.125962, 0.945083,
		0.042918, 0.988437, 0.145436,
		-0.952474, 0.084422, -0.292689,
		39.380898, 31.892302, 49.898647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727142, 32.428982, 50.598255>,  <40.047630, 31.833206, 50.103531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727142, 32.428982, 50.598255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441402, 32.179916, 50.470509>,  <39.269958, 32.030479, 50.393860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441402, 32.179916, 50.470509>,  <39.727142, 32.428982, 50.598255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441402, 32.179916, 50.470509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188778, -0.267991, 0.944745,
		-0.673843, 0.735170, 0.073895,
		-0.714352, -0.622660, -0.319368,
		39.227097, 31.993118, 50.374699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005035, 32.570019, 50.959309>,  <39.727142, 32.428982, 50.598255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005035, 32.570019, 50.959309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044445, 32.199600, 50.813583>,  <39.068092, 31.977348, 50.726147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044445, 32.199600, 50.813583>,  <39.005035, 32.570019, 50.959309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044445, 32.199600, 50.813583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325409, -0.375952, 0.867623,
		-0.940427, 0.033071, -0.338384,
		0.098523, -0.926049, -0.364317,
		39.074001, 31.921785, 50.704288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285637, 32.233784, 50.858608>,  <39.005035, 32.570019, 50.959309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285637, 32.233784, 50.858608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590900, 31.981218, 50.913593>,  <38.774059, 31.829678, 50.946583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590900, 31.981218, 50.913593>,  <38.285637, 32.233784, 50.858608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590900, 31.981218, 50.913593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304329, -0.163527, 0.938426,
		-0.570061, -0.758004, -0.316956,
		0.763161, -0.631419, 0.137462,
		38.819847, 31.791794, 50.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952507, 32.785412, 51.134399>,  <38.285637, 32.233784, 50.858608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952507, 32.785412, 51.134399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728024, 33.074841, 51.295139>,  <37.593334, 33.248497, 51.391582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728024, 33.074841, 51.295139>,  <37.952507, 32.785412, 51.134399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728024, 33.074841, 51.295139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202712, 0.350572, -0.914334,
		-0.802468, -0.594592, -0.050066,
		-0.561207, 0.723575, 0.401854,
		37.559662, 33.291912, 51.415695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264935, 32.817307, 50.855255>,  <37.952507, 32.785412, 51.134399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264935, 32.817307, 50.855255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368076, 33.176079, 50.998936>,  <37.429962, 33.391342, 51.085144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368076, 33.176079, 50.998936>,  <37.264935, 32.817307, 50.855255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368076, 33.176079, 50.998936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229065, 0.417923, -0.879130,
		-0.938638, 0.144405, 0.313218,
		0.257852, 0.896932, 0.359200,
		37.445431, 33.445160, 51.106697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737270, 33.177872, 50.693336>,  <37.264935, 32.817307, 50.855255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737270, 33.177872, 50.693336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018261, 33.454197, 50.761803>,  <37.186855, 33.619991, 50.802883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018261, 33.454197, 50.761803>,  <36.737270, 33.177872, 50.693336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018261, 33.454197, 50.761803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299267, 0.504927, -0.809622,
		-0.645727, 0.517517, 0.561438,
		0.702478, 0.690815, 0.171169,
		37.229004, 33.661442, 50.813152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368290, 33.831547, 50.583477>,  <36.737270, 33.177872, 50.693336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368290, 33.831547, 50.583477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754574, 33.934750, 50.571835>,  <36.986343, 33.996670, 50.564850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.754574, 33.934750, 50.571835>,  <36.368290, 33.831547, 50.583477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754574, 33.934750, 50.571835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187003, 0.613407, -0.767309,
		-0.180116, 0.746436, 0.640618,
		0.965706, 0.258003, -0.029102,
		37.044285, 34.012150, 50.563103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314896, 34.592419, 50.662865>,  <36.368290, 33.831547, 50.583477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314896, 34.592419, 50.662865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.642155, 34.446281, 50.485252>,  <36.838509, 34.358601, 50.378685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.642155, 34.446281, 50.485252>,  <36.314896, 34.592419, 50.662865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642155, 34.446281, 50.485252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128892, 0.636047, -0.760809,
		0.560382, 0.679683, 0.473288,
		0.818143, -0.365341, -0.444035,
		36.887596, 34.336678, 50.352043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362331, 35.081070, 50.268738>,  <36.314896, 34.592419, 50.662865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362331, 35.081070, 50.268738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634903, 34.832531, 50.114037>,  <36.798447, 34.683407, 50.021217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634903, 34.832531, 50.114037>,  <36.362331, 35.081070, 50.268738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634903, 34.832531, 50.114037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000747, 0.529021, -0.848608,
		0.731882, 0.577979, 0.360956,
		0.681431, -0.621351, -0.386750,
		36.839333, 34.646126, 49.998013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874809, 35.579975, 49.906075>,  <36.362331, 35.081070, 50.268738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874809, 35.579975, 49.906075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930416, 35.218273, 49.744579>,  <36.963779, 35.001251, 49.647682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930416, 35.218273, 49.744579>,  <36.874809, 35.579975, 49.906075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930416, 35.218273, 49.744579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072831, 0.415924, -0.906478,
		0.987608, 0.096611, 0.123678,
		0.139017, -0.904253, -0.403734,
		36.972122, 34.946999, 49.623459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287415, 35.645992, 49.331039>,  <36.874809, 35.579975, 49.906075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287415, 35.645992, 49.331039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137966, 35.284428, 49.247753>,  <37.048298, 35.067490, 49.197781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137966, 35.284428, 49.247753>,  <37.287415, 35.645992, 49.331039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137966, 35.284428, 49.247753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077071, 0.193446, -0.978079,
		0.924373, -0.381480, -0.002611,
		-0.373623, -0.903909, -0.208217,
		37.025879, 35.013256, 49.185287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770077, 35.364407, 48.961372>,  <37.287415, 35.645992, 49.331039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770077, 35.364407, 48.961372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444546, 35.151039, 48.869160>,  <37.249226, 35.023018, 48.813831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444546, 35.151039, 48.869160>,  <37.770077, 35.364407, 48.961372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444546, 35.151039, 48.869160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149433, 0.191266, -0.970097,
		0.561563, -0.823941, -0.075947,
		-0.813828, -0.533422, -0.230531,
		37.200397, 34.991013, 48.799999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899143, 34.919781, 48.364677>,  <37.770077, 35.364407, 48.961372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899143, 34.919781, 48.364677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500298, 34.947803, 48.376343>,  <37.260990, 34.964619, 48.383343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500298, 34.947803, 48.376343>,  <37.899143, 34.919781, 48.364677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500298, 34.947803, 48.376343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023919, 0.074593, -0.996927,
		-0.072018, -0.994750, -0.072702,
		-0.997117, 0.070058, 0.029165,
		37.201164, 34.968819, 48.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618813, 34.513748, 47.946186>,  <37.899143, 34.919781, 48.364677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618813, 34.513748, 47.946186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266590, 34.698635, 47.988106>,  <37.055256, 34.809566, 48.013256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266590, 34.698635, 47.988106>,  <37.618813, 34.513748, 47.946186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266590, 34.698635, 47.988106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076398, 0.079799, -0.993879,
		-0.467751, -0.883169, -0.034955,
		-0.880552, 0.462218, 0.104798,
		37.002426, 34.837299, 48.019547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071575, 34.149380, 47.386616>,  <37.618813, 34.513748, 47.946186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071575, 34.149380, 47.386616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945610, 34.517212, 47.480602>,  <36.870033, 34.737911, 47.536995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945610, 34.517212, 47.480602>,  <37.071575, 34.149380, 47.386616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945610, 34.517212, 47.480602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273860, 0.148995, -0.950159,
		-0.908753, -0.363562, 0.204915,
		-0.314910, 0.919578, 0.234965,
		36.851135, 34.793087, 47.551090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409821, 34.247566, 47.103462>,  <37.071575, 34.149380, 47.386616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409821, 34.247566, 47.103462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566891, 34.613052, 47.145267>,  <36.661133, 34.832344, 47.170353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566891, 34.613052, 47.145267>,  <36.409821, 34.247566, 47.103462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566891, 34.613052, 47.145267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347762, 0.252729, -0.902879,
		-0.851391, 0.318193, 0.416997,
		0.392677, 0.913718, 0.104516,
		36.684692, 34.887169, 47.176620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968483, 34.680984, 46.695641>,  <36.409821, 34.247566, 47.103462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968483, 34.680984, 46.695641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326096, 34.846394, 46.764584>,  <36.540665, 34.945641, 46.805950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326096, 34.846394, 46.764584>,  <35.968483, 34.680984, 46.695641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326096, 34.846394, 46.764584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054328, 0.281803, -0.957933,
		-0.444698, 0.865786, 0.229474,
		0.894031, 0.413524, 0.172354,
		36.594303, 34.970451, 46.816288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390472, 34.900967, 46.398346>,  <35.968483, 34.680984, 46.695641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390472, 34.900967, 46.398346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191113, 34.585274, 46.254841>,  <35.071495, 34.395859, 46.168739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191113, 34.585274, 46.254841>,  <35.390472, 34.900967, 46.398346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191113, 34.585274, 46.254841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127224, -0.342758, 0.930769,
		-0.857560, 0.509541, 0.070423,
		-0.498403, -0.789231, -0.358761,
		35.041592, 34.348503, 46.147213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694729, 34.865578, 46.747944>,  <35.390472, 34.900967, 46.398346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694729, 34.865578, 46.747944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737106, 34.503834, 46.582577>,  <34.762531, 34.286789, 46.483356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737106, 34.503834, 46.582577>,  <34.694729, 34.865578, 46.747944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737106, 34.503834, 46.582577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377002, -0.421249, 0.824874,
		-0.920133, 0.068470, -0.385573,
		0.105943, -0.904357, -0.413419,
		34.768890, 34.232529, 46.458549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077278, 34.563847, 46.736252>,  <34.694729, 34.865578, 46.747944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077278, 34.563847, 46.736252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333778, 34.257767, 46.713390>,  <34.487679, 34.074120, 46.699673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333778, 34.257767, 46.713390>,  <34.077278, 34.563847, 46.736252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333778, 34.257767, 46.713390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293169, -0.313145, 0.903323,
		-0.709123, -0.562497, -0.425137,
		0.641246, -0.765204, -0.057152,
		34.526154, 34.028206, 46.696243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681694, 33.921585, 47.040894>,  <34.077278, 34.563847, 46.736252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681694, 33.921585, 47.040894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072865, 33.838608, 47.050854>,  <34.307568, 33.788822, 47.056831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072865, 33.838608, 47.050854>,  <33.681694, 33.921585, 47.040894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072865, 33.838608, 47.050854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118100, -0.450528, 0.884916,
		-0.172348, -0.868328, -0.465084,
		0.977931, -0.207440, 0.024902,
		34.366245, 33.776375, 47.058323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719612, 33.397030, 47.568218>,  <33.681694, 33.921585, 47.040894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719612, 33.397030, 47.568218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110554, 33.468967, 47.523613>,  <34.345119, 33.512131, 47.496849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110554, 33.468967, 47.523613>,  <33.719612, 33.397030, 47.568218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110554, 33.468967, 47.523613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184612, -0.467113, 0.864710,
		0.103427, -0.865714, -0.489737,
		0.977355, 0.179845, -0.111509,
		34.403759, 33.522923, 47.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031494, 32.860809, 47.722977>,  <33.719612, 33.397030, 47.568218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031494, 32.860809, 47.722977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325714, 33.125294, 47.781998>,  <34.502247, 33.283985, 47.817410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325714, 33.125294, 47.781998>,  <34.031494, 32.860809, 47.722977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325714, 33.125294, 47.781998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240713, -0.458660, 0.855388,
		0.633268, -0.593660, -0.496528,
		0.735547, 0.661210, 0.147553,
		34.546379, 33.323658, 47.826263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735428, 32.508595, 48.051544>,  <34.031494, 32.860809, 47.722977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735428, 32.508595, 48.051544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727436, 32.898018, 48.142574>,  <34.722641, 33.131672, 48.197193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727436, 32.898018, 48.142574>,  <34.735428, 32.508595, 48.051544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727436, 32.898018, 48.142574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333692, -0.208079, 0.919431,
		0.942470, 0.094314, -0.320709,
		-0.019982, 0.973554, 0.227580,
		34.721443, 33.190083, 48.210850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018353, 31.807375, 47.885963>,  <34.735428, 32.508595, 48.051544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018353, 31.807375, 47.885963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757980, 31.505739, 47.920925>,  <34.601757, 31.324759, 47.941902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757980, 31.505739, 47.920925>,  <35.018353, 31.807375, 47.885963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757980, 31.505739, 47.920925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022246, -0.134033, -0.990727,
		0.758810, -0.642952, 0.104022,
		-0.650932, -0.754087, 0.087402,
		34.562702, 31.279512, 47.947147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422489, 31.272160, 47.584568>,  <35.018353, 31.807375, 47.885963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422489, 31.272160, 47.584568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036072, 31.169357, 47.573864>,  <34.804222, 31.107676, 47.567444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036072, 31.169357, 47.573864>,  <35.422489, 31.272160, 47.584568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036072, 31.169357, 47.573864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035086, -0.027873, -0.998996,
		0.256001, -0.966008, 0.035944,
		-0.966040, -0.257004, -0.026758,
		34.746262, 31.092257, 47.565838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302273, 30.881645, 46.992374>,  <35.422489, 31.272160, 47.584568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302273, 30.881645, 46.992374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925198, 31.009455, 47.030830>,  <34.698952, 31.086140, 47.053902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925198, 31.009455, 47.030830>,  <35.302273, 30.881645, 46.992374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925198, 31.009455, 47.030830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127463, -0.078571, -0.988726,
		-0.308370, -0.944315, 0.114796,
		-0.942688, 0.319526, 0.096137,
		34.642391, 31.105312, 47.059669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853439, 30.413311, 46.665253>,  <35.302273, 30.881645, 46.992374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853439, 30.413311, 46.665253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615124, 30.733734, 46.688396>,  <34.472134, 30.925987, 46.702282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615124, 30.733734, 46.688396>,  <34.853439, 30.413311, 46.665253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615124, 30.733734, 46.688396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286443, -0.144635, -0.947117,
		-0.750327, -0.580851, 0.315628,
		-0.595784, 0.801057, 0.057857,
		34.436390, 30.974051, 46.705753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183884, 30.252327, 46.324875>,  <34.853439, 30.413311, 46.665253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183884, 30.252327, 46.324875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200153, 30.650946, 46.353832>,  <34.209915, 30.890118, 46.371208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200153, 30.650946, 46.353832>,  <34.183884, 30.252327, 46.324875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200153, 30.650946, 46.353832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471300, 0.083023, -0.878056,
		-0.881035, 0.001590, 0.473049,
		0.040670, 0.996547, 0.072397,
		34.212353, 30.949909, 46.375553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483719, 30.548676, 46.225452>,  <34.183884, 30.252327, 46.324875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483719, 30.548676, 46.225452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733089, 30.841270, 46.114983>,  <33.882710, 31.016827, 46.048702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733089, 30.841270, 46.114983>,  <33.483719, 30.548676, 46.225452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733089, 30.841270, 46.114983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466751, 0.064793, -0.882012,
		-0.627285, 0.678771, 0.381815,
		0.623423, 0.731486, -0.276174,
		33.920116, 31.060717, 46.032131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136002, 30.962856, 45.768459>,  <33.483719, 30.548676, 46.225452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136002, 30.962856, 45.768459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509670, 31.088917, 45.701527>,  <33.733871, 31.164553, 45.661366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509670, 31.088917, 45.701527>,  <33.136002, 30.962856, 45.768459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509670, 31.088917, 45.701527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262481, 0.289265, -0.920559,
		-0.241713, 0.903883, 0.352946,
		0.934173, 0.315153, -0.167333,
		33.789921, 31.183462, 45.651325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.131882, 29.523008, 49.591053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.397312, 29.820297, 49.556889>,  <37.556568, 29.998671, 49.536392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.397312, 29.820297, 49.556889>,  <37.131882, 29.523008, 49.591053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397312, 29.820297, 49.556889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161497, 0.030836, -0.986391,
		-0.730473, 0.668335, 0.140490,
		0.663572, 0.743221, -0.085409,
		37.596382, 30.043264, 49.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977154, 29.897741, 48.981453>,  <37.131882, 29.523008, 49.591053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977154, 29.897741, 48.981453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.348316, 30.045496, 49.001633>,  <37.571014, 30.134148, 49.013741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.348316, 30.045496, 49.001633>,  <36.977154, 29.897741, 48.981453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348316, 30.045496, 49.001633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080652, -0.066775, -0.994503,
		-0.363986, 0.926874, -0.091753,
		0.927906, 0.369386, 0.050449,
		37.626686, 30.156311, 49.016766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012257, 30.394703, 48.511440>,  <36.977154, 29.897741, 48.981453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012257, 30.394703, 48.511440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399609, 30.297142, 48.532440>,  <37.632019, 30.238605, 48.545040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399609, 30.297142, 48.532440>,  <37.012257, 30.394703, 48.511440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399609, 30.297142, 48.532440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036711, -0.068827, -0.996953,
		0.246773, 0.967354, -0.057696,
		0.968378, -0.243903, 0.052497,
		37.690121, 30.223970, 48.548191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382969, 30.700562, 47.975956>,  <37.012257, 30.394703, 48.511440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382969, 30.700562, 47.975956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.644615, 30.420530, 48.090511>,  <37.801605, 30.252512, 48.159245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.644615, 30.420530, 48.090511>,  <37.382969, 30.700562, 47.975956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644615, 30.420530, 48.090511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199908, -0.205156, -0.958096,
		0.729497, 0.683960, 0.005755,
		0.654119, -0.700078, 0.286390,
		37.840851, 30.210506, 48.176430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027420, 30.880793, 47.701263>,  <37.382969, 30.700562, 47.975956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027420, 30.880793, 47.701263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023590, 30.486622, 47.769199>,  <38.021290, 30.250120, 47.809959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023590, 30.486622, 47.769199>,  <38.027420, 30.880793, 47.701263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023590, 30.486622, 47.769199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204467, -0.168190, -0.964316,
		0.978827, 0.025492, 0.203098,
		-0.009577, -0.985425, 0.169841,
		38.020718, 30.190994, 47.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645004, 30.710178, 47.384129>,  <38.027420, 30.880793, 47.701263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645004, 30.710178, 47.384129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.390759, 30.401432, 47.390148>,  <38.238213, 30.216185, 47.393761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.390759, 30.401432, 47.390148>,  <38.645004, 30.710178, 47.384129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390759, 30.401432, 47.390148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350194, -0.305638, -0.885410,
		0.688015, -0.557505, 0.464568,
		-0.635610, -0.771864, 0.015049,
		38.200077, 30.169872, 47.394661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977165, 30.351803, 46.961288>,  <38.645004, 30.710178, 47.384129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977165, 30.351803, 46.961288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.625988, 30.160761, 46.974598>,  <38.415279, 30.046137, 46.982582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.625988, 30.160761, 46.974598>,  <38.977165, 30.351803, 46.961288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625988, 30.160761, 46.974598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197795, -0.425125, -0.883259,
		0.435993, -0.768872, 0.467704,
		-0.877945, -0.477604, 0.033272,
		38.362606, 30.017479, 46.984581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126255, 29.621307, 46.812611>,  <38.977165, 30.351803, 46.961288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126255, 29.621307, 46.812611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.731743, 29.680780, 46.783932>,  <38.495033, 29.716465, 46.766724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.731743, 29.680780, 46.783932>,  <39.126255, 29.621307, 46.812611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731743, 29.680780, 46.783932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009015, -0.482225, -0.876001,
		-0.164821, -0.863338, 0.476951,
		-0.986282, 0.148683, -0.071698,
		38.435860, 29.725386, 46.762421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980663, 29.052443, 46.537724>,  <39.126255, 29.621307, 46.812611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980663, 29.052443, 46.537724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.656330, 29.276793, 46.470833>,  <38.461731, 29.411404, 46.430698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.656330, 29.276793, 46.470833>,  <38.980663, 29.052443, 46.537724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656330, 29.276793, 46.470833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173244, -0.502923, -0.846791,
		-0.559050, -0.657635, 0.504955,
		-0.810833, 0.560879, -0.167228,
		38.413078, 29.445055, 46.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354652, 28.552229, 46.463772>,  <38.980663, 29.052443, 46.537724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354652, 28.552229, 46.463772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.309723, 28.904346, 46.279396>,  <38.282764, 29.115616, 46.168770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.309723, 28.904346, 46.279396>,  <38.354652, 28.552229, 46.463772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309723, 28.904346, 46.279396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137997, -0.473202, -0.870079,
		-0.984043, -0.034121, 0.174630,
		-0.112323, 0.880293, -0.460943,
		38.276028, 29.168434, 46.141113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673103, 28.594397, 46.020065>,  <38.354652, 28.552229, 46.463772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673103, 28.594397, 46.020065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967602, 28.827002, 45.881622>,  <38.144299, 28.966564, 45.798557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.967602, 28.827002, 45.881622>,  <37.673103, 28.594397, 46.020065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967602, 28.827002, 45.881622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159033, -0.348449, -0.923738,
		-0.657765, 0.735138, -0.164064,
		0.736243, 0.581510, -0.346109,
		38.188477, 29.001455, 45.777790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465981, 28.982626, 45.414459>,  <37.673103, 28.594397, 46.020065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465981, 28.982626, 45.414459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.864403, 28.951273, 45.397804>,  <38.103455, 28.932461, 45.387814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.864403, 28.951273, 45.397804>,  <37.465981, 28.982626, 45.414459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864403, 28.951273, 45.397804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046624, -0.062927, -0.996928,
		0.075522, 0.994935, -0.066334,
		0.996054, -0.078383, -0.041635,
		38.163219, 28.927757, 45.385315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838467, 29.197262, 45.534325>,  <37.465981, 28.982626, 45.414459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838467, 29.197262, 45.534325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.469608, 29.046860, 45.497963>,  <36.248295, 28.956617, 45.476147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.469608, 29.046860, 45.497963>,  <36.838467, 29.197262, 45.534325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469608, 29.046860, 45.497963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104020, 0.014673, 0.994467,
		-0.372592, 0.926501, -0.052643,
		-0.922147, -0.376006, -0.090908,
		36.192963, 28.934057, 45.470692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623386, 29.496029, 46.119675>,  <36.838467, 29.197262, 45.534325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623386, 29.496029, 46.119675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.348606, 29.213032, 46.053276>,  <36.183739, 29.043234, 46.013439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.348606, 29.213032, 46.053276>,  <36.623386, 29.496029, 46.119675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348606, 29.213032, 46.053276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175172, -0.060473, 0.982679,
		-0.705276, 0.704129, -0.082391,
		-0.686950, -0.707492, -0.165993,
		36.142521, 29.000784, 46.003479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113937, 29.605341, 46.641373>,  <36.623386, 29.496029, 46.119675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113937, 29.605341, 46.641373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020336, 29.240368, 46.507084>,  <35.964176, 29.021383, 46.426510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020336, 29.240368, 46.507084>,  <36.113937, 29.605341, 46.641373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020336, 29.240368, 46.507084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124139, -0.314439, 0.941126,
		-0.964278, 0.261901, -0.039690,
		-0.234001, -0.912434, -0.335719,
		35.950134, 28.966637, 46.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456909, 29.465870, 46.895370>,  <36.113937, 29.605341, 46.641373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456909, 29.465870, 46.895370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.599316, 29.105148, 46.797394>,  <35.684761, 28.888716, 46.738605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.599316, 29.105148, 46.797394>,  <35.456909, 29.465870, 46.895370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599316, 29.105148, 46.797394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154991, -0.315475, 0.936191,
		-0.921535, -0.295339, -0.252087,
		0.356021, -0.901804, -0.244946,
		35.706123, 28.834606, 46.723911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959473, 28.899307, 47.004768>,  <35.456909, 29.465870, 46.895370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959473, 28.899307, 47.004768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323719, 28.743496, 47.059971>,  <35.542267, 28.650009, 47.093090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323719, 28.743496, 47.059971>,  <34.959473, 28.899307, 47.004768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323719, 28.743496, 47.059971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295207, -0.379465, 0.876846,
		-0.289186, -0.839211, -0.460539,
		0.910617, -0.389526, 0.138005,
		35.596905, 28.626637, 47.101372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848652, 28.352116, 47.480015>,  <34.959473, 28.899307, 47.004768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848652, 28.352116, 47.480015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242470, 28.421972, 47.485249>,  <35.478760, 28.463886, 47.488388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242470, 28.421972, 47.485249>,  <34.848652, 28.352116, 47.480015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242470, 28.421972, 47.485249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036817, -0.279457, 0.959452,
		0.171216, -0.944142, -0.281568,
		0.984545, 0.174640, 0.013087,
		35.537834, 28.474363, 47.489174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113930, 27.971802, 48.074127>,  <34.848652, 28.352116, 47.480015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113930, 27.971802, 48.074127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444599, 28.148329, 47.934502>,  <35.643002, 28.254244, 47.850727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444599, 28.148329, 47.934502>,  <35.113930, 27.971802, 48.074127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444599, 28.148329, 47.934502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476098, -0.217978, 0.851948,
		0.299891, -0.870474, -0.390308,
		0.826678, 0.441316, -0.349061,
		35.692604, 28.280724, 47.829784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739414, 27.390074, 48.194836>,  <35.113930, 27.971802, 48.074127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739414, 27.390074, 48.194836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.811234, 27.783298, 48.209522>,  <35.854324, 28.019234, 48.218334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.811234, 27.783298, 48.209522>,  <35.739414, 27.390074, 48.194836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811234, 27.783298, 48.209522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142482, -0.062913, 0.987796,
		0.973377, -0.172125, -0.151365,
		0.179547, 0.983064, 0.036713,
		35.865097, 28.078218, 48.220535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365772, 27.411711, 48.593494>,  <35.739414, 27.390074, 48.194836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365772, 27.411711, 48.593494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.186623, 27.769297, 48.599613>,  <36.079132, 27.983849, 48.603283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.186623, 27.769297, 48.599613>,  <36.365772, 27.411711, 48.593494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186623, 27.769297, 48.599613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126885, 0.046618, 0.990821,
		0.885048, 0.445702, -0.134310,
		-0.447872, 0.893967, 0.015294,
		36.052261, 28.037487, 48.604202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842846, 27.833780, 48.815979>,  <36.365772, 27.411711, 48.593494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842846, 27.833780, 48.815979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487797, 27.996572, 48.902225>,  <36.274769, 28.094248, 48.953972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487797, 27.996572, 48.902225>,  <36.842846, 27.833780, 48.815979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487797, 27.996572, 48.902225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241841, 0.013441, 0.970223,
		0.391966, 0.913337, -0.110356,
		-0.887624, 0.406982, 0.215614,
		36.221508, 28.118668, 48.966911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023136, 28.387342, 49.245789>,  <36.842846, 27.833780, 48.815979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023136, 28.387342, 49.245789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636547, 28.304298, 49.306217>,  <36.404594, 28.254471, 49.342476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636547, 28.304298, 49.306217>,  <37.023136, 28.387342, 49.245789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636547, 28.304298, 49.306217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139300, 0.070283, 0.987753,
		-0.215687, 0.975683, -0.039006,
		-0.966475, -0.207612, 0.151072,
		36.346603, 28.242014, 49.351540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838837, 28.845093, 49.772724>,  <37.023136, 28.387342, 49.245789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838837, 28.845093, 49.772724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.542286, 28.576683, 49.776340>,  <36.364353, 28.415636, 49.778511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.542286, 28.576683, 49.776340>,  <36.838837, 28.845093, 49.772724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542286, 28.576683, 49.776340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032248, -0.022166, 0.999234,
		-0.670311, 0.741103, 0.038072,
		-0.741379, -0.671025, 0.009041,
		36.319874, 28.375376, 49.779053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364098, 29.133909, 50.293449>,  <36.838837, 28.845093, 49.772724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364098, 29.133909, 50.293449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.262882, 28.747232, 50.278057>,  <36.202152, 28.515226, 50.268822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.262882, 28.747232, 50.278057>,  <36.364098, 29.133909, 50.293449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262882, 28.747232, 50.278057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076082, -0.019770, 0.996906,
		-0.964460, 0.255185, -0.068545,
		-0.253040, -0.966690, -0.038482,
		36.186970, 28.457226, 50.266514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754166, 29.000595, 50.673195>,  <36.364098, 29.133909, 50.293449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754166, 29.000595, 50.673195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.973499, 28.666321, 50.685577>,  <36.105099, 28.465757, 50.693008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.973499, 28.666321, 50.685577>,  <35.754166, 29.000595, 50.673195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973499, 28.666321, 50.685577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029408, 0.017727, 0.999410,
		-0.835740, -0.548924, -0.014856,
		0.548337, -0.835684, 0.030958,
		36.138000, 28.415615, 50.694866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138432, 29.197086, 50.197392>,  <35.754166, 29.000595, 50.673195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138432, 29.197086, 50.197392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149731, 29.567476, 50.348003>,  <35.156509, 29.789711, 50.438370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149731, 29.567476, 50.348003>,  <35.138432, 29.197086, 50.197392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149731, 29.567476, 50.348003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480246, 0.342926, -0.807320,
		-0.876679, -0.158023, 0.454382,
		0.028245, 0.925976, 0.376526,
		35.158203, 29.845268, 50.460960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383015, 29.483131, 50.233292>,  <35.138432, 29.197086, 50.197392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383015, 29.483131, 50.233292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634449, 29.792976, 50.205414>,  <34.785309, 29.978884, 50.188686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634449, 29.792976, 50.205414>,  <34.383015, 29.483131, 50.233292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634449, 29.792976, 50.205414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537776, 0.368155, -0.758459,
		-0.561851, 0.514237, 0.647984,
		0.628586, 0.774611, -0.069696,
		34.823025, 30.025360, 50.184505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964645, 29.942261, 50.042927>,  <34.383015, 29.483131, 50.233292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964645, 29.942261, 50.042927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.305927, 30.133326, 49.959141>,  <34.510696, 30.247965, 49.908871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.305927, 30.133326, 49.959141>,  <33.964645, 29.942261, 50.042927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305927, 30.133326, 49.959141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479384, 0.559950, -0.675756,
		-0.205493, 0.676975, 0.706737,
		0.853207, 0.477662, -0.209465,
		34.561890, 30.276625, 49.896301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737293, 30.681263, 49.863342>,  <33.964645, 29.942261, 50.042927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737293, 30.681263, 49.863342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.103065, 30.615095, 49.715588>,  <34.322529, 30.575396, 49.626934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.103065, 30.615095, 49.715588>,  <33.737293, 30.681263, 49.863342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103065, 30.615095, 49.715588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231684, 0.534408, -0.812853,
		0.331865, 0.828882, 0.450356,
		0.914433, -0.165417, -0.369390,
		34.377396, 30.565470, 49.604771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906555, 31.298178, 49.519268>,  <33.737293, 30.681263, 49.863342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906555, 31.298178, 49.519268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166008, 31.041729, 49.355198>,  <34.321678, 30.887859, 49.256756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166008, 31.041729, 49.355198>,  <33.906555, 31.298178, 49.519268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166008, 31.041729, 49.355198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051224, 0.500927, -0.863972,
		0.759381, 0.581407, 0.292074,
		0.648627, -0.641122, -0.410176,
		34.360596, 30.849392, 49.232143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278572, 31.791561, 49.097954>,  <33.906555, 31.298178, 49.519268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278572, 31.791561, 49.097954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353680, 31.418163, 48.975754>,  <34.398743, 31.194124, 48.902435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353680, 31.418163, 48.975754>,  <34.278572, 31.791561, 49.097954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353680, 31.418163, 48.975754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100283, 0.291186, -0.951396,
		0.977081, 0.209275, -0.038940,
		0.187764, -0.933496, -0.305499,
		34.410007, 31.138115, 48.884106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806469, 31.831959, 48.677902>,  <34.278572, 31.791561, 49.097954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806469, 31.831959, 48.677902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619709, 31.496342, 48.566181>,  <34.507652, 31.294971, 48.499149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619709, 31.496342, 48.566181>,  <34.806469, 31.831959, 48.677902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619709, 31.496342, 48.566181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054331, 0.288031, -0.956079,
		0.882637, -0.461572, -0.088897,
		-0.466904, -0.839041, -0.279304,
		34.479637, 31.244629, 48.482391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109489, 32.519768, 48.679958>,  <34.806469, 31.831959, 48.677902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109489, 32.519768, 48.679958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907379, 32.864258, 48.701813>,  <34.786114, 33.070953, 48.714924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907379, 32.864258, 48.701813>,  <35.109489, 32.519768, 48.679958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907379, 32.864258, 48.701813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192578, 0.050817, 0.979965,
		0.841198, 0.505670, -0.191530,
		-0.505272, 0.861229, 0.054634,
		34.755798, 33.122627, 48.718204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571632, 33.059872, 48.969986>,  <35.109489, 32.519768, 48.679958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571632, 33.059872, 48.969986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194103, 33.172722, 49.038815>,  <34.967587, 33.240433, 49.080112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194103, 33.172722, 49.038815>,  <35.571632, 33.059872, 48.969986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194103, 33.172722, 49.038815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211432, 0.115350, 0.970562,
		0.253973, 0.952417, -0.168520,
		-0.943819, 0.282128, 0.172076,
		34.910957, 33.257359, 49.090439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719837, 33.488075, 49.611248>,  <35.571632, 33.059872, 48.969986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719837, 33.488075, 49.611248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322388, 33.452671, 49.583328>,  <35.083916, 33.431431, 49.566578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322388, 33.452671, 49.583328>,  <35.719837, 33.488075, 49.611248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322388, 33.452671, 49.583328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067092, -0.033153, 0.997196,
		-0.090574, 0.995524, 0.027004,
		-0.993627, -0.088508, -0.069795,
		35.024300, 33.426117, 49.562389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500565, 33.994408, 50.071178>,  <35.719837, 33.488075, 49.611248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500565, 33.994408, 50.071178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200432, 33.736237, 50.014000>,  <35.020351, 33.581333, 49.979691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200432, 33.736237, 50.014000>,  <35.500565, 33.994408, 50.071178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200432, 33.736237, 50.014000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044411, -0.264967, 0.963234,
		-0.659570, 0.716395, 0.227476,
		-0.750330, -0.645423, -0.142948,
		34.975334, 33.542610, 49.971115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199169, 34.192703, 50.597816>,  <35.500565, 33.994408, 50.071178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199169, 34.192703, 50.597816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.087315, 33.834492, 50.459351>,  <35.020203, 33.619564, 50.376270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.087315, 33.834492, 50.459351>,  <35.199169, 34.192703, 50.597816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087315, 33.834492, 50.459351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224139, -0.411476, 0.883430,
		-0.933576, 0.169453, 0.315788,
		-0.279639, -0.895529, -0.346163,
		35.003422, 33.565834, 50.355503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818863, 33.952240, 51.112179>,  <35.199169, 34.192703, 50.597816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818863, 33.952240, 51.112179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.911392, 33.615517, 50.917103>,  <34.966911, 33.413483, 50.800056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.911392, 33.615517, 50.917103>,  <34.818863, 33.952240, 51.112179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911392, 33.615517, 50.917103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105500, -0.520033, 0.847605,
		-0.967139, -0.144623, -0.209109,
		0.231327, -0.841813, -0.487687,
		34.980789, 33.362972, 50.770798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392597, 33.551483, 51.356277>,  <34.818863, 33.952240, 51.112179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392597, 33.551483, 51.356277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670971, 33.310486, 51.199986>,  <34.837994, 33.165886, 51.106209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670971, 33.310486, 51.199986>,  <34.392597, 33.551483, 51.356277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670971, 33.310486, 51.199986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107427, -0.625343, 0.772920,
		-0.710025, -0.495926, -0.499922,
		0.695934, -0.602498, -0.390734,
		34.879753, 33.129738, 51.082764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188499, 32.876225, 51.491402>,  <34.392597, 33.551483, 51.356277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188499, 32.876225, 51.491402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.577839, 32.815342, 51.422775>,  <34.811443, 32.778812, 51.381599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.577839, 32.815342, 51.422775>,  <34.188499, 32.876225, 51.491402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577839, 32.815342, 51.422775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023374, -0.678327, 0.734388,
		-0.228154, -0.718823, -0.656689,
		0.973344, -0.152204, -0.171564,
		34.869843, 32.769680, 51.371307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299873, 32.139050, 51.585331>,  <34.188499, 32.876225, 51.491402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299873, 32.139050, 51.585331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668530, 32.293709, 51.598484>,  <34.889725, 32.386505, 51.606377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668530, 32.293709, 51.598484>,  <34.299873, 32.139050, 51.585331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668530, 32.293709, 51.598484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305128, -0.774442, 0.554198,
		0.239744, -0.500738, -0.831735,
		0.921639, 0.386652, 0.032879,
		34.945023, 32.409706, 51.608349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.081135, 35.517883, 35.531769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461876, 35.546471, 35.651016>,  <35.690319, 35.563622, 35.722565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461876, 35.546471, 35.651016>,  <35.081135, 35.517883, 35.531769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461876, 35.546471, 35.651016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285120, -0.150916, 0.946536,
		0.112638, -0.985960, -0.123272,
		0.951850, 0.071469, 0.298116,
		35.747433, 35.567909, 35.740452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135948, 35.037292, 35.989868>,  <35.081135, 35.517883, 35.531769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135948, 35.037292, 35.989868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413483, 35.315926, 36.062935>,  <35.580002, 35.483105, 36.106773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413483, 35.315926, 36.062935>,  <35.135948, 35.037292, 35.989868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413483, 35.315926, 36.062935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266567, 0.012797, 0.963731,
		0.668981, -0.717363, 0.194565,
		0.693835, 0.696583, 0.182664,
		35.621632, 35.524899, 36.117733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555744, 34.703968, 36.523590>,  <35.135948, 35.037292, 35.989868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555744, 34.703968, 36.523590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544106, 35.103626, 36.535275>,  <35.537125, 35.343422, 36.542286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544106, 35.103626, 36.535275>,  <35.555744, 34.703968, 36.523590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544106, 35.103626, 36.535275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268656, -0.035962, 0.962565,
		0.962797, 0.020156, 0.269473,
		-0.029093, 0.999150, 0.029209,
		35.535378, 35.403370, 36.544037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057663, 34.908337, 37.085785>,  <35.555744, 34.703968, 36.523590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057663, 34.908337, 37.085785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795780, 35.207153, 37.039673>,  <35.638649, 35.386444, 37.012005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795780, 35.207153, 37.039673>,  <36.057663, 34.908337, 37.085785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795780, 35.207153, 37.039673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163134, 0.009271, 0.986560,
		0.738070, 0.664713, 0.115798,
		-0.654706, 0.747041, -0.115280,
		35.599369, 35.431267, 37.005089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229527, 35.487274, 37.587372>,  <36.057663, 34.908337, 37.085785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229527, 35.487274, 37.587372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844830, 35.523464, 37.483944>,  <35.614010, 35.545177, 37.421886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844830, 35.523464, 37.483944>,  <36.229527, 35.487274, 37.587372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844830, 35.523464, 37.483944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255449, 0.044716, 0.965788,
		0.098938, 0.994895, -0.019895,
		-0.961747, 0.090471, -0.258569,
		35.556305, 35.550606, 37.406372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937748, 35.956970, 38.025902>,  <36.229527, 35.487274, 37.587372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937748, 35.956970, 38.025902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599403, 35.804035, 37.877121>,  <35.396397, 35.712276, 37.787853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599403, 35.804035, 37.877121>,  <35.937748, 35.956970, 38.025902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599403, 35.804035, 37.877121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382653, -0.050867, 0.922491,
		-0.371619, 0.922623, -0.103275,
		-0.845858, -0.382333, -0.371948,
		35.345646, 35.689335, 37.765537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401379, 36.372147, 38.301289>,  <35.937748, 35.956970, 38.025902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401379, 36.372147, 38.301289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244148, 36.021469, 38.190365>,  <35.149811, 35.811062, 38.123810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244148, 36.021469, 38.190365>,  <35.401379, 36.372147, 38.301289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244148, 36.021469, 38.190365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494225, -0.052882, 0.867725,
		-0.775394, 0.478133, -0.412497,
		-0.393073, -0.876694, -0.277310,
		35.126225, 35.758461, 38.107170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724552, 36.509430, 38.558105>,  <35.401379, 36.372147, 38.301289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724552, 36.509430, 38.558105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761520, 36.113827, 38.511944>,  <34.783703, 35.876465, 38.484245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761520, 36.113827, 38.511944>,  <34.724552, 36.509430, 38.558105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761520, 36.113827, 38.511944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366818, -0.141572, 0.919458,
		-0.925690, -0.042646, -0.375871,
		0.092424, -0.989009, -0.115409,
		34.789249, 35.817123, 38.477322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070545, 36.171955, 38.835182>,  <34.724552, 36.509430, 38.558105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070545, 36.171955, 38.835182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326122, 35.864605, 38.820530>,  <34.479469, 35.680195, 38.811737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326122, 35.864605, 38.820530>,  <34.070545, 36.171955, 38.835182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326122, 35.864605, 38.820530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238093, -0.242823, 0.940398,
		-0.731478, -0.592141, -0.338096,
		0.638946, -0.768379, -0.036635,
		34.517807, 35.634090, 38.809540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683773, 35.610779, 39.068691>,  <34.070545, 36.171955, 38.835182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683773, 35.610779, 39.068691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067898, 35.521648, 39.135796>,  <34.298374, 35.468170, 39.176060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067898, 35.521648, 39.135796>,  <33.683773, 35.610779, 39.068691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067898, 35.521648, 39.135796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257442, -0.476679, 0.840536,
		-0.107321, -0.850369, -0.515126,
		0.960315, -0.222822, 0.167763,
		34.355991, 35.454803, 39.186123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595001, 34.857910, 39.441990>,  <33.683773, 35.610779, 39.068691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595001, 34.857910, 39.441990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978096, 34.963680, 39.487286>,  <34.207954, 35.027142, 39.514462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978096, 34.963680, 39.487286>,  <33.595001, 34.857910, 39.441990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978096, 34.963680, 39.487286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017408, -0.446221, 0.894753,
		0.287121, -0.854966, -0.431965,
		0.957736, 0.264422, 0.113236,
		34.265415, 35.043007, 39.521255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940491, 34.324913, 39.745731>,  <33.595001, 34.857910, 39.441990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940491, 34.324913, 39.745731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164314, 34.641396, 39.844429>,  <34.298611, 34.831284, 39.903648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164314, 34.641396, 39.844429>,  <33.940491, 34.324913, 39.745731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164314, 34.641396, 39.844429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075128, -0.248066, 0.965825,
		0.825377, -0.558976, -0.079367,
		0.559561, 0.791207, 0.246743,
		34.332184, 34.878757, 39.918453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906330, 33.527641, 39.808220>,  <33.940491, 34.324913, 39.745731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906330, 33.527641, 39.808220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517223, 33.467075, 39.878418>,  <33.283760, 33.430737, 39.920536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517223, 33.467075, 39.878418>,  <33.906330, 33.527641, 39.808220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517223, 33.467075, 39.878418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202403, 0.185925, -0.961491,
		0.112947, -0.970828, -0.211507,
		-0.972767, -0.151408, 0.175499,
		33.225395, 33.421650, 39.931068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738834, 33.307762, 39.203419>,  <33.906330, 33.527641, 39.808220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738834, 33.307762, 39.203419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387573, 33.373692, 39.383053>,  <33.176815, 33.413250, 39.490833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387573, 33.373692, 39.383053>,  <33.738834, 33.307762, 39.203419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387573, 33.373692, 39.383053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421162, 0.178823, -0.889182,
		-0.226868, -0.969977, -0.087615,
		-0.878153, 0.164827, 0.449087,
		33.124126, 33.423141, 39.517780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213837, 32.887318, 38.851089>,  <33.738834, 33.307762, 39.203419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213837, 32.887318, 38.851089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024605, 33.188362, 39.034294>,  <32.911068, 33.368988, 39.144218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024605, 33.188362, 39.034294>,  <33.213837, 32.887318, 38.851089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024605, 33.188362, 39.034294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310771, 0.343901, -0.886089,
		-0.824392, -0.561524, 0.071199,
		-0.473075, 0.752611, 0.458015,
		32.882683, 33.414146, 39.171700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455238, 32.794765, 38.686317>,  <33.213837, 32.887318, 38.851089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455238, 32.794765, 38.686317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519100, 33.176891, 38.785824>,  <32.557419, 33.406166, 38.845528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519100, 33.176891, 38.785824>,  <32.455238, 32.794765, 38.686317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519100, 33.176891, 38.785824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405190, 0.293214, -0.865937,
		-0.900183, 0.037454, 0.433897,
		0.159658, 0.955313, 0.248771,
		32.566998, 33.463486, 38.860455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744223, 33.088142, 38.632191>,  <32.455238, 32.794765, 38.686317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744223, 33.088142, 38.632191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004192, 33.391617, 38.650032>,  <32.160175, 33.573704, 38.660736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004192, 33.391617, 38.650032>,  <31.744223, 33.088142, 38.632191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004192, 33.391617, 38.650032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615260, 0.559697, -0.555152,
		-0.446155, 0.333361, 0.830552,
		0.649923, 0.758690, 0.044608,
		32.199169, 33.619225, 38.663414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251574, 33.571846, 38.714272>,  <31.744223, 33.088142, 38.632191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251574, 33.571846, 38.714272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578909, 33.745869, 38.564045>,  <31.775311, 33.850285, 38.473911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578909, 33.745869, 38.564045>,  <31.251574, 33.571846, 38.714272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578909, 33.745869, 38.564045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554663, 0.426622, -0.714382,
		-0.150575, 0.792917, 0.590432,
		0.818337, 0.435059, -0.375563,
		31.824409, 33.876385, 38.451374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996231, 34.176884, 38.640533>,  <31.251574, 33.571846, 38.714272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996231, 34.176884, 38.640533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315327, 34.129520, 38.404030>,  <31.506784, 34.101105, 38.262127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315327, 34.129520, 38.404030>,  <30.996231, 34.176884, 38.640533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315327, 34.129520, 38.404030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558446, 0.224832, -0.798492,
		0.227479, 0.967177, 0.113235,
		0.797741, -0.118405, -0.591260,
		31.554649, 34.093998, 38.226650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006495, 34.724277, 38.072632>,  <30.996231, 34.176884, 38.640533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006495, 34.724277, 38.072632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250162, 34.444469, 37.923191>,  <31.396362, 34.276585, 37.833527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250162, 34.444469, 37.923191>,  <31.006495, 34.724277, 38.072632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250162, 34.444469, 37.923191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578992, -0.070379, -0.812290,
		0.541922, 0.711136, -0.447891,
		0.609171, -0.699524, -0.373602,
		31.432913, 34.234612, 37.811111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298117, 34.961967, 37.397881>,  <31.006495, 34.724277, 38.072632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298117, 34.961967, 37.397881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336748, 34.563839, 37.398190>,  <31.359926, 34.324963, 37.398376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336748, 34.563839, 37.398190>,  <31.298117, 34.961967, 37.397881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336748, 34.563839, 37.398190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286348, -0.028529, -0.957701,
		0.953246, 0.092271, -0.287765,
		0.096577, -0.995325, 0.000773,
		31.365721, 34.265240, 37.398422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490986, 34.799706, 36.735199>,  <31.298117, 34.961967, 37.397881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490986, 34.799706, 36.735199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395275, 34.437527, 36.875431>,  <31.337849, 34.220219, 36.959572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395275, 34.437527, 36.875431>,  <31.490986, 34.799706, 36.735199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395275, 34.437527, 36.875431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370610, -0.248561, -0.894911,
		0.897437, -0.344061, -0.276094,
		-0.239278, -0.905450, 0.350581,
		31.323492, 34.165894, 36.980606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810522, 34.274139, 36.359947>,  <31.490986, 34.799706, 36.735199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810522, 34.274139, 36.359947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495632, 34.080105, 36.512245>,  <31.306698, 33.963684, 36.603626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495632, 34.080105, 36.512245>,  <31.810522, 34.274139, 36.359947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495632, 34.080105, 36.512245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272169, -0.280730, -0.920388,
		0.553354, -0.828180, 0.088973,
		-0.787225, -0.485085, 0.380748,
		31.259464, 33.934578, 36.626469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876427, 33.677277, 36.084446>,  <31.810522, 34.274139, 36.359947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876427, 33.677277, 36.084446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497789, 33.686527, 36.213089>,  <31.270607, 33.692078, 36.290276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497789, 33.686527, 36.213089>,  <31.876427, 33.677277, 36.084446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497789, 33.686527, 36.213089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316010, -0.264634, -0.911102,
		0.064041, -0.964072, 0.257807,
		-0.946592, 0.023122, 0.321604,
		31.213812, 33.693462, 36.309570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602556, 33.054630, 35.899567>,  <31.876427, 33.677277, 36.084446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602556, 33.054630, 35.899567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288467, 33.297058, 35.950329>,  <31.100014, 33.442516, 35.980785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288467, 33.297058, 35.950329>,  <31.602556, 33.054630, 35.899567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288467, 33.297058, 35.950329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346129, -0.259666, -0.901537,
		-0.513442, -0.751832, 0.413674,
		-0.785221, 0.606071, 0.126908,
		31.052900, 33.478878, 35.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002335, 32.663799, 35.591911>,  <31.602556, 33.054630, 35.899567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002335, 32.663799, 35.591911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894083, 33.048023, 35.617481>,  <30.829132, 33.278557, 35.632824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894083, 33.048023, 35.617481>,  <31.002335, 32.663799, 35.591911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894083, 33.048023, 35.617481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448251, -0.066968, -0.891396,
		-0.851958, -0.269891, 0.448695,
		-0.270627, 0.960559, 0.063925,
		30.812895, 33.336189, 35.636658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601236, 32.427605, 35.572559>,  <31.002335, 32.663799, 35.591911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601236, 32.427605, 35.572559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610668, 32.028023, 35.588230>,  <31.616327, 31.788273, 35.597633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610668, 32.028023, 35.588230>,  <31.601236, 32.427605, 35.572559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610668, 32.028023, 35.588230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414157, 0.045429, 0.909071,
		-0.909900, -0.005208, 0.414794,
		0.023578, -0.998954, 0.039179,
		31.617741, 31.728336, 35.599983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463654, 32.237312, 36.191032>,  <31.601236, 32.427605, 35.572559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463654, 32.237312, 36.191032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677843, 31.929064, 36.052803>,  <31.806356, 31.744116, 35.969868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677843, 31.929064, 36.052803>,  <31.463654, 32.237312, 36.191032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677843, 31.929064, 36.052803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561427, 0.019125, 0.827305,
		-0.630926, -0.637012, 0.442886,
		0.535473, -0.770617, -0.345569,
		31.838486, 31.697878, 35.949131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646259, 31.688139, 36.609123>,  <31.463654, 32.237312, 36.191032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646259, 31.688139, 36.609123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009853, 31.805363, 36.490559>,  <32.228008, 31.875696, 36.419418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009853, 31.805363, 36.490559>,  <31.646259, 31.688139, 36.609123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009853, 31.805363, 36.490559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415102, -0.571852, 0.707584,
		0.037861, -0.766225, -0.641456,
		0.908987, 0.293059, -0.296411,
		32.282551, 31.893280, 36.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045288, 31.090649, 36.426327>,  <31.646259, 31.688139, 36.609123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045288, 31.090649, 36.426327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285099, 31.388250, 36.544323>,  <32.428986, 31.566813, 36.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285099, 31.388250, 36.544323>,  <32.045288, 31.090649, 36.426327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285099, 31.388250, 36.544323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529282, -0.645034, 0.551173,
		0.600354, -0.174313, -0.780506,
		0.599530, 0.744006, 0.294989,
		32.464958, 31.611452, 36.632820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683434, 30.750288, 36.413513>,  <32.045288, 31.090649, 36.426327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683434, 30.750288, 36.413513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687584, 31.066637, 36.658272>,  <32.690075, 31.256447, 36.805126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687584, 31.066637, 36.658272>,  <32.683434, 30.750288, 36.413513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687584, 31.066637, 36.658272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658369, -0.465978, 0.591113,
		0.752623, 0.396721, -0.525519,
		0.010373, 0.790871, 0.611894,
		32.690697, 31.303898, 36.841839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354729, 30.813702, 36.588612>,  <32.683434, 30.750288, 36.413513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354729, 30.813702, 36.588612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171223, 31.012100, 36.883507>,  <33.061119, 31.131140, 37.060444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171223, 31.012100, 36.883507>,  <33.354729, 30.813702, 36.588612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171223, 31.012100, 36.883507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553138, -0.489922, 0.673806,
		0.695396, 0.716913, -0.049597,
		-0.458762, 0.495997, 0.737242,
		33.033592, 31.160900, 37.104679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897846, 31.052004, 37.061077>,  <33.354729, 30.813702, 36.588612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897846, 31.052004, 37.061077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560944, 31.074179, 37.275562>,  <33.358803, 31.087484, 37.404255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560944, 31.074179, 37.275562>,  <33.897846, 31.052004, 37.061077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560944, 31.074179, 37.275562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484478, -0.358338, 0.798044,
		0.236387, 0.931945, 0.274955,
		-0.842260, 0.055438, 0.536213,
		33.308266, 31.090811, 37.436428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081787, 31.293907, 37.687229>,  <33.897846, 31.052004, 37.061077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081787, 31.293907, 37.687229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733406, 31.104296, 37.738983>,  <33.524380, 30.990528, 37.770035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733406, 31.104296, 37.738983>,  <34.081787, 31.293907, 37.687229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733406, 31.104296, 37.738983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413688, -0.565283, 0.713665,
		-0.265158, 0.675093, 0.688434,
		-0.870950, -0.474030, 0.129388,
		33.472122, 30.962086, 37.777802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964268, 31.380419, 38.277050>,  <34.081787, 31.293907, 37.687229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964268, 31.380419, 38.277050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722748, 31.071932, 38.196400>,  <33.577835, 30.886839, 38.148010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722748, 31.071932, 38.196400>,  <33.964268, 31.380419, 38.277050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722748, 31.071932, 38.196400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303379, -0.456225, 0.836553,
		-0.737150, 0.443939, 0.509438,
		-0.603797, -0.771218, -0.201624,
		33.541607, 30.840567, 38.135914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455196, 31.282740, 38.892418>,  <33.964268, 31.380419, 38.277050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455196, 31.282740, 38.892418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509163, 30.923611, 38.724747>,  <33.541542, 30.708134, 38.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509163, 30.923611, 38.724747>,  <33.455196, 31.282740, 38.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509163, 30.923611, 38.724747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123050, -0.434952, 0.892006,
		-0.983187, -0.068767, -0.169159,
		0.134917, -0.897824, -0.419178,
		33.549637, 30.654264, 38.598995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911869, 30.887486, 39.275368>,  <33.455196, 31.282740, 38.892418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911869, 30.887486, 39.275368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167736, 30.637182, 39.096813>,  <33.321255, 30.487001, 38.989681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167736, 30.637182, 39.096813>,  <32.911869, 30.887486, 39.275368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167736, 30.637182, 39.096813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055639, -0.616903, 0.785070,
		-0.766639, -0.477344, -0.429427,
		0.639664, -0.625758, -0.446383,
		33.359634, 30.449455, 38.962898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676613, 30.237015, 39.538078>,  <32.911869, 30.887486, 39.275368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676613, 30.237015, 39.538078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041943, 30.179211, 39.385792>,  <33.261143, 30.144527, 39.294418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041943, 30.179211, 39.385792>,  <32.676613, 30.237015, 39.538078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041943, 30.179211, 39.385792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228261, -0.592559, 0.772509,
		-0.337234, -0.792459, -0.508216,
		0.913329, -0.144510, -0.380718,
		33.315941, 30.135857, 39.271576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865864, 29.462711, 39.483021>,  <32.676613, 30.237015, 39.538078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865864, 29.462711, 39.483021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196404, 29.684391, 39.523037>,  <33.394726, 29.817398, 39.547047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196404, 29.684391, 39.523037>,  <32.865864, 29.462711, 39.483021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196404, 29.684391, 39.523037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302635, -0.586827, 0.751030,
		0.474929, -0.590337, -0.652645,
		0.826350, 0.554199, 0.100045,
		33.444309, 29.850651, 39.553051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327484, 28.967039, 39.654823>,  <32.865864, 29.462711, 39.483021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327484, 28.967039, 39.654823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539013, 29.299759, 39.722298>,  <33.665928, 29.499392, 39.762783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539013, 29.299759, 39.722298>,  <33.327484, 28.967039, 39.654823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539013, 29.299759, 39.722298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531057, -0.479324, 0.698732,
		0.662063, -0.279919, -0.695210,
		0.528820, 0.831802, 0.168690,
		33.697659, 29.549299, 39.772903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988205, 28.688335, 39.629467>,  <33.327484, 28.967039, 39.654823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988205, 28.688335, 39.629467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981216, 29.039423, 39.821007>,  <33.977024, 29.250076, 39.935932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981216, 29.039423, 39.821007>,  <33.988205, 28.688335, 39.629467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981216, 29.039423, 39.821007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425092, -0.426965, 0.798121,
		0.904981, 0.217501, -0.365653,
		-0.017472, 0.877721, 0.478854,
		33.975975, 29.302740, 39.964664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599388, 28.827169, 39.845215>,  <33.988205, 28.688335, 39.629467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599388, 28.827169, 39.845215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428341, 29.094109, 40.089111>,  <34.325710, 29.254272, 40.235451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428341, 29.094109, 40.089111>,  <34.599388, 28.827169, 39.845215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428341, 29.094109, 40.089111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607482, -0.287350, 0.740537,
		0.669406, 0.687077, -0.282525,
		-0.427623, 0.667349, 0.609741,
		34.300053, 29.294313, 40.272034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086128, 29.061659, 40.200180>,  <34.599388, 28.827169, 39.845215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086128, 29.061659, 40.200180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775364, 29.138109, 40.440136>,  <34.588905, 29.183979, 40.584110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775364, 29.138109, 40.440136>,  <35.086128, 29.061659, 40.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775364, 29.138109, 40.440136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496414, -0.400115, 0.770377,
		0.387267, 0.896314, 0.215977,
		-0.776915, 0.191128, 0.599894,
		34.542290, 29.195448, 40.620106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347782, 29.324301, 40.893120>,  <35.086128, 29.061659, 40.200180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347782, 29.324301, 40.893120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973011, 29.245251, 41.008430>,  <34.748146, 29.197821, 41.077618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973011, 29.245251, 41.008430>,  <35.347782, 29.324301, 40.893120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973011, 29.245251, 41.008430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318590, -0.143730, 0.936932,
		-0.143730, 0.969683, 0.197628,
		-0.936932, -0.197628, 0.288273,
		34.691933, 29.185963, 41.094913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381954, 29.747818, 41.429153>,  <35.347782, 29.324301, 40.893120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381954, 29.747818, 41.429153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078491, 29.493671, 41.486774>,  <34.896412, 29.341185, 41.521347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078491, 29.493671, 41.486774>,  <35.381954, 29.747818, 41.429153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078491, 29.493671, 41.486774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352904, -0.214925, 0.910640,
		-0.547628, 0.741700, 0.387277,
		-0.758658, -0.635364, 0.144050,
		34.850895, 29.303062, 41.529991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049721, 29.965366, 42.026646>,  <35.381954, 29.747818, 41.429153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049721, 29.965366, 42.026646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918823, 29.588573, 41.996765>,  <34.840286, 29.362497, 41.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918823, 29.588573, 41.996765>,  <35.049721, 29.965366, 42.026646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918823, 29.588573, 41.996765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261244, -0.166158, 0.950864,
		-0.908110, 0.291649, 0.300462,
		-0.327242, -0.941983, -0.074698,
		34.820652, 29.305979, 41.974354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663834, 29.866552, 42.632698>,  <35.049721, 29.965366, 42.026646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663834, 29.866552, 42.632698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767082, 29.503353, 42.500690>,  <34.829033, 29.285433, 42.421486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767082, 29.503353, 42.500690>,  <34.663834, 29.866552, 42.632698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767082, 29.503353, 42.500690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233772, -0.272742, 0.933254,
		-0.937402, -0.318044, 0.141864,
		0.258123, -0.907998, -0.330018,
		34.844521, 29.230953, 42.401684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396603, 29.374245, 43.082123>,  <34.663834, 29.866552, 42.632698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396603, 29.374245, 43.082123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711159, 29.187037, 42.920853>,  <34.899891, 29.074711, 42.824093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711159, 29.187037, 42.920853>,  <34.396603, 29.374245, 43.082123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711159, 29.187037, 42.920853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351569, -0.197566, 0.915078,
		-0.507931, -0.861349, 0.009179,
		0.786388, -0.468023, -0.403173,
		34.947075, 29.046629, 42.799900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400936, 28.711382, 43.504459>,  <34.396603, 29.374245, 43.082123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400936, 28.711382, 43.504459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775700, 28.737532, 43.367100>,  <35.000557, 28.753222, 43.284683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775700, 28.737532, 43.367100>,  <34.400936, 28.711382, 43.504459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775700, 28.737532, 43.367100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348622, -0.102781, 0.931611,
		0.025608, -0.992553, -0.119087,
		0.936913, 0.065374, -0.343394,
		35.056774, 28.757143, 43.264080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778915, 28.184652, 43.854885>,  <34.400936, 28.711382, 43.504459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778915, 28.184652, 43.854885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075726, 28.418262, 43.723244>,  <35.253811, 28.558428, 43.644257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075726, 28.418262, 43.723244>,  <34.778915, 28.184652, 43.854885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075726, 28.418262, 43.723244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412356, -0.010576, 0.910962,
		0.528544, -0.811667, -0.248674,
		0.742027, 0.584025, -0.329105,
		35.298332, 28.593470, 43.624512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325695, 27.943275, 44.281582>,  <34.778915, 28.184652, 43.854885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325695, 27.943275, 44.281582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472374, 28.278456, 44.119904>,  <35.560383, 28.479563, 44.022896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472374, 28.278456, 44.119904>,  <35.325695, 27.943275, 44.281582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472374, 28.278456, 44.119904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568733, 0.141915, 0.810187,
		0.736257, -0.526973, -0.424529,
		0.366700, 0.837949, -0.404193,
		35.582382, 28.529840, 43.998646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086124, 27.873854, 44.110931>,  <35.325695, 27.943275, 44.281582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086124, 27.873854, 44.110931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948235, 28.237469, 44.204578>,  <35.865501, 28.455639, 44.260765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948235, 28.237469, 44.204578>,  <36.086124, 27.873854, 44.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948235, 28.237469, 44.204578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600242, 0.021713, 0.799523,
		0.721714, 0.416146, -0.553128,
		-0.344729, 0.909038, 0.234118,
		35.844814, 28.510180, 44.274815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706963, 28.217272, 44.516224>,  <36.086124, 27.873854, 44.110931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706963, 28.217272, 44.516224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397961, 28.459484, 44.592720>,  <36.212559, 28.604811, 44.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397961, 28.459484, 44.592720>,  <36.706963, 28.217272, 44.516224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397961, 28.459484, 44.592720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370187, 0.184731, 0.910404,
		0.515947, 0.774086, -0.366864,
		-0.772503, 0.605529, 0.191245,
		36.166210, 28.641142, 44.650093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933266, 28.637096, 45.083279>,  <36.706963, 28.217272, 44.516224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933266, 28.637096, 45.083279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545166, 28.732811, 45.098042>,  <36.312305, 28.790239, 45.106899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545166, 28.732811, 45.098042>,  <36.933266, 28.637096, 45.083279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545166, 28.732811, 45.098042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071127, 0.135990, 0.988154,
		0.231434, 0.961378, -0.148963,
		-0.970247, 0.239287, 0.036907,
		36.254093, 28.804598, 45.109116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037701, 29.255812, 44.724430>,  <36.933266, 28.637096, 45.083279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037701, 29.255812, 44.724430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436752, 29.259985, 44.697247>,  <37.676186, 29.262489, 44.680935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436752, 29.259985, 44.697247>,  <37.037701, 29.255812, 44.724430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436752, 29.259985, 44.697247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066716, -0.092137, -0.993509,
		-0.016629, 0.995692, -0.091223,
		0.997633, 0.010435, -0.067961,
		37.736042, 29.263115, 44.676857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133018, 29.880188, 44.307369>,  <37.037701, 29.255812, 44.724430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133018, 29.880188, 44.307369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463226, 29.656744, 44.275169>,  <37.661350, 29.522678, 44.255852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463226, 29.656744, 44.275169>,  <37.133018, 29.880188, 44.307369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463226, 29.656744, 44.275169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091643, 0.273413, -0.957521,
		0.556888, 0.783072, 0.276899,
		0.825516, -0.558608, -0.080497,
		37.710880, 29.489162, 44.251019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464394, 30.313639, 43.758282>,  <37.133018, 29.880188, 44.307369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464394, 30.313639, 43.758282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670860, 29.972965, 43.794510>,  <37.794739, 29.768560, 43.816246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670860, 29.972965, 43.794510>,  <37.464394, 30.313639, 43.758282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670860, 29.972965, 43.794510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205942, 0.020767, -0.978344,
		0.831360, 0.523641, 0.186116,
		0.516166, -0.851685, 0.090575,
		37.825710, 29.717459, 43.821682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161121, 30.390507, 43.530090>,  <37.464394, 30.313639, 43.758282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161121, 30.390507, 43.530090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100903, 29.999432, 43.471485>,  <38.064774, 29.764788, 43.436321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100903, 29.999432, 43.471485>,  <38.161121, 30.390507, 43.530090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100903, 29.999432, 43.471485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063708, 0.138299, -0.988339,
		0.986548, -0.158123, 0.041466,
		-0.150544, -0.977686, -0.146512,
		38.055740, 29.706125, 43.427532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524330, 30.245285, 42.917542>,  <38.161121, 30.390507, 43.530090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524330, 30.245285, 42.917542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273727, 29.935337, 42.951160>,  <38.123367, 29.749369, 42.971333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273727, 29.935337, 42.951160>,  <38.524330, 30.245285, 42.917542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273727, 29.935337, 42.951160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085758, -0.038649, -0.995566,
		0.774683, -0.630938, -0.042238,
		-0.626508, -0.774870, 0.084049,
		38.085773, 29.702877, 42.976376>
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
