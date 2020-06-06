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
	<24.121323, 35.133656, 35.253609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259531, 34.960316, 34.920666>,  <24.342457, 34.856312, 34.720901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259531, 34.960316, 34.920666>,  <24.121323, 35.133656, 35.253609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259531, 34.960316, 34.920666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169427, -0.843603, 0.509537,
		-0.922990, -0.317080, -0.218061,
		0.345521, -0.433352, -0.832359,
		24.363188, 34.830311, 34.670959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.793865, 34.444000, 35.053883>,  <24.121323, 35.133656, 35.253609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.793865, 34.444000, 35.053883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171425, 34.462189, 34.923050>,  <24.397961, 34.473103, 34.844551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171425, 34.462189, 34.923050>,  <23.793865, 34.444000, 35.053883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171425, 34.462189, 34.923050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200769, -0.865422, 0.459060,
		-0.262192, -0.498976, -0.826001,
		0.943900, 0.045473, -0.327086,
		24.454596, 34.475830, 34.824924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.959961, 33.720982, 34.906116>,  <23.793865, 34.444000, 35.053883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.959961, 33.720982, 34.906116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312778, 33.904640, 34.948418>,  <24.524469, 34.014835, 34.973801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312778, 33.904640, 34.948418>,  <23.959961, 33.720982, 34.906116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312778, 33.904640, 34.948418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374717, -0.819650, 0.433314,
		0.285639, -0.342572, -0.895017,
		0.882042, 0.459150, 0.105756,
		24.577391, 34.042385, 34.980145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449539, 33.172981, 34.698658>,  <23.959961, 33.720982, 34.906116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449539, 33.172981, 34.698658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643293, 33.459072, 34.900181>,  <24.759546, 33.630726, 35.021095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643293, 33.459072, 34.900181>,  <24.449539, 33.172981, 34.698658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643293, 33.459072, 34.900181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529692, -0.698092, 0.481761,
		0.696273, 0.033506, -0.716995,
		0.484387, 0.715223, 0.503810,
		24.788610, 33.673637, 35.051323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281424, 33.112942, 34.663494>,  <24.449539, 33.172981, 34.698658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281424, 33.112942, 34.663494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146978, 33.294144, 34.993782>,  <25.066311, 33.402866, 35.191956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146978, 33.294144, 34.993782>,  <25.281424, 33.112942, 34.663494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146978, 33.294144, 34.993782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375229, -0.739731, 0.558571,
		0.863847, 0.497577, 0.078652,
		-0.336113, 0.453007, 0.825719,
		25.046144, 33.430046, 35.241497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786692, 33.266861, 35.175831>,  <25.281424, 33.112942, 34.663494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786692, 33.266861, 35.175831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422724, 33.169731, 35.310341>,  <25.204344, 33.111454, 35.391048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422724, 33.169731, 35.310341>,  <25.786692, 33.266861, 35.175831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422724, 33.169731, 35.310341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370374, -0.840637, 0.395161,
		0.186732, 0.484113, 0.854848,
		-0.909920, -0.242824, 0.336277,
		25.149748, 33.096886, 35.411224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890816, 33.103298, 35.877583>,  <25.786692, 33.266861, 35.175831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890816, 33.103298, 35.877583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562845, 32.898697, 35.774754>,  <25.366062, 32.775936, 35.713055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562845, 32.898697, 35.774754>,  <25.890816, 33.103298, 35.877583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562845, 32.898697, 35.774754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436745, -0.849233, 0.296745,
		-0.370102, 0.131033, 0.919703,
		-0.819926, -0.511502, -0.257075,
		25.316868, 32.745247, 35.697632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546318, 32.733856, 36.451691>,  <25.890816, 33.103298, 35.877583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546318, 32.733856, 36.451691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457846, 32.545975, 36.109825>,  <25.404762, 32.433247, 35.904705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457846, 32.545975, 36.109825>,  <25.546318, 32.733856, 36.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457846, 32.545975, 36.109825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646377, -0.726836, 0.232175,
		-0.730257, -0.501084, 0.464371,
		-0.221182, -0.469706, -0.854666,
		25.391491, 32.405064, 35.853424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336418, 32.049797, 36.590923>,  <25.546318, 32.733856, 36.451691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336418, 32.049797, 36.590923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460030, 32.052834, 36.210514>,  <25.534197, 32.054657, 35.982269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460030, 32.052834, 36.210514>,  <25.336418, 32.049797, 36.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460030, 32.052834, 36.210514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716838, -0.659022, 0.227670,
		-0.625017, -0.752085, -0.209099,
		0.309028, 0.007592, -0.951023,
		25.552738, 32.055111, 35.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238331, 31.446568, 36.358837>,  <25.336418, 32.049797, 36.590923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238331, 31.446568, 36.358837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532780, 31.600691, 36.136246>,  <25.709448, 31.693165, 36.002693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532780, 31.600691, 36.136246>,  <25.238331, 31.446568, 36.358837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532780, 31.600691, 36.136246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583963, -0.777225, 0.234325,
		-0.342218, -0.497452, -0.797137,
		0.736121, 0.385308, -0.556474,
		25.753616, 31.716284, 35.969303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650156, 30.783745, 36.247761>,  <25.238331, 31.446568, 36.358837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650156, 30.783745, 36.247761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868187, 31.093597, 36.119488>,  <25.999006, 31.279509, 36.042526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868187, 31.093597, 36.119488>,  <25.650156, 30.783745, 36.247761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868187, 31.093597, 36.119488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754946, -0.287157, 0.589575,
		0.364618, -0.563459, -0.741328,
		0.545079, 0.774632, -0.320678,
		26.031712, 31.325987, 36.023285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367804, 30.521671, 36.286377>,  <25.650156, 30.783745, 36.247761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367804, 30.521671, 36.286377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361671, 30.921312, 36.302193>,  <26.357992, 31.161097, 36.311684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361671, 30.921312, 36.302193>,  <26.367804, 30.521671, 36.286377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361671, 30.921312, 36.302193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678529, -0.018651, 0.734337,
		0.734414, 0.038085, -0.677633,
		-0.015329, 0.999101, 0.039539,
		26.357073, 31.221043, 36.314053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947279, 30.200201, 36.461700>,  <26.367804, 30.521671, 36.286377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947279, 30.200201, 36.461700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238871, 30.470957, 36.420895>,  <27.413826, 30.633411, 36.396412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238871, 30.470957, 36.420895>,  <26.947279, 30.200201, 36.461700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238871, 30.470957, 36.420895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683981, 0.714261, -0.148332,
		-0.027539, 0.177908, 0.983662,
		0.728980, 0.676891, -0.102015,
		27.457565, 30.674025, 36.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826574, 30.752110, 36.913685>,  <26.947279, 30.200201, 36.461700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826574, 30.752110, 36.913685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017754, 30.883717, 36.587910>,  <27.132462, 30.962681, 36.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017754, 30.883717, 36.587910>,  <26.826574, 30.752110, 36.913685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017754, 30.883717, 36.587910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643138, 0.762604, -0.069342,
		0.598281, 0.556939, 0.576090,
		0.477948, 0.329019, -0.814440,
		27.161139, 30.982422, 36.343578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742472, 31.496750, 36.902767>,  <26.826574, 30.752110, 36.913685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742472, 31.496750, 36.902767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824606, 31.383764, 36.527950>,  <26.873886, 31.315973, 36.303059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824606, 31.383764, 36.527950>,  <26.742472, 31.496750, 36.902767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824606, 31.383764, 36.527950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774899, 0.537904, -0.331951,
		0.597804, 0.794275, -0.108432,
		0.205334, -0.282465, -0.937044,
		26.886206, 31.299025, 36.246838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828587, 32.009125, 36.366558>,  <26.742472, 31.496750, 36.902767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828587, 32.009125, 36.366558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721682, 31.671379, 36.180820>,  <26.657539, 31.468731, 36.069378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721682, 31.671379, 36.180820>,  <26.828587, 32.009125, 36.366558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721682, 31.671379, 36.180820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744547, 0.486852, -0.456754,
		0.611736, 0.223656, -0.758787,
		-0.267261, -0.844366, -0.464347,
		26.641502, 31.418070, 36.041515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973667, 32.102741, 35.605076>,  <26.828587, 32.009125, 36.366558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973667, 32.102741, 35.605076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683165, 31.858175, 35.730755>,  <26.508863, 31.711435, 35.806164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683165, 31.858175, 35.730755>,  <26.973667, 32.102741, 35.605076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683165, 31.858175, 35.730755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667932, 0.519564, -0.532842,
		0.162544, -0.596842, -0.785722,
		-0.726255, -0.611419, 0.314198,
		26.465288, 31.674749, 35.825016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551531, 31.956388, 35.028652>,  <26.973667, 32.102741, 35.605076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551531, 31.956388, 35.028652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315380, 31.915039, 35.348846>,  <26.173691, 31.890230, 35.540962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315380, 31.915039, 35.348846>,  <26.551531, 31.956388, 35.028652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315380, 31.915039, 35.348846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760887, 0.402150, -0.509240,
		-0.269272, -0.909719, -0.316075,
		-0.590376, -0.103374, 0.800481,
		26.138268, 31.884027, 35.588989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930017, 31.918407, 34.689445>,  <26.551531, 31.956388, 35.028652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930017, 31.918407, 34.689445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839334, 31.996468, 35.071129>,  <25.784924, 32.043304, 35.300140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839334, 31.996468, 35.071129>,  <25.930017, 31.918407, 34.689445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839334, 31.996468, 35.071129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809556, 0.506944, -0.296018,
		-0.541500, -0.839597, 0.043057,
		-0.226708, 0.195151, 0.954212,
		25.771322, 32.055012, 35.357391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227480, 31.889378, 34.716614>,  <25.930017, 31.918407, 34.689445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227480, 31.889378, 34.716614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321310, 32.098339, 35.044533>,  <25.377607, 32.223717, 35.241283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321310, 32.098339, 35.044533>,  <25.227480, 31.889378, 34.716614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321310, 32.098339, 35.044533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855032, 0.512103, -0.081675,
		-0.462488, -0.681795, 0.566798,
		0.234573, 0.522405, 0.819798,
		25.391682, 32.255062, 35.290474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743145, 31.749756, 35.123287>,  <25.227480, 31.889378, 34.716614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743145, 31.749756, 35.123287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812019, 31.958473, 35.457493>,  <24.853344, 32.083702, 35.658016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812019, 31.958473, 35.457493>,  <24.743145, 31.749756, 35.123287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812019, 31.958473, 35.457493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219634, 0.847167, -0.483808,
		-0.960267, -0.100202, 0.260474,
		0.172186, 0.521793, 0.835514,
		24.863676, 32.115013, 35.708145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.201208, 32.231022, 35.300220>,  <24.743145, 31.749756, 35.123287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.201208, 32.231022, 35.300220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.537533, 32.383087, 35.454369>,  <24.739328, 32.474327, 35.546856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.537533, 32.383087, 35.454369>,  <24.201208, 32.231022, 35.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.537533, 32.383087, 35.454369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277946, 0.914081, -0.295301,
		-0.464520, 0.141181, 0.874236,
		0.840813, 0.380164, 0.385368,
		24.789776, 32.497135, 35.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.963329, 32.792427, 35.684807>,  <24.201208, 32.231022, 35.300220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.963329, 32.792427, 35.684807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340843, 32.874538, 35.581169>,  <24.567352, 32.923805, 35.518986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340843, 32.874538, 35.581169>,  <23.963329, 32.792427, 35.684807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340843, 32.874538, 35.581169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293535, 0.880880, -0.371331,
		0.152005, 0.426510, 0.891619,
		0.943786, 0.205278, -0.259094,
		24.623980, 32.936123, 35.503441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.191160, 33.459656, 35.973515>,  <23.963329, 32.792427, 35.684807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.191160, 33.459656, 35.973515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393536, 33.381042, 35.637562>,  <24.514961, 33.333874, 35.435989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393536, 33.381042, 35.637562>,  <24.191160, 33.459656, 35.973515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393536, 33.381042, 35.637562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224274, 0.910236, -0.348097,
		0.832901, 0.364480, 0.416448,
		0.505941, -0.196532, -0.839880,
		24.545319, 33.322083, 35.385597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710716, 33.354187, 36.419350>,  <24.191160, 33.459656, 35.973515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710716, 33.354187, 36.419350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002214, 33.400425, 36.149364>,  <25.177113, 33.428169, 35.987373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002214, 33.400425, 36.149364>,  <24.710716, 33.354187, 36.419350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002214, 33.400425, 36.149364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494224, 0.771038, -0.401551,
		0.474000, 0.626209, 0.619021,
		0.728743, 0.115599, -0.674959,
		25.220837, 33.435104, 35.946877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978603, 34.098827, 36.290154>,  <24.710716, 33.354187, 36.419350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978603, 34.098827, 36.290154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099461, 33.938774, 35.944065>,  <25.171974, 33.842743, 35.736412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099461, 33.938774, 35.944065>,  <24.978603, 34.098827, 36.290154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099461, 33.938774, 35.944065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425630, 0.755514, -0.498034,
		0.852965, 0.518740, 0.057964,
		0.302142, -0.400134, -0.865218,
		25.190104, 33.818733, 35.684498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229626, 34.638359, 35.813366>,  <24.978603, 34.098827, 36.290154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229626, 34.638359, 35.813366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126795, 34.341892, 35.565308>,  <25.065096, 34.164013, 35.416473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126795, 34.341892, 35.565308>,  <25.229626, 34.638359, 35.813366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126795, 34.341892, 35.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324231, 0.670665, -0.667145,
		0.910377, 0.029562, -0.412722,
		-0.257076, -0.741171, -0.620143,
		25.049671, 34.119541, 35.379265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644762, 34.668560, 35.177654>,  <25.229626, 34.638359, 35.813366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644762, 34.668560, 35.177654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307180, 34.469906, 35.096561>,  <25.104631, 34.350716, 35.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307180, 34.469906, 35.096561>,  <25.644762, 34.668560, 35.177654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307180, 34.469906, 35.096561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142331, 0.571711, -0.808015,
		0.517191, -0.653072, -0.553183,
		-0.843953, -0.496633, -0.202732,
		25.053995, 34.320915, 35.035744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663408, 34.555096, 34.424290>,  <25.644762, 34.668560, 35.177654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663408, 34.555096, 34.424290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286818, 34.516041, 34.553345>,  <25.060863, 34.492607, 34.630775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286818, 34.516041, 34.553345>,  <25.663408, 34.555096, 34.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286818, 34.516041, 34.553345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335388, 0.367189, -0.867575,
		-0.033765, -0.925008, -0.378444,
		-0.941475, -0.097631, 0.322635,
		25.004375, 34.486752, 34.650135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386618, 34.235603, 34.377262>,  <25.663408, 34.555096, 34.424290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386618, 34.235603, 34.377262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718033, 34.284885, 34.595745>,  <26.916882, 34.314453, 34.726833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718033, 34.284885, 34.595745>,  <26.386618, 34.235603, 34.377262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718033, 34.284885, 34.595745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276869, -0.938037, -0.208400,
		0.486688, 0.323896, -0.811312,
		0.828540, 0.123202, 0.546207,
		26.966595, 34.321846, 34.759605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890070, 34.011818, 33.981937>,  <26.386618, 34.235603, 34.377262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890070, 34.011818, 33.981937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061817, 34.004379, 34.343113>,  <27.164865, 33.999916, 34.559818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061817, 34.004379, 34.343113>,  <26.890070, 34.011818, 33.981937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061817, 34.004379, 34.343113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257802, -0.955665, -0.142277,
		0.865553, 0.293868, -0.405536,
		0.429368, -0.018600, 0.902938,
		27.190628, 33.998798, 34.613995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533922, 33.821640, 33.848999>,  <26.890070, 34.011818, 33.981937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533922, 33.821640, 33.848999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507929, 33.715546, 34.233795>,  <27.492332, 33.651890, 34.464672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507929, 33.715546, 34.233795>,  <27.533922, 33.821640, 33.848999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507929, 33.715546, 34.233795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409510, -0.886201, -0.216678,
		0.909989, 0.379864, 0.166204,
		-0.064982, -0.265236, 0.961991,
		27.488434, 33.635975, 34.522392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172291, 33.344109, 33.952763>,  <27.533922, 33.821640, 33.848999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172291, 33.344109, 33.952763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939049, 33.271267, 34.269451>,  <27.799103, 33.227562, 34.459465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939049, 33.271267, 34.269451>,  <28.172291, 33.344109, 33.952763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939049, 33.271267, 34.269451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233717, -0.970956, -0.051192,
		0.778052, 0.155190, 0.608729,
		-0.583104, -0.182100, 0.791725,
		27.764118, 33.216637, 34.506969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592634, 32.837612, 34.310631>,  <28.172291, 33.344109, 33.952763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592634, 32.837612, 34.310631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209860, 32.808624, 34.423077>,  <27.980196, 32.791233, 34.490543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209860, 32.808624, 34.423077>,  <28.592634, 32.837612, 34.310631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209860, 32.808624, 34.423077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020680, -0.948864, -0.315007,
		0.289564, -0.307254, 0.906503,
		-0.956935, -0.072468, 0.281111,
		27.922779, 32.786884, 34.507408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410267, 32.260876, 34.777115>,  <28.592634, 32.837612, 34.310631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410267, 32.260876, 34.777115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102224, 32.366657, 34.544910>,  <27.917398, 32.430126, 34.405586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102224, 32.366657, 34.544910>,  <28.410267, 32.260876, 34.777115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102224, 32.366657, 34.544910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091129, -0.946295, -0.310195,
		-0.631370, -0.185982, 0.752849,
		-0.770109, 0.264454, -0.580514,
		27.871191, 32.445992, 34.370754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936684, 31.876150, 35.385090>,  <28.410267, 32.260876, 34.777115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936684, 31.876150, 35.385090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661957, 32.049526, 35.151711>,  <27.497122, 32.153553, 35.011681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661957, 32.049526, 35.151711>,  <27.936684, 31.876150, 35.385090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661957, 32.049526, 35.151711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247349, -0.894202, -0.373124,
		-0.683450, -0.111951, 0.721362,
		-0.686815, 0.433439, -0.583452,
		27.455912, 32.179558, 34.976677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374767, 31.503723, 35.482903>,  <27.936684, 31.876150, 35.385090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374767, 31.503723, 35.482903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363068, 31.657019, 35.113628>,  <27.356049, 31.748995, 34.892063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363068, 31.657019, 35.113628>,  <27.374767, 31.503723, 35.482903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363068, 31.657019, 35.113628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130089, -0.917186, -0.376624,
		-0.991071, 0.109080, 0.076682,
		-0.029249, 0.383237, -0.923187,
		27.354294, 31.771990, 34.836674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040213, 31.062090, 35.194469>,  <27.374767, 31.503723, 35.482903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040213, 31.062090, 35.194469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191717, 31.240095, 34.869877>,  <27.282619, 31.346899, 34.675121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191717, 31.240095, 34.869877>,  <27.040213, 31.062090, 35.194469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191717, 31.240095, 34.869877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125178, -0.893385, -0.431501,
		-0.916989, 0.061857, -0.394087,
		0.378763, 0.445012, -0.811482,
		27.305346, 31.373598, 34.626431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906528, 30.561947, 34.668842>,  <27.040213, 31.062090, 35.194469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906528, 30.561947, 34.668842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107231, 30.857199, 34.488441>,  <27.227654, 31.034349, 34.380199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107231, 30.857199, 34.488441>,  <26.906528, 30.561947, 34.668842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107231, 30.857199, 34.488441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173920, -0.596823, -0.783297,
		-0.847344, 0.314587, -0.427836,
		0.501758, 0.738131, -0.451001,
		27.257759, 31.078638, 34.353142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358799, 29.948893, 34.563843>,  <26.906528, 30.561947, 34.668842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358799, 29.948893, 34.563843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538721, 29.938097, 34.206757>,  <27.646675, 29.931620, 33.992504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538721, 29.938097, 34.206757>,  <27.358799, 29.948893, 34.563843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538721, 29.938097, 34.206757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156562, 0.986449, 0.049064,
		0.879296, -0.161835, 0.447937,
		0.449807, -0.026988, -0.892718,
		27.673664, 29.930000, 33.938942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980000, 30.354177, 34.655628>,  <27.358799, 29.948893, 34.563843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980000, 30.354177, 34.655628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846638, 30.356985, 34.278526>,  <27.766621, 30.358669, 34.052265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846638, 30.356985, 34.278526>,  <27.980000, 30.354177, 34.655628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846638, 30.356985, 34.278526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154620, 0.986840, -0.047332,
		0.930019, -0.161549, -0.330101,
		-0.333403, 0.007021, -0.942758,
		27.746616, 30.359091, 33.995697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377338, 30.903954, 34.319553>,  <27.980000, 30.354177, 34.655628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377338, 30.903954, 34.319553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011797, 30.840752, 34.169937>,  <27.792473, 30.802830, 34.080166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011797, 30.840752, 34.169937>,  <28.377338, 30.903954, 34.319553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011797, 30.840752, 34.169937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166279, 0.986025, -0.010278,
		0.370438, 0.052802, -0.927355,
		-0.913853, -0.158007, -0.374041,
		27.737640, 30.793350, 34.057724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373932, 31.428604, 33.858566>,  <28.377338, 30.903954, 34.319553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373932, 31.428604, 33.858566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016872, 31.305159, 33.989983>,  <27.802637, 31.231092, 34.068832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016872, 31.305159, 33.989983>,  <28.373932, 31.428604, 33.858566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016872, 31.305159, 33.989983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271112, 0.949880, 0.155647,
		-0.360110, 0.049867, -0.931576,
		-0.892647, -0.308612, 0.328542,
		27.749079, 31.212576, 34.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751753, 31.816740, 33.482533>,  <28.373932, 31.428604, 33.858566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751753, 31.816740, 33.482533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628004, 31.696861, 33.843525>,  <27.553755, 31.624933, 34.060120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628004, 31.696861, 33.843525>,  <27.751753, 31.816740, 33.482533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628004, 31.696861, 33.843525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335533, 0.922402, 0.191291,
		-0.889780, -0.243633, -0.385922,
		-0.309370, -0.299697, 0.902481,
		27.535192, 31.606953, 34.114269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262842, 32.334721, 33.629620>,  <27.751753, 31.816740, 33.482533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262842, 32.334721, 33.629620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336088, 32.167511, 33.985535>,  <27.380035, 32.067184, 34.199085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336088, 32.167511, 33.985535>,  <27.262842, 32.334721, 33.629620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336088, 32.167511, 33.985535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229846, 0.861803, 0.452181,
		-0.955846, -0.287314, 0.061725,
		0.183113, -0.418028, 0.889788,
		27.391022, 32.042103, 34.252472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762905, 32.518448, 34.144447>,  <27.262842, 32.334721, 33.629620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762905, 32.518448, 34.144447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104654, 32.447720, 34.339909>,  <27.309704, 32.405281, 34.457184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104654, 32.447720, 34.339909>,  <26.762905, 32.518448, 34.144447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104654, 32.447720, 34.339909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075451, 0.888156, 0.453306,
		-0.514151, -0.424162, 0.745476,
		0.854374, -0.176821, 0.488650,
		27.360968, 32.394672, 34.486504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658817, 32.721230, 34.754845>,  <26.762905, 32.518448, 34.144447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658817, 32.721230, 34.754845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057224, 32.728657, 34.719955>,  <27.296268, 32.733112, 34.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057224, 32.728657, 34.719955>,  <26.658817, 32.721230, 34.754845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057224, 32.728657, 34.719955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000099, 0.977860, 0.209259,
		0.089175, -0.208434, 0.973962,
		0.996016, 0.018564, -0.087222,
		27.356030, 32.734226, 34.693790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861891, 32.924023, 35.363022>,  <26.658817, 32.721230, 34.754845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861891, 32.924023, 35.363022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152391, 33.030361, 35.109444>,  <27.326693, 33.094162, 34.957298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152391, 33.030361, 35.109444>,  <26.861891, 32.924023, 35.363022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152391, 33.030361, 35.109444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008936, 0.925769, 0.377983,
		0.687369, -0.268846, 0.674718,
		0.726253, 0.265844, -0.633943,
		27.370268, 33.110115, 34.919262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479664, 33.223984, 35.752953>,  <26.861891, 32.924023, 35.363022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479664, 33.223984, 35.752953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471029, 33.375286, 35.382774>,  <27.465849, 33.466068, 35.160667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471029, 33.375286, 35.382774>,  <27.479664, 33.223984, 35.752953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471029, 33.375286, 35.382774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073670, 0.922545, 0.378792,
		0.997049, 0.076354, 0.007952,
		-0.021586, 0.378260, -0.925448,
		27.464554, 33.488766, 35.105141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542439, 33.949345, 35.783894>,  <27.479664, 33.223984, 35.752953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542439, 33.949345, 35.783894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473225, 33.954243, 35.389957>,  <27.431696, 33.957184, 35.153595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473225, 33.954243, 35.389957>,  <27.542439, 33.949345, 35.783894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473225, 33.954243, 35.389957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077541, 0.996649, 0.026020,
		0.981859, 0.080868, -0.171505,
		-0.173034, 0.012249, -0.984839,
		27.421314, 33.957916, 35.094505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024809, 34.478580, 35.461021>,  <27.542439, 33.949345, 35.783894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024809, 34.478580, 35.461021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689938, 34.436836, 35.246269>,  <27.489016, 34.411789, 35.117416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689938, 34.436836, 35.246269>,  <28.024809, 34.478580, 35.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689938, 34.436836, 35.246269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135774, 0.990555, 0.019162,
		0.529809, 0.088936, -0.843441,
		-0.837178, -0.104365, -0.536880,
		27.438784, 34.405525, 35.085205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096090, 34.870239, 34.759480>,  <28.024809, 34.478580, 35.461021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096090, 34.870239, 34.759480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726545, 34.803345, 34.897179>,  <27.504818, 34.763206, 34.979797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726545, 34.803345, 34.897179>,  <28.096090, 34.870239, 34.759480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726545, 34.803345, 34.897179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259327, 0.935057, -0.241700,
		-0.281470, -0.312571, -0.907235,
		-0.923864, -0.167239, 0.344248,
		27.449387, 34.753174, 35.000454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573694, 35.015995, 34.233425>,  <28.096090, 34.870239, 34.759480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573694, 35.015995, 34.233425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428579, 35.085537, 34.599628>,  <27.341511, 35.127262, 34.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428579, 35.085537, 34.599628>,  <27.573694, 35.015995, 34.233425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428579, 35.085537, 34.599628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181503, 0.950443, -0.252417,
		-0.914025, -0.257742, -0.313252,
		-0.362787, 0.173859, 0.915510,
		27.319744, 35.137695, 34.874283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322998, 35.612656, 34.268589>,  <27.573694, 35.015995, 34.233425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322998, 35.612656, 34.268589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226669, 35.727432, 33.897717>,  <27.168873, 35.796299, 33.675194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226669, 35.727432, 33.897717>,  <27.322998, 35.612656, 34.268589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226669, 35.727432, 33.897717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324789, 0.876396, 0.355586,
		0.914613, 0.386772, -0.117860,
		-0.240823, 0.286944, -0.927183,
		27.154423, 35.813515, 33.619560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763601, 36.147499, 34.152130>,  <27.322998, 35.612656, 34.268589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763601, 36.147499, 34.152130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396297, 36.159546, 33.994198>,  <27.175915, 36.166775, 33.899441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396297, 36.159546, 33.994198>,  <27.763601, 36.147499, 34.152130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396297, 36.159546, 33.994198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163344, 0.879509, 0.446970,
		0.360715, 0.474928, -0.802700,
		-0.918261, 0.030113, -0.394829,
		27.120819, 36.168579, 33.875748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542114, 36.152489, 34.271069>,  <27.763601, 36.147499, 34.152130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542114, 36.152489, 34.271069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345543, 35.819225, 34.372536>,  <28.227600, 35.619267, 34.433418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345543, 35.819225, 34.372536>,  <28.542114, 36.152489, 34.271069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345543, 35.819225, 34.372536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477968, 0.501492, 0.721146,
		-0.728041, 0.233146, -0.644670,
		-0.491429, -0.833156, 0.253671,
		28.198114, 35.569279, 34.448639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054401, 36.452164, 33.787437>,  <28.542114, 36.152489, 34.271069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054401, 36.452164, 33.787437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171661, 36.628826, 34.126614>,  <29.242018, 36.734821, 34.330120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171661, 36.628826, 34.126614>,  <29.054401, 36.452164, 33.787437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171661, 36.628826, 34.126614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914710, -0.387595, -0.114351,
		0.278156, 0.809143, -0.517606,
		0.293148, 0.441652, 0.847943,
		29.259605, 36.761322, 34.380997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660772, 36.714066, 33.630592>,  <29.054401, 36.452164, 33.787437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660772, 36.714066, 33.630592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640512, 36.651524, 34.025154>,  <29.628357, 36.613998, 34.261890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640512, 36.651524, 34.025154>,  <29.660772, 36.714066, 33.630592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640512, 36.651524, 34.025154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865735, -0.499299, -0.034691,
		0.497934, 0.852205, 0.160652,
		-0.050649, -0.156356, 0.986401,
		29.625319, 36.604618, 34.321075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290363, 36.922001, 33.965607>,  <29.660772, 36.714066, 33.630592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290363, 36.922001, 33.965607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140436, 36.648895, 34.216476>,  <30.050480, 36.485031, 34.366997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140436, 36.648895, 34.216476>,  <30.290363, 36.922001, 33.965607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140436, 36.648895, 34.216476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821916, -0.557689, -0.115923,
		0.428914, 0.472031, 0.770207,
		-0.374817, -0.682766, 0.627170,
		30.027990, 36.444065, 34.404629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697912, 36.826206, 34.556511>,  <30.290363, 36.922001, 33.965607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697912, 36.826206, 34.556511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500685, 36.479683, 34.524536>,  <30.382349, 36.271767, 34.505352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500685, 36.479683, 34.524536>,  <30.697912, 36.826206, 34.556511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500685, 36.479683, 34.524536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868664, -0.485159, -0.100224,
		0.048040, -0.118859, 0.991748,
		-0.493068, -0.866310, -0.079941,
		30.352764, 36.219791, 34.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419024, 36.911098, 34.709984>,  <30.697912, 36.826206, 34.556511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419024, 36.911098, 34.709984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816748, 36.918224, 34.751991>,  <32.055382, 36.922501, 34.777195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816748, 36.918224, 34.751991>,  <31.419024, 36.911098, 34.709984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816748, 36.918224, 34.751991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106374, -0.218233, -0.970082,
		0.005637, 0.975734, -0.218886,
		0.994310, 0.017816, 0.105023,
		32.115040, 36.923569, 34.783497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833658, 37.436699, 34.381176>,  <31.419024, 36.911098, 34.709984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833658, 37.436699, 34.381176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010441, 37.078358, 34.399593>,  <32.116508, 36.863354, 34.410645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010441, 37.078358, 34.399593>,  <31.833658, 37.436699, 34.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010441, 37.078358, 34.399593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278753, -0.185942, -0.942190,
		0.852626, 0.403572, -0.331901,
		0.441956, -0.895854, 0.046042,
		32.143028, 36.809601, 34.413406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381111, 37.402580, 33.887173>,  <31.833658, 37.436699, 34.381176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381111, 37.402580, 33.887173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205391, 37.050137, 33.957207>,  <32.099960, 36.838669, 33.999229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205391, 37.050137, 33.957207>,  <32.381111, 37.402580, 33.887173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205391, 37.050137, 33.957207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090116, -0.150698, -0.984464,
		0.893808, -0.448256, -0.013200,
		-0.439302, -0.881111, 0.175090,
		32.073601, 36.785805, 34.009735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722843, 36.697960, 33.738415>,  <32.381111, 37.402580, 33.887173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722843, 36.697960, 33.738415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338951, 36.591225, 33.703270>,  <32.108616, 36.527184, 33.682182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338951, 36.591225, 33.703270>,  <32.722843, 36.697960, 33.738415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338951, 36.591225, 33.703270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145345, -0.203966, -0.968129,
		0.240416, -0.941909, 0.234536,
		-0.959727, -0.266842, -0.087865,
		32.051033, 36.511173, 33.676910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733612, 35.993080, 33.379627>,  <32.722843, 36.697960, 33.738415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733612, 35.993080, 33.379627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408154, 36.221024, 33.333588>,  <32.212879, 36.357788, 33.305962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408154, 36.221024, 33.333588>,  <32.733612, 35.993080, 33.379627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408154, 36.221024, 33.333588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111879, -0.040805, -0.992884,
		-0.570496, -0.820732, -0.030554,
		-0.813645, 0.569854, -0.115101,
		32.164059, 36.391979, 33.299057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228836, 35.673733, 32.927620>,  <32.733612, 35.993080, 33.379627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228836, 35.673733, 32.927620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231579, 36.070507, 32.877007>,  <32.233223, 36.308571, 32.846638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231579, 36.070507, 32.877007>,  <32.228836, 35.673733, 32.927620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231579, 36.070507, 32.877007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312466, -0.122328, -0.942020,
		-0.949904, -0.033083, -0.310785,
		0.006853, 0.991938, -0.126537,
		32.233635, 36.368088, 32.839046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836338, 35.781219, 32.327923>,  <32.228836, 35.673733, 32.927620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836338, 35.781219, 32.327923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087856, 36.088264, 32.377548>,  <32.238766, 36.272491, 32.407322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087856, 36.088264, 32.377548>,  <31.836338, 35.781219, 32.327923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087856, 36.088264, 32.377548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127339, 0.055744, -0.990292,
		-0.767075, 0.638487, -0.062695,
		0.628794, 0.767611, 0.124064,
		32.276493, 36.318546, 32.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801844, 36.204666, 31.703020>,  <31.836338, 35.781219, 32.327923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801844, 36.204666, 31.703020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147419, 36.309692, 31.874912>,  <32.354763, 36.372707, 31.978048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147419, 36.309692, 31.874912>,  <31.801844, 36.204666, 31.703020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147419, 36.309692, 31.874912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431654, 0.053437, -0.900455,
		-0.259395, 0.963432, -0.067173,
		0.863938, 0.262569, 0.429731,
		32.406601, 36.388462, 32.003830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024906, 36.809841, 31.295397>,  <31.801844, 36.204666, 31.703020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024906, 36.809841, 31.295397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367603, 36.698627, 31.469154>,  <32.573219, 36.631901, 31.573408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367603, 36.698627, 31.469154>,  <32.024906, 36.809841, 31.295397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367603, 36.698627, 31.469154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488283, 0.166063, -0.856740,
		0.166063, 0.946109, 0.278029,
		0.856740, -0.278029, 0.434392,
		32.624626, 36.615219, 31.599472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583015, 37.336178, 31.205475>,  <32.024906, 36.809841, 31.295397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583015, 37.336178, 31.205475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761192, 36.981541, 31.255333>,  <32.868099, 36.768757, 31.285248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761192, 36.981541, 31.255333>,  <32.583015, 37.336178, 31.205475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761192, 36.981541, 31.255333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596035, 0.189768, -0.780212,
		0.668077, 0.421829, 0.612971,
		0.445438, -0.886594, 0.124645,
		32.894825, 36.715561, 31.292727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300831, 37.459549, 31.273600>,  <32.583015, 37.336178, 31.205475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300831, 37.459549, 31.273600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306126, 37.070976, 31.178822>,  <33.309303, 36.837833, 31.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306126, 37.070976, 31.178822>,  <33.300831, 37.459549, 31.273600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306126, 37.070976, 31.178822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614698, 0.194807, -0.764328,
		0.788652, -0.135529, 0.599717,
		0.013240, -0.971433, -0.236944,
		33.310097, 36.779545, 31.107738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937344, 37.325634, 31.216230>,  <33.300831, 37.459549, 31.273600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937344, 37.325634, 31.216230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765999, 37.014954, 31.031515>,  <33.663193, 36.828545, 30.920685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765999, 37.014954, 31.031515>,  <33.937344, 37.325634, 31.216230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765999, 37.014954, 31.031515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572978, 0.161697, -0.803461,
		0.698716, -0.608766, 0.375766,
		-0.428359, -0.776697, -0.461790,
		33.637489, 36.781944, 30.892979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531361, 36.999962, 30.919500>,  <33.937344, 37.325634, 31.216230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531361, 36.999962, 30.919500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212467, 36.851383, 30.729153>,  <34.021133, 36.762238, 30.614944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212467, 36.851383, 30.729153>,  <34.531361, 36.999962, 30.919500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212467, 36.851383, 30.729153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513047, -0.001483, -0.858359,
		0.318128, -0.928454, 0.191752,
		-0.797231, -0.371446, -0.475869,
		33.973297, 36.739948, 30.586391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828171, 36.362453, 30.619495>,  <34.531361, 36.999962, 30.919500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828171, 36.362453, 30.619495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507732, 36.503654, 30.426151>,  <34.315472, 36.588375, 30.310144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507732, 36.503654, 30.426151>,  <34.828171, 36.362453, 30.619495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507732, 36.503654, 30.426151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495504, -0.061871, -0.866399,
		-0.335750, -0.933573, -0.125352,
		-0.801092, 0.353006, -0.483362,
		34.267406, 36.609554, 30.281143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922821, 36.063011, 29.992807>,  <34.828171, 36.362453, 30.619495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922821, 36.063011, 29.992807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640614, 36.324703, 29.883837>,  <34.471287, 36.481720, 29.818455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640614, 36.324703, 29.883837>,  <34.922821, 36.063011, 29.992807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640614, 36.324703, 29.883837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333117, -0.033150, -0.942302,
		-0.625516, -0.755567, -0.194548,
		-0.705523, 0.654233, -0.272428,
		34.428955, 36.520973, 29.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748478, 35.849613, 29.252552>,  <34.922821, 36.063011, 29.992807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748478, 35.849613, 29.252552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668140, 36.228260, 29.353413>,  <34.619938, 36.455448, 29.413929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668140, 36.228260, 29.353413>,  <34.748478, 35.849613, 29.252552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668140, 36.228260, 29.353413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488945, 0.319907, -0.811537,
		-0.848879, -0.039703, -0.527094,
		-0.200841, 0.946617, 0.252150,
		34.607887, 36.512245, 29.429058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345409, 36.193707, 28.786823>,  <34.748478, 35.849613, 29.252552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345409, 36.193707, 28.786823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527996, 36.504616, 28.960020>,  <34.637550, 36.691162, 29.063938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527996, 36.504616, 28.960020>,  <34.345409, 36.193707, 28.786823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527996, 36.504616, 28.960020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237535, 0.362529, -0.901193,
		-0.857445, 0.514219, -0.019146,
		0.456469, 0.777272, 0.432994,
		34.664936, 36.737797, 29.089918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539795, 36.486671, 28.265247>,  <34.345409, 36.193707, 28.786823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539795, 36.486671, 28.265247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696442, 36.740379, 28.531881>,  <34.790428, 36.892605, 28.691862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696442, 36.740379, 28.531881>,  <34.539795, 36.486671, 28.265247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696442, 36.740379, 28.531881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263152, 0.616985, -0.741674,
		-0.881696, 0.465865, 0.074712,
		0.391616, 0.634270, 0.666587,
		34.813927, 36.930660, 28.731857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255081, 37.157448, 28.158915>,  <34.539795, 36.486671, 28.265247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255081, 37.157448, 28.158915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603733, 37.220490, 28.344568>,  <34.812923, 37.258316, 28.455959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603733, 37.220490, 28.344568>,  <34.255081, 37.157448, 28.158915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603733, 37.220490, 28.344568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285246, 0.606948, -0.741787,
		-0.398614, 0.778957, 0.484079,
		0.871631, 0.157605, 0.464133,
		34.865223, 37.267773, 28.483809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357208, 37.911678, 28.158764>,  <34.255081, 37.157448, 28.158915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357208, 37.911678, 28.158764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728741, 37.789322, 28.242390>,  <34.951660, 37.715908, 28.292564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728741, 37.789322, 28.242390>,  <34.357208, 37.911678, 28.158764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728741, 37.789322, 28.242390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365077, 0.659363, -0.657236,
		0.063193, 0.686785, 0.724109,
		0.928830, -0.305888, 0.209062,
		35.007389, 37.697556, 28.305109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788857, 38.584171, 28.289688>,  <34.357208, 37.911678, 28.158764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788857, 38.584171, 28.289688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026943, 38.280586, 28.184086>,  <35.169796, 38.098434, 28.120724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026943, 38.280586, 28.184086>,  <34.788857, 38.584171, 28.289688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026943, 38.280586, 28.184086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417379, 0.572748, -0.705517,
		0.686667, 0.309746, 0.657682,
		0.595217, -0.758958, -0.264005,
		35.205509, 38.052898, 28.104885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530266, 38.851433, 28.280945>,  <34.788857, 38.584171, 28.289688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530266, 38.851433, 28.280945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487423, 38.542477, 28.030523>,  <35.461716, 38.357101, 27.880270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487423, 38.542477, 28.030523>,  <35.530266, 38.851433, 28.280945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487423, 38.542477, 28.030523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419475, 0.535783, -0.732787,
		0.901426, -0.341102, 0.266611,
		-0.107109, -0.772390, -0.626052,
		35.455292, 38.310760, 27.842707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221134, 38.735664, 28.077703>,  <35.530266, 38.851433, 28.280945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221134, 38.735664, 28.077703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945789, 38.605427, 27.818430>,  <35.780582, 38.527283, 27.662867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945789, 38.605427, 27.818430>,  <36.221134, 38.735664, 28.077703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945789, 38.605427, 27.818430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469244, 0.481539, -0.740223,
		0.553138, -0.813700, -0.178691,
		-0.688366, -0.325596, -0.648182,
		35.739281, 38.507748, 27.623976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625359, 38.635254, 27.479412>,  <36.221134, 38.735664, 28.077703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625359, 38.635254, 27.479412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254955, 38.608192, 27.330858>,  <36.032711, 38.591957, 27.241726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254955, 38.608192, 27.330858>,  <36.625359, 38.635254, 27.479412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254955, 38.608192, 27.330858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281086, 0.533131, -0.797974,
		0.251979, -0.843324, -0.474670,
		-0.926012, -0.067650, -0.371384,
		35.977150, 38.587898, 27.219442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626575, 38.403259, 26.840374>,  <36.625359, 38.635254, 27.479412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626575, 38.403259, 26.840374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276714, 38.595490, 26.865780>,  <36.066799, 38.710827, 26.881023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276714, 38.595490, 26.865780>,  <36.626575, 38.403259, 26.840374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276714, 38.595490, 26.865780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191771, 0.463372, -0.865165,
		-0.445208, -0.744537, -0.497449,
		-0.874650, 0.480574, 0.063516,
		36.014320, 38.739662, 26.884834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393147, 38.322075, 26.133261>,  <36.626575, 38.403259, 26.840374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393147, 38.322075, 26.133261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167782, 38.626343, 26.262230>,  <36.032562, 38.808903, 26.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167782, 38.626343, 26.262230>,  <36.393147, 38.322075, 26.133261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167782, 38.626343, 26.262230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194951, 0.501642, -0.842822,
		-0.802846, -0.411999, -0.430923,
		-0.563411, 0.760666, 0.322421,
		35.998760, 38.854542, 26.358955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947567, 38.482155, 25.620796>,  <36.393147, 38.322075, 26.133261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947567, 38.482155, 25.620796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944500, 38.819786, 25.835264>,  <35.942661, 39.022366, 25.963945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944500, 38.819786, 25.835264>,  <35.947567, 38.482155, 25.620796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944500, 38.819786, 25.835264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247546, 0.521099, -0.816809,
		-0.968846, 0.126468, -0.212940,
		-0.007663, 0.844075, 0.536171,
		35.942200, 39.073009, 25.996115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602982, 38.935841, 25.220716>,  <35.947567, 38.482155, 25.620796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602982, 38.935841, 25.220716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788383, 39.180264, 25.477394>,  <35.899624, 39.326920, 25.631401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788383, 39.180264, 25.477394>,  <35.602982, 38.935841, 25.220716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788383, 39.180264, 25.477394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221908, 0.621055, -0.751696,
		-0.857858, 0.490812, 0.152263,
		0.463505, 0.611060, 0.641692,
		35.927437, 39.363583, 25.669901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308685, 39.636776, 25.065800>,  <35.602982, 38.935841, 25.220716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308685, 39.636776, 25.065800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663357, 39.670658, 25.247623>,  <35.876160, 39.690987, 25.356718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663357, 39.670658, 25.247623>,  <35.308685, 39.636776, 25.065800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663357, 39.670658, 25.247623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329380, 0.574238, -0.749506,
		-0.324514, 0.814295, 0.481264,
		0.886679, 0.084706, 0.454561,
		35.929359, 39.696072, 25.383991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390812, 40.332222, 24.999710>,  <35.308685, 39.636776, 25.065800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390812, 40.332222, 24.999710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752605, 40.203388, 25.111547>,  <35.969681, 40.126087, 25.178650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752605, 40.203388, 25.111547>,  <35.390812, 40.332222, 24.999710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752605, 40.203388, 25.111547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423319, 0.757982, -0.496250,
		-0.052089, 0.567205, 0.821928,
		0.904482, -0.322089, 0.279591,
		36.023949, 40.106762, 25.195425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770294, 40.923035, 25.321770>,  <35.390812, 40.332222, 24.999710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770294, 40.923035, 25.321770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056465, 40.668251, 25.206917>,  <36.228168, 40.515381, 25.138004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056465, 40.668251, 25.206917>,  <35.770294, 40.923035, 25.321770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056465, 40.668251, 25.206917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560845, 0.768632, -0.307666,
		0.416671, 0.059076, 0.907136,
		0.715429, -0.636958, -0.287134,
		36.271095, 40.477165, 25.120777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430115, 41.173462, 25.401930>,  <35.770294, 40.923035, 25.321770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430115, 41.173462, 25.401930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518444, 40.895859, 25.127825>,  <36.571442, 40.729298, 24.963362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518444, 40.895859, 25.127825>,  <36.430115, 41.173462, 25.401930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518444, 40.895859, 25.127825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604175, 0.648902, -0.462492,
		0.765643, -0.311891, 0.562596,
		0.220823, -0.694010, -0.685264,
		36.584690, 40.687656, 24.922245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136883, 41.195248, 25.328291>,  <36.430115, 41.173462, 25.401930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136883, 41.195248, 25.328291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009251, 41.012253, 24.996292>,  <36.932671, 40.902454, 24.797092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009251, 41.012253, 24.996292>,  <37.136883, 41.195248, 25.328291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009251, 41.012253, 24.996292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672674, 0.507595, -0.538383,
		0.667607, -0.730102, 0.145781,
		-0.319077, -0.457492, -0.829995,
		36.913528, 40.875004, 24.747293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680683, 40.673851, 25.048882>,  <37.136883, 41.195248, 25.328291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680683, 40.673851, 25.048882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452469, 40.782085, 24.738714>,  <37.315540, 40.847027, 24.552614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452469, 40.782085, 24.738714>,  <37.680683, 40.673851, 25.048882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452469, 40.782085, 24.738714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814548, 0.306997, -0.492203,
		0.104867, -0.912435, -0.395557,
		-0.570538, 0.270584, -0.775416,
		37.281307, 40.863262, 24.506090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066757, 40.577366, 24.365170>,  <37.680683, 40.673851, 25.048882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066757, 40.577366, 24.365170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783482, 40.830765, 24.240498>,  <37.613518, 40.982803, 24.165695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783482, 40.830765, 24.240498>,  <38.066757, 40.577366, 24.365170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783482, 40.830765, 24.240498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663470, 0.446202, -0.600593,
		-0.241404, -0.632124, -0.736304,
		-0.708189, 0.633501, -0.311680,
		37.571026, 41.020817, 24.146994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229877, 40.649395, 23.655828>,  <38.066757, 40.577366, 24.365170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229877, 40.649395, 23.655828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983692, 40.954372, 23.735716>,  <37.835979, 41.137360, 23.783648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983692, 40.954372, 23.735716>,  <38.229877, 40.649395, 23.655828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983692, 40.954372, 23.735716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506209, 0.576614, -0.641302,
		-0.604115, -0.293600, -0.740840,
		-0.615465, 0.762440, 0.199718,
		37.799053, 41.183105, 23.795631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036186, 40.903774, 22.989813>,  <38.229877, 40.649395, 23.655828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036186, 40.903774, 22.989813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972191, 41.203339, 23.247040>,  <37.933792, 41.383080, 23.401375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972191, 41.203339, 23.247040>,  <38.036186, 40.903774, 22.989813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972191, 41.203339, 23.247040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590624, 0.594605, -0.545535,
		-0.790928, 0.292531, -0.537455,
		-0.159988, 0.748913, 0.643066,
		37.924194, 41.428013, 23.439959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889351, 41.600662, 22.605442>,  <38.036186, 40.903774, 22.989813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889351, 41.600662, 22.605442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008816, 41.707603, 22.971901>,  <38.080494, 41.771767, 23.191776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008816, 41.707603, 22.971901>,  <37.889351, 41.600662, 22.605442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008816, 41.707603, 22.971901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724616, 0.561192, -0.399994,
		-0.621074, 0.783317, -0.026122,
		0.298663, 0.267354, 0.916145,
		38.098415, 41.787811, 23.246744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926998, 42.354656, 22.564604>,  <37.889351, 41.600662, 22.605442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926998, 42.354656, 22.564604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147694, 42.222939, 22.871107>,  <38.280109, 42.143909, 23.055010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147694, 42.222939, 22.871107>,  <37.926998, 42.354656, 22.564604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147694, 42.222939, 22.871107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703822, 0.676757, -0.215949,
		-0.447461, 0.658457, 0.605155,
		0.551736, -0.329293, 0.766259,
		38.313213, 42.124149, 23.100985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098606, 42.955753, 22.932337>,  <37.926998, 42.354656, 22.564604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098606, 42.955753, 22.932337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381435, 42.690319, 23.030073>,  <38.551132, 42.531059, 23.088715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381435, 42.690319, 23.030073>,  <38.098606, 42.955753, 22.932337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381435, 42.690319, 23.030073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706473, 0.647888, -0.284846,
		0.030715, 0.374026, 0.926909,
		0.707073, -0.663585, 0.244340,
		38.593559, 42.491245, 23.103374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626575, 43.394329, 23.180679>,  <38.098606, 42.955753, 22.932337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626575, 43.394329, 23.180679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796707, 43.041683, 23.098848>,  <38.898785, 42.830097, 23.049749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796707, 43.041683, 23.098848>,  <38.626575, 43.394329, 23.180679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796707, 43.041683, 23.098848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856147, 0.465225, -0.224894,
		0.293445, -0.079495, 0.952665,
		0.425326, -0.881615, -0.204577,
		38.924305, 42.777199, 23.037476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281136, 43.414219, 23.476530>,  <38.626575, 43.394329, 23.180679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281136, 43.414219, 23.476530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329414, 43.134857, 23.194347>,  <39.358379, 42.967239, 23.025038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329414, 43.134857, 23.194347>,  <39.281136, 43.414219, 23.476530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329414, 43.134857, 23.194347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913121, 0.356882, -0.197091,
		0.389413, -0.620378, 0.680800,
		0.120694, -0.698402, -0.705455,
		39.365623, 42.925335, 22.982710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960503, 43.359680, 23.514574>,  <39.281136, 43.414219, 23.476530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960503, 43.359680, 23.514574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855305, 43.169994, 23.178488>,  <39.792187, 43.056183, 22.976837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855305, 43.169994, 23.178488>,  <39.960503, 43.359680, 23.514574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855305, 43.169994, 23.178488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913510, 0.157772, -0.374978,
		0.310381, -0.866160, 0.391703,
		-0.262991, -0.474211, -0.840215,
		39.776409, 43.027733, 22.926424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433514, 42.842686, 23.359236>,  <39.960503, 43.359680, 23.514574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433514, 42.842686, 23.359236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259850, 42.933014, 23.010406>,  <40.155651, 42.987209, 22.801109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259850, 42.933014, 23.010406>,  <40.433514, 42.842686, 23.359236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259850, 42.933014, 23.010406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900672, 0.127333, -0.415422,
		0.017233, -0.965812, -0.258671,
		-0.434157, 0.225819, -0.872075,
		40.129604, 43.000759, 22.748785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848042, 42.538494, 22.823761>,  <40.433514, 42.842686, 23.359236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848042, 42.538494, 22.823761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648319, 42.816498, 22.616819>,  <40.528484, 42.983299, 22.492655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648319, 42.816498, 22.616819>,  <40.848042, 42.538494, 22.823761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648319, 42.816498, 22.616819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862430, 0.341414, -0.373699,
		-0.083092, -0.632773, -0.769867,
		-0.499310, 0.695007, -0.517353,
		40.498528, 43.025002, 22.461613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236980, 42.606136, 22.165955>,  <40.848042, 42.538494, 22.823761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236980, 42.606136, 22.165955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005592, 42.930939, 22.196976>,  <40.866760, 43.125820, 22.215590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005592, 42.930939, 22.196976>,  <41.236980, 42.606136, 22.165955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005592, 42.930939, 22.196976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655996, 0.519615, -0.547421,
		-0.484808, -0.265793, -0.833256,
		-0.578473, 0.812007, 0.077555,
		40.832050, 43.174541, 22.220242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325375, 42.932907, 21.500349>,  <41.236980, 42.606136, 22.165955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325375, 42.932907, 21.500349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165627, 43.230270, 21.714956>,  <41.069778, 43.408688, 21.843721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165627, 43.230270, 21.714956>,  <41.325375, 42.932907, 21.500349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165627, 43.230270, 21.714956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574989, 0.658913, -0.484996,
		-0.714068, 0.114800, -0.690599,
		-0.399368, 0.743407, 0.536518,
		41.045815, 43.453293, 21.875912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200741, 43.483315, 21.065849>,  <41.325375, 42.932907, 21.500349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200741, 43.483315, 21.065849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192226, 43.663467, 21.422882>,  <41.187119, 43.771557, 21.637102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192226, 43.663467, 21.422882>,  <41.200741, 43.483315, 21.065849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192226, 43.663467, 21.422882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618777, 0.707178, -0.342073,
		-0.785278, 0.545029, -0.293737,
		-0.021285, 0.450380, 0.892583,
		41.185841, 43.798580, 21.690657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924026, 44.105556, 20.922943>,  <41.200741, 43.483315, 21.065849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924026, 44.105556, 20.922943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174812, 44.109135, 21.234541>,  <41.325283, 44.111282, 21.421499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174812, 44.109135, 21.234541>,  <40.924026, 44.105556, 20.922943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174812, 44.109135, 21.234541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483506, 0.779577, -0.398098,
		-0.610849, 0.626242, 0.484442,
		0.626966, 0.008947, 0.778996,
		41.362904, 44.111820, 21.468239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963989, 44.800407, 21.068762>,  <40.924026, 44.105556, 20.922943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963989, 44.800407, 21.068762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280495, 44.654114, 21.264782>,  <41.470398, 44.566338, 21.382393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280495, 44.654114, 21.264782>,  <40.963989, 44.800407, 21.068762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280495, 44.654114, 21.264782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434874, 0.899974, -0.030505,
		-0.429874, 0.237247, 0.871162,
		0.791260, -0.365732, 0.490048,
		41.517872, 44.544395, 21.411797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941776, 45.091820, 21.686871>,  <40.963989, 44.800407, 21.068762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941776, 45.091820, 21.686871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309196, 45.012615, 21.550013>,  <41.529648, 44.965092, 21.467897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309196, 45.012615, 21.550013>,  <40.941776, 45.091820, 21.686871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309196, 45.012615, 21.550013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298216, 0.915242, 0.270923,
		0.259497, -0.350888, 0.899744,
		0.918547, -0.198014, -0.342143,
		41.584759, 44.953213, 21.447371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635597, 45.145817, 22.241085>,  <40.941776, 45.091820, 21.686871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635597, 45.145817, 22.241085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620087, 45.265617, 21.859762>,  <41.610783, 45.337498, 21.630968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620087, 45.265617, 21.859762>,  <41.635597, 45.145817, 22.241085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620087, 45.265617, 21.859762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331143, 0.903967, 0.270531,
		0.942783, -0.305192, -0.134228,
		-0.038774, 0.299501, -0.953308,
		41.608456, 45.355469, 21.573771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296047, 45.432426, 22.046852>,  <41.635597, 45.145817, 22.241085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296047, 45.432426, 22.046852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009308, 45.571194, 21.804937>,  <41.837265, 45.654453, 21.659788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009308, 45.571194, 21.804937>,  <42.296047, 45.432426, 22.046852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009308, 45.571194, 21.804937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411288, 0.910834, 0.034981,
		0.562996, -0.223665, -0.795619,
		-0.716853, 0.346923, -0.604787,
		41.794250, 45.675270, 21.623501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410851, 45.795925, 21.431019>,  <42.296047, 45.432426, 22.046852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410851, 45.795925, 21.431019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063301, 45.948086, 21.557732>,  <41.854771, 46.039383, 21.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063301, 45.948086, 21.557732>,  <42.410851, 45.795925, 21.431019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063301, 45.948086, 21.557732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453646, 0.867994, 0.201967,
		-0.198138, 0.319192, -0.926746,
		-0.868877, 0.380397, 0.316783,
		41.802639, 46.062206, 21.652767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879631, 46.412201, 21.764860>,  <42.410851, 45.795925, 21.431019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879631, 46.412201, 21.764860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041473, 46.773067, 21.705013>,  <43.138580, 46.989586, 21.669106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041473, 46.773067, 21.705013>,  <42.879631, 46.412201, 21.764860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041473, 46.773067, 21.705013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463381, 0.343306, 0.816957,
		0.788397, -0.261218, 0.556952,
		0.404609, 0.902168, -0.149618,
		43.162857, 47.043716, 21.660128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120342, 45.716022, 21.550554>,  <42.879631, 46.412201, 21.764860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120342, 45.716022, 21.550554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353516, 45.981415, 21.738163>,  <43.493420, 46.140648, 21.850729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353516, 45.981415, 21.738163>,  <43.120342, 45.716022, 21.550554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353516, 45.981415, 21.738163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245056, -0.406801, 0.880035,
		0.774682, -0.627941, -0.074550,
		0.582937, 0.663478, 0.469022,
		43.528397, 46.180458, 21.878870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571766, 45.344147, 22.085337>,  <43.120342, 45.716022, 21.550554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571766, 45.344147, 22.085337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550426, 45.730396, 22.187101>,  <43.537624, 45.962147, 22.248159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550426, 45.730396, 22.187101>,  <43.571766, 45.344147, 22.085337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550426, 45.730396, 22.187101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225878, -0.259839, 0.938863,
		0.972694, -0.007382, 0.231974,
		-0.053345, 0.965624, 0.254411,
		43.534424, 46.020084, 22.263424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072086, 45.575062, 22.707058>,  <43.571766, 45.344147, 22.085337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072086, 45.575062, 22.707058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731731, 45.785202, 22.708157>,  <43.527519, 45.911285, 22.708817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731731, 45.785202, 22.708157>,  <44.072086, 45.575062, 22.707058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731731, 45.785202, 22.708157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225575, -0.370066, 0.901203,
		0.474461, 0.766199, 0.433388,
		-0.850883, 0.525348, 0.002746,
		43.476467, 45.942806, 22.708981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030891, 45.837082, 23.365793>,  <44.072086, 45.575062, 22.707058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030891, 45.837082, 23.365793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658195, 45.838043, 23.220549>,  <43.434578, 45.838619, 23.133402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658195, 45.838043, 23.220549>,  <44.030891, 45.837082, 23.365793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658195, 45.838043, 23.220549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331694, -0.412551, 0.848399,
		-0.147760, 0.910932, 0.385190,
		-0.931743, 0.002406, -0.363109,
		43.378674, 45.838764, 23.111616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545223, 45.890606, 23.885681>,  <44.030891, 45.837082, 23.365793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545223, 45.890606, 23.885681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302013, 45.764126, 23.594389>,  <43.156086, 45.688240, 23.419613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302013, 45.764126, 23.594389>,  <43.545223, 45.890606, 23.885681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302013, 45.764126, 23.594389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675534, -0.275829, 0.683792,
		-0.417080, 0.907711, -0.045889,
		-0.608028, -0.316196, -0.728232,
		43.119606, 45.669266, 23.375919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952328, 46.301525, 23.917671>,  <43.545223, 45.890606, 23.885681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952328, 46.301525, 23.917671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834999, 45.973442, 23.721216>,  <42.764603, 45.776592, 23.603342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834999, 45.973442, 23.721216>,  <42.952328, 46.301525, 23.917671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834999, 45.973442, 23.721216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597679, -0.243632, 0.763821,
		-0.746151, 0.517590, -0.418759,
		-0.293323, -0.820210, -0.491139,
		42.747002, 45.727379, 23.573875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265713, 46.234695, 24.060112>,  <42.952328, 46.301525, 23.917671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265713, 46.234695, 24.060112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326550, 45.876888, 23.891964>,  <42.363052, 45.662205, 23.791075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326550, 45.876888, 23.891964>,  <42.265713, 46.234695, 24.060112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326550, 45.876888, 23.891964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631168, -0.415203, 0.655159,
		-0.760588, 0.165677, -0.627740,
		0.152095, -0.894515, -0.420368,
		42.372177, 45.608532, 23.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649273, 45.891388, 24.076237>,  <42.265713, 46.234695, 24.060112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649273, 45.891388, 24.076237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895260, 45.581196, 24.019051>,  <42.042850, 45.395081, 23.984739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895260, 45.581196, 24.019051>,  <41.649273, 45.891388, 24.076237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895260, 45.581196, 24.019051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515680, -0.532657, 0.671081,
		-0.596564, -0.338969, -0.727469,
		0.614967, -0.775485, -0.142965,
		42.079750, 45.348549, 23.976162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196445, 45.246391, 23.984989>,  <41.649273, 45.891388, 24.076237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196445, 45.246391, 23.984989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557930, 45.119492, 24.099989>,  <41.774822, 45.043354, 24.168989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557930, 45.119492, 24.099989>,  <41.196445, 45.246391, 23.984989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557930, 45.119492, 24.099989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428080, -0.658721, 0.618736,
		-0.006910, -0.682233, -0.731102,
		0.903714, -0.317246, 0.287499,
		41.829044, 45.024319, 24.186239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193226, 44.455341, 24.065386>,  <41.196445, 45.246391, 23.984989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193226, 44.455341, 24.065386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503998, 44.571144, 24.289015>,  <41.690460, 44.640625, 24.423193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503998, 44.571144, 24.289015>,  <41.193226, 44.455341, 24.065386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503998, 44.571144, 24.289015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225273, -0.701379, 0.676254,
		0.587903, -0.651347, -0.479705,
		0.776931, 0.289507, 0.559074,
		41.737076, 44.657997, 24.456738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427078, 43.812790, 24.385672>,  <41.193226, 44.455341, 24.065386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427078, 43.812790, 24.385672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658863, 44.074524, 24.580019>,  <41.797935, 44.231564, 24.696627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658863, 44.074524, 24.580019>,  <41.427078, 43.812790, 24.385672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658863, 44.074524, 24.580019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014025, -0.588066, 0.808691,
		0.814877, -0.475422, -0.331586,
		0.579464, 0.654333, 0.485869,
		41.832703, 44.270824, 24.725780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932850, 43.357315, 24.744305>,  <41.427078, 43.812790, 24.385672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932850, 43.357315, 24.744305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869354, 43.714558, 24.912668>,  <41.831257, 43.928902, 25.013685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869354, 43.714558, 24.912668>,  <41.932850, 43.357315, 24.744305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869354, 43.714558, 24.912668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139651, -0.442337, 0.885910,
		0.977394, 0.081849, 0.194939,
		-0.158740, 0.893106, 0.420907,
		41.821732, 43.982491, 25.038940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993408, 43.170147, 25.401976>,  <41.932850, 43.357315, 24.744305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993408, 43.170147, 25.401976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826748, 43.532192, 25.435846>,  <41.726753, 43.749420, 25.456169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826748, 43.532192, 25.435846>,  <41.993408, 43.170147, 25.401976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826748, 43.532192, 25.435846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497940, -0.305157, 0.811748,
		0.760565, 0.296049, 0.577837,
		-0.416648, 0.905115, 0.084677,
		41.701752, 43.803726, 25.461250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092354, 43.401112, 26.058687>,  <41.993408, 43.170147, 25.401976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092354, 43.401112, 26.058687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770203, 43.582378, 25.905844>,  <41.576912, 43.691139, 25.814138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770203, 43.582378, 25.905844>,  <42.092354, 43.401112, 26.058687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770203, 43.582378, 25.905844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571820, -0.424123, 0.702240,
		0.156174, 0.784064, 0.600711,
		-0.805376, 0.453170, -0.382107,
		41.528591, 43.718330, 25.791212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647144, 43.494232, 26.628885>,  <42.092354, 43.401112, 26.058687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647144, 43.494232, 26.628885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399906, 43.523438, 26.315802>,  <41.251564, 43.540962, 26.127953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399906, 43.523438, 26.315802>,  <41.647144, 43.494232, 26.628885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399906, 43.523438, 26.315802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671340, -0.567038, 0.477252,
		-0.408980, 0.820449, 0.399498,
		-0.618091, 0.073012, -0.782708,
		41.214478, 43.545341, 26.080990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986881, 43.434521, 26.933420>,  <41.647144, 43.494232, 26.628885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986881, 43.434521, 26.933420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911758, 43.393490, 26.542686>,  <40.866684, 43.368874, 26.308247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911758, 43.393490, 26.542686>,  <40.986881, 43.434521, 26.933420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911758, 43.393490, 26.542686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883314, -0.417270, 0.213639,
		-0.429518, 0.902975, -0.012242,
		-0.187802, -0.102576, -0.976836,
		40.855419, 43.362717, 26.249636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400322, 43.799892, 26.773731>,  <40.986881, 43.434521, 26.933420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400322, 43.799892, 26.773731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408051, 43.514179, 26.493895>,  <40.412689, 43.342751, 26.325993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408051, 43.514179, 26.493895>,  <40.400322, 43.799892, 26.773731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408051, 43.514179, 26.493895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822091, -0.409588, 0.395480,
		-0.569028, 0.567486, -0.595119,
		0.019324, -0.714281, -0.699593,
		40.413849, 43.299896, 26.284018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738262, 43.772198, 26.508327>,  <40.400322, 43.799892, 26.773731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738262, 43.772198, 26.508327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895973, 43.416901, 26.414026>,  <39.990601, 43.203724, 26.357445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895973, 43.416901, 26.414026>,  <39.738262, 43.772198, 26.508327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895973, 43.416901, 26.414026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761420, -0.459382, 0.457392,
		-0.514574, -0.000830, -0.857446,
		0.394275, -0.888238, -0.235754,
		40.014256, 43.150429, 26.343300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194717, 43.366493, 26.276213>,  <39.738262, 43.772198, 26.508327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194717, 43.366493, 26.276213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478516, 43.113674, 26.400877>,  <39.648792, 42.961983, 26.475676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478516, 43.113674, 26.400877>,  <39.194717, 43.366493, 26.276213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478516, 43.113674, 26.400877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678597, -0.493471, 0.544053,
		-0.190075, -0.597492, -0.779022,
		0.709492, -0.632052, 0.311660,
		39.691364, 42.924057, 26.494375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887516, 42.754208, 26.236233>,  <39.194717, 43.366493, 26.276213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887516, 42.754208, 26.236233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207752, 42.649757, 26.451960>,  <39.399895, 42.587086, 26.581396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207752, 42.649757, 26.451960>,  <38.887516, 42.754208, 26.236233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207752, 42.649757, 26.451960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587204, -0.521163, 0.619339,
		0.119345, -0.812528, -0.570575,
		0.800592, -0.261129, 0.539318,
		39.447929, 42.571419, 26.613754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823452, 42.024185, 26.358610>,  <38.887516, 42.754208, 26.236233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823452, 42.024185, 26.358610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058769, 42.188435, 26.637262>,  <39.199959, 42.286983, 26.804455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058769, 42.188435, 26.637262>,  <38.823452, 42.024185, 26.358610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058769, 42.188435, 26.637262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618917, -0.325794, 0.714703,
		0.520431, -0.851615, 0.062477,
		0.588297, 0.410622, 0.696632,
		39.235260, 42.311623, 26.846252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835075, 41.460838, 26.945686>,  <38.823452, 42.024185, 26.358610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835075, 41.460838, 26.945686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940662, 41.809036, 27.111845>,  <39.004013, 42.017956, 27.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940662, 41.809036, 27.111845>,  <38.835075, 41.460838, 26.945686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940662, 41.809036, 27.111845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434735, -0.277067, 0.856878,
		0.861003, -0.406774, 0.305300,
		0.263967, 0.870499, 0.415394,
		39.019852, 42.070187, 27.236464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114307, 41.285778, 27.545454>,  <38.835075, 41.460838, 26.945686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114307, 41.285778, 27.545454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019295, 41.672817, 27.579700>,  <38.962288, 41.905041, 27.600248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019295, 41.672817, 27.579700>,  <39.114307, 41.285778, 27.545454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019295, 41.672817, 27.579700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601470, -0.215715, 0.769221,
		0.762767, 0.131219, 0.633221,
		-0.237531, 0.967600, 0.085616,
		38.948036, 41.963097, 27.605385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262089, 41.478664, 28.261887>,  <39.114307, 41.285778, 27.545454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262089, 41.478664, 28.261887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015701, 41.776352, 28.158562>,  <38.867870, 41.954964, 28.096567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015701, 41.776352, 28.158562>,  <39.262089, 41.478664, 28.261887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015701, 41.776352, 28.158562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543694, -0.164329, 0.823039,
		0.570069, 0.647410, 0.505847,
		-0.615969, 0.744215, -0.258314,
		38.830910, 41.999615, 28.081068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288853, 41.918530, 28.850594>,  <39.262089, 41.478664, 28.261887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288853, 41.918530, 28.850594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954884, 41.958099, 28.634035>,  <38.754501, 41.981842, 28.504099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954884, 41.958099, 28.634035>,  <39.288853, 41.918530, 28.850594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954884, 41.958099, 28.634035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547444, -0.250437, 0.798490,
		-0.056594, 0.963066, 0.263253,
		-0.834926, 0.098927, -0.541398,
		38.704407, 41.987778, 28.471615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820782, 42.342545, 29.350037>,  <39.288853, 41.918530, 28.850594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820782, 42.342545, 29.350037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582890, 42.169052, 29.079283>,  <38.440155, 42.064957, 28.916830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582890, 42.169052, 29.079283>,  <38.820782, 42.342545, 29.350037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582890, 42.169052, 29.079283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672947, -0.192042, 0.714327,
		-0.439817, 0.880338, -0.177666,
		-0.594730, -0.433733, -0.676884,
		38.404472, 42.038933, 28.876217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104015, 42.450855, 29.616949>,  <38.820782, 42.342545, 29.350037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104015, 42.450855, 29.616949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067936, 42.169796, 29.334633>,  <38.046288, 42.001160, 29.165243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067936, 42.169796, 29.334633>,  <38.104015, 42.450855, 29.616949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067936, 42.169796, 29.334633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743262, -0.424207, 0.517310,
		-0.662892, 0.571252, -0.483990,
		-0.090202, -0.702652, -0.705793,
		38.040874, 41.959000, 29.122894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429241, 42.410664, 29.542257>,  <38.104015, 42.450855, 29.616949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429241, 42.410664, 29.542257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595325, 42.071774, 29.409708>,  <37.694977, 41.868439, 29.330179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595325, 42.071774, 29.409708>,  <37.429241, 42.410664, 29.542257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595325, 42.071774, 29.409708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584551, -0.527576, 0.616412,
		-0.697065, -0.062237, -0.714302,
		0.415212, -0.847225, -0.331374,
		37.719891, 41.817608, 29.310295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845512, 41.979141, 29.306536>,  <37.429241, 42.410664, 29.542257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845512, 41.979141, 29.306536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141357, 41.710320, 29.321041>,  <37.318863, 41.549026, 29.329744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141357, 41.710320, 29.321041>,  <36.845512, 41.979141, 29.306536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141357, 41.710320, 29.321041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553790, -0.577073, 0.600253,
		-0.382476, -0.464037, -0.798988,
		0.739614, -0.672054, 0.036263,
		37.363243, 41.508701, 29.331921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510403, 41.345177, 29.158602>,  <36.845512, 41.979141, 29.306536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510403, 41.345177, 29.158602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854706, 41.271778, 29.348520>,  <37.061287, 41.227741, 29.462471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854706, 41.271778, 29.348520>,  <36.510403, 41.345177, 29.158602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854706, 41.271778, 29.348520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486967, -0.568413, 0.663151,
		0.148196, -0.802021, -0.578620,
		0.860756, -0.183493, 0.474795,
		37.112934, 41.216732, 29.490959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765011, 40.603325, 29.065716>,  <36.510403, 41.345177, 29.158602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765011, 40.603325, 29.065716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906666, 40.718445, 29.421638>,  <36.991661, 40.787518, 29.635193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906666, 40.718445, 29.421638>,  <36.765011, 40.603325, 29.065716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906666, 40.718445, 29.421638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468231, -0.769059, 0.435096,
		0.809534, -0.570720, -0.137599,
		0.354140, 0.287796, 0.889808,
		37.012909, 40.804783, 29.688581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765213, 39.989044, 29.540442>,  <36.765011, 40.603325, 29.065716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765213, 39.989044, 29.540442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832973, 40.262432, 29.824461>,  <36.873631, 40.426464, 29.994873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832973, 40.262432, 29.824461>,  <36.765213, 39.989044, 29.540442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832973, 40.262432, 29.824461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465160, -0.579714, 0.668998,
		0.868866, -0.443617, 0.219718,
		0.169405, 0.683474, 0.710046,
		36.883797, 40.467476, 30.037476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008682, 39.648876, 30.105225>,  <36.765213, 39.989044, 29.540442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008682, 39.648876, 30.105225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906624, 39.996181, 30.275410>,  <36.845387, 40.204563, 30.377522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906624, 39.996181, 30.275410>,  <37.008682, 39.648876, 30.105225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906624, 39.996181, 30.275410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508875, -0.494742, 0.704469,
		0.822158, -0.036763, 0.568071,
		-0.255150, 0.868262, 0.425464,
		36.830078, 40.256660, 30.403049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140224, 39.596252, 30.866817>,  <37.008682, 39.648876, 30.105225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140224, 39.596252, 30.866817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850861, 39.863796, 30.798338>,  <36.677242, 40.024323, 30.757250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850861, 39.863796, 30.798338>,  <37.140224, 39.596252, 30.866817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850861, 39.863796, 30.798338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564092, -0.429613, 0.705147,
		0.398096, 0.606680, 0.688083,
		-0.723408, 0.668859, -0.171196,
		36.633839, 40.064453, 30.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761448, 39.705032, 31.513096>,  <37.140224, 39.596252, 30.866817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761448, 39.705032, 31.513096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491344, 39.849545, 31.255878>,  <36.329285, 39.936253, 31.101547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491344, 39.849545, 31.255878>,  <36.761448, 39.705032, 31.513096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491344, 39.849545, 31.255878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737432, -0.312969, 0.598535,
		0.014989, 0.878364, 0.477757,
		-0.675255, 0.361285, -0.643043,
		36.288769, 39.957932, 31.062965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316635, 40.140289, 31.865429>,  <36.761448, 39.705032, 31.513096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316635, 40.140289, 31.865429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103390, 40.027828, 31.546246>,  <35.975441, 39.960350, 31.354734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103390, 40.027828, 31.546246>,  <36.316635, 40.140289, 31.865429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103390, 40.027828, 31.546246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702246, -0.378960, 0.602693,
		-0.471846, 0.881669, 0.004589,
		-0.533115, -0.281156, -0.797960,
		35.943455, 39.943481, 31.306858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691929, 40.488827, 31.899542>,  <36.316635, 40.140289, 31.865429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691929, 40.488827, 31.899542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648098, 40.151051, 31.689814>,  <35.621799, 39.948383, 31.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648098, 40.151051, 31.689814>,  <35.691929, 40.488827, 31.899542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648098, 40.151051, 31.689814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755841, -0.271783, 0.595684,
		-0.645521, 0.461577, -0.608481,
		-0.109579, -0.844441, -0.524320,
		35.615223, 39.897717, 31.532518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936970, 40.325195, 31.867973>,  <35.691929, 40.488827, 31.899542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936970, 40.325195, 31.867973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104454, 39.981373, 31.750772>,  <35.204945, 39.775082, 31.680452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104454, 39.981373, 31.750772>,  <34.936970, 40.325195, 31.867973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104454, 39.981373, 31.750772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636294, -0.507891, 0.580670,
		-0.647931, -0.056694, -0.759587,
		0.418708, -0.859554, -0.293004,
		35.230068, 39.723507, 31.662872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325218, 39.803654, 31.695436>,  <34.936970, 40.325195, 31.867973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325218, 39.803654, 31.695436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658443, 39.603905, 31.790627>,  <34.858379, 39.484055, 31.847740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658443, 39.603905, 31.790627>,  <34.325218, 39.803654, 31.695436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658443, 39.603905, 31.790627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514088, -0.540057, 0.666372,
		-0.204246, -0.677472, -0.706623,
		0.833065, -0.499370, 0.237975,
		34.908363, 39.454094, 31.862019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134274, 39.033230, 31.673109>,  <34.325218, 39.803654, 31.695436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134274, 39.033230, 31.673109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461967, 39.063427, 31.900494>,  <34.658585, 39.081547, 32.036922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461967, 39.063427, 31.900494>,  <34.134274, 39.033230, 31.673109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461967, 39.063427, 31.900494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359327, -0.704978, 0.611466,
		0.446914, -0.705200, -0.550419,
		0.819239, 0.075492, 0.568461,
		34.707741, 39.086075, 32.071033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198025, 38.465511, 31.847191>,  <34.134274, 39.033230, 31.673109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198025, 38.465511, 31.847191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460888, 38.602306, 32.115871>,  <34.618607, 38.684383, 32.277081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460888, 38.602306, 32.115871>,  <34.198025, 38.465511, 31.847191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460888, 38.602306, 32.115871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231840, -0.756234, 0.611850,
		0.717211, -0.557810, -0.417679,
		0.657159, 0.341991, 0.671702,
		34.658035, 38.704903, 32.317383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645367, 37.920044, 31.991928>,  <34.198025, 38.465511, 31.847191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645367, 37.920044, 31.991928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661942, 38.160801, 32.310928>,  <34.671886, 38.305256, 32.502327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661942, 38.160801, 32.310928>,  <34.645367, 37.920044, 31.991928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661942, 38.160801, 32.310928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170489, -0.782222, 0.599218,
		0.984488, -0.160794, 0.070205,
		0.041434, 0.601892, 0.797502,
		34.674374, 38.341370, 32.550179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050632, 37.563259, 32.541019>,  <34.645367, 37.920044, 31.991928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050632, 37.563259, 32.541019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840141, 37.840855, 32.737576>,  <34.713848, 38.007412, 32.855507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840141, 37.840855, 32.737576>,  <35.050632, 37.563259, 32.541019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840141, 37.840855, 32.737576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254273, -0.679852, 0.687856,
		0.811436, 0.237023, 0.534221,
		-0.526229, 0.693989, 0.491388,
		34.682274, 38.049053, 32.884991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339725, 37.495308, 33.192516>,  <35.050632, 37.563259, 32.541019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339725, 37.495308, 33.192516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969593, 37.646782, 33.200203>,  <34.747513, 37.737667, 33.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969593, 37.646782, 33.200203>,  <35.339725, 37.495308, 33.192516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969593, 37.646782, 33.200203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292549, -0.745256, 0.599173,
		0.241215, 0.548810, 0.800389,
		-0.925327, 0.378683, 0.019213,
		34.691994, 37.760387, 33.205967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825253, 37.862274, 32.746387>,  <35.339725, 37.495308, 33.192516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825253, 37.862274, 32.746387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921860, 37.498272, 32.881184>,  <35.979824, 37.279873, 32.962063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921860, 37.498272, 32.881184>,  <35.825253, 37.862274, 32.746387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921860, 37.498272, 32.881184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970224, 0.232997, -0.066169,
		-0.018305, 0.342941, 0.939178,
		0.241518, -0.910002, 0.336995,
		35.994316, 37.225273, 32.982281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346172, 37.925884, 33.250187>,  <35.825253, 37.862274, 32.746387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346172, 37.925884, 33.250187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382107, 37.561333, 33.089531>,  <36.403667, 37.342602, 32.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382107, 37.561333, 33.089531>,  <36.346172, 37.925884, 33.250187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382107, 37.561333, 33.089531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989253, 0.128364, -0.070002,
		0.115355, -0.391035, 0.913118,
		0.089839, -0.911380, -0.401640,
		36.409058, 37.287918, 32.969040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915157, 37.738316, 33.505085>,  <36.346172, 37.925884, 33.250187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915157, 37.738316, 33.505085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872719, 37.469421, 33.212009>,  <36.847256, 37.308083, 33.036163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872719, 37.469421, 33.212009>,  <36.915157, 37.738316, 33.505085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872719, 37.469421, 33.212009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970353, 0.090925, -0.223938,
		0.217160, -0.734729, 0.642662,
		-0.106099, -0.672239, -0.732692,
		36.840889, 37.267750, 32.992203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554146, 37.386501, 33.522705>,  <36.915157, 37.738316, 33.505085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554146, 37.386501, 33.522705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389397, 37.288727, 33.171566>,  <37.290546, 37.230061, 32.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389397, 37.288727, 33.171566>,  <37.554146, 37.386501, 33.522705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389397, 37.288727, 33.171566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909422, -0.049421, -0.412928,
		0.057550, -0.968405, 0.242651,
		-0.411873, -0.244436, -0.877845,
		37.265835, 37.215397, 32.908211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013752, 36.877464, 33.264336>,  <37.554146, 37.386501, 33.522705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013752, 36.877464, 33.264336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818798, 37.035751, 32.952988>,  <37.701828, 37.130722, 32.766178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818798, 37.035751, 32.952988>,  <38.013752, 36.877464, 33.264336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818798, 37.035751, 32.952988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866982, 0.113206, -0.485311,
		-0.103930, -0.911368, -0.398255,
		-0.487382, 0.395718, -0.778374,
		37.672585, 37.154465, 32.719475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349869, 36.603119, 32.673618>,  <38.013752, 36.877464, 33.264336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349869, 36.603119, 32.673618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148792, 36.933762, 32.572403>,  <38.028145, 37.132145, 32.511673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148792, 36.933762, 32.572403>,  <38.349869, 36.603119, 32.673618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148792, 36.933762, 32.572403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811939, 0.350992, -0.466432,
		-0.296740, -0.439923, -0.847593,
		-0.502693, 0.826603, -0.253037,
		37.997986, 37.181744, 32.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504532, 36.636013, 32.014095>,  <38.349869, 36.603119, 32.673618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504532, 36.636013, 32.014095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383141, 37.006458, 32.103733>,  <38.310307, 37.228725, 32.157516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383141, 37.006458, 32.103733>,  <38.504532, 36.636013, 32.014095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383141, 37.006458, 32.103733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706887, 0.376532, -0.598778,
		-0.638915, -0.023305, -0.768925,
		-0.303480, 0.926110, 0.224098,
		38.292095, 37.284290, 32.170963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632080, 36.994698, 31.425596>,  <38.504532, 36.636013, 32.014095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632080, 36.994698, 31.425596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593719, 37.291740, 31.690725>,  <38.570705, 37.469967, 31.849802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593719, 37.291740, 31.690725>,  <38.632080, 36.994698, 31.425596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593719, 37.291740, 31.690725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490629, 0.614648, -0.617650,
		-0.866075, 0.265968, -0.423290,
		-0.095899, 0.742610, 0.662823,
		38.564949, 37.514523, 31.889572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472530, 37.584892, 31.000511>,  <38.632080, 36.994698, 31.425596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472530, 37.584892, 31.000511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588066, 37.759407, 31.341387>,  <38.657387, 37.864117, 31.545912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588066, 37.759407, 31.341387>,  <38.472530, 37.584892, 31.000511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588066, 37.759407, 31.341387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669343, 0.544399, -0.505578,
		-0.684506, 0.716440, -0.134777,
		0.288844, 0.436283, 0.852189,
		38.674721, 37.890293, 31.597044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398441, 38.236008, 30.863586>,  <38.472530, 37.584892, 31.000511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398441, 38.236008, 30.863586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671848, 38.180893, 31.150312>,  <38.835892, 38.147823, 31.322348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671848, 38.180893, 31.150312>,  <38.398441, 38.236008, 30.863586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671848, 38.180893, 31.150312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669580, 0.509367, -0.540562,
		-0.290642, 0.849447, 0.440416,
		0.683513, -0.137784, 0.716816,
		38.876904, 38.139557, 31.365356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543156, 38.949028, 31.014172>,  <38.398441, 38.236008, 30.863586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543156, 38.949028, 31.014172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848640, 38.732582, 31.154993>,  <39.031933, 38.602715, 31.239487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848640, 38.732582, 31.154993>,  <38.543156, 38.949028, 31.014172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848640, 38.732582, 31.154993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637202, 0.544410, -0.545520,
		0.103526, 0.640949, 0.760570,
		0.763712, -0.541112, 0.352054,
		39.077755, 38.570248, 31.260609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102638, 39.418869, 31.207064>,  <38.543156, 38.949028, 31.014172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102638, 39.418869, 31.207064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255077, 39.052929, 31.153683>,  <39.346539, 38.833363, 31.121655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255077, 39.052929, 31.153683>,  <39.102638, 39.418869, 31.207064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255077, 39.052929, 31.153683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786755, 0.396717, -0.472897,
		0.485575, 0.075224, 0.870953,
		0.381095, -0.914853, -0.133453,
		39.369408, 38.778473, 31.113647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726944, 39.495689, 31.445042>,  <39.102638, 39.418869, 31.207064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726944, 39.495689, 31.445042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767170, 39.179611, 31.203224>,  <39.791306, 38.989964, 31.058134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767170, 39.179611, 31.203224>,  <39.726944, 39.495689, 31.445042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767170, 39.179611, 31.203224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861356, 0.373253, -0.344597,
		0.497948, -0.486075, 0.718177,
		0.100562, -0.790198, -0.604545,
		39.797337, 38.942551, 31.021860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415813, 39.446552, 31.378141>,  <39.726944, 39.495689, 31.445042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415813, 39.446552, 31.378141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293667, 39.225849, 31.067707>,  <40.220379, 39.093426, 30.881447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293667, 39.225849, 31.067707>,  <40.415813, 39.446552, 31.378141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293667, 39.225849, 31.067707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648427, 0.476369, -0.593813,
		0.697346, -0.684569, 0.212306,
		-0.305370, -0.551759, -0.776087,
		40.202057, 39.060322, 30.834881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978184, 39.261921, 30.963236>,  <40.415813, 39.446552, 31.378141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978184, 39.261921, 30.963236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670631, 39.225964, 30.710020>,  <40.486099, 39.204388, 30.558090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670631, 39.225964, 30.710020>,  <40.978184, 39.261921, 30.963236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670631, 39.225964, 30.710020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547912, 0.417674, -0.724804,
		0.329559, -0.904139, -0.271889,
		-0.768885, -0.089894, -0.633037,
		40.439968, 39.198994, 30.520109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318974, 39.056999, 30.357533>,  <40.978184, 39.261921, 30.963236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318974, 39.056999, 30.357533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963402, 39.221931, 30.277744>,  <40.750057, 39.320889, 30.229872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963402, 39.221931, 30.277744>,  <41.318974, 39.056999, 30.357533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963402, 39.221931, 30.277744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418780, 0.555221, -0.718577,
		-0.185540, -0.722299, -0.666228,
		-0.888931, 0.412327, -0.199468,
		40.696724, 39.345631, 30.217903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225121, 39.015636, 29.633150>,  <41.318974, 39.056999, 30.357533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225121, 39.015636, 29.633150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936970, 39.283905, 29.703869>,  <40.764080, 39.444866, 29.746300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936970, 39.283905, 29.703869>,  <41.225121, 39.015636, 29.633150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936970, 39.283905, 29.703869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352667, 0.573686, -0.739264,
		-0.597229, -0.470198, -0.649793,
		-0.720377, 0.670671, 0.176799,
		40.720856, 39.485107, 29.756908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856285, 39.052135, 29.051926>,  <41.225121, 39.015636, 29.633150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856285, 39.052135, 29.051926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802505, 39.389095, 29.260653>,  <40.770237, 39.591270, 29.385889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802505, 39.389095, 29.260653>,  <40.856285, 39.052135, 29.051926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802505, 39.389095, 29.260653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420252, 0.525369, -0.739849,
		-0.897391, 0.119819, -0.424657,
		-0.134454, 0.842396, 0.521815,
		40.762169, 39.641815, 29.417196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590290, 39.437317, 28.556915>,  <40.856285, 39.052135, 29.051926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590290, 39.437317, 28.556915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704678, 39.707878, 28.828415>,  <40.773308, 39.870216, 28.991314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704678, 39.707878, 28.828415>,  <40.590290, 39.437317, 28.556915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704678, 39.707878, 28.828415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369128, 0.575906, -0.729436,
		-0.884290, 0.459138, -0.084992,
		0.285965, 0.676406, 0.678748,
		40.790466, 39.910801, 29.032040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243111, 39.953506, 28.411926>,  <40.590290, 39.437317, 28.556915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243111, 39.953506, 28.411926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545502, 40.113716, 28.619030>,  <40.726936, 40.209843, 28.743292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545502, 40.113716, 28.619030>,  <40.243111, 39.953506, 28.411926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545502, 40.113716, 28.619030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304738, 0.484685, -0.819887,
		-0.579333, 0.777600, 0.244358,
		0.755981, 0.400523, 0.517759,
		40.772297, 40.233871, 28.774357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264309, 40.655754, 28.260704>,  <40.243111, 39.953506, 28.411926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264309, 40.655754, 28.260704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638313, 40.612244, 28.395716>,  <40.862717, 40.586136, 28.476723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638313, 40.612244, 28.395716>,  <40.264309, 40.655754, 28.260704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638313, 40.612244, 28.395716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320657, 0.665834, -0.673680,
		-0.151457, 0.738128, 0.657441,
		0.935008, -0.108779, 0.337531,
		40.918816, 40.579609, 28.496975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544216, 41.333447, 28.301380>,  <40.264309, 40.655754, 28.260704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544216, 41.333447, 28.301380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848709, 41.074825, 28.281403>,  <41.031406, 40.919655, 28.269417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848709, 41.074825, 28.281403>,  <40.544216, 41.333447, 28.301380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848709, 41.074825, 28.281403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414328, 0.544176, -0.729524,
		0.498850, 0.534647, 0.682130,
		0.761236, -0.646549, -0.049943,
		41.077080, 40.880859, 28.266420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246605, 41.753990, 28.266127>,  <40.544216, 41.333447, 28.301380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246605, 41.753990, 28.266127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340309, 41.396008, 28.114243>,  <41.396530, 41.181217, 28.023111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340309, 41.396008, 28.114243>,  <41.246605, 41.753990, 28.266127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340309, 41.396008, 28.114243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554241, 0.443833, -0.704152,
		0.798711, -0.045497, 0.599992,
		0.234260, -0.894954, -0.379710,
		41.410587, 41.127522, 28.000330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894489, 41.820950, 28.047817>,  <41.246605, 41.753990, 28.266127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894489, 41.820950, 28.047817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778828, 41.497593, 27.842726>,  <41.709431, 41.303577, 27.719671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778828, 41.497593, 27.842726>,  <41.894489, 41.820950, 28.047817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778828, 41.497593, 27.842726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605222, 0.260600, -0.752193,
		0.741683, -0.527819, 0.413900,
		-0.289159, -0.808390, -0.512730,
		41.692081, 41.255077, 27.688908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525024, 41.496567, 27.780832>,  <41.894489, 41.820950, 28.047817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525024, 41.496567, 27.780832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222576, 41.369289, 27.552084>,  <42.041107, 41.292923, 27.414835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222576, 41.369289, 27.552084>,  <42.525024, 41.496567, 27.780832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222576, 41.369289, 27.552084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525090, 0.226576, -0.820332,
		0.390601, -0.920551, -0.004236,
		-0.756117, -0.318198, -0.571872,
		41.995743, 41.273830, 27.380522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841217, 41.280117, 27.220890>,  <42.525024, 41.496567, 27.780832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841217, 41.280117, 27.220890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466213, 41.299244, 27.083023>,  <42.241211, 41.310719, 27.000303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466213, 41.299244, 27.083023>,  <42.841217, 41.280117, 27.220890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466213, 41.299244, 27.083023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345579, 0.243859, -0.906150,
		0.040719, -0.968631, -0.245145,
		-0.937506, 0.047819, -0.344668,
		42.184963, 41.313591, 26.979622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828243, 40.875362, 26.655094>,  <42.841217, 41.280117, 27.220890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828243, 40.875362, 26.655094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501640, 41.103264, 26.617786>,  <42.305679, 41.240005, 26.595402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501640, 41.103264, 26.617786>,  <42.828243, 40.875362, 26.655094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501640, 41.103264, 26.617786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416816, 0.469966, -0.778072,
		-0.399475, -0.674177, -0.621212,
		-0.816507, 0.569752, -0.093268,
		42.256687, 41.274189, 26.589806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622948, 40.741142, 26.014393>,  <42.828243, 40.875362, 26.655094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622948, 40.741142, 26.014393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450775, 41.099815, 26.055725>,  <42.347469, 41.315022, 26.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450775, 41.099815, 26.055725>,  <42.622948, 40.741142, 26.014393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450775, 41.099815, 26.055725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460746, 0.316712, -0.829100,
		-0.776169, -0.309266, -0.549469,
		-0.430436, 0.896687, 0.103329,
		42.321644, 41.368820, 26.086723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183228, 40.823933, 25.430281>,  <42.622948, 40.741142, 26.014393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183228, 40.823933, 25.430281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310108, 41.166691, 25.592815>,  <42.386234, 41.372345, 25.690336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310108, 41.166691, 25.592815>,  <42.183228, 40.823933, 25.430281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310108, 41.166691, 25.592815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052015, 0.412100, -0.909652,
		-0.946932, 0.309675, 0.086145,
		0.317197, 0.856898, 0.406339,
		42.405266, 41.423759, 25.714718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798000, 41.387398, 25.016321>,  <42.183228, 40.823933, 25.430281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798000, 41.387398, 25.016321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115337, 41.557865, 25.190214>,  <42.305740, 41.660145, 25.294550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115337, 41.557865, 25.190214>,  <41.798000, 41.387398, 25.016321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115337, 41.557865, 25.190214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132296, 0.576352, -0.806422,
		-0.594227, 0.697282, 0.400864,
		0.793342, 0.426165, 0.434731,
		42.353340, 41.685715, 25.320633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774246, 41.984360, 24.704456>,  <41.798000, 41.387398, 25.016321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774246, 41.984360, 24.704456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150555, 41.976059, 24.839817>,  <42.376339, 41.971077, 24.921034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150555, 41.976059, 24.839817>,  <41.774246, 41.984360, 24.704456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150555, 41.976059, 24.839817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308439, 0.466756, -0.828857,
		-0.140751, 0.884142, 0.445512,
		0.940773, -0.020751, 0.338401,
		42.432785, 41.969833, 24.941338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008236, 42.495338, 24.354994>,  <41.774246, 41.984360, 24.704456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008236, 42.495338, 24.354994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356255, 42.354603, 24.493109>,  <42.565067, 42.270161, 24.575977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356255, 42.354603, 24.493109>,  <42.008236, 42.495338, 24.354994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356255, 42.354603, 24.493109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488461, 0.520853, -0.700084,
		0.066470, 0.777768, 0.625027,
		0.870050, -0.351836, 0.345289,
		42.617271, 42.249054, 24.596695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523281, 43.144634, 24.240604>,  <42.008236, 42.495338, 24.354994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523281, 43.144634, 24.240604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714371, 42.795700, 24.282215>,  <42.829025, 42.586342, 24.307182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714371, 42.795700, 24.282215>,  <42.523281, 43.144634, 24.240604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714371, 42.795700, 24.282215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583308, 0.226419, -0.780055,
		0.656913, 0.433328, 0.617003,
		0.477721, -0.872331, 0.104027,
		42.857685, 42.534000, 24.313423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270679, 43.249287, 24.150848>,  <42.523281, 43.144634, 24.240604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270679, 43.249287, 24.150848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219296, 42.870625, 24.032631>,  <43.188465, 42.643429, 23.961700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219296, 42.870625, 24.032631>,  <43.270679, 43.249287, 24.150848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219296, 42.870625, 24.032631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522282, 0.188755, -0.831621,
		0.843041, -0.261191, 0.470171,
		-0.128464, -0.946652, -0.295544,
		43.180756, 42.586628, 23.943968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914795, 42.954121, 23.961275>,  <43.270679, 43.249287, 24.150848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914795, 42.954121, 23.961275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644524, 42.708748, 23.797729>,  <43.482361, 42.561523, 23.699602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644524, 42.708748, 23.797729>,  <43.914795, 42.954121, 23.961275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644524, 42.708748, 23.797729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511212, 0.009721, -0.859400,
		0.531154, -0.789691, 0.307023,
		-0.675676, -0.613427, -0.408863,
		43.441822, 42.524719, 23.675070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291523, 42.424202, 23.626938>,  <43.914795, 42.954121, 23.961275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291523, 42.424202, 23.626938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930332, 42.442326, 23.456018>,  <43.713619, 42.453201, 23.353466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930332, 42.442326, 23.456018>,  <44.291523, 42.424202, 23.626938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930332, 42.442326, 23.456018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429557, 0.120526, -0.894961,
		0.010946, -0.991675, -0.128297,
		-0.902974, 0.045314, -0.427300,
		43.659439, 42.455921, 23.327827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384048, 41.994061, 23.120306>,  <44.291523, 42.424202, 23.626938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384048, 41.994061, 23.120306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072521, 42.222134, 23.015747>,  <43.885605, 42.358978, 22.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072521, 42.222134, 23.015747>,  <44.384048, 41.994061, 23.120306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072521, 42.222134, 23.015747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441842, 0.202905, -0.873845,
		-0.445215, -0.796064, -0.409958,
		-0.778819, 0.570185, -0.261399,
		43.838875, 42.393188, 22.937328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364635, 41.916695, 22.411217>,  <44.384048, 41.994061, 23.120306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364635, 41.916695, 22.411217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219822, 42.286560, 22.458439>,  <44.132935, 42.508480, 22.486773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219822, 42.286560, 22.458439>,  <44.364635, 41.916695, 22.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219822, 42.286560, 22.458439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505096, 0.301029, -0.808863,
		-0.783462, -0.233204, -0.576024,
		-0.362030, 0.924661, 0.118054,
		44.111214, 42.563957, 22.493855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414082, 41.212601, 22.249590>,  <44.364635, 41.916695, 22.411217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414082, 41.212601, 22.249590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287754, 40.898579, 22.036444>,  <44.211956, 40.710163, 21.908556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287754, 40.898579, 22.036444>,  <44.414082, 41.212601, 22.249590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287754, 40.898579, 22.036444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353283, -0.423929, 0.833951,
		-0.880596, 0.451630, -0.143462,
		-0.315820, -0.785057, -0.532863,
		44.193008, 40.663063, 21.876585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789021, 41.082241, 22.650225>,  <44.414082, 41.212601, 22.249590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789021, 41.082241, 22.650225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872120, 40.754776, 22.436073>,  <43.921978, 40.558296, 22.307583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872120, 40.754776, 22.436073>,  <43.789021, 41.082241, 22.650225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872120, 40.754776, 22.436073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551208, -0.550122, 0.627324,
		-0.808092, 0.164783, -0.565539,
		0.207744, -0.818665, -0.535379,
		43.934444, 40.509178, 22.275459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173244, 40.768547, 22.373772>,  <43.789021, 41.082241, 22.650225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173244, 40.768547, 22.373772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450420, 40.480175, 22.369766>,  <43.616726, 40.307152, 22.367363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450420, 40.480175, 22.369766>,  <43.173244, 40.768547, 22.373772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450420, 40.480175, 22.369766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666198, -0.645518, 0.373481,
		-0.275718, -0.252126, -0.927584,
		0.692936, -0.720930, -0.010015,
		43.658302, 40.263897, 22.366762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837109, 40.148167, 22.373581>,  <43.173244, 40.768547, 22.373772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837109, 40.148167, 22.373581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201183, 40.024532, 22.483868>,  <43.419628, 39.950352, 22.550039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201183, 40.024532, 22.483868>,  <42.837109, 40.148167, 22.373581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201183, 40.024532, 22.483868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413181, -0.724050, 0.552298,
		0.028924, -0.616617, -0.786732,
		0.910189, -0.309088, 0.275717,
		43.474239, 39.931805, 22.566582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787182, 39.458748, 22.269449>,  <42.837109, 40.148167, 22.373581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787182, 39.458748, 22.269449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088871, 39.506859, 22.527655>,  <43.269882, 39.535725, 22.682577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088871, 39.506859, 22.527655>,  <42.787182, 39.458748, 22.269449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088871, 39.506859, 22.527655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455386, -0.612427, 0.646186,
		0.473049, -0.781324, -0.407133,
		0.754220, 0.120275, 0.645513,
		43.315136, 39.542942, 22.721308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897621, 38.805367, 22.482204>,  <42.787182, 39.458748, 22.269449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897621, 38.805367, 22.482204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050648, 39.076931, 22.732876>,  <43.142464, 39.239868, 22.883278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050648, 39.076931, 22.732876>,  <42.897621, 38.805367, 22.482204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050648, 39.076931, 22.732876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494120, -0.422786, 0.759669,
		0.780697, -0.600279, 0.173718,
		0.382568, 0.678909, 0.626677,
		43.165417, 39.280605, 22.920879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240395, 38.445366, 22.882395>,  <42.897621, 38.805367, 22.482204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240395, 38.445366, 22.882395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176495, 38.763893, 23.115755>,  <43.138153, 38.955009, 23.255772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176495, 38.763893, 23.115755>,  <43.240395, 38.445366, 22.882395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176495, 38.763893, 23.115755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423317, -0.589158, 0.688256,
		0.891786, -0.137013, 0.431214,
		-0.159753, 0.796317, 0.583403,
		43.128571, 39.002789, 23.290775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479721, 38.325909, 23.596197>,  <43.240395, 38.445366, 22.882395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479721, 38.325909, 23.596197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227459, 38.635231, 23.622343>,  <43.076103, 38.820824, 23.638031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227459, 38.635231, 23.622343>,  <43.479721, 38.325909, 23.596197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227459, 38.635231, 23.622343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371856, -0.375035, 0.849160,
		0.681175, 0.511219, 0.524075,
		-0.630653, 0.773307, 0.065364,
		43.038261, 38.867222, 23.641953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589489, 38.464893, 24.278101>,  <43.479721, 38.325909, 23.596197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589489, 38.464893, 24.278101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243618, 38.642765, 24.184645>,  <43.036095, 38.749489, 24.128571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243618, 38.642765, 24.184645>,  <43.589489, 38.464893, 24.278101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243618, 38.642765, 24.184645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393100, -0.309456, 0.865858,
		0.312727, 0.840535, 0.442384,
		-0.864682, 0.444678, -0.233639,
		42.984215, 38.776169, 24.114553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488773, 38.889339, 24.868727>,  <43.589489, 38.464893, 24.278101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488773, 38.889339, 24.868727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122269, 38.866817, 24.710085>,  <42.902367, 38.853306, 24.614901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122269, 38.866817, 24.710085>,  <43.488773, 38.889339, 24.868727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122269, 38.866817, 24.710085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392499, -0.071691, 0.916954,
		-0.080058, 0.995837, 0.043590,
		-0.916262, -0.056300, -0.396605,
		42.847389, 38.849926, 24.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043941, 39.272690, 25.300489>,  <43.488773, 38.889339, 24.868727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043941, 39.272690, 25.300489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789486, 39.032574, 25.106594>,  <42.636810, 38.888504, 24.990257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789486, 39.032574, 25.106594>,  <43.043941, 39.272690, 25.300489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789486, 39.032574, 25.106594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648917, 0.076373, 0.757017,
		-0.417411, 0.796125, -0.438124,
		-0.636141, -0.600294, -0.484740,
		42.598644, 38.852486, 24.961172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385498, 39.624069, 25.426884>,  <43.043941, 39.272690, 25.300489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385498, 39.624069, 25.426884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378593, 39.232933, 25.343430>,  <42.374451, 38.998253, 25.293358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378593, 39.232933, 25.343430>,  <42.385498, 39.624069, 25.426884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378593, 39.232933, 25.343430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688220, -0.139747, 0.711915,
		-0.725296, 0.155874, -0.670559,
		-0.017261, -0.977842, -0.208634,
		42.373417, 38.939579, 25.280840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730255, 39.377827, 25.688560>,  <42.385498, 39.624069, 25.426884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730255, 39.377827, 25.688560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938065, 39.041828, 25.625948>,  <42.062752, 38.840229, 25.588381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938065, 39.041828, 25.625948>,  <41.730255, 39.377827, 25.688560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938065, 39.041828, 25.625948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473270, -0.435414, 0.765787,
		-0.711414, -0.323763, -0.623752,
		0.519524, -0.839995, -0.156533,
		42.093922, 38.789829, 25.578989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350285, 38.904594, 25.901844>,  <41.730255, 39.377827, 25.688560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350285, 38.904594, 25.901844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705173, 38.722462, 25.931515>,  <41.918106, 38.613182, 25.949318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705173, 38.722462, 25.931515>,  <41.350285, 38.904594, 25.901844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705173, 38.722462, 25.931515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350080, -0.559778, 0.751061,
		-0.300460, -0.692329, -0.656052,
		0.887224, -0.455335, 0.074180,
		41.971340, 38.585861, 25.953768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178726, 38.138103, 25.984385>,  <41.350285, 38.904594, 25.901844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178726, 38.138103, 25.984385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545994, 38.217957, 26.121275>,  <41.766354, 38.265869, 26.203409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545994, 38.217957, 26.121275>,  <41.178726, 38.138103, 25.984385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545994, 38.217957, 26.121275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123326, -0.676852, 0.725715,
		0.376514, -0.708532, -0.596841,
		0.918165, 0.199636, 0.342225,
		41.821442, 38.277847, 26.223942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308437, 37.521706, 26.147919>,  <41.178726, 38.138103, 25.984385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308437, 37.521706, 26.147919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587788, 37.703079, 26.369431>,  <41.755398, 37.811905, 26.502338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587788, 37.703079, 26.369431>,  <41.308437, 37.521706, 26.147919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587788, 37.703079, 26.369431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247088, -0.573414, 0.781117,
		0.671733, -0.682342, -0.288417,
		0.698372, 0.453438, 0.553779,
		41.797298, 37.839111, 26.535564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667336, 36.892208, 26.584230>,  <41.308437, 37.521706, 26.147919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667336, 36.892208, 26.584230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715137, 37.241425, 26.773342>,  <41.743816, 37.450954, 26.886810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715137, 37.241425, 26.773342>,  <41.667336, 36.892208, 26.584230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715137, 37.241425, 26.773342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285851, -0.425775, 0.858490,
		0.950794, -0.237736, 0.198678,
		0.119502, 0.873039, 0.472781,
		41.750988, 37.503338, 26.915176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990177, 36.769794, 27.302366>,  <41.667336, 36.892208, 26.584230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990177, 36.769794, 27.302366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801170, 37.121933, 27.318913>,  <41.687767, 37.333218, 27.328840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801170, 37.121933, 27.318913>,  <41.990177, 36.769794, 27.302366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801170, 37.121933, 27.318913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264688, -0.186523, 0.946123,
		0.840636, 0.436110, 0.321153,
		-0.472516, 0.880351, 0.041365,
		41.659416, 37.386040, 27.331322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069744, 36.918770, 27.961609>,  <41.990177, 36.769794, 27.302366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069744, 36.918770, 27.961609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808613, 37.198021, 27.844009>,  <41.651936, 37.365570, 27.773451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808613, 37.198021, 27.844009>,  <42.069744, 36.918770, 27.961609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808613, 37.198021, 27.844009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238905, 0.178552, 0.954486,
		0.718848, 0.693350, 0.050223,
		-0.652826, 0.698129, -0.293997,
		41.612766, 37.407459, 27.755810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237736, 37.465099, 28.362349>,  <42.069744, 36.918770, 27.961609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237736, 37.465099, 28.362349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856506, 37.478863, 28.242033>,  <41.627769, 37.487122, 28.169844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856506, 37.478863, 28.242033>,  <42.237736, 37.465099, 28.362349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856506, 37.478863, 28.242033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301113, -0.004584, 0.953577,
		0.031429, 0.999398, 0.014729,
		-0.953070, 0.034405, -0.300788,
		41.570583, 37.489185, 28.151796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872536, 37.926472, 28.894829>,  <42.237736, 37.465099, 28.362349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872536, 37.926472, 28.894829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579838, 37.760983, 28.678171>,  <41.404217, 37.661690, 28.548178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579838, 37.760983, 28.678171>,  <41.872536, 37.926472, 28.894829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579838, 37.760983, 28.678171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552298, -0.105743, 0.826913,
		-0.399388, 0.904241, -0.151121,
		-0.731749, -0.413723, -0.541643,
		41.360313, 37.636868, 28.515678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180237, 38.317677, 29.033773>,  <41.872536, 37.926472, 28.894829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180237, 38.317677, 29.033773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088779, 37.953526, 28.895823>,  <41.033905, 37.735035, 28.813051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088779, 37.953526, 28.895823>,  <41.180237, 38.317677, 29.033773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088779, 37.953526, 28.895823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605347, -0.144489, 0.782737,
		-0.762415, 0.387739, -0.518056,
		-0.228645, -0.910374, -0.344877,
		41.020187, 37.680412, 28.792360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457119, 38.293243, 29.037163>,  <41.180237, 38.317677, 29.033773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457119, 38.293243, 29.037163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555229, 37.905529, 29.029896>,  <40.614094, 37.672901, 29.025536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555229, 37.905529, 29.029896>,  <40.457119, 38.293243, 29.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555229, 37.905529, 29.029896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646118, -0.177412, 0.742332,
		-0.722754, -0.170335, -0.669786,
		0.245273, -0.969284, -0.018169,
		40.628811, 37.614742, 29.024445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834534, 37.961628, 29.134956>,  <40.457119, 38.293243, 29.037163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834534, 37.961628, 29.134956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121010, 37.699188, 29.230124>,  <40.292896, 37.541725, 29.287224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121010, 37.699188, 29.230124>,  <39.834534, 37.961628, 29.134956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121010, 37.699188, 29.230124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581853, -0.373085, 0.722672,
		-0.385396, -0.655991, -0.648958,
		0.716183, -0.656112, 0.237905,
		40.335869, 37.502361, 29.301498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536179, 37.322216, 29.052500>,  <39.834534, 37.961628, 29.134956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536179, 37.322216, 29.052500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843536, 37.269196, 29.302938>,  <40.027950, 37.237385, 29.453201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843536, 37.269196, 29.302938>,  <39.536179, 37.322216, 29.052500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843536, 37.269196, 29.302938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586666, -0.536794, 0.606362,
		0.255711, -0.833236, -0.490234,
		0.768397, -0.132551, 0.626096,
		40.074055, 37.229431, 29.490767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561901, 36.517967, 29.219894>,  <39.536179, 37.322216, 29.052500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561901, 36.517967, 29.219894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754028, 36.708515, 29.514477>,  <39.869305, 36.822845, 29.691227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754028, 36.708515, 29.514477>,  <39.561901, 36.517967, 29.219894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754028, 36.708515, 29.514477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419934, -0.612264, 0.669916,
		0.770035, -0.631034, -0.094035,
		0.480314, 0.476370, 0.736458,
		39.898121, 36.851425, 29.735415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985893, 35.981564, 29.400909>,  <39.561901, 36.517967, 29.219894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985893, 35.981564, 29.400909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885700, 36.254704, 29.675419>,  <39.825584, 36.418587, 29.840124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885700, 36.254704, 29.675419>,  <39.985893, 35.981564, 29.400909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885700, 36.254704, 29.675419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395260, -0.719233, 0.571379,
		0.883758, -0.128138, 0.450058,
		-0.250481, 0.682850, 0.686276,
		39.810555, 36.459560, 29.881302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152424, 35.696049, 29.970854>,  <39.985893, 35.981564, 29.400909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152424, 35.696049, 29.970854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880615, 35.965683, 30.086679>,  <39.717529, 36.127464, 30.156176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880615, 35.965683, 30.086679>,  <40.152424, 35.696049, 29.970854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880615, 35.965683, 30.086679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356517, -0.648360, 0.672700,
		0.641203, 0.353881, 0.680902,
		-0.679525, 0.674091, 0.289565,
		39.676758, 36.167912, 30.173550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162434, 35.816196, 30.744955>,  <40.152424, 35.696049, 29.970854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162434, 35.816196, 30.744955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798817, 35.936035, 30.629105>,  <39.580647, 36.007938, 30.559595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798817, 35.936035, 30.629105>,  <40.162434, 35.816196, 30.744955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798817, 35.936035, 30.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416689, -0.658909, 0.626267,
		-0.003210, 0.689987, 0.723815,
		-0.909044, 0.299595, -0.289625,
		39.526104, 36.025913, 30.542217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797356, 35.669510, 31.310125>,  <40.162434, 35.816196, 30.744955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797356, 35.669510, 31.310125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517258, 35.732258, 31.031546>,  <39.349197, 35.769905, 30.864397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517258, 35.732258, 31.031546>,  <39.797356, 35.669510, 31.310125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517258, 35.732258, 31.031546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670574, -0.479207, 0.566296,
		-0.244911, 0.863570, 0.440755,
		-0.700249, 0.156867, -0.696451,
		39.307182, 35.779316, 30.822611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187603, 36.089828, 31.632704>,  <39.797356, 35.669510, 31.310125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187603, 36.089828, 31.632704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069679, 35.862988, 31.325073>,  <38.998924, 35.726883, 31.140495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069679, 35.862988, 31.325073>,  <39.187603, 36.089828, 31.632704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069679, 35.862988, 31.325073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561534, -0.548396, 0.619630,
		-0.773155, 0.614534, -0.156780,
		-0.294806, -0.567107, -0.769077,
		38.981239, 35.692856, 31.094351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460197, 35.821053, 31.754450>,  <39.187603, 36.089828, 31.632704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460197, 35.821053, 31.754450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592590, 35.567177, 31.475132>,  <38.672028, 35.414852, 31.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592590, 35.567177, 31.475132>,  <38.460197, 35.821053, 31.754450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592590, 35.567177, 31.475132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432486, -0.759736, 0.485547,
		-0.838693, 0.141295, -0.525956,
		0.330982, -0.634694, -0.698294,
		38.691883, 35.376770, 31.265644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811256, 35.442181, 31.632343>,  <38.460197, 35.821053, 31.754450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811256, 35.442181, 31.632343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131115, 35.241611, 31.500198>,  <38.323032, 35.121269, 31.420912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131115, 35.241611, 31.500198>,  <37.811256, 35.442181, 31.632343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131115, 35.241611, 31.500198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436625, -0.863235, 0.253344,
		-0.412212, -0.058342, -0.909218,
		0.799650, -0.501419, -0.330362,
		38.371010, 35.091187, 31.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505054, 34.992382, 31.218292>,  <37.811256, 35.442181, 31.632343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505054, 34.992382, 31.218292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871822, 34.872021, 31.323147>,  <38.091885, 34.799805, 31.386059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871822, 34.872021, 31.323147>,  <37.505054, 34.992382, 31.218292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871822, 34.872021, 31.323147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354913, -0.915203, 0.190892,
		0.182466, -0.268068, -0.945963,
		0.916920, -0.300904, 0.262134,
		38.146900, 34.781750, 31.401787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654644, 34.378525, 30.878241>,  <37.505054, 34.992382, 31.218292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654644, 34.378525, 30.878241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901024, 34.376648, 31.193348>,  <38.048851, 34.375523, 31.382412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901024, 34.376648, 31.193348>,  <37.654644, 34.378525, 30.878241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901024, 34.376648, 31.193348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266138, -0.942430, 0.202473,
		0.741468, -0.334369, -0.581741,
		0.615951, -0.004696, 0.787770,
		38.085808, 34.375240, 31.429680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016254, 33.790413, 30.813980>,  <37.654644, 34.378525, 30.878241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016254, 33.790413, 30.813980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080231, 33.898563, 31.193729>,  <38.118618, 33.963455, 31.421579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080231, 33.898563, 31.193729>,  <38.016254, 33.790413, 30.813980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080231, 33.898563, 31.193729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161342, -0.941663, 0.295364,
		0.973852, -0.200415, -0.106989,
		0.159943, 0.270379, 0.949375,
		38.128212, 33.979675, 31.478542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392616, 33.202374, 31.093866>,  <38.016254, 33.790413, 30.813980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392616, 33.202374, 31.093866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261543, 33.406513, 31.411900>,  <38.182899, 33.528999, 31.602720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261543, 33.406513, 31.411900>,  <38.392616, 33.202374, 31.093866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261543, 33.406513, 31.411900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266373, -0.857316, 0.440516,
		0.906459, -0.067438, 0.416875,
		-0.327687, 0.510353, 0.795085,
		38.163239, 33.559620, 31.650425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702885, 32.884113, 31.714127>,  <38.392616, 33.202374, 31.093866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702885, 32.884113, 31.714127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397652, 33.108192, 31.843052>,  <38.214512, 33.242638, 31.920406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397652, 33.108192, 31.843052>,  <38.702885, 32.884113, 31.714127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397652, 33.108192, 31.843052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308178, -0.753748, 0.580423,
		0.568093, 0.343581, 0.747812,
		-0.763084, 0.560193, 0.322314,
		38.168728, 33.276249, 31.939747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757603, 32.877964, 32.399071>,  <38.702885, 32.884113, 31.714127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757603, 32.877964, 32.399071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372730, 32.948761, 32.316238>,  <38.141808, 32.991238, 32.266537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372730, 32.948761, 32.316238>,  <38.757603, 32.877964, 32.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372730, 32.948761, 32.316238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263572, -0.796965, 0.543485,
		-0.068847, 0.577512, 0.813474,
		-0.962180, 0.176992, -0.207085,
		38.084076, 33.001858, 32.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469288, 32.852718, 33.085369>,  <38.757603, 32.877964, 32.399071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469288, 32.852718, 33.085369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166100, 32.802422, 32.829350>,  <37.984184, 32.772243, 32.675735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166100, 32.802422, 32.829350>,  <38.469288, 32.852718, 33.085369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166100, 32.802422, 32.829350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350440, -0.749104, 0.562169,
		-0.550154, 0.650409, 0.523736,
		-0.757973, -0.125741, -0.640052,
		37.938709, 32.764698, 32.637333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906536, 32.832932, 33.449585>,  <38.469288, 32.852718, 33.085369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906536, 32.832932, 33.449585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813011, 32.640049, 33.111874>,  <37.756897, 32.524319, 32.909245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813011, 32.640049, 33.111874>,  <37.906536, 32.832932, 33.449585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813011, 32.640049, 33.111874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545392, -0.653824, 0.524463,
		-0.804910, 0.583089, -0.110121,
		-0.233809, -0.482205, -0.844282,
		37.742867, 32.495388, 32.858589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508163, 32.452629, 33.732555>,  <37.906536, 32.832932, 33.449585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508163, 32.452629, 33.732555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492661, 32.324234, 33.354038>,  <37.483356, 32.247196, 33.126930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492661, 32.324234, 33.354038>,  <37.508163, 32.452629, 33.732555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492661, 32.324234, 33.354038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623441, -0.732311, 0.273938,
		-0.780909, 0.600574, -0.171732,
		-0.038759, -0.320985, -0.946291,
		37.481033, 32.227940, 33.070152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815975, 32.214069, 33.647446>,  <37.508163, 32.452629, 33.732555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815975, 32.214069, 33.647446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999615, 32.030853, 33.342964>,  <37.109798, 31.920923, 33.160275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999615, 32.030853, 33.342964>,  <36.815975, 32.214069, 33.647446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999615, 32.030853, 33.342964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547178, -0.820813, 0.163896,
		-0.699873, 0.341267, -0.627467,
		0.459101, -0.458042, -0.761199,
		37.137344, 31.893440, 33.114605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639591, 32.183765, 32.912956>,  <36.815975, 32.214069, 33.647446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639591, 32.183765, 32.912956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437859, 31.898853, 32.717690>,  <36.316818, 31.727907, 32.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437859, 31.898853, 32.717690>,  <36.639591, 32.183765, 32.912956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437859, 31.898853, 32.717690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573670, -0.146165, 0.805939,
		-0.645405, 0.686511, -0.334896,
		-0.504336, -0.712277, -0.488166,
		36.286556, 31.685169, 32.571239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892605, 32.136631, 33.131691>,  <36.639591, 32.183765, 32.912956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892605, 32.136631, 33.131691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966862, 31.781532, 32.963196>,  <36.011417, 31.568474, 32.862099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966862, 31.781532, 32.963196>,  <35.892605, 32.136631, 33.131691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966862, 31.781532, 32.963196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405259, -0.459705, 0.790213,
		-0.895154, 0.024011, -0.445109,
		0.185645, -0.887747, -0.421237,
		36.022556, 31.515207, 32.836826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582748, 32.902611, 33.210770>,  <35.892605, 32.136631, 33.131691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582748, 32.902611, 33.210770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204151, 32.795006, 33.282093>,  <34.976994, 32.730442, 33.324886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204151, 32.795006, 33.282093>,  <35.582748, 32.902611, 33.210770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204151, 32.795006, 33.282093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315229, -0.889045, 0.332009,
		0.069212, 0.370451, 0.926270,
		-0.946489, -0.269008, 0.178309,
		34.920204, 32.714302, 33.335587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368591, 32.770752, 33.865337>,  <35.582748, 32.902611, 33.210770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368591, 32.770752, 33.865337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109402, 32.546524, 33.659077>,  <34.953888, 32.411987, 33.535320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109402, 32.546524, 33.659077>,  <35.368591, 32.770752, 33.865337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109402, 32.546524, 33.659077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445101, -0.828063, 0.340877,
		-0.618075, -0.008637, 0.786072,
		-0.647973, -0.560569, -0.515649,
		34.915009, 32.378353, 33.504383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234661, 32.161289, 34.162643>,  <35.368591, 32.770752, 33.865337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234661, 32.161289, 34.162643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125107, 32.010254, 33.808826>,  <35.059372, 31.919632, 33.596539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125107, 32.010254, 33.808826>,  <35.234661, 32.161289, 34.162643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125107, 32.010254, 33.808826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546122, -0.818109, 0.180132,
		-0.791666, -0.433730, 0.430283,
		-0.273890, -0.377591, -0.884539,
		35.042938, 31.896976, 33.543465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865349, 32.211498, 34.807823>,  <35.234661, 32.161289, 34.162643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865349, 32.211498, 34.807823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961212, 32.556652, 34.629833>,  <35.018730, 32.763744, 34.523041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961212, 32.556652, 34.629833>,  <34.865349, 32.211498, 34.807823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961212, 32.556652, 34.629833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826653, 0.421717, 0.372558,
		0.509125, 0.278550, 0.814372,
		0.239659, 0.862881, -0.444971,
		35.033112, 32.815517, 34.496342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243084, 32.525124, 35.488194>,  <34.865349, 32.211498, 34.807823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243084, 32.525124, 35.488194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899899, 32.704990, 35.388836>,  <34.693989, 32.812912, 35.329220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899899, 32.704990, 35.388836>,  <35.243084, 32.525124, 35.488194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899899, 32.704990, 35.388836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506584, -0.820860, 0.263746,
		-0.085298, 0.352117, 0.932061,
		-0.857961, 0.449670, -0.248394,
		34.642509, 32.839890, 35.314316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782887, 32.236652, 35.924255>,  <35.243084, 32.525124, 35.488194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782887, 32.236652, 35.924255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544029, 32.418007, 35.659573>,  <34.400715, 32.526817, 35.500763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544029, 32.418007, 35.659573>,  <34.782887, 32.236652, 35.924255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544029, 32.418007, 35.659573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712065, -0.679418, 0.177075,
		-0.369294, 0.576919, 0.728551,
		-0.597148, 0.453382, -0.661709,
		34.364883, 32.554020, 35.461060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293255, 31.965338, 36.301891>,  <34.782887, 32.236652, 35.924255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293255, 31.965338, 36.301891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616661, 31.849859, 36.507008>,  <34.810703, 31.780573, 36.630077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616661, 31.849859, 36.507008>,  <34.293255, 31.965338, 36.301891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616661, 31.849859, 36.507008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514552, -0.769650, 0.377990,
		0.285547, -0.569469, -0.770823,
		0.808517, -0.288694, 0.512793,
		34.859215, 31.763250, 36.660847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194454, 31.283102, 36.193077>,  <34.293255, 31.965338, 36.301891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194454, 31.283102, 36.193077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428535, 31.350409, 36.510368>,  <34.568985, 31.390793, 36.700745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428535, 31.350409, 36.510368>,  <34.194454, 31.283102, 36.193077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428535, 31.350409, 36.510368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546044, -0.641416, 0.538907,
		0.599473, -0.748513, -0.283480,
		0.585207, 0.168268, 0.793233,
		34.604099, 31.400888, 36.748337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345169, 31.738470, 35.633591>,  <34.194454, 31.283102, 36.193077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345169, 31.738470, 35.633591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639366, 31.485394, 35.730553>,  <34.815884, 31.333548, 35.788731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639366, 31.485394, 35.730553>,  <34.345169, 31.738470, 35.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639366, 31.485394, 35.730553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677477, -0.681953, 0.275619,
		-0.009074, -0.366937, -0.930202,
		0.735488, -0.632691, 0.242403,
		34.860012, 31.295586, 35.803272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158539, 31.108820, 35.274780>,  <34.345169, 31.738470, 35.633591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158539, 31.108820, 35.274780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399616, 31.024294, 35.582573>,  <34.544262, 30.973577, 35.767250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399616, 31.024294, 35.582573>,  <34.158539, 31.108820, 35.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399616, 31.024294, 35.582573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600506, -0.755144, 0.262963,
		0.525505, -0.620567, -0.582015,
		0.602691, -0.211316, 0.769486,
		34.580425, 30.960899, 35.813419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437988, 30.460203, 35.200916>,  <34.158539, 31.108820, 35.274780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437988, 30.460203, 35.200916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451977, 30.536425, 35.593338>,  <34.460369, 30.582157, 35.828793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451977, 30.536425, 35.593338>,  <34.437988, 30.460203, 35.200916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451977, 30.536425, 35.593338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621438, -0.764647, 0.170674,
		0.782682, -0.615633, 0.091674,
		0.034974, 0.190553, 0.981054,
		34.462471, 30.593590, 35.887653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354187, 29.728514, 35.536655>,  <34.437988, 30.460203, 35.200916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354187, 29.728514, 35.536655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310661, 29.992825, 35.833717>,  <34.284546, 30.151411, 36.011955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310661, 29.992825, 35.833717>,  <34.354187, 29.728514, 35.536655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310661, 29.992825, 35.833717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606269, -0.636170, 0.477205,
		0.787780, -0.398320, 0.469834,
		-0.108814, 0.660779, 0.742651,
		34.278019, 30.191059, 36.056511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416691, 29.268063, 36.176964>,  <34.354187, 29.728514, 35.536655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416691, 29.268063, 36.176964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194038, 29.597845, 36.217812>,  <34.060448, 29.795715, 36.242321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194038, 29.597845, 36.217812>,  <34.416691, 29.268063, 36.176964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194038, 29.597845, 36.217812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715940, -0.538419, 0.444448,
		0.421414, 0.174281, 0.889964,
		-0.556633, 0.824458, 0.102122,
		34.027050, 29.845182, 36.248447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992069, 29.040195, 36.795448>,  <34.416691, 29.268063, 36.176964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992069, 29.040195, 36.795448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822720, 29.375603, 36.658253>,  <33.721111, 29.576847, 36.575935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822720, 29.375603, 36.658253>,  <33.992069, 29.040195, 36.795448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822720, 29.375603, 36.658253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903325, -0.361897, 0.230292,
		0.068975, 0.407334, 0.910671,
		-0.423375, 0.838516, -0.342993,
		33.695705, 29.627157, 36.555355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600006, 29.346802, 37.273167>,  <33.992069, 29.040195, 36.795448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600006, 29.346802, 37.273167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446606, 29.446444, 36.917442>,  <33.354565, 29.506229, 36.704006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446606, 29.446444, 36.917442>,  <33.600006, 29.346802, 37.273167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446606, 29.446444, 36.917442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920219, -0.184657, 0.345107,
		-0.078250, 0.950709, 0.300049,
		-0.383502, 0.249106, -0.889310,
		33.331554, 29.521175, 36.650650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120754, 29.970362, 37.286304>,  <33.600006, 29.346802, 37.273167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120754, 29.970362, 37.286304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037575, 29.700245, 37.003254>,  <32.987667, 29.538176, 36.833424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037575, 29.700245, 37.003254>,  <33.120754, 29.970362, 37.286304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037575, 29.700245, 37.003254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897052, -0.156745, 0.413193,
		-0.389943, 0.720704, -0.573176,
		-0.207947, -0.675291, -0.707630,
		32.975189, 29.497658, 36.790966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438335, 29.668125, 37.324261>,  <33.120754, 29.970362, 37.286304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438335, 29.668125, 37.324261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144146, 29.760782, 37.578953>,  <31.967632, 29.816376, 37.731766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144146, 29.760782, 37.578953>,  <32.438335, 29.668125, 37.324261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144146, 29.760782, 37.578953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656331, -0.010204, -0.754404,
		-0.168257, -0.972747, 0.159541,
		-0.735473, 0.231645, 0.636727,
		31.923504, 29.830275, 37.769970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887297, 29.252073, 37.210030>,  <32.438335, 29.668125, 37.324261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887297, 29.252073, 37.210030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720623, 29.574461, 37.378212>,  <31.620619, 29.767893, 37.479122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720623, 29.574461, 37.378212>,  <31.887297, 29.252073, 37.210030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720623, 29.574461, 37.378212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693679, 0.017023, -0.720083,
		-0.587522, -0.591713, 0.551991,
		-0.416686, 0.805969, 0.420460,
		31.595617, 29.816252, 37.504349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986923, 29.136442, 36.372639>,  <31.887297, 29.252073, 37.210030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986923, 29.136442, 36.372639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610754, 29.271627, 36.357769>,  <31.385052, 29.352739, 36.348846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610754, 29.271627, 36.357769>,  <31.986923, 29.136442, 36.372639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610754, 29.271627, 36.357769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265012, 0.797110, 0.542572,
		0.213003, 0.500396, -0.839186,
		-0.940425, 0.337964, -0.037175,
		31.328627, 29.373016, 36.346615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450363, 29.606413, 36.082264>,  <31.986923, 29.136442, 36.372639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450363, 29.606413, 36.082264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604191, 29.721422, 36.433136>,  <32.696487, 29.790428, 36.643658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604191, 29.721422, 36.433136>,  <32.450363, 29.606413, 36.082264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604191, 29.721422, 36.433136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798499, 0.373162, -0.472386,
		-0.463151, 0.882089, -0.086081,
		0.384565, 0.287522, 0.877178,
		32.719559, 29.807678, 36.696289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858753, 30.113691, 35.817326>,  <32.450363, 29.606413, 36.082264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858753, 30.113691, 35.817326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979275, 30.074099, 36.196678>,  <33.051586, 30.050343, 36.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979275, 30.074099, 36.196678>,  <32.858753, 30.113691, 35.817326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979275, 30.074099, 36.196678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890185, 0.385661, -0.242560,
		-0.341744, 0.917316, 0.204312,
		0.301299, -0.098982, 0.948378,
		33.069664, 30.044403, 36.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114773, 30.712797, 36.010643>,  <32.858753, 30.113691, 35.817326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114773, 30.712797, 36.010643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295723, 30.419607, 36.213860>,  <33.404293, 30.243694, 36.335789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295723, 30.419607, 36.213860>,  <33.114773, 30.712797, 36.010643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295723, 30.419607, 36.213860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888109, 0.422217, -0.181647,
		-0.081361, 0.533368, 0.841961,
		0.452375, -0.732974, 0.508041,
		33.431435, 30.199715, 36.366272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524956, 31.046453, 36.411629>,  <33.114773, 30.712797, 36.010643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524956, 31.046453, 36.411629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671112, 30.675743, 36.376820>,  <33.758808, 30.453318, 36.355934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671112, 30.675743, 36.376820>,  <33.524956, 31.046453, 36.411629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671112, 30.675743, 36.376820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928603, 0.369411, -0.035097,
		0.064673, -0.067983, 0.995588,
		0.365395, -0.926776, -0.087020,
		33.780731, 30.397711, 36.350712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951218, 30.962244, 37.002041>,  <33.524956, 31.046453, 36.411629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951218, 30.962244, 37.002041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060318, 30.738018, 36.689278>,  <34.125778, 30.603483, 36.501621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060318, 30.738018, 36.689278>,  <33.951218, 30.962244, 37.002041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060318, 30.738018, 36.689278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907187, 0.420460, 0.015017,
		0.320341, -0.713429, 0.623218,
		0.272752, -0.560565, -0.781904,
		34.142143, 30.569849, 36.454708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661705, 30.894844, 37.113552>,  <33.951218, 30.962244, 37.002041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661705, 30.894844, 37.113552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603729, 30.774122, 36.736637>,  <34.568943, 30.701691, 36.510487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603729, 30.774122, 36.736637>,  <34.661705, 30.894844, 37.113552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603729, 30.774122, 36.736637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872937, 0.409338, -0.265374,
		0.465806, -0.861021, 0.204126,
		-0.144936, -0.301802, -0.942289,
		34.560249, 30.683582, 36.453949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374203, 30.741402, 36.850723>,  <34.661705, 30.894844, 37.113552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374203, 30.741402, 36.850723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134384, 30.796770, 36.535412>,  <34.990494, 30.829992, 36.346226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134384, 30.796770, 36.535412>,  <35.374203, 30.741402, 36.850723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134384, 30.796770, 36.535412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725415, 0.510083, -0.462157,
		0.338115, -0.848914, -0.406231,
		-0.599543, 0.138423, -0.788281,
		34.954521, 30.838297, 36.298927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769440, 30.511242, 36.261066>,  <35.374203, 30.741402, 36.850723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769440, 30.511242, 36.261066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481205, 30.740698, 36.105278>,  <35.308262, 30.878372, 36.011806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481205, 30.740698, 36.105278>,  <35.769440, 30.511242, 36.261066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481205, 30.740698, 36.105278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689381, 0.532629, -0.490980,
		-0.074202, -0.622289, -0.779263,
		-0.720589, 0.573640, -0.389472,
		35.265030, 30.912790, 35.988438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931255, 30.574776, 35.531403>,  <35.769440, 30.511242, 36.261066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931255, 30.574776, 35.531403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721500, 30.894005, 35.650124>,  <35.595646, 31.085543, 35.721355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721500, 30.894005, 35.650124>,  <35.931255, 30.574776, 35.531403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721500, 30.894005, 35.650124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612849, 0.595750, -0.519131,
		-0.591126, -0.090332, -0.801505,
		-0.524391, 0.798074, 0.296804,
		35.564182, 31.133427, 35.739166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608669, 31.000549, 34.914467>,  <35.931255, 30.574776, 35.531403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608669, 31.000549, 34.914467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721748, 31.210476, 35.235626>,  <35.789597, 31.336432, 35.428322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721748, 31.210476, 35.235626>,  <35.608669, 31.000549, 34.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721748, 31.210476, 35.235626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517664, 0.621212, -0.588320,
		-0.807532, 0.581947, -0.096066,
		0.282694, 0.524817, 0.802902,
		35.806557, 31.367922, 35.476498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539761, 31.695906, 34.776905>,  <35.608669, 31.000549, 34.914467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539761, 31.695906, 34.776905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791821, 31.753952, 35.082024>,  <35.943058, 31.788780, 35.265095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791821, 31.753952, 35.082024>,  <35.539761, 31.695906, 34.776905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791821, 31.753952, 35.082024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419773, 0.762782, -0.491889,
		-0.653225, 0.630163, 0.419751,
		0.630149, 0.145114, 0.762794,
		35.980865, 31.797485, 35.310863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675999, 32.460114, 34.816139>,  <35.539761, 31.695906, 34.776905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675999, 32.460114, 34.816139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979866, 32.255589, 34.976868>,  <36.162186, 32.132874, 35.073303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979866, 32.255589, 34.976868>,  <35.675999, 32.460114, 34.816139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979866, 32.255589, 34.976868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569223, 0.821611, -0.030667,
		-0.314462, 0.252023, 0.915204,
		0.759670, -0.511312, 0.401823,
		36.207767, 32.102196, 35.097416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016544, 32.906315, 35.070618>,  <35.675999, 32.460114, 34.816139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016544, 32.906315, 35.070618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292053, 32.616325, 35.070927>,  <36.457359, 32.442333, 35.071114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292053, 32.616325, 35.070927>,  <36.016544, 32.906315, 35.070618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292053, 32.616325, 35.070927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722867, 0.686693, -0.076919,
		0.055233, 0.053540, 0.997037,
		0.688777, -0.724973, 0.000775,
		36.498688, 32.398834, 35.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634579, 33.098961, 35.520004>,  <36.016544, 32.906315, 35.070618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634579, 33.098961, 35.520004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762688, 32.866726, 35.220581>,  <36.839554, 32.727386, 35.040928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762688, 32.866726, 35.220581>,  <36.634579, 33.098961, 35.520004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762688, 32.866726, 35.220581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774531, 0.615464, -0.145966,
		0.545458, -0.533034, 0.646800,
		0.320277, -0.580585, -0.748561,
		36.858772, 32.692551, 34.996014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309696, 32.964706, 35.676514>,  <36.634579, 33.098961, 35.520004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309696, 32.964706, 35.676514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250496, 32.939034, 35.281754>,  <37.214977, 32.923630, 35.044895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250496, 32.939034, 35.281754>,  <37.309696, 32.964706, 35.676514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250496, 32.939034, 35.281754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881512, 0.443843, -0.161057,
		0.448366, -0.893803, -0.009112,
		-0.147998, -0.064180, -0.986903,
		37.206097, 32.919781, 34.985683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947128, 33.166729, 35.454643>,  <37.309696, 32.964706, 35.676514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947128, 33.166729, 35.454643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767422, 33.093311, 35.104908>,  <37.659595, 33.049259, 34.895065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767422, 33.093311, 35.104908>,  <37.947128, 33.166729, 35.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767422, 33.093311, 35.104908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842199, 0.239529, -0.483039,
		0.298090, -0.953381, 0.046972,
		-0.449270, -0.183549, -0.874338,
		37.632641, 33.038246, 34.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505474, 32.859344, 35.069008>,  <37.947128, 33.166729, 35.454643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505474, 32.859344, 35.069008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212517, 32.987579, 34.828732>,  <38.036743, 33.064522, 34.684566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212517, 32.987579, 34.828732>,  <38.505474, 32.859344, 35.069008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212517, 32.987579, 34.828732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660621, 0.120961, -0.740910,
		-0.164866, -0.939464, -0.300377,
		-0.732392, 0.320587, -0.600688,
		37.992798, 33.083755, 34.648525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251175, 33.095238, 35.242226>,  <38.505474, 32.859344, 35.069008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251175, 33.095238, 35.242226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106045, 32.725166, 35.197674>,  <39.018967, 32.503124, 35.170944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106045, 32.725166, 35.197674>,  <39.251175, 33.095238, 35.242226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106045, 32.725166, 35.197674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016005, 0.125694, -0.991940,
		0.931721, -0.358115, -0.060412,
		-0.362822, -0.925178, -0.111380,
		38.997196, 32.447613, 35.164261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940681, 33.819321, 35.545486>,  <39.251175, 33.095238, 35.242226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940681, 33.819321, 35.545486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056747, 33.884132, 35.922749>,  <39.126389, 33.923019, 36.149105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056747, 33.884132, 35.922749>,  <38.940681, 33.819321, 35.545486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056747, 33.884132, 35.922749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831876, 0.444484, -0.332290,
		-0.473061, 0.881010, -0.005817,
		0.290165, 0.162032, 0.943159,
		39.143799, 33.932743, 36.205696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130756, 34.503391, 35.525398>,  <38.940681, 33.819321, 35.545486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130756, 34.503391, 35.525398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311787, 34.319313, 35.830917>,  <39.420406, 34.208866, 36.014229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311787, 34.319313, 35.830917>,  <39.130756, 34.503391, 35.525398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311787, 34.319313, 35.830917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808502, 0.573087, -0.133772,
		-0.376164, 0.678078, 0.631436,
		0.452576, -0.460198, 0.763802,
		39.447559, 34.181255, 36.060059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445404, 34.967121, 36.072453>,  <39.130756, 34.503391, 35.525398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445404, 34.967121, 36.072453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643417, 34.621883, 36.032433>,  <39.762226, 34.414742, 36.008419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643417, 34.621883, 36.032433>,  <39.445404, 34.967121, 36.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643417, 34.621883, 36.032433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867442, 0.497538, -0.000143,
		0.049903, -0.086719, 0.994982,
		0.495029, -0.863097, -0.100053,
		39.791927, 34.362953, 36.002419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035557, 34.633644, 36.607410>,  <39.445404, 34.967121, 36.072453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035557, 34.633644, 36.607410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084309, 34.538727, 36.221905>,  <40.113560, 34.481777, 35.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084309, 34.538727, 36.221905>,  <40.035557, 34.633644, 36.607410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084309, 34.538727, 36.221905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893618, 0.448822, 0.002505,
		0.431963, -0.861539, 0.266755,
		0.121883, -0.237295, -0.963761,
		40.120872, 34.467537, 35.932777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704189, 34.434322, 36.447174>,  <40.035557, 34.633644, 36.607410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704189, 34.434322, 36.447174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604584, 34.468220, 36.061260>,  <40.544819, 34.488556, 35.829712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604584, 34.468220, 36.061260>,  <40.704189, 34.434322, 36.447174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604584, 34.468220, 36.061260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936130, 0.276452, -0.217335,
		0.248300, -0.957285, -0.148167,
		-0.249013, 0.084740, -0.964786,
		40.529881, 34.493641, 35.771824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257450, 34.183315, 35.958950>,  <40.704189, 34.434322, 36.447174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257450, 34.183315, 35.958950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032272, 34.460022, 35.778042>,  <40.897167, 34.626045, 35.669498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032272, 34.460022, 35.778042>,  <41.257450, 34.183315, 35.958950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032272, 34.460022, 35.778042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806092, 0.580388, -0.115612,
		0.182515, -0.429654, -0.884356,
		-0.562943, 0.691771, -0.452270,
		40.863388, 34.667553, 35.642361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366787, 34.453762, 35.318867>,  <41.257450, 34.183315, 35.958950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366787, 34.453762, 35.318867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210754, 34.762360, 35.519920>,  <41.117134, 34.947517, 35.640553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210754, 34.762360, 35.519920>,  <41.366787, 34.453762, 35.318867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210754, 34.762360, 35.519920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874746, 0.480938, -0.059318,
		-0.287498, 0.416537, -0.862463,
		-0.390083, 0.771489, 0.502632,
		41.093731, 34.993805, 35.670712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314384, 34.897606, 34.867271>,  <41.366787, 34.453762, 35.318867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314384, 34.897606, 34.867271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359245, 35.029579, 35.242199>,  <41.386162, 35.108765, 35.467155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359245, 35.029579, 35.242199>,  <41.314384, 34.897606, 34.867271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359245, 35.029579, 35.242199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981138, 0.112692, -0.157061,
		-0.157448, 0.937253, -0.311074,
		0.112150, 0.329936, 0.937318,
		41.392891, 35.128559, 35.523396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643711, 35.436016, 34.930092>,  <41.314384, 34.897606, 34.867271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643711, 35.436016, 34.930092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719791, 35.262676, 35.282463>,  <41.765438, 35.158672, 35.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719791, 35.262676, 35.282463>,  <41.643711, 35.436016, 34.930092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719791, 35.262676, 35.282463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981143, 0.052499, -0.186015,
		0.034362, 0.899696, 0.435162,
		0.190202, -0.433348, 0.880927,
		41.776852, 35.132671, 35.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230385, 35.816280, 35.247444>,  <41.643711, 35.436016, 34.930092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230385, 35.816280, 35.247444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200920, 35.442451, 35.386673>,  <42.183239, 35.218155, 35.470211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200920, 35.442451, 35.386673>,  <42.230385, 35.816280, 35.247444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200920, 35.442451, 35.386673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993626, -0.098640, -0.054561,
		0.085325, 0.341832, 0.935880,
		-0.073665, -0.934570, 0.348069,
		42.178822, 35.162079, 35.491093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474857, 35.713127, 35.944592>,  <42.230385, 35.816280, 35.247444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474857, 35.713127, 35.944592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519909, 35.390274, 35.712784>,  <42.546940, 35.196560, 35.573700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519909, 35.390274, 35.712784>,  <42.474857, 35.713127, 35.944592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519909, 35.390274, 35.712784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982063, 0.179184, -0.058691,
		0.151213, -0.562515, 0.812841,
		0.112634, -0.807137, -0.579521,
		42.553699, 35.148132, 35.538929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972027, 35.176918, 36.183220>,  <42.474857, 35.713127, 35.944592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972027, 35.176918, 36.183220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967361, 35.143715, 35.784626>,  <42.964561, 35.123795, 35.545471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967361, 35.143715, 35.784626>,  <42.972027, 35.176918, 36.183220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967361, 35.143715, 35.784626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999621, 0.023870, -0.013684,
		0.024922, -0.996263, 0.082697,
		-0.011659, -0.083007, -0.996481,
		42.963863, 35.118813, 35.485683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499184, 34.701458, 36.050308>,  <42.972027, 35.176918, 36.183220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499184, 34.701458, 36.050308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436062, 34.919540, 35.720982>,  <43.398190, 35.050388, 35.523384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436062, 34.919540, 35.720982>,  <43.499184, 34.701458, 36.050308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436062, 34.919540, 35.720982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986362, 0.126537, -0.105261,
		0.046791, -0.828699, -0.557736,
		-0.157804, 0.545204, -0.823317,
		43.388721, 35.083103, 35.473988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815933, 34.364361, 35.441902>,  <43.499184, 34.701458, 36.050308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815933, 34.364361, 35.441902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811203, 34.763611, 35.465927>,  <43.808365, 35.003162, 35.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811203, 34.763611, 35.465927>,  <43.815933, 34.364361, 35.441902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811203, 34.763611, 35.465927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998745, 0.014716, -0.047873,
		-0.048667, 0.059422, -0.997046,
		-0.011828, 0.998124, 0.060064,
		43.807655, 35.063049, 35.483948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139439, 34.600197, 34.810829>,  <43.815933, 34.364361, 35.441902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139439, 34.600197, 34.810829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172607, 34.849739, 35.121681>,  <44.192509, 34.999466, 35.308193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172607, 34.849739, 35.121681>,  <44.139439, 34.600197, 34.810829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172607, 34.849739, 35.121681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996311, -0.034615, -0.078522,
		-0.022086, 0.780773, -0.624424,
		0.082922, 0.623855, 0.777129,
		44.197483, 35.036896, 35.354820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706379, 34.989273, 34.671009>,  <44.139439, 34.600197, 34.810829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706379, 34.989273, 34.671009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656086, 35.013287, 35.067108>,  <44.625912, 35.027695, 35.304768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656086, 35.013287, 35.067108>,  <44.706379, 34.989273, 34.671009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656086, 35.013287, 35.067108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977039, -0.165576, 0.134090,
		0.172011, 0.984368, -0.037837,
		-0.125729, 0.060034, 0.990246,
		44.618366, 35.031296, 35.364182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338428, 35.463734, 34.932682>,  <44.706379, 34.989273, 34.671009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338428, 35.463734, 34.932682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167236, 35.177055, 35.152931>,  <45.064522, 35.005051, 35.285080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167236, 35.177055, 35.152931>,  <45.338428, 35.463734, 34.932682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167236, 35.177055, 35.152931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894597, -0.422594, 0.145293,
		0.128558, 0.554765, 0.822015,
		-0.427982, -0.716694, 0.550619,
		45.038841, 34.962048, 35.318115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591702, 35.412643, 35.543804>,  <45.338428, 35.463734, 34.932682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591702, 35.412643, 35.543804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446339, 35.049824, 35.458771>,  <45.359119, 34.832130, 35.407749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446339, 35.049824, 35.458771>,  <45.591702, 35.412643, 35.543804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446339, 35.049824, 35.458771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930649, -0.363915, -0.038194,
		-0.042719, -0.211721, 0.976396,
		-0.363411, -0.907050, -0.212584,
		45.337315, 34.777710, 35.394997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747444, 34.707161, 35.739887>,  <45.591702, 35.412643, 35.543804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747444, 34.707161, 35.739887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560059, 34.441841, 35.506454>,  <45.447628, 34.282650, 35.366394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560059, 34.441841, 35.506454>,  <45.747444, 34.707161, 35.739887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560059, 34.441841, 35.506454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820128, -0.080860, -0.566437,
		0.328531, -0.743970, 0.581873,
		-0.468463, -0.663303, -0.583585,
		45.419521, 34.242851, 35.331379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058880, 34.044472, 35.878147>,  <45.747444, 34.707161, 35.739887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058880, 34.044472, 35.878147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913593, 34.156643, 35.522747>,  <45.826420, 34.223946, 35.309505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913593, 34.156643, 35.522747>,  <46.058880, 34.044472, 35.878147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913593, 34.156643, 35.522747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930838, 0.150318, -0.333085,
		0.040151, -0.948032, -0.315631,
		-0.363220, 0.280428, -0.888500,
		45.804626, 34.240772, 35.256199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388065, 33.620316, 35.317574>,  <46.058880, 34.044472, 35.878147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388065, 33.620316, 35.317574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283699, 33.983307, 35.185871>,  <46.221081, 34.201103, 35.106850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283699, 33.983307, 35.185871>,  <46.388065, 33.620316, 35.317574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283699, 33.983307, 35.185871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925687, 0.138415, -0.352057,
		-0.273910, -0.396642, -0.876155,
		-0.260914, 0.907478, -0.329253,
		46.205425, 34.255550, 35.087093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804821, 33.686977, 34.748787>,  <46.388065, 33.620316, 35.317574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804821, 33.686977, 34.748787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701965, 34.036659, 34.913540>,  <46.640251, 34.246468, 35.012390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701965, 34.036659, 34.913540>,  <46.804821, 33.686977, 34.748787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701965, 34.036659, 34.913540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944928, 0.316746, -0.082363,
		-0.202463, 0.368019, -0.907508,
		-0.257138, 0.874205, 0.411881,
		46.624825, 34.298920, 35.037106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019592, 34.244034, 34.352917>,  <46.804821, 33.686977, 34.748787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019592, 34.244034, 34.352917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982513, 34.382015, 34.726528>,  <46.960266, 34.464806, 34.950695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982513, 34.382015, 34.726528>,  <47.019592, 34.244034, 34.352917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982513, 34.382015, 34.726528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953380, 0.301311, -0.016664,
		-0.287182, 0.888941, -0.356806,
		-0.092696, 0.344957, 0.934030,
		46.954704, 34.485504, 35.006737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.329269, 35.011402, 34.403908>,  <47.019592, 34.244034, 34.352917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.329269, 35.011402, 34.403908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349297, 34.762241, 34.716187>,  <47.361313, 34.612743, 34.903553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.349297, 34.762241, 34.716187>,  <47.329269, 35.011402, 34.403908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.349297, 34.762241, 34.716187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942280, 0.288570, 0.169813,
		-0.331062, 0.727129, 0.601400,
		0.050070, -0.622906, 0.780693,
		47.364319, 34.575371, 34.950394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652897, 35.340904, 34.914360>,  <47.329269, 35.011402, 34.403908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652897, 35.340904, 34.914360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715424, 34.964638, 35.034836>,  <47.752941, 34.738876, 35.107121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715424, 34.964638, 35.034836>,  <47.652897, 35.340904, 34.914360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715424, 34.964638, 35.034836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920027, 0.249608, 0.302069,
		-0.359325, 0.229880, 0.904456,
		0.156319, -0.940665, 0.301186,
		47.762318, 34.682438, 35.125191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.233128, 36.818848, 23.431559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055016, 37.172947, 23.485321>,  <37.948151, 37.385406, 23.517578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055016, 37.172947, 23.485321>,  <38.233128, 36.818848, 23.431559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055016, 37.172947, 23.485321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473912, -0.360365, 0.803458,
		0.759694, 0.294066, 0.579992,
		-0.445278, 0.885247, 0.134405,
		37.921432, 37.438522, 23.525642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246365, 37.080673, 24.109966>,  <38.233128, 36.818848, 23.431559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246365, 37.080673, 24.109966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932243, 37.280197, 23.963274>,  <37.743771, 37.399914, 23.875259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932243, 37.280197, 23.963274>,  <38.246365, 37.080673, 24.109966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932243, 37.280197, 23.963274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531640, -0.239757, 0.812327,
		0.317273, 0.832888, 0.453470,
		-0.785300, 0.498813, -0.366728,
		37.696651, 37.429840, 23.853256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168968, 37.487312, 24.593184>,  <38.246365, 37.080673, 24.109966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168968, 37.487312, 24.593184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826271, 37.437748, 24.392929>,  <37.620651, 37.408009, 24.272776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826271, 37.437748, 24.392929>,  <38.168968, 37.487312, 24.593184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826271, 37.437748, 24.392929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465456, -0.232310, 0.854039,
		-0.222131, 0.964716, 0.141353,
		-0.856743, -0.123915, -0.500636,
		37.569248, 37.400574, 24.242739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706051, 37.878319, 24.885969>,  <38.168968, 37.487312, 24.593184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706051, 37.878319, 24.885969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470482, 37.603321, 24.716019>,  <37.329140, 37.438320, 24.614048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470482, 37.603321, 24.716019>,  <37.706051, 37.878319, 24.885969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470482, 37.603321, 24.716019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491817, -0.112304, 0.863425,
		-0.641318, 0.717450, -0.271985,
		-0.588920, -0.687497, -0.424877,
		37.293804, 37.397072, 24.588556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045479, 37.942490, 25.202290>,  <37.706051, 37.878319, 24.885969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045479, 37.942490, 25.202290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994507, 37.580742, 25.039381>,  <36.963924, 37.363693, 24.941635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994507, 37.580742, 25.039381>,  <37.045479, 37.942490, 25.202290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994507, 37.580742, 25.039381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450041, -0.313198, 0.836283,
		-0.883869, 0.289854, -0.367096,
		-0.127427, -0.904373, -0.407273,
		36.956280, 37.309429, 24.917200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467571, 37.791801, 25.526932>,  <37.045479, 37.942490, 25.202290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467571, 37.791801, 25.526932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583302, 37.441425, 25.372517>,  <36.652740, 37.231201, 25.279867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583302, 37.441425, 25.372517>,  <36.467571, 37.791801, 25.526932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583302, 37.441425, 25.372517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562148, -0.481898, 0.672134,
		-0.774777, 0.022544, -0.631832,
		0.289326, -0.875937, -0.386036,
		36.670101, 37.178642, 25.256706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803772, 37.331192, 25.356804>,  <36.467571, 37.791801, 25.526932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803772, 37.331192, 25.356804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131943, 37.105564, 25.394186>,  <36.328846, 36.970188, 25.416615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131943, 37.105564, 25.394186>,  <35.803772, 37.331192, 25.356804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131943, 37.105564, 25.394186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530898, -0.690872, 0.490758,
		-0.212253, -0.452245, -0.866269,
		0.820424, -0.564066, 0.093457,
		36.378071, 36.936344, 25.422222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539696, 36.561783, 25.244766>,  <35.803772, 37.331192, 25.356804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539696, 36.561783, 25.244766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887268, 36.547909, 25.442251>,  <36.095814, 36.539585, 25.560741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887268, 36.547909, 25.442251>,  <35.539696, 36.561783, 25.244766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887268, 36.547909, 25.442251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351326, -0.745844, 0.565939,
		0.348603, -0.665217, -0.660274,
		0.868934, -0.034683, 0.493712,
		36.147949, 36.537502, 25.590364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715645, 35.889778, 25.231867>,  <35.539696, 36.561783, 25.244766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715645, 35.889778, 25.231867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912724, 36.059719, 25.535643>,  <36.030972, 36.161686, 25.717909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912724, 36.059719, 25.535643>,  <35.715645, 35.889778, 25.231867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912724, 36.059719, 25.535643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249348, -0.767197, 0.590961,
		0.833713, -0.480529, -0.272058,
		0.492695, 0.424854, 0.759441,
		36.060532, 36.187176, 25.763475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831593, 35.410603, 25.643957>,  <35.715645, 35.889778, 25.231867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831593, 35.410603, 25.643957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941216, 35.701023, 25.896223>,  <36.006989, 35.875275, 26.047583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941216, 35.701023, 25.896223>,  <35.831593, 35.410603, 25.643957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941216, 35.701023, 25.896223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092842, -0.632733, 0.768784,
		0.957222, -0.269243, -0.105996,
		0.274057, 0.726056, 0.630663,
		36.023434, 35.918839, 26.085423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428844, 35.171391, 26.021889>,  <35.831593, 35.410603, 25.643957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428844, 35.171391, 26.021889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208691, 35.442059, 26.217520>,  <36.076599, 35.604462, 26.334898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208691, 35.442059, 26.217520>,  <36.428844, 35.171391, 26.021889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208691, 35.442059, 26.217520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074567, -0.623278, 0.778437,
		0.831578, 0.391967, 0.393497,
		-0.550380, 0.676672, 0.489077,
		36.043575, 35.645061, 26.364243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769508, 35.093128, 26.563255>,  <36.428844, 35.171391, 26.021889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769508, 35.093128, 26.563255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419605, 35.273872, 26.633249>,  <36.209663, 35.382320, 26.675245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419605, 35.273872, 26.633249>,  <36.769508, 35.093128, 26.563255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419605, 35.273872, 26.633249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162906, -0.614342, 0.772040,
		0.456354, 0.646843, 0.611012,
		-0.874758, 0.451862, 0.174983,
		36.157177, 35.409431, 26.685743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721581, 35.290562, 27.287252>,  <36.769508, 35.093128, 26.563255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721581, 35.290562, 27.287252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335320, 35.289703, 27.183319>,  <36.103561, 35.289188, 27.120960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335320, 35.289703, 27.183319>,  <36.721581, 35.290562, 27.287252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335320, 35.289703, 27.183319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236336, -0.408349, 0.881701,
		-0.107990, 0.912823, 0.393817,
		-0.965652, -0.002142, -0.259831,
		36.045624, 35.289062, 27.105370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334072, 35.668213, 27.856325>,  <36.721581, 35.290562, 27.287252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334072, 35.668213, 27.856325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065052, 35.442886, 27.664345>,  <35.903641, 35.307690, 27.549156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065052, 35.442886, 27.664345>,  <36.334072, 35.668213, 27.856325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065052, 35.442886, 27.664345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443794, -0.211990, 0.870694,
		-0.592218, 0.798585, -0.107421,
		-0.672551, -0.563313, -0.479952,
		35.863285, 35.273891, 27.520359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831978, 35.728664, 28.290800>,  <36.334072, 35.668213, 27.856325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831978, 35.728664, 28.290800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699200, 35.420242, 28.073439>,  <35.619534, 35.235191, 27.943022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699200, 35.420242, 28.073439>,  <35.831978, 35.728664, 28.290800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699200, 35.420242, 28.073439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622560, -0.253713, 0.740304,
		-0.708682, 0.584043, -0.395807,
		-0.331948, -0.771053, -0.543404,
		35.599617, 35.188927, 27.910418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122017, 35.728695, 28.240364>,  <35.831978, 35.728664, 28.290800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122017, 35.728695, 28.240364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246857, 35.349937, 28.209425>,  <35.321762, 35.122684, 28.190861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246857, 35.349937, 28.209425>,  <35.122017, 35.728695, 28.240364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246857, 35.349937, 28.209425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476299, -0.226394, 0.849638,
		-0.822029, -0.228333, -0.521663,
		0.312102, -0.946895, -0.077347,
		35.340488, 35.065868, 28.186220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542984, 35.301846, 28.476511>,  <35.122017, 35.728695, 28.240364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542984, 35.301846, 28.476511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845657, 35.040642, 28.489269>,  <35.027260, 34.883919, 28.496923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845657, 35.040642, 28.489269>,  <34.542984, 35.301846, 28.476511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845657, 35.040642, 28.489269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345805, -0.358348, 0.867182,
		-0.554847, -0.667208, -0.496968,
		0.756679, -0.653008, 0.031896,
		35.072662, 34.844738, 28.498838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198906, 34.611259, 28.643879>,  <34.542984, 35.301846, 28.476511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198906, 34.611259, 28.643879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588234, 34.622246, 28.735006>,  <34.821831, 34.628838, 28.789682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.588234, 34.622246, 28.735006>,  <34.198906, 34.611259, 28.643879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588234, 34.622246, 28.735006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204407, -0.347376, 0.915176,
		0.104273, -0.937324, -0.332493,
		0.973317, 0.027464, 0.227817,
		34.880230, 34.630486, 28.803350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275627, 34.122238, 29.053736>,  <34.198906, 34.611259, 28.643879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275627, 34.122238, 29.053736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629356, 34.293289, 29.128689>,  <34.841595, 34.395920, 29.173660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629356, 34.293289, 29.128689>,  <34.275627, 34.122238, 29.053736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629356, 34.293289, 29.128689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000806, -0.399952, 0.916535,
		0.466880, -0.810662, -0.353341,
		0.884321, 0.427628, 0.187383,
		34.894653, 34.421577, 29.184904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655159, 33.611839, 29.452181>,  <34.275627, 34.122238, 29.053736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655159, 33.611839, 29.452181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878117, 33.936264, 29.523153>,  <35.011890, 34.130920, 29.565737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878117, 33.936264, 29.523153>,  <34.655159, 33.611839, 29.452181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878117, 33.936264, 29.523153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155416, -0.311862, 0.937330,
		0.815571, -0.494887, -0.299883,
		0.557395, 0.811067, 0.177432,
		35.045334, 34.179585, 29.576384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326645, 33.384052, 29.763580>,  <34.655159, 33.611839, 29.452181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326645, 33.384052, 29.763580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215260, 33.754513, 29.865320>,  <35.148430, 33.976791, 29.926365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215260, 33.754513, 29.865320>,  <35.326645, 33.384052, 29.763580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215260, 33.754513, 29.865320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141931, -0.222236, 0.964607,
		0.949902, 0.304707, -0.069566,
		-0.278462, 0.926156, 0.254350,
		35.131721, 34.032360, 29.941626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908398, 33.574345, 30.286131>,  <35.326645, 33.384052, 29.763580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908398, 33.574345, 30.286131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078869, 33.219528, 30.357159>,  <36.181152, 33.006638, 30.399775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078869, 33.219528, 30.357159>,  <35.908398, 33.574345, 30.286131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078869, 33.219528, 30.357159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479173, 0.054859, -0.876004,
		0.767310, 0.458421, 0.448426,
		0.426179, -0.887041, 0.177569,
		36.206722, 32.953415, 30.410429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563488, 33.680843, 29.936758>,  <35.908398, 33.574345, 30.286131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563488, 33.680843, 29.936758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508579, 33.289581, 29.999197>,  <36.475632, 33.054825, 30.036659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508579, 33.289581, 29.999197>,  <36.563488, 33.680843, 29.936758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508579, 33.289581, 29.999197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527993, -0.205593, -0.823987,
		0.838080, -0.030696, 0.544683,
		-0.137276, -0.978156, 0.156096,
		36.467396, 32.996136, 30.046026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286755, 33.363323, 29.969139>,  <36.563488, 33.680843, 29.936758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286755, 33.363323, 29.969139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010612, 33.081917, 29.901646>,  <36.844925, 32.913074, 29.861149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010612, 33.081917, 29.901646>,  <37.286755, 33.363323, 29.969139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010612, 33.081917, 29.901646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474718, -0.264504, -0.839453,
		0.545937, -0.659624, 0.516574,
		-0.690359, -0.703515, -0.168733,
		36.803505, 32.870861, 29.851027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708294, 32.773384, 29.803898>,  <37.286755, 33.363323, 29.969139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708294, 32.773384, 29.803898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336586, 32.730469, 29.662508>,  <37.113560, 32.704720, 29.577675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336586, 32.730469, 29.662508>,  <37.708294, 32.773384, 29.803898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336586, 32.730469, 29.662508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368660, -0.208837, -0.905802,
		0.023368, -0.972047, 0.233621,
		-0.929271, -0.107293, -0.353475,
		37.057804, 32.698280, 29.556465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712090, 32.027573, 29.624741>,  <37.708294, 32.773384, 29.803898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712090, 32.027573, 29.624741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447395, 32.256424, 29.430925>,  <37.288578, 32.393734, 29.314636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447395, 32.256424, 29.430925>,  <37.712090, 32.027573, 29.624741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447395, 32.256424, 29.430925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551326, -0.066626, -0.831626,
		-0.508076, -0.817456, -0.271338,
		-0.661739, 0.572124, -0.484536,
		37.248875, 32.428062, 29.285564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761494, 31.708805, 28.963690>,  <37.712090, 32.027573, 29.624741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761494, 31.708805, 28.963690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575989, 32.053936, 28.883236>,  <37.464687, 32.261013, 28.834965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575989, 32.053936, 28.883236>,  <37.761494, 31.708805, 28.963690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575989, 32.053936, 28.883236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559185, 0.108974, -0.821849,
		-0.687197, -0.493610, -0.533019,
		-0.463759, 0.862829, -0.201133,
		37.436863, 32.312786, 28.822897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565113, 31.752295, 28.230177>,  <37.761494, 31.708805, 28.963690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565113, 31.752295, 28.230177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566307, 32.134098, 28.349443>,  <37.567024, 32.363182, 28.421003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566307, 32.134098, 28.349443>,  <37.565113, 31.752295, 28.230177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566307, 32.134098, 28.349443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411305, 0.270607, -0.870402,
		-0.911493, 0.125235, -0.391787,
		0.002984, 0.954509, 0.298166,
		37.567204, 32.420452, 28.438892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354511, 32.013695, 27.619028>,  <37.565113, 31.752295, 28.230177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354511, 32.013695, 27.619028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498005, 32.325279, 27.824757>,  <37.584103, 32.512230, 27.948193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498005, 32.325279, 27.824757>,  <37.354511, 32.013695, 27.619028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498005, 32.325279, 27.824757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448504, 0.339381, -0.826840,
		-0.818630, 0.527289, -0.227622,
		0.358733, 0.778965, 0.514319,
		37.605625, 32.558968, 27.979052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189217, 32.624294, 27.288876>,  <37.354511, 32.013695, 27.619028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189217, 32.624294, 27.288876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504524, 32.723808, 27.513994>,  <37.693707, 32.783516, 27.649065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504524, 32.723808, 27.513994>,  <37.189217, 32.624294, 27.288876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504524, 32.723808, 27.513994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402085, 0.484088, -0.777166,
		-0.465793, 0.838906, 0.281556,
		0.788267, 0.248789, 0.562796,
		37.741005, 32.798447, 27.682833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303509, 33.328651, 27.275335>,  <37.189217, 32.624294, 27.288876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303509, 33.328651, 27.275335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666508, 33.196465, 27.379061>,  <37.884308, 33.117153, 27.441296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.666508, 33.196465, 27.379061>,  <37.303509, 33.328651, 27.275335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666508, 33.196465, 27.379061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408028, 0.546803, -0.731108,
		0.099812, 0.769285, 0.631061,
		0.907497, -0.330464, 0.259313,
		37.938755, 33.097324, 27.456854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720795, 33.857502, 27.112804>,  <37.303509, 33.328651, 27.275335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720795, 33.857502, 27.112804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024166, 33.603104, 27.169786>,  <38.206188, 33.450466, 27.203976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024166, 33.603104, 27.169786>,  <37.720795, 33.857502, 27.112804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024166, 33.603104, 27.169786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575458, 0.550837, -0.604505,
		0.305995, 0.540451, 0.783760,
		0.758430, -0.635996, 0.142453,
		38.251694, 33.412304, 27.212523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203304, 34.321976, 27.160456>,  <37.720795, 33.857502, 27.112804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203304, 34.321976, 27.160456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372944, 33.971119, 27.070332>,  <38.474728, 33.760605, 27.016256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372944, 33.971119, 27.070332>,  <38.203304, 34.321976, 27.160456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372944, 33.971119, 27.070332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654923, 0.468884, -0.592642,
		0.625476, 0.103774, 0.773311,
		0.424094, -0.877142, -0.225312,
		38.500172, 33.707977, 27.002739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913292, 34.376102, 27.153538>,  <38.203304, 34.321976, 27.160456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913292, 34.376102, 27.153538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844822, 34.053577, 26.927067>,  <38.803741, 33.860062, 26.791183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844822, 34.053577, 26.927067>,  <38.913292, 34.376102, 27.153538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844822, 34.053577, 26.927067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598418, 0.371428, -0.709886,
		0.782685, -0.460326, 0.418933,
		-0.171175, -0.806314, -0.566178,
		38.793468, 33.811684, 26.757214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579521, 34.168510, 26.892931>,  <38.913292, 34.376102, 27.153538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579521, 34.168510, 26.892931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305893, 33.997673, 26.656408>,  <39.141716, 33.895172, 26.514494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305893, 33.997673, 26.656408>,  <39.579521, 34.168510, 26.892931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305893, 33.997673, 26.656408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599924, 0.131684, -0.789146,
		0.414903, -0.894568, 0.166142,
		-0.684066, -0.427092, -0.591309,
		39.100674, 33.869545, 26.479015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947258, 33.859013, 26.352949>,  <39.579521, 34.168510, 26.892931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947258, 33.859013, 26.352949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567863, 33.890179, 26.230116>,  <39.340225, 33.908878, 26.156416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567863, 33.890179, 26.230116>,  <39.947258, 33.859013, 26.352949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567863, 33.890179, 26.230116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305316, 0.483545, -0.820345,
		0.084574, -0.871845, -0.482425,
		-0.948488, 0.077912, -0.307084,
		39.283318, 33.913551, 26.137991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970562, 33.746910, 25.640633>,  <39.947258, 33.859013, 26.352949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970562, 33.746910, 25.640633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618053, 33.930946, 25.683851>,  <39.406548, 34.041367, 25.709784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618053, 33.930946, 25.683851>,  <39.970562, 33.746910, 25.640633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618053, 33.930946, 25.683851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182966, 0.542936, -0.819600,
		-0.435753, -0.702523, -0.562655,
		-0.881274, 0.460090, 0.108048,
		39.353672, 34.068974, 25.716265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666630, 33.741249, 24.953959>,  <39.970562, 33.746910, 25.640633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666630, 33.741249, 24.953959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462944, 34.032894, 25.136864>,  <39.340733, 34.207882, 25.246607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462944, 34.032894, 25.136864>,  <39.666630, 33.741249, 24.953959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462944, 34.032894, 25.136864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180450, 0.609950, -0.771621,
		-0.841507, -0.310410, -0.442166,
		-0.509218, 0.729114, 0.457264,
		39.310177, 34.251629, 25.274042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089611, 34.003548, 24.454247>,  <39.666630, 33.741249, 24.953959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089611, 34.003548, 24.454247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213299, 34.286663, 24.708307>,  <39.287510, 34.456532, 24.860744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.213299, 34.286663, 24.708307>,  <39.089611, 34.003548, 24.454247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213299, 34.286663, 24.708307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037766, 0.676498, -0.735475,
		-0.950240, 0.203437, 0.235917,
		0.309220, 0.707788, 0.635153,
		39.306065, 34.499001, 24.898853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095230, 34.493008, 24.018068>,  <39.089611, 34.003548, 24.454247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095230, 34.493008, 24.018068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211933, 34.705635, 24.336140>,  <39.281956, 34.833210, 24.526983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211933, 34.705635, 24.336140>,  <39.095230, 34.493008, 24.018068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211933, 34.705635, 24.336140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102512, 0.809184, -0.578543,
		-0.950983, 0.250310, 0.181593,
		0.291757, 0.531570, 0.795180,
		39.299461, 34.865105, 24.574694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.582027, 34.975887, 24.096449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943619, 35.075893, 24.235193>,  <39.160576, 35.135899, 24.318439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943619, 35.075893, 24.235193>,  <38.582027, 34.975887, 24.096449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943619, 35.075893, 24.235193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038151, 0.760830, -0.647829,
		-0.425868, 0.598858, 0.678237,
		0.903980, 0.250014, 0.346860,
		39.214813, 35.150898, 24.339251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561867, 35.662727, 24.124737>,  <38.582027, 34.975887, 24.096449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561867, 35.662727, 24.124737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957615, 35.606430, 24.139336>,  <39.195065, 35.572651, 24.148094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957615, 35.606430, 24.139336>,  <38.561867, 35.662727, 24.124737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957615, 35.606430, 24.139336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129927, 0.743135, -0.656407,
		0.065262, 0.654173, 0.753524,
		0.989373, -0.140742, 0.036496,
		39.254425, 35.564209, 24.150284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812126, 36.325745, 24.169708>,  <38.561867, 35.662727, 24.124737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812126, 36.325745, 24.169708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157730, 36.136791, 24.100035>,  <39.365093, 36.023418, 24.058231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157730, 36.136791, 24.100035>,  <38.812126, 36.325745, 24.169708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157730, 36.136791, 24.100035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302749, 0.763889, -0.569926,
		0.402281, 0.439688, 0.803022,
		0.864010, -0.472385, -0.174183,
		39.416931, 35.995075, 24.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367008, 36.894730, 24.140654>,  <38.812126, 36.325745, 24.169708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367008, 36.894730, 24.140654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500187, 36.580795, 23.931587>,  <39.580093, 36.392433, 23.806147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500187, 36.580795, 23.931587>,  <39.367008, 36.894730, 24.140654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500187, 36.580795, 23.931587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366600, 0.618421, -0.695097,
		0.868766, 0.039819, 0.493620,
		0.332943, -0.784837, -0.522666,
		39.600071, 36.345345, 23.774788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019325, 37.055176, 24.014593>,  <39.367008, 36.894730, 24.140654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019325, 37.055176, 24.014593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921837, 36.791569, 23.729975>,  <39.863346, 36.633404, 23.559204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921837, 36.791569, 23.729975>,  <40.019325, 37.055176, 24.014593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921837, 36.791569, 23.729975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365132, 0.617341, -0.696828,
		0.898488, -0.429637, 0.090172,
		-0.243716, -0.659016, -0.711548,
		39.848721, 36.593864, 23.516510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654888, 36.866486, 23.714598>,  <40.019325, 37.055176, 24.014593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654888, 36.866486, 23.714598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375420, 36.764877, 23.447069>,  <40.207737, 36.703911, 23.286552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375420, 36.764877, 23.447069>,  <40.654888, 36.866486, 23.714598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375420, 36.764877, 23.447069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485512, 0.518284, -0.704031,
		0.525482, -0.816610, -0.238781,
		-0.698676, -0.254024, -0.668823,
		40.165817, 36.688671, 23.246422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038780, 36.709656, 23.214317>,  <40.654888, 36.866486, 23.714598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038780, 36.709656, 23.214317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.675251, 36.786354, 23.066118>,  <40.457134, 36.832375, 22.977200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.675251, 36.786354, 23.066118>,  <41.038780, 36.709656, 23.214317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675251, 36.786354, 23.066118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417079, 0.436793, -0.797030,
		0.008999, -0.878888, -0.476944,
		-0.908826, 0.191750, -0.370496,
		40.402603, 36.843880, 22.954969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138699, 36.623150, 22.496635>,  <41.038780, 36.709656, 23.214317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138699, 36.623150, 22.496635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785923, 36.810078, 22.521254>,  <40.574257, 36.922234, 22.536024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785923, 36.810078, 22.521254>,  <41.138699, 36.623150, 22.496635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785923, 36.810078, 22.521254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178709, 0.452339, -0.873758,
		-0.436164, -0.759606, -0.482452,
		-0.881944, 0.467320, 0.061546,
		40.521339, 36.950275, 22.539717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714020, 36.503483, 21.919638>,  <41.138699, 36.623150, 22.496635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714020, 36.503483, 21.919638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.560596, 36.841335, 22.069027>,  <40.468544, 37.044048, 22.158661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.560596, 36.841335, 22.069027>,  <40.714020, 36.503483, 21.919638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560596, 36.841335, 22.069027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111441, 0.443778, -0.889180,
		-0.916768, -0.299433, -0.264341,
		-0.383558, 0.844631, 0.373473,
		40.445530, 37.094723, 22.181068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367649, 36.815598, 21.352110>,  <40.714020, 36.503483, 21.919638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367649, 36.815598, 21.352110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412807, 37.110474, 21.618582>,  <40.439903, 37.287399, 21.778465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412807, 37.110474, 21.618582>,  <40.367649, 36.815598, 21.352110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412807, 37.110474, 21.618582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239471, 0.630517, -0.738311,
		-0.964317, 0.242886, -0.105352,
		0.112899, 0.737194, 0.666182,
		40.446678, 37.331631, 21.818436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914600, 37.464130, 21.116491>,  <40.367649, 36.815598, 21.352110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914600, 37.464130, 21.116491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227844, 37.559700, 21.346151>,  <40.415791, 37.617043, 21.483948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227844, 37.559700, 21.346151>,  <39.914600, 37.464130, 21.116491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227844, 37.559700, 21.346151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300327, 0.663148, -0.685593,
		-0.544555, 0.709329, 0.447562,
		0.783112, 0.238928, 0.574151,
		40.462776, 37.631378, 21.518396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908783, 38.302631, 21.055344>,  <39.914600, 37.464130, 21.116491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908783, 38.302631, 21.055344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250549, 38.167324, 21.213106>,  <40.455608, 38.086140, 21.307764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250549, 38.167324, 21.213106>,  <39.908783, 38.302631, 21.055344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250549, 38.167324, 21.213106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483900, 0.794516, -0.366859,
		-0.189267, 0.504302, 0.842530,
		0.854411, -0.338266, 0.394408,
		40.506874, 38.065845, 21.331429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225933, 38.771149, 21.399685>,  <39.908783, 38.302631, 21.055344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225933, 38.771149, 21.399685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.532822, 38.538177, 21.292240>,  <40.716953, 38.398396, 21.227774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.532822, 38.538177, 21.292240>,  <40.225933, 38.771149, 21.399685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532822, 38.538177, 21.292240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531990, 0.811810, -0.240730,
		0.358270, 0.041793, 0.932682,
		0.767221, -0.582424, -0.268614,
		40.762989, 38.363449, 21.211657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826885, 39.089828, 21.671331>,  <40.225933, 38.771149, 21.399685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826885, 39.089828, 21.671331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.996933, 38.843468, 21.406019>,  <41.098961, 38.695652, 21.246832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.996933, 38.843468, 21.406019>,  <40.826885, 39.089828, 21.671331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996933, 38.843468, 21.406019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654819, 0.715179, -0.244399,
		0.624891, -0.330432, 0.707337,
		0.425115, -0.615901, -0.663282,
		41.124466, 38.658699, 21.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472046, 39.201717, 21.848877>,  <40.826885, 39.089828, 21.671331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472046, 39.201717, 21.848877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.452866, 39.027485, 21.489328>,  <41.441357, 38.922947, 21.273600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.452866, 39.027485, 21.489328>,  <41.472046, 39.201717, 21.848877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452866, 39.027485, 21.489328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426791, 0.804687, -0.412709,
		0.903078, -0.403420, 0.147317,
		-0.047951, -0.435582, -0.898871,
		41.438480, 38.896809, 21.219667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134239, 39.297401, 21.595333>,  <41.472046, 39.201717, 21.848877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134239, 39.297401, 21.595333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909920, 39.238766, 21.269384>,  <41.775326, 39.203583, 21.073816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909920, 39.238766, 21.269384>,  <42.134239, 39.297401, 21.595333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909920, 39.238766, 21.269384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454792, 0.767884, -0.451131,
		0.691857, -0.623591, -0.363961,
		-0.560801, -0.146591, -0.814870,
		41.741680, 39.194790, 21.024923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593880, 39.387981, 21.050331>,  <42.134239, 39.297401, 21.595333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593880, 39.387981, 21.050331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.238834, 39.410076, 20.867424>,  <42.025806, 39.423332, 20.757679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.238834, 39.410076, 20.867424>,  <42.593880, 39.387981, 21.050331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238834, 39.410076, 20.867424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373363, 0.667634, -0.644100,
		0.269713, -0.742438, -0.613222,
		-0.887612, 0.055232, -0.457268,
		41.972549, 39.426647, 20.730244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777020, 39.388996, 20.369881>,  <42.593880, 39.387981, 21.050331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777020, 39.388996, 20.369881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.414112, 39.554764, 20.398514>,  <42.196369, 39.654224, 20.415693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.414112, 39.554764, 20.398514>,  <42.777020, 39.388996, 20.369881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414112, 39.554764, 20.398514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180659, 0.537762, -0.823513,
		-0.379773, -0.734215, -0.562762,
		-0.907268, 0.414416, 0.071585,
		42.141933, 39.679089, 20.419989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600357, 39.435165, 19.590761>,  <42.777020, 39.388996, 20.369881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600357, 39.435165, 19.590761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.392155, 39.684940, 19.823709>,  <42.267235, 39.834805, 19.963478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.392155, 39.684940, 19.823709>,  <42.600357, 39.435165, 19.590761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392155, 39.684940, 19.823709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116541, 0.727614, -0.676015,
		-0.845869, -0.283998, -0.451498,
		-0.520503, 0.624439, 0.582369,
		42.236004, 39.872272, 19.998421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098602, 39.847763, 19.150494>,  <42.600357, 39.435165, 19.590761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098602, 39.847763, 19.150494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124813, 40.067928, 19.483419>,  <42.140537, 40.200027, 19.683174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124813, 40.067928, 19.483419>,  <42.098602, 39.847763, 19.150494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124813, 40.067928, 19.483419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028643, 0.834801, -0.549806,
		-0.997440, 0.012187, 0.070466,
		0.065525, 0.550417, 0.832315,
		42.144470, 40.233055, 19.733114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602173, 40.419254, 18.938019>,  <42.098602, 39.847763, 19.150494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602173, 40.419254, 18.938019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824635, 40.540707, 19.247471>,  <41.958111, 40.613579, 19.433142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.824635, 40.540707, 19.247471>,  <41.602173, 40.419254, 18.938019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824635, 40.540707, 19.247471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292505, 0.799797, -0.524181,
		-0.777906, 0.517814, 0.355993,
		0.556150, 0.303634, 0.773630,
		41.991478, 40.631798, 19.479559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440830, 41.168118, 19.095222>,  <41.602173, 40.419254, 18.938019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440830, 41.168118, 19.095222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.796818, 41.092537, 19.261238>,  <42.010410, 41.047188, 19.360847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.796818, 41.092537, 19.261238>,  <41.440830, 41.168118, 19.095222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796818, 41.092537, 19.261238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404433, 0.747535, -0.526901,
		-0.210701, 0.636781, 0.741698,
		0.889966, -0.188949, 0.415041,
		42.063808, 41.035851, 19.385750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868519, 41.792694, 19.029303>,  <41.440830, 41.168118, 19.095222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868519, 41.792694, 19.029303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147625, 41.510666, 19.079897>,  <42.315090, 41.341450, 19.110254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147625, 41.510666, 19.079897>,  <41.868519, 41.792694, 19.029303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147625, 41.510666, 19.079897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549854, 0.414018, -0.725431,
		0.459112, 0.575729, 0.676574,
		0.697765, -0.705071, 0.126486,
		42.356953, 41.299145, 19.117844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492695, 42.046429, 18.777020>,  <41.868519, 41.792694, 19.029303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492695, 42.046429, 18.777020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.512608, 41.646938, 18.773577>,  <42.524555, 41.407246, 18.771511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.512608, 41.646938, 18.773577>,  <42.492695, 42.046429, 18.777020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512608, 41.646938, 18.773577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591648, 0.036435, -0.805373,
		0.804658, 0.035004, 0.592706,
		0.049787, -0.998723, -0.008607,
		42.527542, 41.347321, 18.770994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984119, 42.508892, 19.016169>,  <42.492695, 42.046429, 18.777020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984119, 42.508892, 19.016169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688156, 42.777794, 19.026005>,  <41.510578, 42.939137, 19.031906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688156, 42.777794, 19.026005>,  <41.984119, 42.508892, 19.016169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688156, 42.777794, 19.026005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390964, -0.459481, 0.797512,
		0.547430, 0.580474, 0.602802,
		-0.739911, 0.672255, 0.024589,
		41.466183, 42.979469, 19.033381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943401, 42.803505, 19.767492>,  <41.984119, 42.508892, 19.016169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943401, 42.803505, 19.767492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600826, 42.819698, 19.561630>,  <41.395279, 42.829414, 19.438112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600826, 42.819698, 19.561630>,  <41.943401, 42.803505, 19.767492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600826, 42.819698, 19.561630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463369, -0.499783, 0.731783,
		-0.227595, 0.865204, 0.446791,
		-0.856440, 0.040479, -0.514657,
		41.343895, 42.831841, 19.407232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475224, 42.628269, 20.324324>,  <41.943401, 42.803505, 19.767492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475224, 42.628269, 20.324324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226135, 42.612129, 20.011763>,  <41.076683, 42.602448, 19.824226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226135, 42.612129, 20.011763>,  <41.475224, 42.628269, 20.324324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226135, 42.612129, 20.011763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486905, -0.761765, 0.427361,
		-0.612488, 0.646596, 0.454721,
		-0.622721, -0.040347, -0.781403,
		41.039318, 42.600025, 19.777342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798584, 42.821594, 20.538876>,  <41.475224, 42.628269, 20.324324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798584, 42.821594, 20.538876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760963, 42.584911, 20.218616>,  <40.738392, 42.442902, 20.026461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760963, 42.584911, 20.218616>,  <40.798584, 42.821594, 20.538876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760963, 42.584911, 20.218616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582397, -0.619548, 0.526284,
		-0.807445, 0.515794, -0.286338,
		-0.094054, -0.591707, -0.800648,
		40.732746, 42.407398, 19.978422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042698, 42.740742, 20.536617>,  <40.798584, 42.821594, 20.538876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042698, 42.740742, 20.536617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.221966, 42.476582, 20.295616>,  <40.329529, 42.318085, 20.151016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.221966, 42.476582, 20.295616>,  <40.042698, 42.740742, 20.536617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221966, 42.476582, 20.295616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604801, -0.720314, 0.339653,
		-0.658297, 0.212169, -0.722239,
		0.448175, -0.660403, -0.602500,
		40.356419, 42.278461, 20.114866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466980, 42.428089, 20.146250>,  <40.042698, 42.740742, 20.536617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466980, 42.428089, 20.146250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784412, 42.185112, 20.160370>,  <39.974873, 42.039326, 20.168842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784412, 42.185112, 20.160370>,  <39.466980, 42.428089, 20.146250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784412, 42.185112, 20.160370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552330, -0.694808, 0.460623,
		-0.255276, -0.385037, -0.886894,
		0.793578, -0.607444, 0.035299,
		40.022484, 42.002880, 20.170959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258301, 41.795063, 19.897017>,  <39.466980, 42.428089, 20.146250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258301, 41.795063, 19.897017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591900, 41.718388, 20.103977>,  <39.792057, 41.672382, 20.228153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591900, 41.718388, 20.103977>,  <39.258301, 41.795063, 19.897017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591900, 41.718388, 20.103977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397454, -0.859139, 0.322352,
		0.382728, -0.474484, -0.792707,
		0.833996, -0.191691, 0.517402,
		39.842098, 41.660881, 20.259197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367950, 41.039909, 19.961018>,  <39.258301, 41.795063, 19.897017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367950, 41.039909, 19.961018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619137, 41.181530, 20.238234>,  <39.769848, 41.266502, 20.404562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619137, 41.181530, 20.238234>,  <39.367950, 41.039909, 19.961018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619137, 41.181530, 20.238234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186227, -0.796285, 0.575543,
		0.755630, -0.490484, -0.434107,
		0.627967, 0.354055, 0.693039,
		39.807526, 41.287746, 20.446146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875034, 40.602383, 20.171732>,  <39.367950, 41.039909, 19.961018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875034, 40.602383, 20.171732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856785, 40.842457, 20.491156>,  <39.845833, 40.986500, 20.682810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856785, 40.842457, 20.491156>,  <39.875034, 40.602383, 20.171732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856785, 40.842457, 20.491156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064736, -0.799489, 0.597183,
		0.996859, -0.024449, 0.075330,
		-0.045625, 0.600183, 0.798560,
		39.843098, 41.022511, 20.730724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239902, 40.314724, 20.647818>,  <39.875034, 40.602383, 20.171732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239902, 40.314724, 20.647818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976852, 40.522247, 20.866308>,  <39.819023, 40.646763, 20.997402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.976852, 40.522247, 20.866308>,  <40.239902, 40.314724, 20.647818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976852, 40.522247, 20.866308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016164, -0.734618, 0.678288,
		0.753170, 0.437232, 0.491491,
		-0.657628, 0.518811, 0.546225,
		39.779564, 40.677891, 21.030176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385727, 40.070290, 21.268053>,  <40.239902, 40.314724, 20.647818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385727, 40.070290, 21.268053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022003, 40.228210, 21.320644>,  <39.803768, 40.322964, 21.352200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022003, 40.228210, 21.320644>,  <40.385727, 40.070290, 21.268053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022003, 40.228210, 21.320644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177170, -0.653216, 0.736152,
		0.376518, 0.646096, 0.663923,
		-0.909310, 0.394802, 0.131479,
		39.749210, 40.346649, 21.360088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282669, 40.003498, 22.049477>,  <40.385727, 40.070290, 21.268053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282669, 40.003498, 22.049477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944725, 40.061329, 21.843443>,  <39.741959, 40.096027, 21.719822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944725, 40.061329, 21.843443>,  <40.282669, 40.003498, 22.049477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944725, 40.061329, 21.843443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490885, -0.592312, 0.638904,
		-0.212719, 0.792630, 0.571391,
		-0.844857, 0.144580, -0.515086,
		39.691269, 40.104702, 21.688917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732738, 39.676781, 22.547132>,  <40.282669, 40.003498, 22.049477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732738, 39.676781, 22.547132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535732, 39.776566, 22.213619>,  <39.417526, 39.836437, 22.013512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.535732, 39.776566, 22.213619>,  <39.732738, 39.676781, 22.547132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535732, 39.776566, 22.213619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763975, -0.582804, 0.276914,
		-0.416853, 0.773375, 0.477623,
		-0.492519, 0.249460, -0.833783,
		39.387978, 39.851402, 21.963484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036758, 39.898216, 22.777515>,  <39.732738, 39.676781, 22.547132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036758, 39.898216, 22.777515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038723, 39.749008, 22.406391>,  <39.039902, 39.659485, 22.183716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038723, 39.749008, 22.406391>,  <39.036758, 39.898216, 22.777515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038723, 39.749008, 22.406391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753877, -0.610965, 0.241641,
		-0.656997, 0.698270, -0.284208,
		0.004910, -0.373015, -0.927812,
		39.040195, 39.637104, 22.128048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315552, 39.769463, 22.618677>,  <39.036758, 39.898216, 22.777515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315552, 39.769463, 22.618677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537498, 39.542889, 22.374947>,  <38.670666, 39.406944, 22.228708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537498, 39.542889, 22.374947>,  <38.315552, 39.769463, 22.618677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537498, 39.542889, 22.374947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514417, -0.809213, 0.283812,
		-0.653837, 0.155971, -0.740385,
		0.554863, -0.566434, -0.609328,
		38.703957, 39.372959, 22.192148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840115, 39.461651, 22.212452>,  <38.315552, 39.769463, 22.618677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840115, 39.461651, 22.212452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171329, 39.238663, 22.236378>,  <38.370060, 39.104870, 22.250732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171329, 39.238663, 22.236378>,  <37.840115, 39.461651, 22.212452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171329, 39.238663, 22.236378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514972, -0.714023, 0.474316,
		-0.221709, -0.423554, -0.878321,
		0.828039, -0.557471, 0.059814,
		38.419743, 39.071423, 22.254322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535015, 38.894398, 22.157902>,  <37.840115, 39.461651, 22.212452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535015, 38.894398, 22.157902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903511, 38.805473, 22.285589>,  <38.124607, 38.752117, 22.362202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903511, 38.805473, 22.285589>,  <37.535015, 38.894398, 22.157902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903511, 38.805473, 22.285589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355512, -0.814261, 0.458901,
		0.157909, -0.536242, -0.829162,
		0.921236, -0.222313, 0.319220,
		38.179882, 38.738781, 22.381355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643349, 38.142536, 22.062922>,  <37.535015, 38.894398, 22.157902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643349, 38.142536, 22.062922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924690, 38.223343, 22.335531>,  <38.093494, 38.271828, 22.499098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924690, 38.223343, 22.335531>,  <37.643349, 38.142536, 22.062922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924690, 38.223343, 22.335531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363526, -0.721681, 0.589089,
		0.610849, -0.662093, -0.434162,
		0.703358, 0.202015, 0.681527,
		38.135696, 38.283947, 22.539989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924782, 37.460247, 22.323597>,  <37.643349, 38.142536, 22.062922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924782, 37.460247, 22.323597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998116, 37.734303, 22.605581>,  <38.042114, 37.898735, 22.774773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998116, 37.734303, 22.605581>,  <37.924782, 37.460247, 22.323597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998116, 37.734303, 22.605581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236386, -0.665349, 0.708119,
		0.954207, -0.296465, 0.039977,
		0.183334, 0.685142, 0.704960,
		38.053116, 37.939846, 22.817070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192463, 37.092228, 22.766592>,  <37.924782, 37.460247, 22.323597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192463, 37.092228, 22.766592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083374, 37.423733, 22.962051>,  <38.017921, 37.622635, 23.079327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083374, 37.423733, 22.962051>,  <38.192463, 37.092228, 22.766592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083374, 37.423733, 22.962051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417086, -0.559536, 0.716211,
		0.866985, -0.008482, 0.498262,
		-0.272720, 0.828762, 0.488647,
		38.001556, 37.672363, 23.108646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.494110, 32.749027, 25.975428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578415, 33.060829, 26.211380>,  <38.628998, 33.247910, 26.352951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578415, 33.060829, 26.211380>,  <38.494110, 32.749027, 25.975428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578415, 33.060829, 26.211380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335625, -0.509050, 0.792606,
		0.918115, -0.365030, 0.154331,
		0.210763, 0.779500, 0.589880,
		38.641644, 33.294678, 26.388344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835468, 32.429295, 26.620716>,  <38.494110, 32.749027, 25.975428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835468, 32.429295, 26.620716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.752441, 32.808662, 26.716564>,  <38.702625, 33.036282, 26.774073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.752441, 32.808662, 26.716564>,  <38.835468, 32.429295, 26.620716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752441, 32.808662, 26.716564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336051, -0.299180, 0.893063,
		0.918687, 0.104846, 0.380817,
		-0.207567, 0.948419, 0.239619,
		38.690170, 33.093189, 26.788450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191074, 32.595425, 27.256241>,  <38.835468, 32.429295, 26.620716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191074, 32.595425, 27.256241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876934, 32.839199, 27.212778>,  <38.688450, 32.985466, 27.186701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876934, 32.839199, 27.212778>,  <39.191074, 32.595425, 27.256241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876934, 32.839199, 27.212778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301697, -0.223534, 0.926829,
		0.540556, 0.760669, 0.359419,
		-0.785352, 0.609439, -0.108658,
		38.641327, 33.022030, 27.180182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025261, 32.750843, 27.993475>,  <39.191074, 32.595425, 27.256241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025261, 32.750843, 27.993475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692780, 32.873425, 27.807920>,  <38.493290, 32.946972, 27.696589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692780, 32.873425, 27.807920>,  <39.025261, 32.750843, 27.993475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692780, 32.873425, 27.807920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509437, -0.085656, 0.856234,
		0.222661, 0.948024, 0.227316,
		-0.831201, 0.306453, -0.463886,
		38.443420, 32.965359, 27.668755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751358, 33.231873, 28.432154>,  <39.025261, 32.750843, 27.993475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751358, 33.231873, 28.432154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438435, 33.113724, 28.212791>,  <38.250679, 33.042835, 28.081175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438435, 33.113724, 28.212791>,  <38.751358, 33.231873, 28.432154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438435, 33.113724, 28.212791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564278, -0.036781, 0.824765,
		-0.263783, 0.954674, -0.137898,
		-0.782310, -0.295372, -0.548404,
		38.203743, 33.025112, 28.048271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177170, 33.525383, 28.663685>,  <38.751358, 33.231873, 28.432154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177170, 33.525383, 28.663685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982788, 33.237438, 28.465435>,  <37.866158, 33.064671, 28.346485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.982788, 33.237438, 28.465435>,  <38.177170, 33.525383, 28.663685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982788, 33.237438, 28.465435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665530, -0.062774, 0.743726,
		-0.566492, 0.691273, -0.448585,
		-0.485958, -0.719862, -0.495624,
		37.837002, 33.021481, 28.316748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408730, 33.666885, 28.582264>,  <38.177170, 33.525383, 28.663685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408730, 33.666885, 28.582264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.464539, 33.272877, 28.541735>,  <37.498024, 33.036472, 28.517418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.464539, 33.272877, 28.541735>,  <37.408730, 33.666885, 28.582264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464539, 33.272877, 28.541735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631686, -0.167334, 0.756949,
		-0.762567, -0.041603, -0.645571,
		0.139518, -0.985022, -0.101323,
		37.506393, 32.977371, 28.511337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713665, 33.408558, 28.537304>,  <37.408730, 33.666885, 28.582264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713665, 33.408558, 28.537304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.933578, 33.089108, 28.635227>,  <37.065525, 32.897438, 28.693981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.933578, 33.089108, 28.635227>,  <36.713665, 33.408558, 28.537304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933578, 33.089108, 28.635227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633608, -0.207739, 0.745242,
		-0.544316, -0.564832, -0.620229,
		0.549782, -0.798630, 0.244807,
		37.098515, 32.849518, 28.708670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280167, 32.811428, 28.504017>,  <36.713665, 33.408558, 28.537304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280167, 32.811428, 28.504017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.574703, 32.715576, 28.757118>,  <36.751427, 32.658066, 28.908979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.574703, 32.715576, 28.757118>,  <36.280167, 32.811428, 28.504017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574703, 32.715576, 28.757118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670590, -0.133999, 0.729626,
		-0.090047, -0.961574, -0.259359,
		0.736343, -0.239623, 0.632755,
		36.795605, 32.643688, 28.946943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996933, 32.319504, 28.935390>,  <36.280167, 32.811428, 28.504017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996933, 32.319504, 28.935390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.308544, 32.439606, 29.155558>,  <36.495510, 32.511665, 29.287659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.308544, 32.439606, 29.155558>,  <35.996933, 32.319504, 28.935390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308544, 32.439606, 29.155558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586050, 0.036692, 0.809444,
		0.222842, -0.953153, 0.204548,
		0.779029, 0.300253, 0.550419,
		36.542252, 32.529682, 29.320683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930828, 31.922884, 29.518635>,  <35.996933, 32.319504, 28.935390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930828, 31.922884, 29.518635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.187733, 32.217827, 29.602358>,  <36.341873, 32.394791, 29.652592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.187733, 32.217827, 29.602358>,  <35.930828, 31.922884, 29.518635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187733, 32.217827, 29.602358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256942, -0.050160, 0.965124,
		0.722139, -0.673639, 0.157242,
		0.642258, 0.737356, 0.209308,
		36.380409, 32.439034, 29.665150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280605, 31.698771, 30.104639>,  <35.930828, 31.922884, 29.518635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280605, 31.698771, 30.104639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.330254, 32.095520, 30.093483>,  <36.360043, 32.333569, 30.086790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.330254, 32.095520, 30.093483>,  <36.280605, 31.698771, 30.104639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330254, 32.095520, 30.093483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223148, 0.055289, 0.973215,
		0.966850, -0.114573, 0.228197,
		0.124121, 0.991875, -0.027890,
		36.367489, 32.393082, 30.085115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707767, 31.780451, 30.636438>,  <36.280605, 31.698771, 30.104639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707767, 31.780451, 30.636438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525826, 32.130222, 30.568932>,  <36.416660, 32.340084, 30.528427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525826, 32.130222, 30.568932>,  <36.707767, 31.780451, 30.636438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525826, 32.130222, 30.568932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207991, 0.079957, 0.974857,
		0.865935, 0.478523, 0.145504,
		-0.454858, 0.874427, -0.168766,
		36.389370, 32.392551, 30.518301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856651, 32.218372, 31.276308>,  <36.707767, 31.780451, 30.636438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856651, 32.218372, 31.276308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540302, 32.352238, 31.071362>,  <36.350494, 32.432556, 30.948393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.540302, 32.352238, 31.071362>,  <36.856651, 32.218372, 31.276308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540302, 32.352238, 31.071362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508442, 0.106642, 0.854467,
		0.340595, 0.936286, 0.085815,
		-0.790874, 0.334659, -0.512369,
		36.303040, 32.452637, 30.917650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942188, 32.685356, 31.776926>,  <36.856651, 32.218372, 31.276308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942188, 32.685356, 31.776926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.224651, 32.732948, 32.056122>,  <37.394127, 32.761505, 32.223640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.224651, 32.732948, 32.056122>,  <36.942188, 32.685356, 31.776926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224651, 32.732948, 32.056122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171927, 0.927466, -0.332036,
		-0.686869, 0.354472, 0.634477,
		0.706153, 0.118982, 0.697991,
		37.436497, 32.768642, 32.265518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895351, 33.333599, 31.991552>,  <36.942188, 32.685356, 31.776926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895351, 33.333599, 31.991552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263298, 33.236835, 32.115051>,  <37.484066, 33.178776, 32.189152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263298, 33.236835, 32.115051>,  <36.895351, 33.333599, 31.991552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263298, 33.236835, 32.115051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318005, 0.920757, -0.226008,
		-0.229606, 0.306080, 0.923903,
		0.919866, -0.241913, 0.308746,
		37.539257, 33.164261, 32.207676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074471, 33.841312, 32.386452>,  <36.895351, 33.333599, 31.991552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074471, 33.841312, 32.386452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416176, 33.680851, 32.254204>,  <37.621197, 33.584572, 32.174854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416176, 33.680851, 32.254204>,  <37.074471, 33.841312, 32.386452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416176, 33.680851, 32.254204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322993, 0.907934, -0.267081,
		0.407324, 0.121368, 0.905183,
		0.854262, -0.401156, -0.330622,
		37.672455, 33.560505, 32.155018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654419, 34.346111, 32.535152>,  <37.074471, 33.841312, 32.386452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654419, 34.346111, 32.535152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823475, 34.078453, 32.290653>,  <37.924908, 33.917858, 32.143955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823475, 34.078453, 32.290653>,  <37.654419, 34.346111, 32.535152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823475, 34.078453, 32.290653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585720, 0.716338, -0.379198,
		0.691598, -0.197755, 0.694684,
		0.422640, -0.669143, -0.611247,
		37.950268, 33.877708, 32.107281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413612, 34.278431, 32.700298>,  <37.654419, 34.346111, 32.535152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413612, 34.278431, 32.700298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.326950, 34.182766, 32.321697>,  <38.274952, 34.125366, 32.094536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.326950, 34.182766, 32.321697>,  <38.413612, 34.278431, 32.700298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326950, 34.182766, 32.321697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577302, 0.750455, -0.321776,
		0.787262, -0.616131, -0.024520,
		-0.216657, -0.239166, -0.946498,
		38.261951, 34.111015, 32.037746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087624, 34.251896, 32.261948>,  <38.413612, 34.278431, 32.700298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087624, 34.251896, 32.261948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.777370, 34.296638, 32.013470>,  <38.591221, 34.323483, 31.864382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.777370, 34.296638, 32.013470>,  <39.087624, 34.251896, 32.261948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777370, 34.296638, 32.013470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518097, 0.674955, -0.525368,
		0.360516, -0.729332, -0.581466,
		-0.775631, 0.111852, -0.621197,
		38.544682, 34.330193, 31.827110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385948, 34.281612, 31.639837>,  <39.087624, 34.251896, 32.261948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385948, 34.281612, 31.639837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.021362, 34.423473, 31.556446>,  <38.802612, 34.508591, 31.506413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.021362, 34.423473, 31.556446>,  <39.385948, 34.281612, 31.639837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021362, 34.423473, 31.556446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395925, 0.618583, -0.678674,
		-0.111734, -0.701126, -0.704229,
		-0.911460, 0.354652, -0.208476,
		38.747925, 34.529869, 31.493902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405701, 34.387684, 30.962152>,  <39.385948, 34.281612, 31.639837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405701, 34.387684, 30.962152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076088, 34.590584, 31.063082>,  <38.878319, 34.712322, 31.123640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076088, 34.590584, 31.063082>,  <39.405701, 34.387684, 30.962152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076088, 34.590584, 31.063082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279960, 0.751785, -0.597027,
		-0.492535, -0.421329, -0.761505,
		-0.824033, 0.507248, 0.252325,
		38.828876, 34.742760, 31.138779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961750, 34.584251, 30.330181>,  <39.405701, 34.387684, 30.962152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961750, 34.584251, 30.330181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892429, 34.839539, 30.630219>,  <38.850838, 34.992710, 30.810240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892429, 34.839539, 30.630219>,  <38.961750, 34.584251, 30.330181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892429, 34.839539, 30.630219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093942, 0.768857, -0.632483,
		-0.980378, -0.039148, -0.193203,
		-0.173306, 0.638222, 0.750092,
		38.840439, 35.031006, 30.855246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532955, 35.091236, 29.964874>,  <38.961750, 34.584251, 30.330181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532955, 35.091236, 29.964874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663227, 35.258167, 30.304232>,  <38.741390, 35.358326, 30.507847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.663227, 35.258167, 30.304232>,  <38.532955, 35.091236, 29.964874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663227, 35.258167, 30.304232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252059, 0.826518, -0.503323,
		-0.911262, 0.377767, 0.163990,
		0.325679, 0.417325, 0.848394,
		38.760929, 35.383366, 30.558750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270233, 35.781734, 30.098864>,  <38.532955, 35.091236, 29.964874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270233, 35.781734, 30.098864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608467, 35.775555, 30.312311>,  <38.811409, 35.771847, 30.440380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608467, 35.775555, 30.312311>,  <38.270233, 35.781734, 30.098864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608467, 35.775555, 30.312311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354826, 0.763092, -0.540176,
		-0.398854, 0.646106, 0.650740,
		0.845585, -0.015448, 0.533617,
		38.862144, 35.770920, 30.472397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402100, 36.431274, 30.078325>,  <38.270233, 35.781734, 30.098864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402100, 36.431274, 30.078325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.752056, 36.309444, 30.228947>,  <38.962032, 36.236347, 30.319319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.752056, 36.309444, 30.228947>,  <38.402100, 36.431274, 30.078325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752056, 36.309444, 30.228947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481848, 0.625770, -0.613380,
		-0.048814, 0.718084, 0.694242,
		0.874894, -0.304578, 0.376554,
		39.014523, 36.218071, 30.341913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713226, 36.988564, 30.485350>,  <38.402100, 36.431274, 30.078325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713226, 36.988564, 30.485350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009026, 36.745502, 30.369486>,  <39.186504, 36.599667, 30.299969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009026, 36.745502, 30.369486>,  <38.713226, 36.988564, 30.485350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009026, 36.745502, 30.369486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479685, 0.777569, -0.406556,
		0.472273, 0.161703, 0.866493,
		0.739500, -0.607650, -0.289658,
		39.230877, 36.563206, 30.282589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302059, 37.357800, 30.626038>,  <38.713226, 36.988564, 30.485350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302059, 37.357800, 30.626038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453094, 37.063965, 30.400543>,  <39.543716, 36.887665, 30.265245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453094, 37.063965, 30.400543>,  <39.302059, 37.357800, 30.626038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453094, 37.063965, 30.400543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618576, 0.653143, -0.436770,
		0.689049, -0.183794, 0.701022,
		0.377591, -0.734591, -0.563738,
		39.566372, 36.843586, 30.231422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922352, 37.595886, 30.940752>,  <39.302059, 37.357800, 30.626038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922352, 37.595886, 30.940752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761669, 37.956837, 31.003168>,  <39.665260, 38.173409, 31.040617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761669, 37.956837, 31.003168>,  <39.922352, 37.595886, 30.940752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761669, 37.956837, 31.003168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553059, -0.374861, 0.744046,
		0.729903, 0.212588, 0.649652,
		-0.401705, 0.902378, 0.156038,
		39.641159, 38.227551, 31.049980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062752, 37.802780, 31.623562>,  <39.922352, 37.595886, 30.940752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062752, 37.802780, 31.623562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738495, 38.015705, 31.525986>,  <39.543941, 38.143459, 31.467440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738495, 38.015705, 31.525986>,  <40.062752, 37.802780, 31.623562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738495, 38.015705, 31.525986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433770, -0.266078, 0.860840,
		0.393331, 0.803644, 0.446595,
		-0.810638, 0.532314, -0.243940,
		39.495304, 38.175400, 31.452805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726032, 38.040817, 32.331211>,  <40.062752, 37.802780, 31.623562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726032, 38.040817, 32.331211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452271, 38.074108, 32.041477>,  <39.288013, 38.094082, 31.867636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452271, 38.074108, 32.041477>,  <39.726032, 38.040817, 32.331211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452271, 38.074108, 32.041477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712000, -0.290207, 0.639403,
		-0.156995, 0.953338, 0.257874,
		-0.684404, 0.083223, -0.724337,
		39.246948, 38.099075, 31.824177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102150, 38.214687, 32.778145>,  <39.726032, 38.040817, 32.331211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102150, 38.214687, 32.778145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960461, 38.147110, 32.410236>,  <38.875446, 38.106564, 32.189491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960461, 38.147110, 32.410236>,  <39.102150, 38.214687, 32.778145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960461, 38.147110, 32.410236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817789, -0.421099, 0.392297,
		-0.453592, 0.891142, 0.011001,
		-0.354225, -0.168946, -0.919773,
		38.854195, 38.096428, 32.134304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422031, 38.495495, 32.793583>,  <39.102150, 38.214687, 32.778145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422031, 38.495495, 32.793583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450211, 38.213135, 32.511662>,  <38.467117, 38.043720, 32.342510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450211, 38.213135, 32.511662>,  <38.422031, 38.495495, 32.793583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450211, 38.213135, 32.511662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845076, -0.417633, 0.333811,
		-0.529984, 0.572096, -0.625958,
		0.070449, -0.705896, -0.704803,
		38.471344, 38.001366, 32.300220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791817, 38.452629, 32.445774>,  <38.422031, 38.495495, 32.793583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791817, 38.452629, 32.445774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.940712, 38.098335, 32.334835>,  <38.030048, 37.885761, 32.268272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.940712, 38.098335, 32.334835>,  <37.791817, 38.452629, 32.445774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940712, 38.098335, 32.334835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868046, -0.438002, 0.233774,
		-0.328538, 0.153728, -0.931896,
		0.372234, -0.885732, -0.277343,
		38.052383, 37.832615, 32.251633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299160, 38.209034, 31.966673>,  <37.791817, 38.452629, 32.445774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299160, 38.209034, 31.966673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516529, 37.908268, 32.115974>,  <37.646950, 37.727810, 32.205555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516529, 37.908268, 32.115974>,  <37.299160, 38.209034, 31.966673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516529, 37.908268, 32.115974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839398, -0.492047, 0.230868,
		0.010067, -0.438769, -0.898544,
		0.543424, -0.751912, 0.373255,
		37.679558, 37.682693, 32.227951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155235, 37.515156, 31.575686>,  <37.299160, 38.209034, 31.966673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155235, 37.515156, 31.575686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310905, 37.403194, 31.926729>,  <37.404308, 37.336018, 32.137356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310905, 37.403194, 31.926729>,  <37.155235, 37.515156, 31.575686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310905, 37.403194, 31.926729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879174, -0.397224, 0.263186,
		0.274942, -0.873996, -0.400672,
		0.389180, -0.279900, 0.877608,
		37.427658, 37.319225, 32.190010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827785, 36.938972, 31.706083>,  <37.155235, 37.515156, 31.575686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827785, 36.938972, 31.706083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976654, 36.992069, 32.073532>,  <37.065975, 37.023926, 32.294003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.976654, 36.992069, 32.073532>,  <36.827785, 36.938972, 31.706083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976654, 36.992069, 32.073532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842587, -0.366776, 0.394364,
		0.389276, -0.920791, -0.024661,
		0.372172, 0.132737, 0.918623,
		37.088306, 37.031891, 32.349117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669704, 36.377296, 32.114368>,  <36.827785, 36.938972, 31.706083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669704, 36.377296, 32.114368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734226, 36.658855, 32.391068>,  <36.772942, 36.827789, 32.557087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734226, 36.658855, 32.391068>,  <36.669704, 36.377296, 32.114368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734226, 36.658855, 32.391068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891590, -0.196584, 0.407949,
		0.423139, -0.682558, 0.595876,
		0.161309, 0.703896, 0.691744,
		36.782619, 36.870026, 32.598591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632904, 36.024750, 32.724556>,  <36.669704, 36.377296, 32.114368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632904, 36.024750, 32.724556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.546688, 36.412735, 32.769672>,  <36.494957, 36.645527, 32.796741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.546688, 36.412735, 32.769672>,  <36.632904, 36.024750, 32.724556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546688, 36.412735, 32.769672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922079, -0.240185, 0.303448,
		0.321422, -0.038596, 0.946149,
		-0.215539, 0.969959, 0.112789,
		36.482025, 36.703724, 32.803509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173172, 35.962471, 33.186260>,  <36.632904, 36.024750, 32.724556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173172, 35.962471, 33.186260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132740, 36.357792, 33.140579>,  <36.108482, 36.594986, 33.113171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132740, 36.357792, 33.140579>,  <36.173172, 35.962471, 33.186260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132740, 36.357792, 33.140579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896927, -0.040856, 0.440287,
		0.430470, 0.146939, 0.890564,
		-0.101081, 0.988302, -0.114206,
		36.102417, 36.654282, 33.106316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.155693, 40.327217, 28.941647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790035, 40.426891, 28.813745>,  <41.570641, 40.486694, 28.737005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790035, 40.426891, 28.813745>,  <42.155693, 40.327217, 28.941647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790035, 40.426891, 28.813745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387282, -0.303758, 0.870485,
		0.119782, 0.919587, 0.374183,
		-0.914147, 0.249183, -0.319755,
		41.515793, 40.501648, 28.717819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814369, 40.650471, 29.490450>,  <42.155693, 40.327217, 28.941647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814369, 40.650471, 29.490450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493309, 40.557320, 29.270809>,  <41.300671, 40.501431, 29.139025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493309, 40.557320, 29.270809>,  <41.814369, 40.650471, 29.490450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493309, 40.557320, 29.270809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446364, -0.376098, 0.811979,
		-0.395608, 0.896838, 0.197929,
		-0.802654, -0.232877, -0.549104,
		41.252514, 40.487457, 29.106077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175343, 40.751820, 29.938429>,  <41.814369, 40.650471, 29.490450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175343, 40.751820, 29.938429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041409, 40.508411, 29.650654>,  <40.961048, 40.362366, 29.477989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041409, 40.508411, 29.650654>,  <41.175343, 40.751820, 29.938429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041409, 40.508411, 29.650654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543982, -0.498595, 0.674897,
		-0.769397, 0.617338, -0.164079,
		-0.334831, -0.608520, -0.719438,
		40.940960, 40.325855, 29.434822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431702, 40.789913, 29.952717>,  <41.175343, 40.751820, 29.938429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431702, 40.789913, 29.952717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537338, 40.439144, 29.792088>,  <40.600719, 40.228683, 29.695709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537338, 40.439144, 29.792088>,  <40.431702, 40.789913, 29.952717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537338, 40.439144, 29.792088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667238, -0.466759, 0.580457,
		-0.696454, 0.114651, -0.708383,
		0.264095, -0.876921, -0.401576,
		40.616566, 40.176067, 29.671616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899502, 40.401455, 30.090084>,  <40.431702, 40.789913, 29.952717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899502, 40.401455, 30.090084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151077, 40.106983, 29.990103>,  <40.302021, 39.930302, 29.930115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151077, 40.106983, 29.990103>,  <39.899502, 40.401455, 30.090084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151077, 40.106983, 29.990103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538222, -0.644291, 0.543328,
		-0.561030, -0.207190, -0.801447,
		0.628937, -0.736180, -0.249953,
		40.339760, 39.886127, 29.915117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480743, 39.808918, 29.927786>,  <39.899502, 40.401455, 30.090084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480743, 39.808918, 29.927786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847424, 39.670620, 30.007912>,  <40.067432, 39.587639, 30.055986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847424, 39.670620, 30.007912>,  <39.480743, 39.808918, 29.927786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847424, 39.670620, 30.007912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399569, -0.788849, 0.466971,
		-0.003437, -0.508110, -0.861285,
		0.916697, -0.345748, 0.200314,
		40.122433, 39.566895, 30.068007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518234, 39.133835, 29.636028>,  <39.480743, 39.808918, 29.927786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518234, 39.133835, 29.636028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798450, 39.152626, 29.920855>,  <39.966579, 39.163902, 30.091751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798450, 39.152626, 29.920855>,  <39.518234, 39.133835, 29.636028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798450, 39.152626, 29.920855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368584, -0.830608, 0.417415,
		0.611059, -0.554872, -0.564557,
		0.700538, 0.046979, 0.712067,
		40.008614, 39.166721, 30.134474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684284, 38.389717, 29.839251>,  <39.518234, 39.133835, 29.636028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684284, 38.389717, 29.839251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847031, 38.590782, 30.144350>,  <39.944679, 38.711422, 30.327410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847031, 38.590782, 30.144350>,  <39.684284, 38.389717, 29.839251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847031, 38.590782, 30.144350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408537, -0.646698, 0.644111,
		0.817041, -0.573679, -0.057763,
		0.406868, 0.502667, 0.762748,
		39.969090, 38.741581, 30.373175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949718, 37.870419, 30.289547>,  <39.684284, 38.389717, 29.839251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949718, 37.870419, 30.289547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887794, 38.198040, 30.510519>,  <39.850639, 38.394615, 30.643103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887794, 38.198040, 30.510519>,  <39.949718, 37.870419, 30.289547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887794, 38.198040, 30.510519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422270, -0.560378, 0.712506,
		0.893153, -0.122971, 0.432616,
		-0.154811, 0.819058, 0.552430,
		39.841351, 38.443756, 30.676249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552826, 37.505569, 30.633036>,  <39.949718, 37.870419, 30.289547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552826, 37.505569, 30.633036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368343, 37.274067, 30.364016>,  <40.257652, 37.135166, 30.202604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368343, 37.274067, 30.364016>,  <40.552826, 37.505569, 30.633036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368343, 37.274067, 30.364016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690823, 0.241448, -0.681518,
		0.556822, -0.778934, 0.288463,
		-0.461209, -0.578761, -0.672549,
		40.229980, 37.100437, 30.162251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002220, 36.920631, 30.304052>,  <40.552826, 37.505569, 30.633036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002220, 36.920631, 30.304052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720901, 37.005775, 30.032742>,  <40.552109, 37.056862, 29.869955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720901, 37.005775, 30.032742>,  <41.002220, 36.920631, 30.304052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720901, 37.005775, 30.032742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706733, 0.106249, -0.699457,
		-0.076823, -0.971288, -0.225163,
		-0.703297, 0.212865, -0.678279,
		40.509911, 37.069633, 29.829258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221142, 36.581650, 29.732731>,  <41.002220, 36.920631, 30.304052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221142, 36.581650, 29.732731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976673, 36.872959, 29.608744>,  <40.829990, 37.047745, 29.534351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976673, 36.872959, 29.608744>,  <41.221142, 36.581650, 29.732731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976673, 36.872959, 29.608744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539571, 0.096844, -0.836352,
		-0.579076, -0.678407, -0.452144,
		-0.611175, 0.728276, -0.309969,
		40.793320, 37.091442, 29.515753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012306, 36.370781, 29.104877>,  <41.221142, 36.581650, 29.732731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012306, 36.370781, 29.104877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901470, 36.754913, 29.092361>,  <40.834969, 36.985394, 29.084852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901470, 36.754913, 29.092361>,  <41.012306, 36.370781, 29.104877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901470, 36.754913, 29.092361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463211, 0.104976, -0.880009,
		-0.841818, -0.258334, -0.473926,
		-0.277087, 0.960335, -0.031292,
		40.818344, 37.043015, 29.082973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722595, 36.482910, 28.413124>,  <41.012306, 36.370781, 29.104877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722595, 36.482910, 28.413124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809647, 36.854210, 28.533779>,  <40.861877, 37.076992, 28.606173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809647, 36.854210, 28.533779>,  <40.722595, 36.482910, 28.413124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809647, 36.854210, 28.533779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339976, 0.217599, -0.914914,
		-0.914907, 0.301661, -0.268228,
		0.217628, 0.928252, 0.301640,
		40.874935, 37.132687, 28.624271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416061, 36.911873, 27.898193>,  <40.722595, 36.482910, 28.413124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416061, 36.911873, 27.898193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704613, 37.117210, 28.084135>,  <40.877743, 37.240414, 28.195700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704613, 37.117210, 28.084135>,  <40.416061, 36.911873, 27.898193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704613, 37.117210, 28.084135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404852, 0.231997, -0.884462,
		-0.561879, 0.826228, -0.040472,
		0.721378, 0.513346, 0.464854,
		40.921024, 37.271214, 28.223591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312294, 37.616234, 27.772068>,  <40.416061, 36.911873, 27.898193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312294, 37.616234, 27.772068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699829, 37.573902, 27.861647>,  <40.932350, 37.548504, 27.915394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699829, 37.573902, 27.861647>,  <40.312294, 37.616234, 27.772068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699829, 37.573902, 27.861647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247600, 0.388775, -0.887439,
		0.006855, 0.915234, 0.402864,
		0.968838, -0.105833, 0.223947,
		40.990482, 37.542152, 27.928831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636372, 38.215801, 27.474405>,  <40.312294, 37.616234, 27.772068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636372, 38.215801, 27.474405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928616, 37.956146, 27.559097>,  <41.103962, 37.800354, 27.609913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928616, 37.956146, 27.559097>,  <40.636372, 38.215801, 27.474405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928616, 37.956146, 27.559097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406794, 0.164769, -0.898538,
		0.548389, 0.742610, 0.384447,
		0.730608, -0.649140, 0.211731,
		41.147797, 37.761406, 27.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203007, 38.558472, 27.437881>,  <40.636372, 38.215801, 27.474405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203007, 38.558472, 27.437881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335239, 38.182972, 27.398987>,  <41.414581, 37.957672, 27.375650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335239, 38.182972, 27.398987>,  <41.203007, 38.558472, 27.437881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335239, 38.182972, 27.398987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526928, 0.269065, -0.806195,
		0.782981, 0.215281, 0.583605,
		0.330586, -0.938754, -0.097235,
		41.434414, 37.901344, 27.369816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962460, 38.661194, 27.549147>,  <41.203007, 38.558472, 27.437881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962460, 38.661194, 27.549147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889637, 38.327808, 27.340458>,  <41.845943, 38.127777, 27.215244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889637, 38.327808, 27.340458>,  <41.962460, 38.661194, 27.549147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889637, 38.327808, 27.340458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626365, 0.310707, -0.714932,
		0.757973, -0.456944, 0.465487,
		-0.182053, -0.833464, -0.521722,
		41.835022, 38.077770, 27.183941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589523, 38.446907, 27.342180>,  <41.962460, 38.661194, 27.549147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589523, 38.446907, 27.342180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357903, 38.254265, 27.079042>,  <42.218929, 38.138680, 26.921160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357903, 38.254265, 27.079042>,  <42.589523, 38.446907, 27.342180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357903, 38.254265, 27.079042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679974, 0.159894, -0.715590,
		0.449815, -0.861680, 0.234891,
		-0.579052, -0.481603, -0.657843,
		42.184189, 38.109783, 26.881689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975578, 38.455471, 26.716547>,  <42.589523, 38.446907, 27.342180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975578, 38.455471, 26.716547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617203, 38.372635, 26.559364>,  <42.402180, 38.322933, 26.465055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617203, 38.372635, 26.559364>,  <42.975578, 38.455471, 26.716547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617203, 38.372635, 26.559364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339214, 0.252147, -0.906287,
		0.286768, -0.945270, -0.155658,
		-0.895934, -0.207093, -0.392956,
		42.348423, 38.310509, 26.441477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126122, 37.976192, 26.085667>,  <42.975578, 38.455471, 26.716547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126122, 37.976192, 26.085667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776260, 38.168278, 26.059204>,  <42.566341, 38.283527, 26.043325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776260, 38.168278, 26.059204>,  <43.126122, 37.976192, 26.085667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776260, 38.168278, 26.059204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220382, 0.272367, -0.936616,
		-0.431753, -0.833796, -0.344057,
		-0.874655, 0.480210, -0.066158,
		42.513863, 38.312340, 26.039356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814747, 37.701649, 25.564064>,  <43.126122, 37.976192, 26.085667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814747, 37.701649, 25.564064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654701, 38.068214, 25.560358>,  <42.558674, 38.288155, 25.558134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654701, 38.068214, 25.560358>,  <42.814747, 37.701649, 25.564064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654701, 38.068214, 25.560358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283964, 0.114355, -0.951991,
		-0.871361, -0.383540, -0.305985,
		-0.400118, 0.916417, -0.009267,
		42.534664, 38.343140, 25.557577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.623760, 41.799210, 23.726007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917896, 41.560402, 23.854284>,  <37.094379, 41.417118, 23.931250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917896, 41.560402, 23.854284>,  <36.623760, 41.799210, 23.726007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917896, 41.560402, 23.854284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677570, -0.638544, 0.364912,
		-0.013082, -0.485627, -0.874069,
		0.735342, -0.597017, 0.320693,
		37.138500, 41.381298, 23.950493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450230, 41.065807, 23.486223>,  <36.623760, 41.799210, 23.726007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450230, 41.065807, 23.486223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687107, 41.014839, 23.804487>,  <36.829231, 40.984257, 23.995445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687107, 41.014839, 23.804487>,  <36.450230, 41.065807, 23.486223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687107, 41.014839, 23.804487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678767, -0.611028, 0.407333,
		0.434266, -0.781286, -0.448335,
		0.592189, -0.127424, 0.795660,
		36.864765, 40.976612, 24.043184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363541, 40.331131, 23.718931>,  <36.450230, 41.065807, 23.486223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363541, 40.331131, 23.718931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542217, 40.489643, 24.039787>,  <36.649422, 40.584751, 24.232302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542217, 40.489643, 24.039787>,  <36.363541, 40.331131, 23.718931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542217, 40.489643, 24.039787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382020, -0.726241, 0.571519,
		0.809030, -0.561725, -0.173016,
		0.446688, 0.396280, 0.802142,
		36.676224, 40.608528, 24.280430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887733, 39.820522, 24.029482>,  <36.363541, 40.331131, 23.718931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887733, 39.820522, 24.029482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807335, 40.084564, 24.318996>,  <36.759098, 40.242989, 24.492706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807335, 40.084564, 24.318996>,  <36.887733, 39.820522, 24.029482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807335, 40.084564, 24.318996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303036, -0.744522, 0.594859,
		0.931542, -0.099771, 0.349678,
		-0.200993, 0.660101, 0.723788,
		36.747036, 40.282593, 24.536133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006355, 39.473476, 24.656229>,  <36.887733, 39.820522, 24.029482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006355, 39.473476, 24.656229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785358, 39.784527, 24.776260>,  <36.652760, 39.971157, 24.848280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785358, 39.784527, 24.776260>,  <37.006355, 39.473476, 24.656229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785358, 39.784527, 24.776260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352082, -0.544051, 0.761608,
		0.755504, 0.315133, 0.574373,
		-0.552496, 0.777625, 0.300080,
		36.619610, 40.017815, 24.866285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207619, 39.634174, 25.345291>,  <37.006355, 39.473476, 24.656229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207619, 39.634174, 25.345291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850800, 39.813110, 25.319538>,  <36.636707, 39.920471, 25.304087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850800, 39.813110, 25.319538>,  <37.207619, 39.634174, 25.345291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850800, 39.813110, 25.319538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251984, -0.374031, 0.892527,
		0.375180, 0.812398, 0.446375,
		-0.892045, 0.447337, -0.064382,
		36.583187, 39.947311, 25.300224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020199, 40.029362, 26.033621>,  <37.207619, 39.634174, 25.345291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020199, 40.029362, 26.033621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695766, 39.912712, 25.830797>,  <36.501106, 39.842720, 25.709103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695766, 39.912712, 25.830797>,  <37.020199, 40.029362, 26.033621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695766, 39.912712, 25.830797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358069, -0.437927, 0.824625,
		-0.462536, 0.850397, 0.250771,
		-0.811078, -0.291626, -0.507058,
		36.452442, 39.825226, 25.678680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503529, 40.150433, 26.495358>,  <37.020199, 40.029362, 26.033621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503529, 40.150433, 26.495358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347168, 39.889549, 26.235565>,  <36.253353, 39.733021, 26.079689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347168, 39.889549, 26.235565>,  <36.503529, 40.150433, 26.495358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347168, 39.889549, 26.235565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417431, -0.503272, 0.756616,
		-0.820335, 0.566874, -0.075522,
		-0.390898, -0.652204, -0.649483,
		36.229900, 39.693890, 26.040720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852974, 40.220249, 26.581169>,  <36.503529, 40.150433, 26.495358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852974, 40.220249, 26.581169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908516, 39.855690, 26.426216>,  <35.941841, 39.636955, 26.333244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908516, 39.855690, 26.426216>,  <35.852974, 40.220249, 26.581169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908516, 39.855690, 26.426216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335245, -0.411337, 0.847592,
		-0.931843, 0.012179, -0.362658,
		0.138852, -0.911401, -0.387384,
		35.950172, 39.582268, 26.310001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220589, 39.826492, 26.744930>,  <35.852974, 40.220249, 26.581169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220589, 39.826492, 26.744930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484077, 39.543221, 26.643297>,  <35.642170, 39.373257, 26.582317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484077, 39.543221, 26.643297>,  <35.220589, 39.826492, 26.744930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484077, 39.543221, 26.643297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285465, -0.547702, 0.786468,
		-0.696126, -0.445534, -0.562946,
		0.658725, -0.708182, -0.254086,
		35.681694, 39.330765, 26.567072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810047, 39.288376, 26.905151>,  <35.220589, 39.826492, 26.744930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810047, 39.288376, 26.905151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175995, 39.126907, 26.908340>,  <35.395565, 39.030025, 26.910254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175995, 39.126907, 26.908340>,  <34.810047, 39.288376, 26.905151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175995, 39.126907, 26.908340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299655, -0.665632, 0.683477,
		-0.270594, -0.627681, -0.729929,
		0.914870, -0.403671, 0.007971,
		35.450455, 39.005806, 26.910732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742844, 38.568398, 26.805588>,  <34.810047, 39.288376, 26.905151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742844, 38.568398, 26.805588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106262, 38.591022, 26.971163>,  <35.324314, 38.604595, 27.070509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106262, 38.591022, 26.971163>,  <34.742844, 38.568398, 26.805588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106262, 38.591022, 26.971163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210784, -0.793391, 0.571052,
		0.360715, -0.606079, -0.708910,
		0.908545, 0.056560, 0.413940,
		35.378826, 38.607990, 27.095345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953636, 37.878738, 26.858667>,  <34.742844, 38.568398, 26.805588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953636, 37.878738, 26.858667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175999, 38.092487, 27.113358>,  <35.309414, 38.220737, 27.266171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175999, 38.092487, 27.113358>,  <34.953636, 37.878738, 26.858667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175999, 38.092487, 27.113358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180656, -0.670010, 0.720034,
		0.811379, -0.515297, -0.275923,
		0.555903, 0.534374, 0.636724,
		35.342770, 38.252800, 27.304375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544800, 37.322498, 27.017336>,  <34.953636, 37.878738, 26.858667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544800, 37.322498, 27.017336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526424, 37.625053, 27.278337>,  <35.515400, 37.806587, 27.434938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526424, 37.625053, 27.278337>,  <35.544800, 37.322498, 27.017336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526424, 37.625053, 27.278337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168440, -0.649708, 0.741287,
		0.984641, -0.075854, 0.157254,
		-0.045940, 0.756389, 0.652506,
		35.512642, 37.851971, 27.474089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151081, 36.893974, 26.953436>,  <35.544800, 37.322498, 27.017336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151081, 36.893974, 26.953436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129505, 36.591621, 26.692444>,  <36.116558, 36.410210, 26.535849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129505, 36.591621, 26.692444>,  <36.151081, 36.893974, 26.953436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129505, 36.591621, 26.692444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580114, 0.508126, -0.636612,
		0.812747, -0.412850, 0.411093,
		-0.053938, -0.755885, -0.652478,
		36.113323, 36.364857, 26.496700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742279, 36.812000, 26.711201>,  <36.151081, 36.893974, 26.953436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742279, 36.812000, 26.711201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533367, 36.624535, 26.426226>,  <36.408020, 36.512054, 26.255239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533367, 36.624535, 26.426226>,  <36.742279, 36.812000, 26.711201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533367, 36.624535, 26.426226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574433, 0.424115, -0.700110,
		0.630275, -0.774905, 0.047710,
		-0.522284, -0.468668, -0.712439,
		36.376682, 36.483932, 26.212494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264568, 36.551632, 26.240370>,  <36.742279, 36.812000, 26.711201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264568, 36.551632, 26.240370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924999, 36.516087, 26.031975>,  <36.721256, 36.494759, 25.906939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924999, 36.516087, 26.031975>,  <37.264568, 36.551632, 26.240370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924999, 36.516087, 26.031975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428456, 0.461424, -0.776861,
		0.309432, -0.882718, -0.353640,
		-0.848927, -0.088866, -0.520985,
		36.670322, 36.489426, 25.875679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394897, 36.084778, 25.638781>,  <37.264568, 36.551632, 26.240370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394897, 36.084778, 25.638781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095490, 36.342121, 25.574509>,  <36.915844, 36.496525, 25.535946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095490, 36.342121, 25.574509>,  <37.394897, 36.084778, 25.638781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095490, 36.342121, 25.574509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482519, 0.362221, -0.797478,
		-0.454860, -0.674456, -0.581559,
		-0.748517, 0.643354, -0.160678,
		36.870934, 36.535126, 25.526304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236019, 36.015881, 24.904852>,  <37.394897, 36.084778, 25.638781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236019, 36.015881, 24.904852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.040051, 36.357304, 24.975758>,  <36.922470, 36.562157, 25.018301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.040051, 36.357304, 24.975758>,  <37.236019, 36.015881, 24.904852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040051, 36.357304, 24.975758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177724, 0.296861, -0.938236,
		-0.853458, -0.428159, -0.297136,
		-0.489923, 0.853553, 0.177264,
		36.893074, 36.613369, 25.028936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959213, 36.161274, 24.294319>,  <37.236019, 36.015881, 24.904852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959213, 36.161274, 24.294319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951542, 36.510651, 24.488937>,  <36.946938, 36.720276, 24.605709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951542, 36.510651, 24.488937>,  <36.959213, 36.161274, 24.294319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951542, 36.510651, 24.488937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117811, 0.485221, -0.866419,
		-0.992851, 0.040705, -0.112207,
		-0.019177, 0.873444, 0.486547,
		36.945789, 36.772682, 24.634901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610706, 36.547318, 23.819410>,  <36.959213, 36.161274, 24.294319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610706, 36.547318, 23.819410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.799477, 36.813450, 24.050798>,  <36.912739, 36.973129, 24.189632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.799477, 36.813450, 24.050798>,  <36.610706, 36.547318, 23.819410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799477, 36.813450, 24.050798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160973, 0.580078, -0.798497,
		-0.866820, 0.469947, 0.166652,
		0.471922, 0.665327, 0.578472,
		36.941051, 37.013046, 24.224340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417751, 37.175365, 23.598997>,  <36.610706, 36.547318, 23.819410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417751, 37.175365, 23.598997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756428, 37.260384, 23.794111>,  <36.959633, 37.311394, 23.911180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756428, 37.260384, 23.794111>,  <36.417751, 37.175365, 23.598997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756428, 37.260384, 23.794111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263270, 0.629321, -0.731193,
		-0.462383, 0.747516, 0.476887,
		0.846694, 0.212541, 0.487786,
		37.010437, 37.324146, 23.940447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566532, 37.869869, 23.453011>,  <36.417751, 37.175365, 23.598997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566532, 37.869869, 23.453011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925915, 37.740231, 23.571487>,  <37.141544, 37.662445, 23.642574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925915, 37.740231, 23.571487>,  <36.566532, 37.869869, 23.453011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925915, 37.740231, 23.571487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421738, 0.449456, -0.787481,
		0.122097, 0.832436, 0.540503,
		0.898459, -0.324099, 0.296193,
		37.195454, 37.643002, 23.660345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058060, 38.394920, 23.429964>,  <36.566532, 37.869869, 23.453011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058060, 38.394920, 23.429964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329342, 38.112244, 23.510584>,  <37.492111, 37.942638, 23.558956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329342, 38.112244, 23.510584>,  <37.058060, 38.394920, 23.429964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329342, 38.112244, 23.510584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695899, 0.529475, -0.485160,
		0.236146, 0.469294, 0.850881,
		0.678203, -0.706696, 0.201548,
		37.532803, 37.900234, 23.571049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632778, 38.731724, 23.709309>,  <37.058060, 38.394920, 23.429964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632778, 38.731724, 23.709309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729977, 38.400257, 23.507612>,  <37.788296, 38.201378, 23.386595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729977, 38.400257, 23.507612>,  <37.632778, 38.731724, 23.709309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729977, 38.400257, 23.507612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646964, 0.525769, -0.552271,
		0.722764, -0.192024, 0.663882,
		0.243000, -0.828670, -0.504240,
		37.802876, 38.151657, 23.356340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325794, 38.858200, 23.702021>,  <37.632778, 38.731724, 23.709309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325794, 38.858200, 23.702021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234818, 38.584927, 23.424452>,  <38.180229, 38.420963, 23.257910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.234818, 38.584927, 23.424452>,  <38.325794, 38.858200, 23.702021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234818, 38.584927, 23.424452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530092, 0.510902, -0.676743,
		0.816867, -0.521764, 0.245949,
		-0.227444, -0.683185, -0.693922,
		38.166584, 38.379971, 23.216276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904186, 38.580532, 23.501417>,  <38.325794, 38.858200, 23.702021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904186, 38.580532, 23.501417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.627777, 38.546436, 23.214302>,  <38.461933, 38.525978, 23.042032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.627777, 38.546436, 23.214302>,  <38.904186, 38.580532, 23.501417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627777, 38.546436, 23.214302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578487, 0.530193, -0.619878,
		0.433405, -0.843582, -0.317065,
		-0.691023, -0.085240, -0.717789,
		38.420471, 38.520866, 22.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330208, 38.418369, 22.886587>,  <38.904186, 38.580532, 23.501417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330208, 38.418369, 22.886587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970367, 38.532333, 22.754202>,  <38.754463, 38.600712, 22.674770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970367, 38.532333, 22.754202>,  <39.330208, 38.418369, 22.886587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970367, 38.532333, 22.754202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436477, 0.611222, -0.660224,
		0.014186, -0.738399, -0.674215,
		-0.899604, 0.284913, -0.330964,
		38.700485, 38.617805, 22.654913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425266, 37.678547, 22.639725>,  <39.330208, 38.418369, 22.886587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425266, 37.678547, 22.639725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744549, 37.443707, 22.585781>,  <39.936119, 37.302803, 22.553415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744549, 37.443707, 22.585781>,  <39.425266, 37.678547, 22.639725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744549, 37.443707, 22.585781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402269, -0.686144, 0.606124,
		-0.448386, -0.429561, -0.783854,
		0.798204, -0.587098, -0.134858,
		39.984009, 37.267578, 22.545324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172699, 37.035786, 22.487293>,  <39.425266, 37.678547, 22.639725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172699, 37.035786, 22.487293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544250, 36.966225, 22.618097>,  <39.767181, 36.924488, 22.696579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544250, 36.966225, 22.618097>,  <39.172699, 37.035786, 22.487293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544250, 36.966225, 22.618097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348083, -0.711576, 0.610326,
		0.126554, -0.680748, -0.721503,
		0.928882, -0.173904, 0.327010,
		39.822914, 36.914055, 22.716200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313744, 36.321274, 22.347004>,  <39.172699, 37.035786, 22.487293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313744, 36.321274, 22.347004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.555298, 36.463142, 22.632530>,  <39.700230, 36.548264, 22.803846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.555298, 36.463142, 22.632530>,  <39.313744, 36.321274, 22.347004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555298, 36.463142, 22.632530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283777, -0.741200, 0.608352,
		0.744846, -0.569938, -0.346950,
		0.603883, 0.354672, 0.713816,
		39.736462, 36.569546, 22.846676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465446, 35.694683, 22.690741>,  <39.313744, 36.321274, 22.347004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465446, 35.694683, 22.690741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604618, 35.977177, 22.937374>,  <39.688122, 36.146675, 23.085354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604618, 35.977177, 22.937374>,  <39.465446, 35.694683, 22.690741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604618, 35.977177, 22.937374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067793, -0.636999, 0.767877,
		0.935066, -0.308968, -0.173753,
		0.347930, 0.706237, 0.616583,
		39.708996, 36.189049, 23.122349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938332, 35.363262, 22.999138>,  <39.465446, 35.694683, 22.690741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938332, 35.363262, 22.999138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846153, 35.664093, 23.246130>,  <39.790848, 35.844589, 23.394325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846153, 35.664093, 23.246130>,  <39.938332, 35.363262, 22.999138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846153, 35.664093, 23.246130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088349, -0.648109, 0.756405,
		0.969067, 0.119754, 0.215797,
		-0.230443, 0.752073, 0.617481,
		39.777020, 35.889713, 23.431374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315727, 35.188545, 23.578234>,  <39.938332, 35.363262, 22.999138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315727, 35.188545, 23.578234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035435, 35.443188, 23.707050>,  <39.867260, 35.595974, 23.784340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035435, 35.443188, 23.707050>,  <40.315727, 35.188545, 23.578234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035435, 35.443188, 23.707050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084337, -0.522151, 0.848673,
		0.708425, 0.567529, 0.419575,
		-0.700729, 0.636607, 0.322041,
		39.825214, 35.634171, 23.803663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486763, 35.287918, 24.225548>,  <40.315727, 35.188545, 23.578234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486763, 35.287918, 24.225548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099060, 35.384037, 24.204378>,  <39.866440, 35.441708, 24.191677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099060, 35.384037, 24.204378>,  <40.486763, 35.287918, 24.225548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099060, 35.384037, 24.204378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182426, -0.557452, 0.809918,
		0.165119, 0.794672, 0.584150,
		-0.969256, 0.240297, -0.052923,
		39.808285, 35.456127, 24.188501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320774, 35.572651, 24.948801>,  <40.486763, 35.287918, 24.225548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320774, 35.572651, 24.948801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.001652, 35.426105, 24.757271>,  <39.810177, 35.338177, 24.642353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.001652, 35.426105, 24.757271>,  <40.320774, 35.572651, 24.948801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001652, 35.426105, 24.757271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274116, -0.486943, 0.829305,
		-0.536991, 0.792882, 0.288061,
		-0.797810, -0.366367, -0.478825,
		39.762310, 35.316196, 24.613623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979660, 35.270321, 25.524324>,  <40.320774, 35.572651, 24.948801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979660, 35.270321, 25.524324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698063, 35.233685, 25.242615>,  <39.529102, 35.211704, 25.073589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698063, 35.233685, 25.242615>,  <39.979660, 35.270321, 25.524324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698063, 35.233685, 25.242615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561721, -0.534992, 0.631073,
		-0.434581, 0.839878, 0.325184,
		-0.703995, -0.091590, -0.704274,
		39.486866, 35.206207, 25.031332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263466, 35.513889, 25.743607>,  <39.979660, 35.270321, 25.524324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263466, 35.513889, 25.743607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247288, 35.208485, 25.485796>,  <39.237579, 35.025242, 25.331110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247288, 35.208485, 25.485796>,  <39.263466, 35.513889, 25.743607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247288, 35.208485, 25.485796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330848, -0.598430, 0.729672,
		-0.942817, 0.242754, -0.228401,
		-0.040449, -0.763513, -0.644525,
		39.235153, 34.979431, 25.292439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713787, 35.199017, 25.948635>,  <39.263466, 35.513889, 25.743607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713787, 35.199017, 25.948635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.882206, 34.907951, 25.732033>,  <38.983257, 34.733315, 25.602072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.882206, 34.907951, 25.732033>,  <38.713787, 35.199017, 25.948635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882206, 34.907951, 25.732033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252540, -0.667443, 0.700530,
		-0.871174, -0.158203, -0.464788,
		0.421045, -0.727661, -0.541507,
		39.008518, 34.689651, 25.569580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224213, 34.665676, 25.967566>,  <38.713787, 35.199017, 25.948635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224213, 34.665676, 25.967566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575672, 34.495010, 25.881844>,  <38.786549, 34.392612, 25.830410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575672, 34.495010, 25.881844>,  <38.224213, 34.665676, 25.967566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575672, 34.495010, 25.881844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218724, -0.758664, 0.613669,
		-0.424417, -0.492328, -0.759923,
		0.878652, -0.426665, -0.214306,
		38.839268, 34.367012, 25.817551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070213, 34.039486, 25.723465>,  <38.224213, 34.665676, 25.967566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070213, 34.039486, 25.723465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446999, 34.016438, 25.855759>,  <38.673069, 34.002609, 25.935135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446999, 34.016438, 25.855759>,  <38.070213, 34.039486, 25.723465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446999, 34.016438, 25.855759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249075, -0.780496, 0.573400,
		0.225096, -0.622500, -0.749551,
		0.941962, -0.057624, 0.330736,
		38.729588, 33.999149, 25.954979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172958, 33.337658, 25.684843>,  <38.070213, 34.039486, 25.723465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172958, 33.337658, 25.684843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448975, 33.499348, 25.924994>,  <38.614582, 33.596363, 26.069084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448975, 33.499348, 25.924994>,  <38.172958, 33.337658, 25.684843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448975, 33.499348, 25.924994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186158, -0.702478, 0.686928,
		0.699425, -0.585770, -0.409486,
		0.690036, 0.404225, 0.600376,
		38.655987, 33.620617, 26.105106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.226109, 37.733322, 24.806997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.251823, 38.106293, 24.949232>,  <42.267254, 38.330074, 25.034573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.251823, 38.106293, 24.949232>,  <42.226109, 37.733322, 24.806997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251823, 38.106293, 24.949232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225271, 0.333569, -0.915415,
		-0.972173, 0.138953, -0.188605,
		0.064287, 0.932429, 0.355589,
		42.271111, 38.386021, 25.055908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731850, 38.158310, 24.374662>,  <42.226109, 37.733322, 24.806997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731850, 38.158310, 24.374662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.005367, 38.401649, 24.535828>,  <42.169479, 38.547653, 24.632526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.005367, 38.401649, 24.535828>,  <41.731850, 38.158310, 24.374662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005367, 38.401649, 24.535828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374519, 0.181282, -0.909325,
		-0.626229, 0.772688, -0.103879,
		0.683793, 0.608350, 0.402911,
		42.210506, 38.584156, 24.656700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707119, 38.748539, 23.923597>,  <41.731850, 38.158310, 24.374662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707119, 38.748539, 23.923597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.043709, 38.773315, 24.138294>,  <42.245663, 38.788181, 24.267113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.043709, 38.773315, 24.138294>,  <41.707119, 38.748539, 23.923597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043709, 38.773315, 24.138294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508137, 0.246926, -0.825121,
		-0.183644, 0.967053, 0.176307,
		0.841470, 0.061940, 0.536742,
		42.296150, 38.791897, 24.299316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927128, 39.410374, 23.804338>,  <41.707119, 38.748539, 23.923597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927128, 39.410374, 23.804338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262699, 39.219212, 23.908499>,  <42.464043, 39.104515, 23.970995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262699, 39.219212, 23.908499>,  <41.927128, 39.410374, 23.804338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262699, 39.219212, 23.908499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481514, 0.428759, -0.764402,
		0.253661, 0.766664, 0.589815,
		0.838928, -0.477903, 0.260400,
		42.514378, 39.075840, 23.986618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364597, 39.954582, 23.924341>,  <41.927128, 39.410374, 23.804338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364597, 39.954582, 23.924341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.570053, 39.625820, 23.825834>,  <42.693325, 39.428562, 23.766729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.570053, 39.625820, 23.825834>,  <42.364597, 39.954582, 23.924341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570053, 39.625820, 23.825834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540072, 0.532735, -0.651549,
		0.666707, 0.201658, 0.717521,
		0.513638, -0.821905, -0.246268,
		42.724144, 39.379250, 23.751953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034359, 40.127399, 23.927155>,  <42.364597, 39.954582, 23.924341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034359, 40.127399, 23.927155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.052017, 39.783676, 23.723337>,  <43.062611, 39.577442, 23.601046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.052017, 39.783676, 23.723337>,  <43.034359, 40.127399, 23.927155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052017, 39.783676, 23.723337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693646, 0.393422, -0.603386,
		0.718962, -0.326809, 0.613424,
		0.044142, -0.859311, -0.509545,
		43.065258, 39.525883, 23.570473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674667, 40.096840, 23.837746>,  <43.034359, 40.127399, 23.927155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674667, 40.096840, 23.837746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.507999, 39.850918, 23.569895>,  <43.408001, 39.703365, 23.409185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.507999, 39.850918, 23.569895>,  <43.674667, 40.096840, 23.837746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507999, 39.850918, 23.569895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727756, 0.215823, -0.650993,
		0.544758, -0.758570, 0.357505,
		-0.416666, -0.614810, -0.669625,
		43.382999, 39.666473, 23.369007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198193, 39.745865, 23.624954>,  <43.674667, 40.096840, 23.837746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198193, 39.745865, 23.624954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.918991, 39.680382, 23.346104>,  <43.751469, 39.641090, 23.178793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.918991, 39.680382, 23.346104>,  <44.198193, 39.745865, 23.624954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918991, 39.680382, 23.346104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588968, 0.422487, -0.688927,
		0.407307, -0.891463, -0.198484,
		-0.698010, -0.163704, -0.697125,
		43.709587, 39.631268, 23.136967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595585, 39.491371, 23.065830>,  <44.198193, 39.745865, 23.624954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595585, 39.491371, 23.065830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.266735, 39.655685, 22.908161>,  <44.069427, 39.754276, 22.813560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.266735, 39.655685, 22.908161>,  <44.595585, 39.491371, 23.065830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266735, 39.655685, 22.908161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530696, 0.302311, -0.791814,
		-0.206107, -0.860151, -0.466540,
		-0.822120, 0.410789, -0.394170,
		44.020100, 39.778923, 22.789909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665432, 39.390129, 22.283297>,  <44.595585, 39.491371, 23.065830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665432, 39.390129, 22.283297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.360806, 39.646797, 22.319674>,  <44.178028, 39.800797, 22.341499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.360806, 39.646797, 22.319674>,  <44.665432, 39.390129, 22.283297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360806, 39.646797, 22.319674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096251, 0.250759, -0.963253,
		-0.640896, -0.724831, -0.252731,
		-0.761570, 0.641670, 0.090945,
		44.132336, 39.839298, 22.346956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332760, 39.450565, 21.596272>,  <44.665432, 39.390129, 22.283297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332760, 39.450565, 21.596272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.201633, 39.775330, 21.789494>,  <44.122955, 39.970188, 21.905426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.201633, 39.775330, 21.789494>,  <44.332760, 39.450565, 21.596272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201633, 39.775330, 21.789494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031442, 0.501650, -0.864499,
		-0.944218, -0.298587, -0.138922,
		-0.327818, 0.811907, 0.483055,
		44.103287, 40.018902, 21.934410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676853, 39.670368, 21.213253>,  <44.332760, 39.450565, 21.596272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676853, 39.670368, 21.213253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866631, 39.959286, 21.414528>,  <43.980495, 40.132637, 21.535292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866631, 39.959286, 21.414528>,  <43.676853, 39.670368, 21.213253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866631, 39.959286, 21.414528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289954, 0.411490, -0.864062,
		-0.831163, 0.555848, -0.014204,
		0.474442, 0.722294, 0.503186,
		44.008965, 40.175976, 21.565483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522640, 40.131531, 20.800648>,  <43.676853, 39.670368, 21.213253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522640, 40.131531, 20.800648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.862667, 40.214455, 20.994312>,  <44.066681, 40.264210, 21.110510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.862667, 40.214455, 20.994312>,  <43.522640, 40.131531, 20.800648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862667, 40.214455, 20.994312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372841, 0.412413, -0.831207,
		-0.371993, 0.887095, 0.273283,
		0.850065, 0.207312, 0.484160,
		44.117687, 40.276649, 21.139561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787174, 40.667889, 20.525700>,  <43.522640, 40.131531, 20.800648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787174, 40.667889, 20.525700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.118923, 40.565838, 20.724520>,  <44.317970, 40.504608, 20.843811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.118923, 40.565838, 20.724520>,  <43.787174, 40.667889, 20.525700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118923, 40.565838, 20.724520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556689, 0.301914, -0.773916,
		0.047379, 0.918564, 0.392423,
		0.829369, -0.255124, 0.497050,
		44.367733, 40.489300, 20.873634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252563, 40.788433, 19.942286>,  <43.787174, 40.667889, 20.525700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252563, 40.788433, 19.942286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.896805, 40.874268, 19.780832>,  <42.683350, 40.925770, 19.683960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.896805, 40.874268, 19.780832>,  <43.252563, 40.788433, 19.942286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896805, 40.874268, 19.780832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434177, -0.672820, 0.599002,
		-0.143032, 0.708001, 0.691576,
		-0.889400, 0.214590, -0.403633,
		42.629986, 40.938644, 19.659742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794033, 40.828022, 20.503166>,  <43.252563, 40.788433, 19.942286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794033, 40.828022, 20.503166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553246, 40.786545, 20.186464>,  <42.408772, 40.761658, 19.996443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553246, 40.786545, 20.186464>,  <42.794033, 40.828022, 20.503166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553246, 40.786545, 20.186464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547315, -0.668409, 0.503662,
		-0.581442, 0.736531, 0.345612,
		-0.601973, -0.103691, -0.791756,
		42.372654, 40.755436, 19.948938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128208, 41.121098, 20.690208>,  <42.794033, 40.828022, 20.503166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128208, 41.121098, 20.690208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.100681, 40.831932, 20.415209>,  <42.084167, 40.658432, 20.250210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.100681, 40.831932, 20.415209>,  <42.128208, 41.121098, 20.690208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100681, 40.831932, 20.415209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336959, -0.631791, 0.698067,
		-0.939001, 0.279697, -0.200117,
		-0.068815, -0.722917, -0.687499,
		42.080036, 40.615055, 20.208960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474461, 40.733604, 20.730944>,  <42.128208, 41.121098, 20.690208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474461, 40.733604, 20.730944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711426, 40.490749, 20.519119>,  <41.853603, 40.345036, 20.392025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711426, 40.490749, 20.519119>,  <41.474461, 40.733604, 20.730944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711426, 40.490749, 20.519119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203213, -0.748674, 0.631024,
		-0.779589, -0.266210, -0.566898,
		0.592407, -0.607141, -0.529561,
		41.889149, 40.308609, 20.360252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997746, 40.124008, 20.651791>,  <41.474461, 40.733604, 20.730944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997746, 40.124008, 20.651791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.348957, 39.982353, 20.523008>,  <41.559685, 39.897362, 20.445740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.348957, 39.982353, 20.523008>,  <40.997746, 40.124008, 20.651791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348957, 39.982353, 20.523008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244323, -0.910086, 0.334738,
		-0.411550, -0.215248, -0.885604,
		0.878028, -0.354134, -0.321956,
		41.612366, 39.876114, 20.426422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782581, 39.543217, 20.321375>,  <40.997746, 40.124008, 20.651791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782581, 39.543217, 20.321375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.168427, 39.502209, 20.418547>,  <41.399933, 39.477604, 20.476851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.168427, 39.502209, 20.418547>,  <40.782581, 39.543217, 20.321375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168427, 39.502209, 20.418547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198448, -0.888917, 0.412849,
		0.173618, -0.446448, -0.877805,
		0.964611, -0.102521, 0.242929,
		41.457809, 39.471451, 20.491425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008629, 39.034260, 19.966801>,  <40.782581, 39.543217, 20.321375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008629, 39.034260, 19.966801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216358, 39.063004, 20.307421>,  <41.340996, 39.080250, 20.511793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216358, 39.063004, 20.307421>,  <41.008629, 39.034260, 19.966801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216358, 39.063004, 20.307421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223194, -0.950467, 0.216328,
		0.824914, -0.302405, -0.477565,
		0.519328, 0.071862, 0.851548,
		41.372158, 39.084560, 20.562885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423351, 38.399891, 19.970179>,  <41.008629, 39.034260, 19.966801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423351, 38.399891, 19.970179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433613, 38.537170, 20.345743>,  <41.439770, 38.619537, 20.571083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433613, 38.537170, 20.345743>,  <41.423351, 38.399891, 19.970179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433613, 38.537170, 20.345743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390921, -0.860987, 0.325394,
		0.920066, -0.375389, 0.112075,
		0.025654, 0.343197, 0.938913,
		41.441307, 38.640129, 20.627417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527687, 37.839890, 20.337982>,  <41.423351, 38.399891, 19.970179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527687, 37.839890, 20.337982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.411945, 38.116886, 20.602322>,  <41.342499, 38.283085, 20.760925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.411945, 38.116886, 20.602322>,  <41.527687, 37.839890, 20.337982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411945, 38.116886, 20.602322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472833, -0.703679, 0.530344,
		0.832288, -0.159015, 0.531047,
		-0.289354, 0.692496, 0.660851,
		41.325138, 38.324635, 20.800577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822174, 37.735252, 20.980797>,  <41.527687, 37.839890, 20.337982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822174, 37.735252, 20.980797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.485603, 37.931087, 21.072271>,  <41.283661, 38.048588, 21.127155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.485603, 37.931087, 21.072271>,  <41.822174, 37.735252, 20.980797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485603, 37.931087, 21.072271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299097, -0.774437, 0.557484,
		0.450042, 0.400684, 0.798069,
		-0.841429, 0.489592, 0.228686,
		41.233173, 38.077965, 21.140877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708282, 37.669819, 21.676210>,  <41.822174, 37.735252, 20.980797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708282, 37.669819, 21.676210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.340393, 37.807270, 21.600283>,  <41.119659, 37.889740, 21.554726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.340393, 37.807270, 21.600283>,  <41.708282, 37.669819, 21.676210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340393, 37.807270, 21.600283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339999, -0.455528, 0.822736,
		0.196252, 0.821225, 0.535794,
		-0.919721, 0.343633, -0.189818,
		41.064476, 37.910358, 21.543337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382782, 38.030464, 22.326384>,  <41.708282, 37.669819, 21.676210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382782, 38.030464, 22.326384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.096664, 37.923988, 22.067926>,  <40.924995, 37.860104, 21.912851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.096664, 37.923988, 22.067926>,  <41.382782, 38.030464, 22.326384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096664, 37.923988, 22.067926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528888, -0.398141, 0.749507,
		-0.456766, 0.877854, 0.144003,
		-0.715292, -0.266188, -0.646144,
		40.882076, 37.844131, 21.874083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754704, 38.314232, 22.635834>,  <41.382782, 38.030464, 22.326384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754704, 38.314232, 22.635834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.646931, 38.007778, 22.402445>,  <40.582268, 37.823906, 22.262411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.646931, 38.007778, 22.402445>,  <40.754704, 38.314232, 22.635834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646931, 38.007778, 22.402445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588519, -0.348586, 0.729475,
		-0.762268, 0.539928, -0.356966,
		-0.269430, -0.766137, -0.583473,
		40.566101, 37.777939, 22.227404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100838, 38.237103, 22.725975>,  <40.754704, 38.314232, 22.635834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100838, 38.237103, 22.725975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191124, 37.891766, 22.545446>,  <40.245296, 37.684563, 22.437128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.191124, 37.891766, 22.545446>,  <40.100838, 38.237103, 22.725975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191124, 37.891766, 22.545446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498414, -0.500395, 0.707947,
		-0.837040, 0.065152, -0.543249,
		0.225714, -0.863343, -0.451323,
		40.258839, 37.632763, 22.410049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614796, 38.456665, 22.215927>,  <40.100838, 38.237103, 22.725975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614796, 38.456665, 22.215927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254951, 38.630348, 22.234503>,  <39.039043, 38.734558, 22.245649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254951, 38.630348, 22.234503>,  <39.614796, 38.456665, 22.215927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254951, 38.630348, 22.234503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309383, 0.708793, -0.633951,
		-0.308186, -0.555943, -0.771977,
		-0.899613, 0.434211, 0.046441,
		38.985069, 38.760612, 22.248434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428841, 38.577946, 21.524723>,  <39.614796, 38.456665, 22.215927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428841, 38.577946, 21.524723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.236446, 38.842438, 21.755003>,  <39.121010, 39.001133, 21.893171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.236446, 38.842438, 21.755003>,  <39.428841, 38.577946, 21.524723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236446, 38.842438, 21.755003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257596, 0.734243, -0.628118,
		-0.838034, -0.153816, -0.523488,
		-0.480981, 0.661232, 0.575698,
		39.092152, 39.040806, 21.927713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188992, 39.042530, 20.993515>,  <39.428841, 38.577946, 21.524723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188992, 39.042530, 20.993515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159645, 39.242374, 21.338770>,  <39.142036, 39.362282, 21.545923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159645, 39.242374, 21.338770>,  <39.188992, 39.042530, 20.993515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159645, 39.242374, 21.338770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265788, 0.843962, -0.465925,
		-0.961236, 0.195229, -0.194707,
		-0.073363, 0.499614, 0.863136,
		39.137634, 39.392258, 21.597712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893337, 39.711079, 20.829773>,  <39.188992, 39.042530, 20.993515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893337, 39.711079, 20.829773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045528, 39.754257, 21.197161>,  <39.136841, 39.780163, 21.417593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045528, 39.754257, 21.197161>,  <38.893337, 39.711079, 20.829773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045528, 39.754257, 21.197161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110195, 0.980797, -0.160916,
		-0.918203, 0.162435, 0.361272,
		0.380473, 0.107943, 0.918471,
		39.159672, 39.786640, 21.472702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508541, 40.317009, 21.146574>,  <38.893337, 39.711079, 20.829773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508541, 40.317009, 21.146574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862335, 40.262230, 21.324984>,  <39.074612, 40.229362, 21.432030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862335, 40.262230, 21.324984>,  <38.508541, 40.317009, 21.146574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862335, 40.262230, 21.324984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260358, 0.938143, -0.228257,
		-0.387177, 0.318016, 0.865425,
		0.884482, -0.136944, 0.446025,
		39.127678, 40.221146, 21.458792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634811, 40.897472, 21.692730>,  <38.508541, 40.317009, 21.146574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634811, 40.897472, 21.692730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985451, 40.730015, 21.597813>,  <39.195835, 40.629539, 21.540863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985451, 40.730015, 21.597813>,  <38.634811, 40.897472, 21.692730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985451, 40.730015, 21.597813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338321, 0.886823, -0.314777,
		0.342218, 0.195652, 0.919025,
		0.876599, -0.418648, -0.237293,
		39.248432, 40.604420, 21.526625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046791, 41.401649, 21.787104>,  <38.634811, 40.897472, 21.692730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046791, 41.401649, 21.787104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280468, 41.161057, 21.569138>,  <39.420673, 41.016701, 21.438358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280468, 41.161057, 21.569138>,  <39.046791, 41.401649, 21.787104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280468, 41.161057, 21.569138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545056, 0.788219, -0.285700,
		0.601358, -0.130106, 0.788315,
		0.584193, -0.601484, -0.544917,
		39.455727, 40.980610, 21.405663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353794, 41.926861, 22.188213>,  <39.046791, 41.401649, 21.787104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353794, 41.926861, 22.188213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404434, 42.239155, 22.432972>,  <39.434818, 42.426533, 22.579828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404434, 42.239155, 22.432972>,  <39.353794, 41.926861, 22.188213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404434, 42.239155, 22.432972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597256, -0.432518, 0.675436,
		0.791995, -0.450972, 0.411542,
		0.126603, 0.780738, 0.611898,
		39.442413, 42.473377, 22.616541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523521, 41.578148, 22.769192>,  <39.353794, 41.926861, 22.188213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523521, 41.578148, 22.769192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350121, 41.929756, 22.848591>,  <39.246078, 42.140720, 22.896231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.350121, 41.929756, 22.848591>,  <39.523521, 41.578148, 22.769192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350121, 41.929756, 22.848591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594092, -0.444398, 0.670497,
		0.677590, 0.172738, 0.714866,
		-0.433505, 0.879018, 0.198497,
		39.220070, 42.193462, 22.908140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497776, 41.662529, 23.428986>,  <39.523521, 41.578148, 22.769192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497776, 41.662529, 23.428986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199352, 41.884373, 23.281582>,  <39.020298, 42.017479, 23.193140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199352, 41.884373, 23.281582>,  <39.497776, 41.662529, 23.428986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199352, 41.884373, 23.281582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618918, -0.373432, 0.691005,
		0.245627, 0.743609, 0.621863,
		-0.746061, 0.554612, -0.368508,
		38.975533, 42.050755, 23.171030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145226, 41.781277, 24.028486>,  <39.497776, 41.662529, 23.428986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145226, 41.781277, 24.028486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877705, 41.899609, 23.755667>,  <38.717194, 41.970608, 23.591976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877705, 41.899609, 23.755667>,  <39.145226, 41.781277, 24.028486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877705, 41.899609, 23.755667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741339, -0.334336, 0.581924,
		-0.055881, 0.894819, 0.442917,
		-0.668800, 0.295833, -0.682047,
		38.677063, 41.988358, 23.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514816, 41.969116, 24.440233>,  <39.145226, 41.781277, 24.028486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514816, 41.969116, 24.440233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393906, 41.929054, 24.061056>,  <38.321358, 41.905018, 23.833549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393906, 41.929054, 24.061056>,  <38.514816, 41.969116, 24.440233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393906, 41.929054, 24.061056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876804, -0.360924, 0.317725,
		-0.373957, 0.927202, 0.021283,
		-0.302277, -0.100154, -0.947944,
		38.303223, 41.899010, 23.776672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895527, 42.343346, 24.368866>,  <38.514816, 41.969116, 24.440233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895527, 42.343346, 24.368866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914150, 42.055019, 24.092243>,  <37.925323, 41.882023, 23.926270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914150, 42.055019, 24.092243>,  <37.895527, 42.343346, 24.368866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914150, 42.055019, 24.092243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923435, -0.295061, 0.245372,
		-0.380920, 0.627182, -0.679369,
		0.046563, -0.720820, -0.691556,
		37.928120, 41.838772, 23.884777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235874, 42.345879, 23.992233>,  <37.895527, 42.343346, 24.368866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235874, 42.345879, 23.992233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406807, 41.985970, 23.956905>,  <37.509365, 41.770023, 23.935709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406807, 41.985970, 23.956905>,  <37.235874, 42.345879, 23.992233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406807, 41.985970, 23.956905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868127, -0.435647, 0.237837,
		-0.252475, -0.024964, -0.967282,
		0.427331, -0.899771, -0.088318,
		37.535007, 41.716038, 23.930410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.355186, 43.512058, 22.544336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502163, 43.141098, 22.516294>,  <43.590347, 42.918522, 22.499470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502163, 43.141098, 22.516294>,  <43.355186, 43.512058, 22.544336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502163, 43.141098, 22.516294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495914, -0.259136, 0.828805,
		-0.786802, -0.269770, -0.555128,
		0.367441, -0.927401, -0.070106,
		43.612396, 42.862877, 22.495262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836285, 43.080303, 22.589056>,  <43.355186, 43.512058, 22.544336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836285, 43.080303, 22.589056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.135300, 42.836292, 22.694176>,  <43.314709, 42.689888, 22.757248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.135300, 42.836292, 22.694176>,  <42.836285, 43.080303, 22.589056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135300, 42.836292, 22.694176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499205, -0.254980, 0.828118,
		-0.438165, -0.750236, -0.495134,
		0.747533, -0.610026, 0.262798,
		43.359558, 42.653286, 22.773016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423843, 42.398907, 22.844654>,  <42.836285, 43.080303, 22.589056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423843, 42.398907, 22.844654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.798931, 42.402889, 22.983553>,  <43.023983, 42.405277, 23.066893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.798931, 42.402889, 22.983553>,  <42.423843, 42.398907, 22.844654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798931, 42.402889, 22.983553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323023, -0.342783, 0.882131,
		0.127812, -0.939362, -0.318219,
		0.937721, 0.009955, 0.347248,
		43.080246, 42.405876, 23.087727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548054, 41.763386, 23.114225>,  <42.423843, 42.398907, 22.844654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548054, 41.763386, 23.114225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821793, 41.997005, 23.288834>,  <42.986034, 42.137177, 23.393599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821793, 41.997005, 23.288834>,  <42.548054, 41.763386, 23.114225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821793, 41.997005, 23.288834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225857, -0.399427, 0.888508,
		0.693294, -0.706640, -0.141435,
		0.684348, 0.584053, 0.436520,
		43.027096, 42.172222, 23.419790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831734, 41.351181, 23.704409>,  <42.548054, 41.763386, 23.114225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831734, 41.351181, 23.704409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.955784, 41.720409, 23.795408>,  <43.030212, 41.941948, 23.850008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.955784, 41.720409, 23.795408>,  <42.831734, 41.351181, 23.704409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955784, 41.720409, 23.795408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018221, -0.245026, 0.969345,
		0.950522, -0.296470, -0.092808,
		0.310122, 0.923075, 0.227500,
		43.048820, 41.997334, 23.863659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321503, 41.280819, 24.261345>,  <42.831734, 41.351181, 23.704409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321503, 41.280819, 24.261345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.197018, 41.660469, 24.280571>,  <43.122326, 41.888260, 24.292107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.197018, 41.660469, 24.280571>,  <43.321503, 41.280819, 24.261345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197018, 41.660469, 24.280571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093717, -0.080980, 0.992300,
		0.945707, 0.304316, 0.114152,
		-0.311217, 0.949122, 0.048063,
		43.103653, 41.945206, 24.294991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722839, 41.640430, 24.800680>,  <43.321503, 41.280819, 24.261345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722839, 41.640430, 24.800680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.365238, 41.805679, 24.731302>,  <43.150677, 41.904827, 24.689674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.365238, 41.805679, 24.731302>,  <43.722839, 41.640430, 24.800680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365238, 41.805679, 24.731302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295068, -0.251538, 0.921772,
		0.337173, 0.875250, 0.346775,
		-0.894008, 0.413118, -0.173447,
		43.097034, 41.929615, 24.679268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632145, 41.975533, 25.454155>,  <43.722839, 41.640430, 24.800680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632145, 41.975533, 25.454155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.263741, 41.983112, 25.298521>,  <43.042698, 41.987659, 25.205141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.263741, 41.983112, 25.298521>,  <43.632145, 41.975533, 25.454155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263741, 41.983112, 25.298521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389015, 0.007459, 0.921201,
		0.020358, 0.999793, 0.000501,
		-0.921007, 0.018949, -0.389086,
		42.987438, 41.988796, 25.181795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274223, 42.428833, 25.875015>,  <43.632145, 41.975533, 25.454155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274223, 42.428833, 25.875015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006233, 42.173012, 25.724228>,  <42.845440, 42.019520, 25.633755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006233, 42.173012, 25.724228>,  <43.274223, 42.428833, 25.875015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006233, 42.173012, 25.724228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399572, -0.117309, 0.909165,
		-0.625683, 0.759742, -0.176955,
		-0.669972, -0.639555, -0.376970,
		42.805241, 41.981144, 25.611137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587532, 42.636360, 26.060301>,  <43.274223, 42.428833, 25.875015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587532, 42.636360, 26.060301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561356, 42.247147, 25.971825>,  <42.545650, 42.013618, 25.918739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561356, 42.247147, 25.971825>,  <42.587532, 42.636360, 26.060301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561356, 42.247147, 25.971825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389849, -0.179116, 0.903291,
		-0.918550, 0.145344, -0.367614,
		-0.065442, -0.973033, -0.221189,
		42.541721, 41.955238, 25.905468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881241, 42.560696, 26.298079>,  <42.587532, 42.636360, 26.060301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881241, 42.560696, 26.298079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.018654, 42.189335, 26.241421>,  <42.101101, 41.966518, 26.207426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.018654, 42.189335, 26.241421>,  <41.881241, 42.560696, 26.298079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018654, 42.189335, 26.241421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500733, -0.308668, 0.808697,
		-0.794513, -0.206888, -0.570917,
		0.343533, -0.928397, -0.141645,
		42.121716, 41.910816, 26.198927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318752, 42.144962, 26.267653>,  <41.881241, 42.560696, 26.298079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318752, 42.144962, 26.267653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.614254, 41.904419, 26.389380>,  <41.791557, 41.760094, 26.462416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.614254, 41.904419, 26.389380>,  <41.318752, 42.144962, 26.267653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614254, 41.904419, 26.389380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595734, -0.371489, 0.712107,
		-0.315182, -0.707365, -0.632689,
		0.738756, -0.601358, 0.304315,
		41.835880, 41.724010, 26.480675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638618, 42.048588, 26.105835>,  <41.318752, 42.144962, 26.267653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638618, 42.048588, 26.105835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.425579, 42.381844, 26.165453>,  <40.297756, 42.581799, 26.201223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.425579, 42.381844, 26.165453>,  <40.638618, 42.048588, 26.105835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425579, 42.381844, 26.165453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508839, 0.455917, -0.730221,
		-0.676329, -0.313075, -0.666756,
		-0.532599, 0.833141, 0.149045,
		40.265800, 42.631786, 26.210167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577747, 42.344185, 25.471346>,  <40.638618, 42.048588, 26.105835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577747, 42.344185, 25.471346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.533340, 42.657089, 25.716539>,  <40.506699, 42.844830, 25.863655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.533340, 42.657089, 25.716539>,  <40.577747, 42.344185, 25.471346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533340, 42.657089, 25.716539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615630, 0.538333, -0.575497,
		-0.780176, 0.313483, -0.541344,
		-0.111015, 0.782257, 0.612984,
		40.500034, 42.891766, 25.900434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621185, 42.888489, 25.035946>,  <40.577747, 42.344185, 25.471346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621185, 42.888489, 25.035946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679535, 43.050495, 25.396984>,  <40.714542, 43.147697, 25.613607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679535, 43.050495, 25.396984>,  <40.621185, 42.888489, 25.035946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679535, 43.050495, 25.396984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718392, 0.583903, -0.378113,
		-0.680172, 0.703575, -0.205786,
		0.145872, 0.405017, 0.902598,
		40.723297, 43.172001, 25.667763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512772, 43.540955, 24.988188>,  <40.621185, 42.888489, 25.035946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512772, 43.540955, 24.988188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740231, 43.550655, 25.317076>,  <40.876705, 43.556477, 25.514408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.740231, 43.550655, 25.317076>,  <40.512772, 43.540955, 24.988188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740231, 43.550655, 25.317076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579388, 0.697729, -0.421288,
		-0.583905, 0.715951, 0.382713,
		0.568651, 0.024253, 0.822221,
		40.910828, 43.557930, 25.563742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526684, 44.272484, 25.231588>,  <40.512772, 43.540955, 24.988188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526684, 44.272484, 25.231588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830238, 44.081604, 25.408844>,  <41.012371, 43.967075, 25.515198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830238, 44.081604, 25.408844>,  <40.526684, 44.272484, 25.231588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830238, 44.081604, 25.408844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642717, 0.658442, -0.391625,
		-0.104901, 0.582013, 0.806385,
		0.758888, -0.477195, 0.443141,
		41.057903, 43.938446, 25.541786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842400, 44.750748, 25.548117>,  <40.526684, 44.272484, 25.231588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842400, 44.750748, 25.548117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107628, 44.460281, 25.475426>,  <41.266766, 44.286003, 25.431810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107628, 44.460281, 25.475426>,  <40.842400, 44.750748, 25.548117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107628, 44.460281, 25.475426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559745, 0.642177, -0.523732,
		0.497017, 0.245548, 0.832274,
		0.663069, -0.726164, -0.181729,
		41.306549, 44.242432, 25.420908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529594, 45.041916, 25.766008>,  <40.842400, 44.750748, 25.548117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529594, 45.041916, 25.766008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600101, 44.735703, 25.518496>,  <41.642406, 44.551975, 25.369987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600101, 44.735703, 25.518496>,  <41.529594, 45.041916, 25.766008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600101, 44.735703, 25.518496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707890, 0.535388, -0.460707,
		0.683975, -0.356824, 0.636282,
		0.176267, -0.765530, -0.618784,
		41.652981, 44.506042, 25.332861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183533, 45.111862, 25.620935>,  <41.529594, 45.041916, 25.766008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183533, 45.111862, 25.620935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.059830, 44.876278, 25.322275>,  <41.985607, 44.734928, 25.143080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.059830, 44.876278, 25.322275>,  <42.183533, 45.111862, 25.620935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059830, 44.876278, 25.322275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619284, 0.471118, -0.628121,
		0.721699, -0.656637, 0.219040,
		-0.309254, -0.588963, -0.746649,
		41.967052, 44.699589, 25.098280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745388, 45.125225, 25.128944>,  <42.183533, 45.111862, 25.620935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745388, 45.125225, 25.128944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424759, 44.989124, 24.932285>,  <42.232384, 44.907463, 24.814291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424759, 44.989124, 24.932285>,  <42.745388, 45.125225, 25.128944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424759, 44.989124, 24.932285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315116, 0.458407, -0.831003,
		0.508123, -0.821032, -0.260227,
		-0.801569, -0.340250, -0.491647,
		42.184288, 44.887051, 24.784792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932186, 44.598656, 24.687748>,  <42.745388, 45.125225, 25.128944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932186, 44.598656, 24.687748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.605515, 44.777599, 24.541924>,  <42.409512, 44.884968, 24.454430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.605515, 44.777599, 24.541924>,  <42.932186, 44.598656, 24.687748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605515, 44.777599, 24.541924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521790, 0.302565, -0.797615,
		-0.246518, -0.841619, -0.480527,
		-0.816678, 0.447361, -0.364561,
		42.360512, 44.911808, 24.432556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004150, 44.466438, 24.007999>,  <42.932186, 44.598656, 24.687748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004150, 44.466438, 24.007999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.706909, 44.732388, 23.977703>,  <42.528564, 44.891956, 23.959524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.706909, 44.732388, 23.977703>,  <43.004150, 44.466438, 24.007999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706909, 44.732388, 23.977703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397180, 0.347134, -0.849556,
		-0.538553, -0.661395, -0.522032,
		-0.743107, 0.664872, -0.075743,
		42.483978, 44.931850, 23.954981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666965, 44.375511, 23.311388>,  <43.004150, 44.466438, 24.007999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666965, 44.375511, 23.311388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.604816, 44.742161, 23.458719>,  <42.567528, 44.962151, 23.547117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.604816, 44.742161, 23.458719>,  <42.666965, 44.375511, 23.311388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604816, 44.742161, 23.458719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365588, 0.399735, -0.840570,
		-0.917718, 0.004055, -0.397213,
		-0.155372, 0.916622, 0.368326,
		42.558205, 45.017147, 23.569218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406960, 44.731819, 22.769680>,  <42.666965, 44.375511, 23.311388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406960, 44.731819, 22.769680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.501896, 45.016426, 23.034229>,  <42.558857, 45.187191, 23.192959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.501896, 45.016426, 23.034229>,  <42.406960, 44.731819, 22.769680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501896, 45.016426, 23.034229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652189, 0.387863, -0.651316,
		-0.719943, 0.585925, -0.371986,
		0.237343, 0.711515, 0.661373,
		42.573097, 45.229881, 23.232641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540260, 44.221821, 22.058962>,  <42.406960, 44.731819, 22.769680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540260, 44.221821, 22.058962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212704, 44.277378, 21.836206>,  <42.016171, 44.310711, 21.702553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.212704, 44.277378, 21.836206>,  <42.540260, 44.221821, 22.058962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212704, 44.277378, 21.836206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543804, -0.498073, 0.675427,
		-0.183561, 0.855940, 0.483397,
		-0.818891, 0.138891, -0.556890,
		41.967037, 44.319046, 21.669140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099728, 44.041050, 22.516932>,  <42.540260, 44.221821, 22.058962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099728, 44.041050, 22.516932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.874928, 44.069904, 22.187338>,  <41.740047, 44.087215, 21.989582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.874928, 44.069904, 22.187338>,  <42.099728, 44.041050, 22.516932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874928, 44.069904, 22.187338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776328, -0.389767, 0.495374,
		-0.285431, 0.918084, 0.275047,
		-0.562000, 0.072132, -0.823986,
		41.706329, 44.091545, 21.940142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455837, 44.454586, 22.687618>,  <42.099728, 44.041050, 22.516932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455837, 44.454586, 22.687618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.380867, 44.217514, 22.374287>,  <41.335884, 44.075272, 22.186287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.380867, 44.217514, 22.374287>,  <41.455837, 44.454586, 22.687618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380867, 44.217514, 22.374287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869082, -0.271598, 0.413437,
		-0.457786, 0.758266, -0.464182,
		-0.187424, -0.592678, -0.783330,
		41.324638, 44.039711, 22.139288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698772, 44.392811, 22.721815>,  <41.455837, 44.454586, 22.687618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698772, 44.392811, 22.721815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.774906, 44.111652, 22.447674>,  <40.820587, 43.942959, 22.283188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.774906, 44.111652, 22.447674>,  <40.698772, 44.392811, 22.721815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774906, 44.111652, 22.447674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697353, -0.588178, 0.409567,
		-0.690994, 0.399980, -0.602116,
		0.190332, -0.702896, -0.685354,
		40.832005, 43.900784, 22.242067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173180, 44.263771, 22.230995>,  <40.698772, 44.392811, 22.721815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173180, 44.263771, 22.230995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378044, 43.920246, 22.235525>,  <40.500965, 43.714130, 22.238243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.378044, 43.920246, 22.235525>,  <40.173180, 44.263771, 22.230995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378044, 43.920246, 22.235525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818689, -0.484165, 0.308759,
		-0.259684, -0.167405, -0.951073,
		0.512164, -0.858813, 0.011323,
		40.531693, 43.662601, 22.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747997, 43.852840, 21.797531>,  <40.173180, 44.263771, 22.230995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747997, 43.852840, 21.797531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981178, 43.599865, 22.001566>,  <40.121086, 43.448078, 22.123987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981178, 43.599865, 22.001566>,  <39.747997, 43.852840, 21.797531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981178, 43.599865, 22.001566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803618, -0.541403, 0.247146,
		0.119858, -0.553990, -0.823850,
		0.582951, -0.632439, 0.510088,
		40.156063, 43.410133, 22.154593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642696, 43.197727, 21.565351>,  <39.747997, 43.852840, 21.797531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642696, 43.197727, 21.565351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.796349, 43.127705, 21.927963>,  <39.888538, 43.085690, 22.145531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.796349, 43.127705, 21.927963>,  <39.642696, 43.197727, 21.565351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796349, 43.127705, 21.927963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811818, -0.531711, 0.241320,
		0.439767, -0.828636, -0.346364,
		0.384132, -0.175060, 0.906530,
		39.911587, 43.075188, 22.199923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542488, 42.480648, 21.729422>,  <39.642696, 43.197727, 21.565351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542488, 42.480648, 21.729422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585884, 42.663105, 22.082729>,  <39.611919, 42.772579, 22.294714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585884, 42.663105, 22.082729>,  <39.542488, 42.480648, 21.729422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585884, 42.663105, 22.082729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805068, -0.480924, 0.347243,
		0.583177, -0.748762, 0.315054,
		0.108485, 0.456144, 0.883269,
		39.618431, 42.799950, 22.347710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889851, 41.905266, 21.682352>,  <39.542488, 42.480648, 21.729422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889851, 41.905266, 21.682352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.848827, 41.621307, 21.403631>,  <39.824211, 41.450932, 21.236399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.848827, 41.621307, 21.403631>,  <39.889851, 41.905266, 21.682352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848827, 41.621307, 21.403631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408701, 0.608565, -0.680156,
		0.906887, -0.354541, 0.227719,
		-0.102562, -0.709894, -0.696801,
		39.818058, 41.408340, 21.194592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570450, 41.815540, 21.363649>,  <39.889851, 41.905266, 21.682352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570450, 41.815540, 21.363649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.304516, 41.673260, 21.100903>,  <40.144955, 41.587891, 20.943254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.304516, 41.673260, 21.100903>,  <40.570450, 41.815540, 21.363649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304516, 41.673260, 21.100903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536277, 0.384869, -0.751188,
		0.520005, -0.851677, -0.065120,
		-0.664833, -0.355699, -0.656868,
		40.105064, 41.566551, 20.903843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951626, 41.410812, 20.892813>,  <40.570450, 41.815540, 21.363649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951626, 41.410812, 20.892813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.598610, 41.506035, 20.730602>,  <40.386799, 41.563168, 20.633276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.598610, 41.506035, 20.730602>,  <40.951626, 41.410812, 20.892813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598610, 41.506035, 20.730602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470219, 0.454118, -0.756750,
		0.004007, -0.858549, -0.512716,
		-0.882541, 0.238057, -0.405526,
		40.333847, 41.577454, 20.608944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115303, 41.228725, 20.126545>,  <40.951626, 41.410812, 20.892813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115303, 41.228725, 20.126545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.779633, 41.446144, 20.119186>,  <40.578232, 41.576595, 20.114771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.779633, 41.446144, 20.119186>,  <41.115303, 41.228725, 20.126545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779633, 41.446144, 20.119186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363922, 0.536073, -0.761700,
		-0.404159, -0.645896, -0.647669,
		-0.839176, 0.543549, -0.018397,
		40.527878, 41.609207, 20.113667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841911, 41.279945, 19.463539>,  <41.115303, 41.228725, 20.126545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841911, 41.279945, 19.463539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.662632, 41.595398, 19.631907>,  <40.555065, 41.784672, 19.732927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.662632, 41.595398, 19.631907>,  <40.841911, 41.279945, 19.463539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662632, 41.595398, 19.631907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154694, 0.532182, -0.832377,
		-0.880450, -0.307953, -0.360519,
		-0.448195, 0.788636, 0.420921,
		40.528175, 41.831989, 19.758183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533176, 41.684937, 18.890427>,  <40.841911, 41.279945, 19.463539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533176, 41.684937, 18.890427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580982, 41.918545, 19.211582>,  <40.609665, 42.058708, 19.404276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580982, 41.918545, 19.211582>,  <40.533176, 41.684937, 18.890427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580982, 41.918545, 19.211582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218441, 0.773403, -0.595090,
		-0.968503, 0.246509, -0.035138,
		0.119519, 0.584022, 0.802891,
		40.616837, 42.093750, 19.452450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273983, 42.343204, 18.722723>,  <40.533176, 41.684937, 18.890427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273983, 42.343204, 18.722723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506733, 42.431957, 19.035692>,  <40.646385, 42.485210, 19.223475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506733, 42.431957, 19.035692>,  <40.273983, 42.343204, 18.722723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506733, 42.431957, 19.035692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477739, 0.685322, -0.549635,
		-0.658165, 0.693615, 0.292774,
		0.581879, 0.221881, 0.782423,
		40.681297, 42.498520, 19.270418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151405, 42.991528, 18.832253>,  <40.273983, 42.343204, 18.722723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151405, 42.991528, 18.832253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511684, 42.933773, 18.996157>,  <40.727852, 42.899120, 19.094500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511684, 42.933773, 18.996157>,  <40.151405, 42.991528, 18.832253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511684, 42.933773, 18.996157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373351, 0.739543, -0.560076,
		-0.222172, 0.657442, 0.720006,
		0.900693, -0.144381, 0.409763,
		40.781891, 42.890457, 19.119085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351357, 43.652302, 18.935711>,  <40.151405, 42.991528, 18.832253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351357, 43.652302, 18.935711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.694607, 43.446938, 18.937441>,  <40.900558, 43.323719, 18.938478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.694607, 43.446938, 18.937441>,  <40.351357, 43.652302, 18.935711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694607, 43.446938, 18.937441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399183, 0.661855, -0.634508,
		0.322902, 0.546218, 0.772904,
		0.858130, -0.513414, 0.004327,
		40.952045, 43.292912, 18.938740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.323025, 34.916832, 30.386042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645828, 34.684990, 30.431278>,  <34.839512, 34.545883, 30.458420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645828, 34.684990, 30.431278>,  <34.323025, 34.916832, 30.386042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645828, 34.684990, 30.431278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371646, 0.349654, -0.860013,
		0.458929, 0.736067, 0.497583,
		0.807009, -0.579610, 0.113090,
		34.887932, 34.511108, 30.465206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962570, 35.266651, 30.372248>,  <34.323025, 34.916832, 30.386042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962570, 35.266651, 30.372248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039780, 34.906704, 30.215801>,  <35.086105, 34.690735, 30.121933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039780, 34.906704, 30.215801>,  <34.962570, 35.266651, 30.372248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039780, 34.906704, 30.215801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201137, 0.426437, -0.881871,
		0.960356, 0.091557, 0.263311,
		0.193027, -0.899872, -0.391116,
		35.097687, 34.636742, 30.098467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551601, 35.305492, 29.875950>,  <34.962570, 35.266651, 30.372248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551601, 35.305492, 29.875950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408920, 34.945896, 29.774303>,  <35.323311, 34.730137, 29.713316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408920, 34.945896, 29.774303>,  <35.551601, 35.305492, 29.875950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408920, 34.945896, 29.774303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136498, 0.218938, -0.966144,
		0.924194, -0.379309, 0.044616,
		-0.356699, -0.898994, -0.254116,
		35.301910, 34.676197, 29.698069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997887, 35.090916, 29.316643>,  <35.551601, 35.305492, 29.875950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997887, 35.090916, 29.316643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657066, 34.882317, 29.298510>,  <35.452576, 34.757156, 29.287630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657066, 34.882317, 29.298510>,  <35.997887, 35.090916, 29.316643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657066, 34.882317, 29.298510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045110, 0.013128, -0.998896,
		0.521518, -0.853151, 0.012339,
		-0.852047, -0.521499, -0.045333,
		35.401451, 34.725868, 29.284910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157406, 34.321518, 29.148165>,  <35.997887, 35.090916, 29.316643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157406, 34.321518, 29.148165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793190, 34.450089, 29.044157>,  <35.574661, 34.527229, 28.981752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793190, 34.450089, 29.044157>,  <36.157406, 34.321518, 29.148165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793190, 34.450089, 29.044157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193343, -0.224864, -0.955016,
		-0.365437, -0.919848, 0.142601,
		-0.910536, 0.321427, -0.260020,
		35.520031, 34.546516, 28.966150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949623, 33.897800, 28.534092>,  <36.157406, 34.321518, 29.148165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949623, 33.897800, 28.534092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712677, 34.220043, 28.530010>,  <35.570511, 34.413387, 28.527561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712677, 34.220043, 28.530010>,  <35.949623, 33.897800, 28.534092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712677, 34.220043, 28.530010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000543, -0.013063, -0.999915,
		-0.805670, -0.592308, 0.008175,
		-0.592364, 0.805606, -0.010203,
		35.534969, 34.461723, 28.526949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670773, 33.862904, 27.902937>,  <35.949623, 33.897800, 28.534092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670773, 33.862904, 27.902937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580444, 34.237511, 28.010225>,  <35.526245, 34.462273, 28.074598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580444, 34.237511, 28.010225>,  <35.670773, 33.862904, 27.902937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580444, 34.237511, 28.010225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242291, 0.320678, -0.915675,
		-0.943556, -0.141793, -0.299326,
		-0.225824, 0.936515, 0.268223,
		35.512695, 34.518467, 28.090693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384827, 34.040016, 27.309629>,  <35.670773, 33.862904, 27.902937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384827, 34.040016, 27.309629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428974, 34.395649, 27.487329>,  <35.455463, 34.609028, 27.593950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428974, 34.395649, 27.487329>,  <35.384827, 34.040016, 27.309629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428974, 34.395649, 27.487329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098634, 0.434977, -0.895023,
		-0.988984, 0.142603, -0.039684,
		0.110371, 0.889078, 0.444251,
		35.462086, 34.662373, 27.620605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006153, 34.577324, 26.803528>,  <35.384827, 34.040016, 27.309629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006153, 34.577324, 26.803528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247429, 34.790344, 27.041031>,  <35.392193, 34.918156, 27.183533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247429, 34.790344, 27.041031>,  <35.006153, 34.577324, 26.803528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247429, 34.790344, 27.041031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138466, 0.663209, -0.735514,
		-0.785487, 0.525869, 0.326300,
		0.603189, 0.532555, 0.593758,
		35.428387, 34.950111, 27.219158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847767, 35.316586, 26.663570>,  <35.006153, 34.577324, 26.803528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847767, 35.316586, 26.663570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213932, 35.310268, 26.824451>,  <35.433632, 35.306480, 26.920980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213932, 35.310268, 26.824451>,  <34.847767, 35.316586, 26.663570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213932, 35.310268, 26.824451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293851, 0.709087, -0.640974,
		-0.275075, 0.704944, 0.653749,
		0.915416, -0.015789, 0.402200,
		35.488556, 35.305531, 26.945112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028469, 36.046780, 26.943422>,  <34.847767, 35.316586, 26.663570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028469, 36.046780, 26.943422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366135, 35.842110, 26.879461>,  <35.568733, 35.719307, 26.841085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366135, 35.842110, 26.879461>,  <35.028469, 36.046780, 26.943422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366135, 35.842110, 26.879461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425161, 0.820706, -0.381679,
		0.326529, 0.254218, 0.910358,
		0.844167, -0.511678, -0.159901,
		35.619385, 35.688606, 26.831491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482048, 36.498505, 27.169493>,  <35.028469, 36.046780, 26.943422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482048, 36.498505, 27.169493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670296, 36.258347, 26.910868>,  <35.783245, 36.114250, 26.755692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670296, 36.258347, 26.910868>,  <35.482048, 36.498505, 27.169493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670296, 36.258347, 26.910868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498996, 0.785451, -0.366155,
		0.727682, -0.150313, 0.669242,
		0.470619, -0.600394, -0.646564,
		35.811481, 36.078228, 26.716898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760231, 36.937729, 27.654177>,  <35.482048, 36.498505, 27.169493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760231, 36.937729, 27.654177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610966, 37.285198, 27.784500>,  <35.521408, 37.493679, 27.862694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610966, 37.285198, 27.784500>,  <35.760231, 36.937729, 27.654177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610966, 37.285198, 27.784500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157337, -0.405342, 0.900524,
		0.914327, 0.284781, 0.287934,
		-0.373163, 0.868676, 0.325809,
		35.499016, 37.545799, 27.882242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143795, 37.122849, 28.274967>,  <35.760231, 36.937729, 27.654177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143795, 37.122849, 28.274967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784515, 37.297306, 28.296963>,  <35.568947, 37.401981, 28.310160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784515, 37.297306, 28.296963>,  <36.143795, 37.122849, 28.274967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784515, 37.297306, 28.296963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172803, -0.465323, 0.868109,
		0.404210, 0.770229, 0.493318,
		-0.898195, 0.436145, 0.054990,
		35.515057, 37.428150, 28.313459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045212, 37.361744, 29.001368>,  <36.143795, 37.122849, 28.274967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045212, 37.361744, 29.001368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682243, 37.333496, 28.835665>,  <35.464462, 37.316547, 28.736244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682243, 37.333496, 28.835665>,  <36.045212, 37.361744, 29.001368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682243, 37.333496, 28.835665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373916, -0.314202, 0.872619,
		-0.191783, 0.946726, 0.258706,
		-0.907417, -0.070619, -0.414255,
		35.410019, 37.312309, 28.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596260, 37.530869, 29.590149>,  <36.045212, 37.361744, 29.001368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596260, 37.530869, 29.590149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349476, 37.367798, 29.320883>,  <35.201405, 37.269955, 29.159323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349476, 37.367798, 29.320883>,  <35.596260, 37.530869, 29.590149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349476, 37.367798, 29.320883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615462, -0.283142, 0.735553,
		-0.490472, 0.868117, -0.076224,
		-0.616964, -0.407681, -0.673166,
		35.164387, 37.245495, 29.118933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987774, 37.612030, 29.936504>,  <35.596260, 37.530869, 29.590149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987774, 37.612030, 29.936504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908699, 37.365028, 29.631977>,  <34.861252, 37.216827, 29.449261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908699, 37.365028, 29.631977>,  <34.987774, 37.612030, 29.936504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908699, 37.365028, 29.631977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815201, -0.327751, 0.477521,
		-0.544395, 0.715028, -0.438599,
		-0.197689, -0.617507, -0.761318,
		34.849392, 37.179775, 29.403582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322773, 37.715778, 29.794598>,  <34.987774, 37.612030, 29.936504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322773, 37.715778, 29.794598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405838, 37.345310, 29.668682>,  <34.455677, 37.123032, 29.593134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405838, 37.345310, 29.668682>,  <34.322773, 37.715778, 29.794598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405838, 37.345310, 29.668682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717904, -0.362886, 0.594077,
		-0.664446, 0.102618, -0.740258,
		0.207667, -0.926166, -0.314788,
		34.468140, 37.067459, 29.574245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658661, 37.463596, 29.482307>,  <34.322773, 37.715778, 29.794598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658661, 37.463596, 29.482307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902763, 37.169037, 29.599133>,  <34.049225, 36.992302, 29.669228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902763, 37.169037, 29.599133>,  <33.658661, 37.463596, 29.482307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902763, 37.169037, 29.599133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678924, -0.296182, 0.671817,
		-0.408220, -0.608272, -0.680707,
		0.610261, -0.736397, 0.292063,
		34.085842, 36.948116, 29.686752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257198, 37.024334, 29.583168>,  <33.658661, 37.463596, 29.482307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257198, 37.024334, 29.583168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556690, 36.882854, 29.807421>,  <33.736385, 36.797966, 29.941973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556690, 36.882854, 29.807421>,  <33.257198, 37.024334, 29.583168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556690, 36.882854, 29.807421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662358, -0.365667, 0.653888,
		-0.026275, -0.860921, -0.508059,
		0.748726, -0.353698, 0.560630,
		33.781307, 36.776745, 29.975609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977547, 36.417027, 29.887825>,  <33.257198, 37.024334, 29.583168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977547, 36.417027, 29.887825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304356, 36.486259, 30.107834>,  <33.500439, 36.527802, 30.239840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304356, 36.486259, 30.107834>,  <32.977547, 36.417027, 29.887825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304356, 36.486259, 30.107834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470165, -0.352239, 0.809242,
		0.333807, -0.919766, -0.206407,
		0.817018, 0.173085, 0.550021,
		33.549461, 36.538185, 30.272840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040581, 35.849373, 30.287420>,  <32.977547, 36.417027, 29.887825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040581, 35.849373, 30.287420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261169, 36.116894, 30.486851>,  <33.393524, 36.277409, 30.606508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261169, 36.116894, 30.486851>,  <33.040581, 35.849373, 30.287420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261169, 36.116894, 30.486851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544411, -0.164301, 0.822570,
		0.632056, -0.725054, 0.273498,
		0.551472, 0.668806, 0.498575,
		33.426613, 36.317535, 30.636423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228111, 35.523060, 31.011831>,  <33.040581, 35.849373, 30.287420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228111, 35.523060, 31.011831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245152, 35.922569, 31.021925>,  <33.255375, 36.162273, 31.027981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.245152, 35.922569, 31.021925>,  <33.228111, 35.523060, 31.011831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245152, 35.922569, 31.021925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359612, -0.008235, 0.933065,
		0.932129, -0.048823, 0.358821,
		0.042600, 0.998773, 0.025234,
		33.257931, 36.222202, 31.029495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591640, 35.699707, 31.625805>,  <33.228111, 35.523060, 31.011831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591640, 35.699707, 31.625805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377823, 36.020473, 31.519073>,  <33.249531, 36.212933, 31.455034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377823, 36.020473, 31.519073>,  <33.591640, 35.699707, 31.625805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377823, 36.020473, 31.519073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418200, 0.023377, 0.908054,
		0.734418, 0.596984, 0.322863,
		-0.534546, 0.801912, -0.266828,
		33.217461, 36.261047, 31.439026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707134, 36.198563, 32.152130>,  <33.591640, 35.699707, 31.625805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707134, 36.198563, 32.152130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374756, 36.315308, 31.962666>,  <33.175331, 36.385353, 31.848988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374756, 36.315308, 31.962666>,  <33.707134, 36.198563, 32.152130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374756, 36.315308, 31.962666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470810, 0.084740, 0.878155,
		0.296435, 0.952700, 0.066995,
		-0.830942, 0.291858, -0.473661,
		33.125473, 36.402866, 31.820568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558041, 36.787884, 32.482178>,  <33.707134, 36.198563, 32.152130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558041, 36.787884, 32.482178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209187, 36.648670, 32.344624>,  <32.999874, 36.565140, 32.262093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209187, 36.648670, 32.344624>,  <33.558041, 36.787884, 32.482178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209187, 36.648670, 32.344624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412332, 0.144474, 0.899505,
		-0.263380, 0.926281, -0.269507,
		-0.872131, -0.348038, -0.343884,
		32.947548, 36.544258, 32.241459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060455, 37.284004, 32.522652>,  <33.558041, 36.787884, 32.482178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060455, 37.284004, 32.522652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895432, 36.920200, 32.543007>,  <32.796417, 36.701920, 32.555218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895432, 36.920200, 32.543007>,  <33.060455, 37.284004, 32.522652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895432, 36.920200, 32.543007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359675, 0.213965, 0.908214,
		-0.836916, 0.356390, -0.415400,
		-0.412560, -0.909508, 0.050886,
		32.771664, 36.647346, 32.558273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607498, 37.654861, 32.914162>,  <33.060455, 37.284004, 32.522652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607498, 37.654861, 32.914162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843479, 37.664745, 33.236984>,  <33.985065, 37.670677, 33.430679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843479, 37.664745, 33.236984>,  <33.607498, 37.654861, 32.914162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843479, 37.664745, 33.236984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349784, 0.893053, -0.283033,
		-0.727743, 0.449273, 0.518213,
		0.589951, 0.024713, 0.807061,
		34.020466, 37.672157, 33.479103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545879, 38.221230, 33.460327>,  <33.607498, 37.654861, 32.914162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545879, 38.221230, 33.460327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910542, 38.093025, 33.357445>,  <34.129341, 38.016102, 33.295715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910542, 38.093025, 33.357445>,  <33.545879, 38.221230, 33.460327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910542, 38.093025, 33.357445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240849, 0.923834, -0.297528,
		0.332974, 0.209297, 0.919415,
		0.911658, -0.320509, -0.257204,
		34.184040, 37.996872, 33.280285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964882, 38.846996, 33.572170>,  <33.545879, 38.221230, 33.460327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964882, 38.846996, 33.572170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214394, 38.610680, 33.367481>,  <34.364101, 38.468887, 33.244667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214394, 38.610680, 33.367481>,  <33.964882, 38.846996, 33.572170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214394, 38.610680, 33.367481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398719, 0.803643, -0.441792,
		0.672248, 0.071550, 0.736860,
		0.623783, -0.590794, -0.511720,
		34.401527, 38.433441, 33.213966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632614, 39.220936, 33.495670>,  <33.964882, 38.846996, 33.572170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632614, 39.220936, 33.495670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627625, 38.960598, 33.192028>,  <34.624630, 38.804398, 33.009842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627625, 38.960598, 33.192028>,  <34.632614, 39.220936, 33.495670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627625, 38.960598, 33.192028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555019, 0.626976, -0.546676,
		0.831744, -0.428140, 0.353408,
		-0.012476, -0.650843, -0.759110,
		34.623882, 38.765347, 32.964294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371437, 39.159409, 33.274258>,  <34.632614, 39.220936, 33.495670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371437, 39.159409, 33.274258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149181, 39.039616, 32.964012>,  <35.015827, 38.967739, 32.777866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149181, 39.039616, 32.964012>,  <35.371437, 39.159409, 33.274258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149181, 39.039616, 32.964012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652750, 0.420657, -0.630052,
		0.514957, -0.856362, -0.038244,
		-0.555641, -0.299486, -0.775610,
		34.982491, 38.949768, 32.731331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824440, 38.998222, 32.732544>,  <35.371437, 39.159409, 33.274258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824440, 38.998222, 32.732544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.470512, 39.045383, 32.552235>,  <35.258156, 39.073681, 32.444050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.470512, 39.045383, 32.552235>,  <35.824440, 38.998222, 32.732544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470512, 39.045383, 32.552235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465735, 0.252067, -0.848265,
		0.013611, -0.960501, -0.277945,
		-0.884820, 0.117902, -0.450769,
		35.205067, 39.080753, 32.417004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933372, 38.699905, 32.053402>,  <35.824440, 38.998222, 32.732544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933372, 38.699905, 32.053402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615475, 38.936485, 31.998884>,  <35.424736, 39.078434, 31.966173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615475, 38.936485, 31.998884>,  <35.933372, 38.699905, 32.053402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615475, 38.936485, 31.998884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464417, 0.448003, -0.763943,
		-0.390771, -0.670435, -0.630725,
		-0.794742, 0.591447, -0.136295,
		35.377052, 39.113918, 31.957996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784187, 38.650372, 31.334972>,  <35.933372, 38.699905, 32.053402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784187, 38.650372, 31.334972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606209, 38.989685, 31.449821>,  <35.499420, 39.193272, 31.518732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606209, 38.989685, 31.449821>,  <35.784187, 38.650372, 31.334972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606209, 38.989685, 31.449821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523264, 0.506446, -0.685352,
		-0.726783, -0.154706, -0.669217,
		-0.444951, 0.848280, 0.287124,
		35.472725, 39.244167, 31.535959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417786, 38.907162, 30.706652>,  <35.784187, 38.650372, 31.334972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417786, 38.907162, 30.706652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479103, 39.208435, 30.962534>,  <35.515892, 39.389198, 31.116064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.479103, 39.208435, 30.962534>,  <35.417786, 38.907162, 30.706652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479103, 39.208435, 30.962534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464438, 0.516490, -0.719400,
		-0.872238, 0.407380, -0.270632,
		0.153291, 0.753180, 0.639705,
		35.525089, 39.434387, 31.154446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485889, 39.587139, 30.117777>,  <35.417786, 38.907162, 30.706652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485889, 39.587139, 30.117777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622311, 39.668907, 30.484795>,  <35.704163, 39.717968, 30.705006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622311, 39.668907, 30.484795>,  <35.485889, 39.587139, 30.117777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622311, 39.668907, 30.484795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546196, 0.751310, -0.370410,
		-0.765083, 0.627490, 0.144583,
		0.341056, 0.204424, 0.917547,
		35.724628, 39.730236, 30.760059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377029, 40.291306, 30.185253>,  <35.485889, 39.587139, 30.117777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377029, 40.291306, 30.185253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659084, 40.181061, 30.446579>,  <35.828316, 40.114914, 30.603374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659084, 40.181061, 30.446579>,  <35.377029, 40.291306, 30.185253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659084, 40.181061, 30.446579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570806, 0.767256, -0.292401,
		-0.420668, 0.579097, 0.698344,
		0.705138, -0.275615, 0.653313,
		35.870625, 40.098377, 30.642572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628952, 40.905579, 30.531172>,  <35.377029, 40.291306, 30.185253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628952, 40.905579, 30.531172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928017, 40.643291, 30.573181>,  <36.107456, 40.485920, 30.598387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.928017, 40.643291, 30.573181>,  <35.628952, 40.905579, 30.531172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928017, 40.643291, 30.573181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661519, 0.721547, -0.204358,
		0.058221, 0.222267, 0.973246,
		0.747665, -0.655719, 0.105025,
		36.152317, 40.446575, 30.604689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258465, 41.331524, 30.798937>,  <35.628952, 40.905579, 30.531172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258465, 41.331524, 30.798937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430710, 40.999493, 30.657207>,  <36.534058, 40.800274, 30.572170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430710, 40.999493, 30.657207>,  <36.258465, 41.331524, 30.798937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430710, 40.999493, 30.657207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696500, 0.555304, -0.454452,
		0.573986, -0.051091, 0.817270,
		0.430615, -0.830077, -0.354321,
		36.559895, 40.750469, 30.550911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995266, 41.410477, 30.899118>,  <36.258465, 41.331524, 30.798937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995266, 41.410477, 30.899118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977318, 41.140766, 30.604273>,  <36.966549, 40.978939, 30.427364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977318, 41.140766, 30.604273>,  <36.995266, 41.410477, 30.899118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977318, 41.140766, 30.604273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713782, 0.494591, -0.495878,
		0.698929, -0.548390, 0.459093,
		-0.044872, -0.674276, -0.737115,
		36.963856, 40.938484, 30.383139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666927, 41.364506, 30.599226>,  <36.995266, 41.410477, 30.899118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666927, 41.364506, 30.599226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484081, 41.147449, 30.317348>,  <37.374374, 41.017216, 30.148222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484081, 41.147449, 30.317348>,  <37.666927, 41.364506, 30.599226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484081, 41.147449, 30.317348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549228, 0.450979, -0.703539,
		0.699567, -0.708635, 0.091882,
		-0.457115, -0.542637, -0.704692,
		37.346947, 40.984657, 30.105942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151501, 40.952114, 30.270145>,  <37.666927, 41.364506, 30.599226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151501, 40.952114, 30.270145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838352, 41.034958, 30.035463>,  <37.650463, 41.084663, 29.894653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838352, 41.034958, 30.035463>,  <38.151501, 40.952114, 30.270145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838352, 41.034958, 30.035463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617329, 0.376172, -0.690941,
		0.077603, -0.903106, -0.422347,
		-0.782868, 0.207108, -0.586706,
		37.603493, 41.097092, 29.859451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292736, 40.641052, 29.628719>,  <38.151501, 40.952114, 30.270145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292736, 40.641052, 29.628719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014751, 40.914364, 29.539137>,  <37.847961, 41.078350, 29.485388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014751, 40.914364, 29.539137>,  <38.292736, 40.641052, 29.628719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014751, 40.914364, 29.539137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526180, 0.270981, -0.806042,
		-0.490064, -0.678010, -0.547850,
		-0.694962, 0.683280, -0.223958,
		37.806263, 41.119347, 29.471951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081093, 40.606014, 28.946785>,  <38.292736, 40.641052, 29.628719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081093, 40.606014, 28.946785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014088, 40.986687, 29.049730>,  <37.973885, 41.215092, 29.111498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014088, 40.986687, 29.049730>,  <38.081093, 40.606014, 28.946785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014088, 40.986687, 29.049730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465724, 0.306477, -0.830165,
		-0.868931, -0.019205, -0.494561,
		-0.167515, 0.951684, 0.257363,
		37.963833, 41.272194, 29.126940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853909, 40.963505, 28.334646>,  <38.081093, 40.606014, 28.946785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853909, 40.963505, 28.334646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927303, 41.279984, 28.567999>,  <37.971340, 41.469872, 28.708010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927303, 41.279984, 28.567999>,  <37.853909, 40.963505, 28.334646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927303, 41.279984, 28.567999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412416, 0.476746, -0.776290,
		-0.892327, 0.383032, -0.238830,
		0.183482, 0.791201, 0.583382,
		37.982349, 41.517345, 28.743013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682697, 41.531292, 27.954977>,  <37.853909, 40.963505, 28.334646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682697, 41.531292, 27.954977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906979, 41.677109, 28.252359>,  <38.041546, 41.764599, 28.430788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906979, 41.677109, 28.252359>,  <37.682697, 41.531292, 27.954977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906979, 41.677109, 28.252359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538519, 0.521491, -0.661849,
		-0.628979, 0.771462, 0.096085,
		0.560699, 0.364546, 0.743454,
		38.075188, 41.786472, 28.475395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536713, 42.217121, 27.928770>,  <37.682697, 41.531292, 27.954977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536713, 42.217121, 27.928770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894176, 42.135380, 28.088577>,  <38.108654, 42.086334, 28.184462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894176, 42.135380, 28.088577>,  <37.536713, 42.217121, 27.928770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894176, 42.135380, 28.088577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441394, 0.560803, -0.700479,
		-0.080910, 0.802335, 0.591365,
		0.893658, -0.204349, 0.399520,
		38.162273, 42.074074, 28.208433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923431, 42.843063, 27.801254>,  <37.536713, 42.217121, 27.928770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923431, 42.843063, 27.801254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174660, 42.535828, 27.851166>,  <38.325397, 42.351486, 27.881113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174660, 42.535828, 27.851166>,  <37.923431, 42.843063, 27.801254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174660, 42.535828, 27.851166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661688, 0.442769, -0.605083,
		0.409510, 0.462597, 0.786324,
		0.628069, -0.768089, 0.124777,
		38.363079, 42.305401, 27.888599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539780, 43.183056, 27.684860>,  <37.923431, 42.843063, 27.801254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539780, 43.183056, 27.684860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672905, 42.805984, 27.675144>,  <38.752781, 42.579742, 27.669315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672905, 42.805984, 27.675144>,  <38.539780, 43.183056, 27.684860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672905, 42.805984, 27.675144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791382, 0.293221, -0.536410,
		0.512785, 0.159303, 0.843608,
		0.332815, -0.942679, -0.024290,
		38.772751, 42.523182, 27.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244202, 43.208405, 27.813154>,  <38.539780, 43.183056, 27.684860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244202, 43.208405, 27.813154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195137, 42.853340, 27.635609>,  <39.165699, 42.640301, 27.529081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195137, 42.853340, 27.635609>,  <39.244202, 43.208405, 27.813154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195137, 42.853340, 27.635609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785458, 0.186553, -0.590130,
		0.606639, -0.421022, 0.674337,
		-0.122658, -0.887659, -0.443865,
		39.158340, 42.587044, 27.502449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939140, 42.905724, 27.746597>,  <39.244202, 43.208405, 27.813154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939140, 42.905724, 27.746597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.730583, 42.710396, 27.466684>,  <39.605450, 42.593201, 27.298737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.730583, 42.710396, 27.466684>,  <39.939140, 42.905724, 27.746597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730583, 42.710396, 27.466684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734067, 0.161457, -0.659604,
		0.435081, -0.857600, 0.274275,
		-0.521393, -0.488318, -0.699783,
		39.574165, 42.563900, 27.256750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389534, 42.404297, 27.436731>,  <39.939140, 42.905724, 27.746597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389534, 42.404297, 27.436731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.091675, 42.484154, 27.181971>,  <39.912960, 42.532066, 27.029114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.091675, 42.484154, 27.181971>,  <40.389534, 42.404297, 27.436731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091675, 42.484154, 27.181971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664981, 0.139736, -0.733671,
		-0.057473, -0.969854, -0.236812,
		-0.744645, 0.199642, -0.636904,
		39.868282, 42.544044, 26.990900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577286, 42.071510, 26.866505>,  <40.389534, 42.404297, 27.436731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577286, 42.071510, 26.866505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.306351, 42.329399, 26.724770>,  <40.143791, 42.484131, 26.639729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.306351, 42.329399, 26.724770>,  <40.577286, 42.071510, 26.866505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306351, 42.329399, 26.724770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548026, 0.120856, -0.827684,
		-0.490800, -0.754805, -0.435183,
		-0.677335, 0.644719, -0.354337,
		40.103149, 42.522816, 26.618469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954620, 41.411964, 26.554396>,  <40.577286, 42.071510, 26.866505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954620, 41.411964, 26.554396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332626, 41.389347, 26.683231>,  <41.559429, 41.375774, 26.760532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332626, 41.389347, 26.683231>,  <40.954620, 41.411964, 26.554396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332626, 41.389347, 26.683231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294963, -0.572663, 0.764889,
		0.141197, -0.817839, -0.557856,
		0.945019, -0.056546, 0.322090,
		41.616131, 41.372383, 26.779858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925091, 40.781784, 26.953476>,  <40.954620, 41.411964, 26.554396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925091, 40.781784, 26.953476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285900, 40.914978, 27.063362>,  <41.502388, 40.994896, 27.129293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285900, 40.914978, 27.063362>,  <40.925091, 40.781784, 26.953476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285900, 40.914978, 27.063362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114006, -0.430034, 0.895585,
		0.416354, -0.839161, -0.349940,
		0.902027, 0.332985, 0.274716,
		41.556507, 41.014874, 27.145777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306530, 40.223404, 27.068792>,  <40.925091, 40.781784, 26.953476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306530, 40.223404, 27.068792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.450397, 40.527431, 27.285284>,  <41.536720, 40.709850, 27.415178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.450397, 40.527431, 27.285284>,  <41.306530, 40.223404, 27.068792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450397, 40.527431, 27.285284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390637, -0.404107, 0.827103,
		0.847371, -0.508911, 0.151566,
		0.359673, 0.760071, 0.541228,
		41.558300, 40.755451, 27.447653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663704, 39.929691, 27.608713>,  <41.306530, 40.223404, 27.068792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663704, 39.929691, 27.608713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.564312, 40.299244, 27.725124>,  <41.504677, 40.520977, 27.794971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.564312, 40.299244, 27.725124>,  <41.663704, 39.929691, 27.608713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564312, 40.299244, 27.725124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233441, -0.348713, 0.907692,
		0.940087, 0.157603, 0.302320,
		-0.248478, 0.923883, 0.291030,
		41.489769, 40.576408, 27.812433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040039, 39.989502, 28.232615>,  <41.663704, 39.929691, 27.608713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040039, 39.989502, 28.232615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.756500, 40.271381, 28.244822>,  <41.586376, 40.440510, 28.252146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.756500, 40.271381, 28.244822>,  <42.040039, 39.989502, 28.232615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756500, 40.271381, 28.244822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389480, -0.427114, 0.816014,
		0.588079, 0.566546, 0.577225,
		-0.708851, 0.704698, 0.030518,
		41.543846, 40.482792, 28.253977>
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
