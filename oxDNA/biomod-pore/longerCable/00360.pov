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
	<24.376787, 34.596920, 34.994438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167915, 34.929787, 35.069088>,  <24.042591, 35.129505, 35.113880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167915, 34.929787, 35.069088>,  <24.376787, 34.596920, 34.994438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167915, 34.929787, 35.069088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713399, 0.306308, 0.630268,
		0.467321, 0.462253, -0.753613,
		-0.522181, 0.832164, 0.186627,
		24.011261, 35.179436, 35.125076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843660, 35.193066, 34.863708>,  <24.376787, 34.596920, 34.994438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843660, 35.193066, 34.863708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559259, 35.192451, 35.144985>,  <24.388618, 35.192081, 35.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559259, 35.192451, 35.144985>,  <24.843660, 35.193066, 34.863708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559259, 35.192451, 35.144985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702160, -0.055640, 0.709842,
		0.038034, 0.998450, 0.040639,
		-0.711003, -0.001537, 0.703187,
		24.345959, 35.191990, 35.355942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142410, 35.196957, 35.551121>,  <24.843660, 35.193066, 34.863708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142410, 35.196957, 35.551121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527971, 35.293640, 35.595783>,  <25.759308, 35.351650, 35.622581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527971, 35.293640, 35.595783>,  <25.142410, 35.196957, 35.551121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527971, 35.293640, 35.595783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018329, -0.358136, 0.933490,
		0.265626, -0.901839, -0.340777,
		0.963902, 0.241713, 0.111660,
		25.817142, 35.366154, 35.629280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426661, 34.599503, 35.858501>,  <25.142410, 35.196957, 35.551121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426661, 34.599503, 35.858501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673088, 34.883904, 35.994114>,  <25.820946, 35.054543, 36.075481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673088, 34.883904, 35.994114>,  <25.426661, 34.599503, 35.858501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673088, 34.883904, 35.994114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033060, -0.406688, 0.912969,
		0.786998, -0.573661, -0.227042,
		0.616070, 0.710998, 0.339028,
		25.857908, 35.097202, 36.095821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890667, 34.282356, 36.212025>,  <25.426661, 34.599503, 35.858501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890667, 34.282356, 36.212025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922678, 34.655758, 36.351833>,  <25.941885, 34.879799, 36.435719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922678, 34.655758, 36.351833>,  <25.890667, 34.282356, 36.212025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922678, 34.655758, 36.351833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012519, -0.349674, 0.936788,
		0.996714, -0.079343, -0.016296,
		0.080025, 0.933506, 0.349518,
		25.946686, 34.935810, 36.456688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371981, 34.263634, 36.650089>,  <25.890667, 34.282356, 36.212025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371981, 34.263634, 36.650089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193998, 34.602024, 36.767628>,  <26.087208, 34.805058, 36.838150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193998, 34.602024, 36.767628>,  <26.371981, 34.263634, 36.650089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193998, 34.602024, 36.767628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151624, -0.394543, 0.906281,
		0.882623, 0.358702, 0.303824,
		-0.444957, 0.845972, 0.293844,
		26.060511, 34.855816, 36.855782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650173, 34.435863, 37.365959>,  <26.371981, 34.263634, 36.650089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650173, 34.435863, 37.365959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333628, 34.677200, 37.326519>,  <26.143700, 34.822002, 37.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333628, 34.677200, 37.326519>,  <26.650173, 34.435863, 37.365959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333628, 34.677200, 37.326519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320235, -0.271712, 0.907536,
		0.520761, 0.749769, 0.408234,
		-0.791364, 0.603340, -0.098605,
		26.096218, 34.858204, 37.296936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741934, 34.846916, 37.946327>,  <26.650173, 34.435863, 37.365959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741934, 34.846916, 37.946327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357767, 34.847504, 37.834904>,  <26.127266, 34.847858, 37.768051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357767, 34.847504, 37.834904>,  <26.741934, 34.846916, 37.946327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357767, 34.847504, 37.834904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274787, -0.169004, 0.946536,
		-0.045684, 0.985614, 0.162719,
		-0.960419, 0.001472, -0.278555,
		26.069641, 34.847946, 37.751339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414440, 35.198044, 38.569237>,  <26.741934, 34.846916, 37.946327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414440, 35.198044, 38.569237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087055, 35.044613, 38.398125>,  <25.890625, 34.952557, 38.295456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087055, 35.044613, 38.398125>,  <26.414440, 35.198044, 38.569237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087055, 35.044613, 38.398125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444129, -0.049991, 0.894567,
		-0.364517, 0.922156, -0.129440,
		-0.818460, -0.383573, -0.427779,
		25.841516, 34.929543, 38.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882292, 35.588085, 38.673840>,  <26.414440, 35.198044, 38.569237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882292, 35.588085, 38.673840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744833, 35.215630, 38.625031>,  <25.662357, 34.992157, 38.595745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744833, 35.215630, 38.625031>,  <25.882292, 35.588085, 38.673840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744833, 35.215630, 38.625031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323833, -0.004473, 0.946104,
		-0.881498, 0.364642, -0.299996,
		-0.343647, -0.931137, -0.122026,
		25.641739, 34.936287, 38.588421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439947, 35.533913, 39.139435>,  <25.882292, 35.588085, 38.673840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439947, 35.533913, 39.139435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513065, 35.149849, 39.054874>,  <25.556936, 34.919411, 39.004139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513065, 35.149849, 39.054874>,  <25.439947, 35.533913, 39.139435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513065, 35.149849, 39.054874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279682, -0.256921, 0.925078,
		-0.942531, -0.109975, -0.315501,
		0.182794, -0.960155, -0.211398,
		25.567904, 34.861801, 38.991455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788815, 35.147602, 39.306843>,  <25.439947, 35.533913, 39.139435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788815, 35.147602, 39.306843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112936, 34.915779, 39.341537>,  <25.307409, 34.776684, 39.362354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112936, 34.915779, 39.341537>,  <24.788815, 35.147602, 39.306843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112936, 34.915779, 39.341537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329472, -0.328158, 0.885302,
		-0.484624, -0.745937, -0.456856,
		0.810301, -0.579560, 0.086732,
		25.356026, 34.741913, 39.367558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486979, 34.684879, 39.755661>,  <24.788815, 35.147602, 39.306843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486979, 34.684879, 39.755661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.875925, 34.594234, 39.778118>,  <25.109293, 34.539848, 39.791592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.875925, 34.594234, 39.778118>,  <24.486979, 34.684879, 39.755661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875925, 34.594234, 39.778118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205539, -0.716879, 0.666212,
		-0.110723, -0.659342, -0.743646,
		0.972365, -0.226613, 0.056145,
		25.167635, 34.526249, 39.794960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.632820, 33.981720, 39.700401>,  <24.486979, 34.684879, 39.755661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.632820, 33.981720, 39.700401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886852, 34.130665, 39.971111>,  <25.039272, 34.220032, 40.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.886852, 34.130665, 39.971111>,  <24.632820, 33.981720, 39.700401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.886852, 34.130665, 39.971111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285340, -0.701086, 0.653497,
		0.717812, -0.608134, -0.338997,
		0.635080, 0.372359, 0.676773,
		25.077375, 34.242374, 40.174145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062862, 33.551632, 40.110577>,  <24.632820, 33.981720, 39.700401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062862, 33.551632, 40.110577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948294, 33.849026, 40.352303>,  <24.879553, 34.027462, 40.497337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948294, 33.849026, 40.352303>,  <25.062862, 33.551632, 40.110577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948294, 33.849026, 40.352303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500797, -0.653891, 0.567123,
		0.816801, -0.140200, 0.559625,
		-0.286423, 0.743485, 0.604311,
		24.862368, 34.072071, 40.533596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565561, 33.616852, 39.632103>,  <25.062862, 33.551632, 40.110577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565561, 33.616852, 39.632103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471189, 33.976101, 39.483665>,  <25.414566, 34.191650, 39.394604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471189, 33.976101, 39.483665>,  <25.565561, 33.616852, 39.632103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471189, 33.976101, 39.483665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290471, -0.299242, -0.908890,
		-0.927342, -0.322228, -0.190278,
		-0.235930, 0.898122, -0.371097,
		25.400410, 34.245537, 39.372337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597670, 33.559845, 38.893707>,  <25.565561, 33.616852, 39.632103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597670, 33.559845, 38.893707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573343, 33.959019, 38.901924>,  <25.558746, 34.198524, 38.906857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573343, 33.959019, 38.901924>,  <25.597670, 33.559845, 38.893707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573343, 33.959019, 38.901924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107323, 0.027002, -0.993858,
		-0.992362, -0.058239, -0.108744,
		-0.060818, 0.997938, 0.020545,
		25.555098, 34.258400, 38.908089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129473, 33.751335, 38.322815>,  <25.597670, 33.559845, 38.893707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129473, 33.751335, 38.322815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321018, 34.093788, 38.400509>,  <25.435946, 34.299259, 38.447124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321018, 34.093788, 38.400509>,  <25.129473, 33.751335, 38.322815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321018, 34.093788, 38.400509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028595, 0.205923, -0.978150,
		-0.877424, 0.473954, 0.074128,
		0.478863, 0.856133, 0.194235,
		25.464678, 34.350628, 38.458778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924427, 34.175293, 37.806805>,  <25.129473, 33.751335, 38.322815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924427, 34.175293, 37.806805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225565, 34.396801, 37.949108>,  <25.406246, 34.529705, 38.034492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225565, 34.396801, 37.949108>,  <24.924427, 34.175293, 37.806805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225565, 34.396801, 37.949108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128028, 0.406981, -0.904420,
		-0.645629, 0.726433, 0.235494,
		0.752842, 0.553770, 0.355762,
		25.451418, 34.562931, 38.055836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803730, 34.785652, 37.466675>,  <24.924427, 34.175293, 37.806805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803730, 34.785652, 37.466675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195343, 34.808075, 37.545010>,  <25.430311, 34.821529, 37.592010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195343, 34.808075, 37.545010>,  <24.803730, 34.785652, 37.466675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195343, 34.808075, 37.545010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176985, 0.241872, -0.954030,
		-0.100844, 0.968688, 0.226880,
		0.979034, 0.056054, 0.195835,
		25.489054, 34.824890, 37.603760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522131, 34.863045, 36.873268>,  <24.803730, 34.785652, 37.466675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522131, 34.863045, 36.873268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780136, 34.572899, 36.777092>,  <24.934938, 34.398811, 36.719387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.780136, 34.572899, 36.777092>,  <24.522131, 34.863045, 36.873268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780136, 34.572899, 36.777092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586985, 0.671751, -0.451885,
		0.489293, 0.150339, 0.859064,
		0.645012, -0.725361, -0.240437,
		24.973640, 34.355289, 36.704960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967150, 35.466438, 37.178982>,  <24.522131, 34.863045, 36.873268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967150, 35.466438, 37.178982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309875, 35.262238, 37.207996>,  <25.515511, 35.139717, 37.225403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309875, 35.262238, 37.207996>,  <24.967150, 35.466438, 37.178982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309875, 35.262238, 37.207996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310233, 0.398025, -0.863326,
		0.411856, 0.762212, 0.499407,
		0.856814, -0.510499, 0.072534,
		25.566919, 35.109089, 37.229755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483141, 35.961311, 37.187382>,  <24.967150, 35.466438, 37.178982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483141, 35.961311, 37.187382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647779, 35.618336, 37.063847>,  <25.746563, 35.412548, 36.989727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647779, 35.618336, 37.063847>,  <25.483141, 35.961311, 37.187382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647779, 35.618336, 37.063847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195043, 0.413895, -0.889185,
		0.890251, 0.305748, 0.337595,
		0.411595, -0.857444, -0.308836,
		25.771257, 35.361103, 36.971195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507212, 35.777206, 36.486656>,  <25.483141, 35.961311, 37.187382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507212, 35.777206, 36.486656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612465, 36.120094, 36.309597>,  <25.675617, 36.325825, 36.203362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612465, 36.120094, 36.309597>,  <25.507212, 35.777206, 36.486656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612465, 36.120094, 36.309597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258957, 0.379226, 0.888329,
		0.929356, -0.348377, -0.122194,
		0.263134, 0.857217, -0.442651,
		25.691404, 36.377258, 36.176804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067905, 36.164783, 36.795757>,  <25.507212, 35.777206, 36.486656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067905, 36.164783, 36.795757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062569, 35.773647, 36.712177>,  <26.059366, 35.538967, 36.662029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062569, 35.773647, 36.712177>,  <26.067905, 36.164783, 36.795757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062569, 35.773647, 36.712177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124418, 0.205718, -0.970670,
		0.992140, -0.038947, 0.118916,
		-0.013341, -0.977836, -0.208946,
		26.058567, 35.480297, 36.649494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715733, 35.958389, 36.445591>,  <26.067905, 36.164783, 36.795757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715733, 35.958389, 36.445591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408377, 35.727322, 36.335403>,  <26.223963, 35.588680, 36.269291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408377, 35.727322, 36.335403>,  <26.715733, 35.958389, 36.445591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408377, 35.727322, 36.335403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275873, 0.089420, -0.957026,
		0.577473, -0.811361, 0.090653,
		-0.768388, -0.577665, -0.275471,
		26.177860, 35.554024, 36.252762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039207, 35.701431, 35.981289>,  <26.715733, 35.958389, 36.445591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039207, 35.701431, 35.981289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669762, 35.582325, 35.884727>,  <26.448095, 35.510860, 35.826790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669762, 35.582325, 35.884727>,  <27.039207, 35.701431, 35.981289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669762, 35.582325, 35.884727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247657, 0.017146, -0.968696,
		0.292583, -0.954485, 0.057907,
		-0.923613, -0.297765, -0.241402,
		26.392677, 35.492996, 35.812305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104052, 35.324562, 35.277607>,  <27.039207, 35.701431, 35.981289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104052, 35.324562, 35.277607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710855, 35.395760, 35.259514>,  <26.474937, 35.438477, 35.248657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710855, 35.395760, 35.259514>,  <27.104052, 35.324562, 35.277607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710855, 35.395760, 35.259514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021078, -0.135302, -0.990580,
		-0.182432, -0.974686, 0.129249,
		-0.982993, 0.177989, -0.045228,
		26.415958, 35.449158, 35.245945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591038, 34.772373, 34.934929>,  <27.104052, 35.324562, 35.277607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591038, 34.772373, 34.934929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544266, 35.165306, 34.876476>,  <26.516203, 35.401066, 34.841404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544266, 35.165306, 34.876476>,  <26.591038, 34.772373, 34.934929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544266, 35.165306, 34.876476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207365, -0.119752, -0.970906,
		-0.971250, -0.143831, -0.189698,
		-0.116930, 0.982330, -0.146135,
		26.509186, 35.460007, 34.832634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385895, 34.060349, 34.960434>,  <26.591038, 34.772373, 34.934929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385895, 34.060349, 34.960434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293877, 33.990513, 35.343391>,  <26.238667, 33.948612, 35.573166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293877, 33.990513, 35.343391>,  <26.385895, 34.060349, 34.960434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293877, 33.990513, 35.343391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738339, -0.609574, -0.288574,
		0.633982, -0.773265, 0.011323,
		-0.230046, -0.174590, 0.957391,
		26.224863, 33.938137, 35.630608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226698, 33.246651, 35.069798>,  <26.385895, 34.060349, 34.960434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226698, 33.246651, 35.069798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085941, 33.467804, 35.371922>,  <26.001488, 33.600498, 35.553196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085941, 33.467804, 35.371922>,  <26.226698, 33.246651, 35.069798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085941, 33.467804, 35.371922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833468, -0.552336, 0.016002,
		0.426030, -0.623893, 0.655176,
		-0.351894, 0.552886, 0.755307,
		25.980373, 33.633671, 35.598515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263212, 32.558720, 34.589001>,  <26.226698, 33.246651, 35.069798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263212, 32.558720, 34.589001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587029, 32.340313, 34.675266>,  <26.781319, 32.209270, 34.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587029, 32.340313, 34.675266>,  <26.263212, 32.558720, 34.589001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587029, 32.340313, 34.675266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217005, -0.619663, -0.754272,
		0.545485, 0.563812, -0.620131,
		0.809540, -0.546016, 0.215667,
		26.829891, 32.176510, 34.739967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642479, 32.477100, 33.974380>,  <26.263212, 32.558720, 34.589001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642479, 32.477100, 33.974380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754818, 32.166912, 34.200573>,  <26.822222, 31.980799, 34.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754818, 32.166912, 34.200573>,  <26.642479, 32.477100, 33.974380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754818, 32.166912, 34.200573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199486, -0.623497, -0.755948,
		0.938792, 0.099498, -0.329801,
		0.280845, -0.775469, 0.565486,
		26.839071, 31.934271, 34.370220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074675, 32.092457, 33.573277>,  <26.642479, 32.477100, 33.974380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074675, 32.092457, 33.573277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979416, 31.821852, 33.852020>,  <26.922260, 31.659489, 34.019268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979416, 31.821852, 33.852020>,  <27.074675, 32.092457, 33.573277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979416, 31.821852, 33.852020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267852, -0.643930, -0.716665,
		0.933564, -0.357327, -0.027856,
		-0.238147, -0.676514, 0.696861,
		26.907972, 31.618898, 34.061077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419893, 31.474405, 33.461136>,  <27.074675, 32.092457, 33.573277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419893, 31.474405, 33.461136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061296, 31.431538, 33.633095>,  <26.846138, 31.405817, 33.736271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061296, 31.431538, 33.633095>,  <27.419893, 31.474405, 33.461136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061296, 31.431538, 33.633095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262313, -0.653579, -0.709948,
		0.357059, -0.749232, 0.557817,
		-0.896494, -0.107170, 0.429899,
		26.792349, 31.399387, 33.762066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188919, 30.902864, 33.130383>,  <27.419893, 31.474405, 33.461136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188919, 30.902864, 33.130383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890949, 31.001514, 33.378338>,  <26.712168, 31.060703, 33.527111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890949, 31.001514, 33.378338>,  <27.188919, 30.902864, 33.130383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890949, 31.001514, 33.378338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576844, -0.704901, -0.412753,
		0.335166, -0.665050, 0.667362,
		-0.744926, 0.246623, 0.619889,
		26.667471, 31.075502, 33.564304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097223, 30.412258, 33.701103>,  <27.188919, 30.902864, 33.130383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097223, 30.412258, 33.701103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752666, 30.585867, 33.595554>,  <26.545933, 30.690033, 33.532227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752666, 30.585867, 33.595554>,  <27.097223, 30.412258, 33.701103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752666, 30.585867, 33.595554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387675, -0.897423, -0.210572,
		-0.328196, -0.079089, 0.941293,
		-0.861392, 0.434024, -0.263870,
		26.494249, 30.716074, 33.516392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518547, 30.000851, 33.998562>,  <27.097223, 30.412258, 33.701103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518547, 30.000851, 33.998562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400557, 30.218254, 33.684216>,  <26.329763, 30.348696, 33.495605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400557, 30.218254, 33.684216>,  <26.518547, 30.000851, 33.998562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400557, 30.218254, 33.684216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352716, -0.826313, -0.439088,
		-0.888021, 0.147669, 0.435445,
		-0.294974, 0.543507, -0.785869,
		26.312063, 30.381306, 33.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851301, 29.872852, 33.890076>,  <26.518547, 30.000851, 33.998562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851301, 29.872852, 33.890076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997255, 29.997259, 33.539047>,  <26.084827, 30.071903, 33.328430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997255, 29.997259, 33.539047>,  <25.851301, 29.872852, 33.890076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997255, 29.997259, 33.539047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391980, -0.803635, -0.447797,
		-0.844518, 0.507384, -0.171320,
		0.364884, 0.311019, -0.877569,
		26.106720, 30.090565, 33.275776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982950, 29.426060, 33.265591>,  <25.851301, 29.872852, 33.890076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982950, 29.426060, 33.265591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813057, 29.514977, 32.914551>,  <25.711121, 29.568327, 32.703926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813057, 29.514977, 32.914551>,  <25.982950, 29.426060, 33.265591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813057, 29.514977, 32.914551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111149, 0.949248, 0.294233,
		0.898470, 0.222515, -0.378469,
		-0.424733, 0.222293, -0.877603,
		25.685637, 29.581665, 32.651268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407972, 29.751081, 32.900009>,  <25.982950, 29.426060, 33.265591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407972, 29.751081, 32.900009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023724, 29.854767, 32.859978>,  <25.793175, 29.916979, 32.835957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023724, 29.854767, 32.859978>,  <26.407972, 29.751081, 32.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023724, 29.854767, 32.859978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237716, 0.953157, 0.187034,
		0.143875, 0.155878, -0.977242,
		-0.960620, 0.259216, -0.100081,
		25.735538, 29.932531, 32.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213644, 30.306545, 32.465961>,  <26.407972, 29.751081, 32.900009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213644, 30.306545, 32.465961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968174, 30.293543, 32.781517>,  <25.820892, 30.285742, 32.970852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968174, 30.293543, 32.781517>,  <26.213644, 30.306545, 32.465961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968174, 30.293543, 32.781517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355634, 0.880679, 0.312936,
		-0.704930, 0.472597, -0.528892,
		-0.613676, -0.032506, 0.788888,
		25.784071, 30.283791, 33.018185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801224, 31.042376, 32.548599>,  <26.213644, 30.306545, 32.465961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801224, 31.042376, 32.548599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863234, 30.819193, 32.874702>,  <25.900438, 30.685284, 33.070366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863234, 30.819193, 32.874702>,  <25.801224, 31.042376, 32.548599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863234, 30.819193, 32.874702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407091, 0.787995, 0.461889,
		-0.900136, 0.260282, 0.349296,
		0.155022, -0.557958, 0.815261,
		25.909740, 30.651806, 33.119282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417879, 31.294413, 33.163361>,  <25.801224, 31.042376, 32.548599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417879, 31.294413, 33.163361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772028, 31.123566, 33.236774>,  <25.984518, 31.021057, 33.280823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772028, 31.123566, 33.236774>,  <25.417879, 31.294413, 33.163361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772028, 31.123566, 33.236774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343219, 0.866853, 0.361616,
		-0.313551, -0.257172, 0.914083,
		0.885374, -0.427116, 0.183536,
		26.037640, 30.995432, 33.291836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469696, 31.373341, 33.898396>,  <25.417879, 31.294413, 33.163361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469696, 31.373341, 33.898396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846081, 31.353142, 33.764507>,  <26.071911, 31.341022, 33.684174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846081, 31.353142, 33.764507>,  <25.469696, 31.373341, 33.898396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846081, 31.353142, 33.764507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176757, 0.916600, 0.358611,
		0.288698, -0.396604, 0.871412,
		0.940963, -0.050498, -0.334723,
		26.128370, 31.337992, 33.664089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017305, 30.980621, 34.421513>,  <25.469696, 31.373341, 33.898396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017305, 30.980621, 34.421513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373432, 30.983213, 34.239395>,  <26.587109, 30.984768, 34.130127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373432, 30.983213, 34.239395>,  <26.017305, 30.980621, 34.421513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373432, 30.983213, 34.239395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339101, 0.657871, 0.672471,
		0.303880, -0.753103, 0.583518,
		0.890319, 0.006479, -0.455291,
		26.640528, 30.985157, 34.102806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579041, 30.659990, 34.937675>,  <26.017305, 30.980621, 34.421513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579041, 30.659990, 34.937675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703669, 30.936052, 34.676414>,  <26.778446, 31.101690, 34.519657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703669, 30.936052, 34.676414>,  <26.579041, 30.659990, 34.937675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703669, 30.936052, 34.676414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387743, 0.535196, 0.750480,
		0.867513, -0.487084, -0.100851,
		0.311572, 0.690156, -0.653152,
		26.797140, 31.143099, 34.480469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205725, 30.931250, 35.064281>,  <26.579041, 30.659990, 34.937675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205725, 30.931250, 35.064281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082170, 31.246857, 34.851852>,  <27.008038, 31.436220, 34.724396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082170, 31.246857, 34.851852>,  <27.205725, 30.931250, 35.064281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082170, 31.246857, 34.851852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443859, 0.613433, 0.653215,
		0.841177, -0.033953, -0.539693,
		-0.308887, 0.789016, -0.531076,
		26.989504, 31.483562, 34.692528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778200, 31.400063, 35.118561>,  <27.205725, 30.931250, 35.064281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778200, 31.400063, 35.118561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473282, 31.635530, 35.010952>,  <27.290331, 31.776812, 34.946388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473282, 31.635530, 35.010952>,  <27.778200, 31.400063, 35.118561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473282, 31.635530, 35.010952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318722, 0.703184, 0.635570,
		0.563313, 0.398748, -0.723656,
		-0.762296, 0.588670, -0.269023,
		27.244593, 31.812132, 34.930244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914558, 31.062077, 34.459797>,  <27.778200, 31.400063, 35.118561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914558, 31.062077, 34.459797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267105, 31.241049, 34.520458>,  <28.478634, 31.348433, 34.556854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267105, 31.241049, 34.520458>,  <27.914558, 31.062077, 34.459797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267105, 31.241049, 34.520458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103352, 0.495847, -0.862238,
		-0.460990, 0.744273, 0.483265,
		0.881366, 0.447429, 0.151658,
		28.531515, 31.375278, 34.565956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816347, 31.772110, 34.407196>,  <27.914558, 31.062077, 34.459797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816347, 31.772110, 34.407196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191195, 31.675924, 34.306011>,  <28.416103, 31.618214, 34.245300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191195, 31.675924, 34.306011>,  <27.816347, 31.772110, 34.407196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191195, 31.675924, 34.306011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154065, 0.365337, -0.918038,
		0.313171, 0.899281, 0.305316,
		0.937117, -0.240464, -0.252960,
		28.472330, 31.603785, 34.230122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039879, 32.099236, 33.811310>,  <27.816347, 31.772110, 34.407196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039879, 32.099236, 33.811310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343426, 31.842768, 33.765667>,  <28.525553, 31.688887, 33.738281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343426, 31.842768, 33.765667>,  <28.039879, 32.099236, 33.811310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343426, 31.842768, 33.765667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210134, -0.075232, -0.974774,
		0.616414, 0.763700, -0.191823,
		0.758866, -0.641173, -0.114106,
		28.571085, 31.650415, 33.731434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630533, 32.295944, 33.328342>,  <28.039879, 32.099236, 33.811310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630533, 32.295944, 33.328342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536074, 31.907278, 33.332409>,  <28.479397, 31.674078, 33.334846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536074, 31.907278, 33.332409>,  <28.630533, 32.295944, 33.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536074, 31.907278, 33.332409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042646, -0.020813, -0.998873,
		0.970780, -0.235450, 0.046353,
		-0.236150, -0.971663, 0.010164,
		28.465229, 31.615780, 33.335457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133564, 31.764334, 33.032997>,  <28.630533, 32.295944, 33.328342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133564, 31.764334, 33.032997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754761, 31.653860, 32.967396>,  <28.527479, 31.587576, 32.928036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754761, 31.653860, 32.967396>,  <29.133564, 31.764334, 33.032997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754761, 31.653860, 32.967396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141484, 0.099735, -0.984904,
		0.288373, -0.955916, -0.055373,
		-0.947008, -0.276186, -0.164008,
		28.470659, 31.571005, 32.918194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381886, 32.301933, 33.709957>,  <29.133564, 31.764334, 33.032997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381886, 32.301933, 33.709957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609409, 32.513115, 33.457695>,  <29.745924, 32.639824, 33.306339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609409, 32.513115, 33.457695>,  <29.381886, 32.301933, 33.709957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609409, 32.513115, 33.457695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741367, 0.661139, -0.115194,
		0.356134, 0.533071, 0.767466,
		0.568808, 0.527950, -0.630656,
		29.780052, 32.671501, 33.268497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904030, 31.908369, 33.312511>,  <29.381886, 32.301933, 33.709957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904030, 31.908369, 33.312511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674610, 32.031380, 33.008808>,  <29.536959, 32.105186, 32.826588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674610, 32.031380, 33.008808>,  <29.904030, 31.908369, 33.312511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674610, 32.031380, 33.008808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664310, 0.716927, -0.211444,
		0.479306, -0.625654, -0.615486,
		-0.573549, 0.307527, -0.759255,
		29.502546, 32.123638, 32.781033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641891, 31.161388, 33.419998>,  <29.904030, 31.908369, 33.312511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641891, 31.161388, 33.419998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751326, 31.064278, 33.047718>,  <29.816986, 31.006012, 32.824348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751326, 31.064278, 33.047718>,  <29.641891, 31.161388, 33.419998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751326, 31.064278, 33.047718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868103, -0.354344, 0.347617,
		-0.414182, -0.903050, 0.113810,
		0.273587, -0.242776, -0.930704,
		29.833403, 30.991446, 32.768505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708591, 30.388741, 33.416756>,  <29.641891, 31.161388, 33.419998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708591, 30.388741, 33.416756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935469, 30.594511, 33.159489>,  <30.071594, 30.717974, 33.005131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935469, 30.594511, 33.159489>,  <29.708591, 30.388741, 33.416756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935469, 30.594511, 33.159489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820116, -0.281186, 0.498342,
		0.075511, -0.810124, -0.581376,
		0.567193, 0.514426, -0.643163,
		30.105627, 30.748838, 32.966541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280809, 29.948292, 33.071716>,  <29.708591, 30.388741, 33.416756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280809, 29.948292, 33.071716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370399, 30.336460, 33.107754>,  <30.424152, 30.569361, 33.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370399, 30.336460, 33.107754>,  <30.280809, 29.948292, 33.071716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370399, 30.336460, 33.107754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900367, -0.241414, 0.362019,
		0.373061, 0.000035, -0.927807,
		0.223973, 0.970422, 0.090093,
		30.437592, 30.627586, 33.134781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985277, 29.990969, 32.757481>,  <30.280809, 29.948292, 33.071716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985277, 29.990969, 32.757481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910959, 30.233458, 33.066795>,  <30.866369, 30.378952, 33.252384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910959, 30.233458, 33.066795>,  <30.985277, 29.990969, 32.757481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910959, 30.233458, 33.066795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954074, -0.076916, 0.289530,
		0.234998, 0.791566, -0.564092,
		-0.185794, 0.606224, 0.773287,
		30.855221, 30.415325, 33.298782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427292, 30.529648, 32.786953>,  <30.985277, 29.990969, 32.757481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427292, 30.529648, 32.786953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306177, 30.458033, 33.161388>,  <31.233507, 30.415064, 33.386051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306177, 30.458033, 33.161388>,  <31.427292, 30.529648, 32.786953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306177, 30.458033, 33.161388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952831, -0.035477, 0.301419,
		-0.020756, 0.983202, 0.181336,
		-0.302789, -0.179039, 0.936090,
		31.215340, 30.404322, 33.442215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841316, 30.959948, 33.231003>,  <31.427292, 30.529648, 32.786953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841316, 30.959948, 33.231003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695435, 30.622221, 33.388039>,  <31.607904, 30.419586, 33.482258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695435, 30.622221, 33.388039>,  <31.841316, 30.959948, 33.231003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695435, 30.622221, 33.388039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924626, -0.278675, 0.259629,
		-0.109804, 0.457682, 0.882309,
		-0.364705, -0.844314, 0.392585,
		31.586023, 30.368927, 33.505814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845737, 31.012377, 33.908916>,  <31.841316, 30.959948, 33.231003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845737, 31.012377, 33.908916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862524, 30.618073, 33.843784>,  <31.872595, 30.381489, 33.804707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862524, 30.618073, 33.843784>,  <31.845737, 31.012377, 33.908916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862524, 30.618073, 33.843784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915989, -0.027125, 0.400285,
		-0.399003, -0.165947, 0.901808,
		0.041965, -0.985761, -0.162829,
		31.875113, 30.322344, 33.794937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500988, 31.380304, 33.765678>,  <31.845737, 31.012377, 33.908916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500988, 31.380304, 33.765678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436253, 31.252682, 34.139206>,  <32.397411, 31.176109, 34.363323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436253, 31.252682, 34.139206>,  <32.500988, 31.380304, 33.765678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436253, 31.252682, 34.139206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249671, 0.902265, 0.351544,
		-0.954711, 0.290040, -0.066361,
		-0.161837, -0.319054, 0.933816,
		32.387703, 31.156965, 34.419350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975601, 31.842268, 34.170345>,  <32.500988, 31.380304, 33.765678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975601, 31.842268, 34.170345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247360, 31.662956, 34.402714>,  <32.410416, 31.555370, 34.542133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247360, 31.662956, 34.402714>,  <31.975601, 31.842268, 34.170345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247360, 31.662956, 34.402714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273888, 0.889397, 0.366002,
		-0.680740, -0.089553, 0.727031,
		0.679396, -0.448278, 0.580921,
		32.451180, 31.528473, 34.576988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873852, 32.272739, 34.900009>,  <31.975601, 31.842268, 34.170345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873852, 32.272739, 34.900009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234718, 32.105228, 34.858589>,  <32.451237, 32.004723, 34.833736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234718, 32.105228, 34.858589>,  <31.873852, 32.272739, 34.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234718, 32.105228, 34.858589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421426, 0.804279, 0.418969,
		-0.092176, -0.421616, 0.902077,
		0.902166, -0.418778, -0.103545,
		32.505367, 31.979595, 34.827526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334482, 31.818474, 34.497459>,  <31.873852, 32.272739, 34.900009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334482, 31.818474, 34.497459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951868, 31.871788, 34.393711>,  <30.722300, 31.903776, 34.331463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951868, 31.871788, 34.393711>,  <31.334482, 31.818474, 34.497459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951868, 31.871788, 34.393711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238064, -0.156758, -0.958516,
		-0.168418, -0.978602, 0.118214,
		-0.956536, 0.133289, -0.259371,
		30.664907, 31.911774, 34.315899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029758, 31.222376, 34.032070>,  <31.334482, 31.818474, 34.497459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029758, 31.222376, 34.032070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884378, 31.588959, 33.965126>,  <30.797150, 31.808908, 33.924961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884378, 31.588959, 33.965126>,  <31.029758, 31.222376, 34.032070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884378, 31.588959, 33.965126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364533, -0.025416, -0.930843,
		-0.857332, -0.399324, -0.324841,
		-0.363452, 0.916457, -0.167357,
		30.775343, 31.863895, 33.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480423, 31.198490, 33.491104>,  <31.029758, 31.222376, 34.032070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480423, 31.198490, 33.491104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599640, 31.579981, 33.506962>,  <30.671171, 31.808876, 33.516476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599640, 31.579981, 33.506962>,  <30.480423, 31.198490, 33.491104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599640, 31.579981, 33.506962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193259, -0.019622, -0.980952,
		-0.934784, 0.300028, -0.190164,
		0.298045, 0.953729, 0.039641,
		30.689053, 31.866100, 33.518856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417780, 31.372820, 32.754921>,  <30.480423, 31.198490, 33.491104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417780, 31.372820, 32.754921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598820, 31.693691, 32.910698>,  <30.707443, 31.886213, 33.004166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598820, 31.693691, 32.910698>,  <30.417780, 31.372820, 32.754921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598820, 31.693691, 32.910698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338265, 0.249644, -0.907334,
		-0.825065, 0.542393, -0.158360,
		0.452598, 0.802177, 0.389445,
		30.734598, 31.934345, 33.027531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195004, 31.920044, 32.319702>,  <30.417780, 31.372820, 32.754921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195004, 31.920044, 32.319702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547735, 32.003559, 32.488834>,  <30.759375, 32.053669, 32.590313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547735, 32.003559, 32.488834>,  <30.195004, 31.920044, 32.319702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547735, 32.003559, 32.488834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412601, 0.092550, -0.906198,
		-0.228335, 0.973572, -0.004533,
		0.881830, 0.208787, 0.422829,
		30.812284, 32.066196, 32.615685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500622, 32.536579, 31.944771>,  <30.195004, 31.920044, 32.319702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500622, 32.536579, 31.944771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814026, 32.340385, 32.097370>,  <31.002068, 32.222672, 32.188931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814026, 32.340385, 32.097370>,  <30.500622, 32.536579, 31.944771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814026, 32.340385, 32.097370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447427, 0.019289, -0.894112,
		0.431187, 0.871238, 0.234568,
		0.783509, -0.490482, 0.381499,
		31.049078, 32.193241, 32.211819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068003, 32.785431, 31.615303>,  <30.500622, 32.536579, 31.944771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068003, 32.785431, 31.615303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236410, 32.451668, 31.757574>,  <31.337456, 32.251411, 31.842937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236410, 32.451668, 31.757574>,  <31.068003, 32.785431, 31.615303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236410, 32.451668, 31.757574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488214, -0.122017, -0.864152,
		0.764453, 0.537473, 0.355997,
		0.421021, -0.834407, 0.355678,
		31.362717, 32.201347, 31.864277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810831, 32.879528, 31.436913>,  <31.068003, 32.785431, 31.615303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810831, 32.879528, 31.436913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731176, 32.494202, 31.508875>,  <31.683384, 32.263004, 31.552053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731176, 32.494202, 31.508875>,  <31.810831, 32.879528, 31.436913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731176, 32.494202, 31.508875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445030, -0.252458, -0.859193,
		0.873094, -0.091031, 0.478978,
		-0.199135, -0.963316, 0.179908,
		31.671436, 32.205208, 31.562847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397854, 32.580868, 31.174698>,  <31.810831, 32.879528, 31.436913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397854, 32.580868, 31.174698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138775, 32.276821, 31.195526>,  <31.983328, 32.094391, 31.208023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138775, 32.276821, 31.195526>,  <32.397854, 32.580868, 31.174698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138775, 32.276821, 31.195526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371873, -0.375042, -0.849149,
		0.664983, -0.530625, 0.525580,
		-0.647694, -0.760119, 0.052071,
		31.944466, 32.048786, 31.211147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795326, 32.088650, 31.105968>,  <32.397854, 32.580868, 31.174698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795326, 32.088650, 31.105968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425213, 31.982983, 30.997107>,  <32.203144, 31.919582, 30.931789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425213, 31.982983, 30.997107>,  <32.795326, 32.088650, 31.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425213, 31.982983, 30.997107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319007, -0.153913, -0.935171,
		0.205157, -0.952115, 0.226686,
		-0.925281, -0.264172, -0.272155,
		32.147629, 31.903730, 30.915461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865593, 31.525688, 30.618166>,  <32.795326, 32.088650, 31.105968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865593, 31.525688, 30.618166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481594, 31.616892, 30.553158>,  <32.251194, 31.671614, 30.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481594, 31.616892, 30.553158>,  <32.865593, 31.525688, 30.618166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481594, 31.616892, 30.553158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080115, -0.332490, -0.939698,
		-0.268294, -0.915130, 0.300923,
		-0.960000, 0.228007, -0.162520,
		32.193596, 31.685295, 30.504402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668270, 31.012081, 30.192701>,  <32.865593, 31.525688, 30.618166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668270, 31.012081, 30.192701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411316, 31.313950, 30.139317>,  <32.257145, 31.495071, 30.107286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411316, 31.313950, 30.139317>,  <32.668270, 31.012081, 30.192701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411316, 31.313950, 30.139317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083957, -0.242393, -0.966538,
		-0.761771, -0.609683, 0.219070,
		-0.642383, 0.754674, -0.133461,
		32.218601, 31.540352, 30.099277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228001, 30.687811, 29.707148>,  <32.668270, 31.012081, 30.192701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228001, 30.687811, 29.707148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150139, 31.078304, 29.669035>,  <32.103420, 31.312599, 29.646168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150139, 31.078304, 29.669035>,  <32.228001, 30.687811, 29.707148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150139, 31.078304, 29.669035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220417, -0.138191, -0.965567,
		-0.955785, -0.166954, 0.242078,
		-0.194658, 0.976233, -0.095282,
		32.091740, 31.371174, 29.640451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643059, 30.704865, 29.237820>,  <32.228001, 30.687811, 29.707148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643059, 30.704865, 29.237820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824360, 31.061399, 29.241301>,  <31.933140, 31.275322, 29.243389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824360, 31.061399, 29.241301>,  <31.643059, 30.704865, 29.237820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824360, 31.061399, 29.241301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036391, -0.008748, -0.999299,
		-0.890639, 0.453252, -0.036402,
		0.453252, 0.891340, 0.008704,
		31.960335, 31.328802, 29.243912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394478, 31.045567, 28.620611>,  <31.643059, 30.704865, 29.237820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394478, 31.045567, 28.620611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707754, 31.274746, 28.717224>,  <31.895720, 31.412254, 28.775192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707754, 31.274746, 28.717224>,  <31.394478, 31.045567, 28.620611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707754, 31.274746, 28.717224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207328, 0.125578, -0.970178,
		-0.586195, 0.809912, -0.020437,
		0.783192, 0.572951, 0.241530,
		31.942713, 31.446630, 28.789682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230825, 31.728943, 28.467363>,  <31.394478, 31.045567, 28.620611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230825, 31.728943, 28.467363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627035, 31.679003, 28.444469>,  <31.864761, 31.649038, 28.430733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627035, 31.679003, 28.444469>,  <31.230825, 31.728943, 28.467363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627035, 31.679003, 28.444469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005702, 0.453755, -0.891108,
		0.137225, 0.882337, 0.450167,
		0.990523, -0.124849, -0.057235,
		31.924192, 31.641548, 28.427299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500578, 32.455029, 28.232332>,  <31.230825, 31.728943, 28.467363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500578, 32.455029, 28.232332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803627, 32.202999, 28.164188>,  <31.985456, 32.051781, 28.123302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803627, 32.202999, 28.164188>,  <31.500578, 32.455029, 28.232332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803627, 32.202999, 28.164188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189004, 0.461613, -0.866713,
		0.624730, 0.624441, 0.468813,
		0.757621, -0.630069, -0.170361,
		32.030914, 32.013977, 28.113079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044682, 32.893608, 27.986256>,  <31.500578, 32.455029, 28.232332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044682, 32.893608, 27.986256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107300, 32.522736, 27.850117>,  <32.144871, 32.300213, 27.768435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107300, 32.522736, 27.850117>,  <32.044682, 32.893608, 27.986256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107300, 32.522736, 27.850117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165432, 0.364341, -0.916454,
		0.973717, 0.087164, 0.210422,
		0.156547, -0.927177, -0.340345,
		32.154263, 32.244583, 27.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723152, 32.872898, 27.561647>,  <32.044682, 32.893608, 27.986256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723152, 32.872898, 27.561647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522602, 32.553017, 27.429527>,  <32.402271, 32.361088, 27.350256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522602, 32.553017, 27.429527>,  <32.723152, 32.872898, 27.561647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522602, 32.553017, 27.429527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126190, 0.310082, -0.942298,
		0.855976, -0.514129, -0.054555,
		-0.501379, -0.799700, -0.330301,
		32.372189, 32.313107, 27.330437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083649, 32.584766, 26.972132>,  <32.723152, 32.872898, 27.561647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083649, 32.584766, 26.972132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720982, 32.419083, 26.940184>,  <32.503380, 32.319672, 26.921015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720982, 32.419083, 26.940184>,  <33.083649, 32.584766, 26.972132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720982, 32.419083, 26.940184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033763, 0.259986, -0.965022,
		0.420489, -0.872259, -0.249706,
		-0.906669, -0.414212, -0.079872,
		32.448982, 32.294819, 26.916222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057384, 31.978800, 26.363937>,  <33.083649, 32.584766, 26.972132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057384, 31.978800, 26.363937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690437, 32.123055, 26.431316>,  <32.470268, 32.209606, 26.471745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690437, 32.123055, 26.431316>,  <33.057384, 31.978800, 26.363937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690437, 32.123055, 26.431316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032212, 0.354543, -0.934485,
		-0.396730, -0.862694, -0.313630,
		-0.917370, 0.360636, 0.168447,
		32.415226, 32.231247, 26.481850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662086, 31.735819, 25.747261>,  <33.057384, 31.978800, 26.363937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662086, 31.735819, 25.747261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416084, 32.018909, 25.886337>,  <32.268482, 32.188763, 25.969784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416084, 32.018909, 25.886337>,  <32.662086, 31.735819, 25.747261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416084, 32.018909, 25.886337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223029, 0.266809, -0.937588,
		-0.756323, -0.654169, -0.006246,
		-0.615008, 0.707726, 0.347693,
		32.231583, 32.231228, 25.990644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096836, 31.734804, 25.339617>,  <32.662086, 31.735819, 25.747261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096836, 31.734804, 25.339617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081890, 32.090759, 25.521475>,  <32.072922, 32.304333, 25.630590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081890, 32.090759, 25.521475>,  <32.096836, 31.734804, 25.339617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081890, 32.090759, 25.521475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350922, 0.414305, -0.839765,
		-0.935659, -0.190920, 0.296803,
		-0.037361, 0.889888, 0.454646,
		32.070683, 32.357727, 25.657869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528206, 31.977711, 25.076412>,  <32.096836, 31.734804, 25.339617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528206, 31.977711, 25.076412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713213, 32.308659, 25.203871>,  <31.824217, 32.507229, 25.280346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713213, 32.308659, 25.203871>,  <31.528206, 31.977711, 25.076412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713213, 32.308659, 25.203871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354968, 0.502140, -0.788577,
		-0.812451, 0.251620, 0.525938,
		0.462516, 0.827371, 0.318647,
		31.851967, 32.556870, 25.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084736, 32.541691, 24.922401>,  <31.528206, 31.977711, 25.076412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084736, 32.541691, 24.922401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445305, 32.708557, 24.968729>,  <31.661646, 32.808678, 24.996525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445305, 32.708557, 24.968729>,  <31.084736, 32.541691, 24.922401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445305, 32.708557, 24.968729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181733, 0.607398, -0.773331,
		-0.392952, 0.676050, 0.623334,
		0.901422, 0.417162, 0.115818,
		31.715731, 32.833706, 25.003475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987320, 33.175743, 24.655329>,  <31.084736, 32.541691, 24.922401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987320, 33.175743, 24.655329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386532, 33.152451, 24.664700>,  <31.626059, 33.138474, 24.670322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386532, 33.152451, 24.664700>,  <30.987320, 33.175743, 24.655329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386532, 33.152451, 24.664700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049765, 0.506657, -0.860710,
		0.038251, 0.860179, 0.508556,
		0.998028, -0.058232, 0.023427,
		31.685940, 33.134979, 24.671728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127939, 33.783558, 24.371325>,  <30.987320, 33.175743, 24.655329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127939, 33.783558, 24.371325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463722, 33.567966, 24.343563>,  <31.665192, 33.438614, 24.326906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463722, 33.567966, 24.343563>,  <31.127939, 33.783558, 24.371325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463722, 33.567966, 24.343563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268955, 0.523039, -0.808761,
		0.472202, 0.660254, 0.584029,
		0.839457, -0.538976, -0.069401,
		31.715559, 33.406273, 24.322742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678759, 34.274769, 24.329147>,  <31.127939, 33.783558, 24.371325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678759, 34.274769, 24.329147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840237, 33.943638, 24.173332>,  <31.937122, 33.744961, 24.079844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840237, 33.943638, 24.173332>,  <31.678759, 34.274769, 24.329147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840237, 33.943638, 24.173332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431028, 0.547651, -0.717142,
		0.806998, 0.121603, 0.577898,
		0.403693, -0.827823, -0.389540,
		31.961344, 33.695290, 24.056471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434822, 34.276367, 24.355379>,  <31.678759, 34.274769, 24.329147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434822, 34.276367, 24.355379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316048, 34.035950, 24.058577>,  <32.244781, 33.891701, 23.880495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316048, 34.035950, 24.058577>,  <32.434822, 34.276367, 24.355379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316048, 34.035950, 24.058577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586489, 0.498426, -0.638437,
		0.753563, -0.624758, 0.204502,
		-0.296940, -0.601041, -0.742009,
		32.226967, 33.855637, 23.835974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039555, 34.104683, 23.998201>,  <32.434822, 34.276367, 24.355379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039555, 34.104683, 23.998201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754978, 34.014553, 23.731945>,  <32.584232, 33.960476, 23.572191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754978, 34.014553, 23.731945>,  <33.039555, 34.104683, 23.998201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754978, 34.014553, 23.731945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621861, 0.239316, -0.745665,
		0.327317, -0.944434, -0.030138,
		-0.711444, -0.225327, -0.665639,
		32.541546, 33.946957, 23.532253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415958, 33.802959, 23.474777>,  <33.039555, 34.104683, 23.998201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415958, 33.802959, 23.474777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063263, 33.889046, 23.306866>,  <32.851646, 33.940697, 23.206120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063263, 33.889046, 23.306866>,  <33.415958, 33.802959, 23.474777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063263, 33.889046, 23.306866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471716, 0.394819, -0.788417,
		-0.003944, -0.893197, -0.449649,
		-0.881741, 0.215216, -0.419778,
		32.798740, 33.953609, 23.180933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483654, 33.553078, 22.778458>,  <33.415958, 33.802959, 23.474777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483654, 33.553078, 22.778458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204121, 33.838570, 22.797310>,  <33.036400, 34.009865, 22.808620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204121, 33.838570, 22.797310>,  <33.483654, 33.553078, 22.778458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204121, 33.838570, 22.797310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345785, 0.394781, -0.851223,
		-0.626146, -0.578569, -0.522684,
		-0.698837, 0.713727, 0.047130,
		32.994469, 34.052689, 22.811449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184650, 33.666061, 22.080368>,  <33.483654, 33.553078, 22.778458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184650, 33.666061, 22.080368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093376, 34.007946, 22.266874>,  <33.038612, 34.213078, 22.378778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093376, 34.007946, 22.266874>,  <33.184650, 33.666061, 22.080368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093376, 34.007946, 22.266874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162927, 0.505667, -0.847204,
		-0.959888, -0.117356, -0.254643,
		-0.228189, 0.854709, 0.466263,
		33.024918, 34.264359, 22.406754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654213, 33.949841, 21.748255>,  <33.184650, 33.666061, 22.080368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654213, 33.949841, 21.748255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837669, 34.252068, 21.935345>,  <32.947742, 34.433403, 22.047598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837669, 34.252068, 21.935345>,  <32.654213, 33.949841, 21.748255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837669, 34.252068, 21.935345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033504, 0.540675, -0.840564,
		-0.887992, 0.369843, 0.273288,
		0.458637, 0.755570, 0.467724,
		32.975262, 34.478737, 22.075663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236153, 34.517136, 21.422014>,  <32.654213, 33.949841, 21.748255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236153, 34.517136, 21.422014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551582, 34.680035, 21.606321>,  <32.740841, 34.777775, 21.716906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551582, 34.680035, 21.606321>,  <32.236153, 34.517136, 21.422014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551582, 34.680035, 21.606321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122566, 0.630167, -0.766725,
		-0.602606, 0.661092, 0.447016,
		0.788570, 0.407245, 0.460770,
		32.788155, 34.802208, 21.744553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134003, 35.279427, 21.465065>,  <32.236153, 34.517136, 21.422014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134003, 35.279427, 21.465065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527134, 35.207237, 21.480484>,  <32.763012, 35.163925, 21.489735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527134, 35.207237, 21.480484>,  <32.134003, 35.279427, 21.465065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527134, 35.207237, 21.480484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165127, 0.766787, -0.620299,
		0.082389, 0.616010, 0.783418,
		0.982825, -0.180469, 0.038545,
		32.821983, 35.153095, 21.492048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456261, 35.907665, 21.482931>,  <32.134003, 35.279427, 21.465065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456261, 35.907665, 21.482931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745377, 35.666248, 21.348282>,  <32.918846, 35.521400, 21.267492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745377, 35.666248, 21.348282>,  <32.456261, 35.907665, 21.482931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745377, 35.666248, 21.348282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185136, 0.638409, -0.747100,
		0.665808, 0.477675, 0.573172,
		0.722789, -0.603540, -0.336623,
		32.962212, 35.485188, 21.247295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013802, 36.415939, 21.282589>,  <32.456261, 35.907665, 21.482931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013802, 36.415939, 21.282589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126842, 36.063061, 21.131926>,  <33.194668, 35.851334, 21.041527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126842, 36.063061, 21.131926>,  <33.013802, 36.415939, 21.282589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126842, 36.063061, 21.131926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346938, 0.460085, -0.817286,
		0.894299, 0.100289, 0.436087,
		0.282602, -0.882192, -0.376660,
		33.211624, 35.798405, 21.018929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769379, 36.443623, 21.137131>,  <33.013802, 36.415939, 21.282589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769379, 36.443623, 21.137131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609795, 36.177250, 20.884981>,  <33.514046, 36.017426, 20.733692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609795, 36.177250, 20.884981>,  <33.769379, 36.443623, 21.137131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609795, 36.177250, 20.884981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303534, 0.552790, -0.776073,
		0.865273, -0.500963, -0.018410,
		-0.398961, -0.665927, -0.630374,
		33.490105, 35.977470, 20.695869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288616, 36.527706, 20.699692>,  <33.769379, 36.443623, 21.137131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288616, 36.527706, 20.699692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973846, 36.347031, 20.531532>,  <33.784985, 36.238625, 20.430635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973846, 36.347031, 20.531532>,  <34.288616, 36.527706, 20.699692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973846, 36.347031, 20.531532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131674, 0.542691, -0.829548,
		0.602842, -0.708144, -0.367579,
		-0.786921, -0.451686, -0.420400,
		33.737770, 36.211525, 20.405413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564766, 36.022652, 20.177078>,  <34.288616, 36.527706, 20.699692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564766, 36.022652, 20.177078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193760, 36.137325, 20.081139>,  <33.971157, 36.206127, 20.023575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193760, 36.137325, 20.081139>,  <34.564766, 36.022652, 20.177078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193760, 36.137325, 20.081139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341946, 0.391637, -0.854221,
		-0.150956, -0.874319, -0.461280,
		-0.927515, 0.286682, -0.239850,
		33.915504, 36.223331, 20.009184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428116, 35.866924, 19.448103>,  <34.564766, 36.022652, 20.177078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428116, 35.866924, 19.448103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160343, 36.146927, 19.547573>,  <33.999680, 36.314930, 19.607256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160343, 36.146927, 19.547573>,  <34.428116, 35.866924, 19.448103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160343, 36.146927, 19.547573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256775, 0.532162, -0.806765,
		-0.697081, -0.476224, -0.535994,
		-0.669436, 0.700010, 0.248678,
		33.959511, 36.356930, 19.622177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881012, 36.028812, 18.859396>,  <34.428116, 35.866924, 19.448103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881012, 36.028812, 18.859396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964619, 36.338825, 19.097937>,  <34.014782, 36.524834, 19.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964619, 36.338825, 19.097937>,  <33.881012, 36.028812, 18.859396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964619, 36.338825, 19.097937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242178, 0.549804, -0.799416,
		-0.947450, 0.311514, -0.072778,
		0.209015, 0.775032, 0.596354,
		34.027325, 36.571335, 19.276842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745087, 36.756355, 18.485703>,  <33.881012, 36.028812, 18.859396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745087, 36.756355, 18.485703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017342, 36.791508, 18.776636>,  <34.180695, 36.812599, 18.951197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017342, 36.791508, 18.776636>,  <33.745087, 36.756355, 18.485703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017342, 36.791508, 18.776636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616484, 0.467691, -0.633414,
		-0.395833, 0.879512, 0.264149,
		0.680635, 0.087883, 0.727333,
		34.221531, 36.817871, 18.994837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003429, 37.403618, 18.445248>,  <33.745087, 36.756355, 18.485703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003429, 37.403618, 18.445248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307911, 37.201618, 18.607996>,  <34.490601, 37.080418, 18.705645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307911, 37.201618, 18.607996>,  <34.003429, 37.403618, 18.445248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307911, 37.201618, 18.607996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551717, 0.174529, -0.815566,
		0.340852, 0.845288, 0.411470,
		0.761201, -0.505003, 0.406872,
		34.536270, 37.050117, 18.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616127, 37.676373, 18.940559>,  <34.003429, 37.403618, 18.445248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616127, 37.676373, 18.940559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630993, 38.067501, 18.858105>,  <33.639912, 38.302177, 18.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630993, 38.067501, 18.858105>,  <33.616127, 37.676373, 18.940559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630993, 38.067501, 18.858105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198907, -0.209387, -0.957389,
		-0.979314, -0.005424, -0.202276,
		0.037161, 0.977818, -0.206135,
		33.642139, 38.360847, 18.796265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130096, 37.756191, 18.447758>,  <33.616127, 37.676373, 18.940559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130096, 37.756191, 18.447758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389706, 38.060013, 18.430565>,  <33.545471, 38.242306, 18.420250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389706, 38.060013, 18.430565>,  <33.130096, 37.756191, 18.447758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389706, 38.060013, 18.430565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175220, -0.204220, -0.963116,
		-0.740318, 0.617551, -0.265632,
		0.649020, 0.759556, -0.042980,
		33.584412, 38.287880, 18.417671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086433, 38.022377, 17.700243>,  <33.130096, 37.756191, 18.447758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086433, 38.022377, 17.700243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430069, 38.136055, 17.870514>,  <33.636250, 38.204262, 17.972677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430069, 38.136055, 17.870514>,  <33.086433, 38.022377, 17.700243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430069, 38.136055, 17.870514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478378, -0.150095, -0.865232,
		-0.182005, 0.946944, -0.264899,
		0.859086, 0.284199, 0.425679,
		33.687794, 38.221313, 17.998219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343697, 38.710430, 17.414762>,  <33.086433, 38.022377, 17.700243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343697, 38.710430, 17.414762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642387, 38.486217, 17.557985>,  <33.821602, 38.351692, 17.643919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642387, 38.486217, 17.557985>,  <33.343697, 38.710430, 17.414762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642387, 38.486217, 17.557985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358931, -0.113620, -0.926422,
		0.559968, 0.820305, 0.116347,
		0.746729, -0.560527, 0.358057,
		33.866405, 38.318058, 17.665401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117043, 38.915257, 17.272989>,  <33.343697, 38.710430, 17.414762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117043, 38.915257, 17.272989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057243, 38.519951, 17.285509>,  <34.021366, 38.282768, 17.293022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057243, 38.519951, 17.285509>,  <34.117043, 38.915257, 17.272989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057243, 38.519951, 17.285509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291997, -0.074371, -0.953523,
		0.944663, -0.133408, 0.299689,
		-0.149496, -0.988267, 0.031301,
		34.012394, 38.223473, 17.294899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651958, 38.415310, 17.461859>,  <34.117043, 38.915257, 17.272989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651958, 38.415310, 17.461859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438873, 38.226124, 17.181137>,  <34.311024, 38.112614, 17.012705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438873, 38.226124, 17.181137>,  <34.651958, 38.415310, 17.461859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438873, 38.226124, 17.181137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815588, 0.508269, 0.276546,
		0.225908, 0.719701, -0.656503,
		-0.532711, -0.472962, -0.701802,
		34.279060, 38.084236, 16.970596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639488, 39.068474, 17.986523>,  <34.651958, 38.415310, 17.461859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639488, 39.068474, 17.986523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283836, 38.886616, 18.007458>,  <34.070446, 38.777500, 18.020018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283836, 38.886616, 18.007458>,  <34.639488, 39.068474, 17.986523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283836, 38.886616, 18.007458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169542, 0.433452, 0.885085,
		-0.425086, 0.778085, -0.462478,
		-0.889133, -0.454646, 0.052336,
		34.017097, 38.750221, 18.023159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206169, 39.476646, 18.363937>,  <34.639488, 39.068474, 17.986523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206169, 39.476646, 18.363937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008598, 39.129223, 18.380112>,  <33.890057, 38.920769, 18.389816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008598, 39.129223, 18.380112>,  <34.206169, 39.476646, 18.363937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008598, 39.129223, 18.380112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452421, 0.296438, 0.841095,
		-0.742529, 0.397147, -0.539374,
		-0.493929, -0.868562, 0.040436,
		33.860420, 38.868656, 18.392242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566051, 39.650627, 18.607969>,  <34.206169, 39.476646, 18.363937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566051, 39.650627, 18.607969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605618, 39.256573, 18.664133>,  <33.629356, 39.020138, 18.697830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605618, 39.256573, 18.664133>,  <33.566051, 39.650627, 18.607969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605618, 39.256573, 18.664133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428155, 0.085238, 0.899676,
		-0.898276, -0.149107, -0.413362,
		0.098914, -0.985140, 0.140408,
		33.635292, 38.961029, 18.706255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942760, 39.495052, 19.001783>,  <33.566051, 39.650627, 18.607969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942760, 39.495052, 19.001783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182705, 39.179230, 19.053579>,  <33.326672, 38.989735, 19.084658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182705, 39.179230, 19.053579>,  <32.942760, 39.495052, 19.001783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182705, 39.179230, 19.053579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223581, -0.010019, 0.974634,
		-0.768231, -0.613596, -0.182540,
		0.599860, -0.789557, 0.129491,
		33.362663, 38.942364, 19.092426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560204, 39.025585, 19.503630>,  <32.942760, 39.495052, 19.001783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560204, 39.025585, 19.503630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943157, 38.913773, 19.532700>,  <33.172928, 38.846684, 19.550140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943157, 38.913773, 19.532700>,  <32.560204, 39.025585, 19.503630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943157, 38.913773, 19.532700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051693, 0.081721, 0.995314,
		-0.284164, -0.956651, 0.063788,
		0.957381, -0.279535, 0.072674,
		33.230373, 38.829910, 19.554502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593277, 38.628281, 20.074518>,  <32.560204, 39.025585, 19.503630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593277, 38.628281, 20.074518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981647, 38.721256, 20.051659>,  <33.214672, 38.777042, 20.037943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981647, 38.721256, 20.051659>,  <32.593277, 38.628281, 20.074518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981647, 38.721256, 20.051659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054177, 0.019166, 0.998347,
		0.233154, -0.972421, 0.006016,
		0.970930, 0.232443, -0.057151,
		33.272926, 38.790989, 20.034513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907421, 38.142853, 20.441700>,  <32.593277, 38.628281, 20.074518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907421, 38.142853, 20.441700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201107, 38.414223, 20.431417>,  <33.377319, 38.577045, 20.425247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201107, 38.414223, 20.431417>,  <32.907421, 38.142853, 20.441700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201107, 38.414223, 20.431417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218198, -0.199949, 0.955202,
		0.642894, -0.706936, -0.294837,
		0.734218, 0.678426, -0.025706,
		33.421371, 38.617752, 20.423706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504490, 37.806549, 20.739006>,  <32.907421, 38.142853, 20.441700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504490, 37.806549, 20.739006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588310, 38.193993, 20.792498>,  <33.638603, 38.426460, 20.824593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588310, 38.193993, 20.792498>,  <33.504490, 37.806549, 20.739006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588310, 38.193993, 20.792498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141662, -0.165398, 0.976000,
		0.967481, -0.185578, -0.171875,
		0.209552, 0.968609, 0.133730,
		33.651176, 38.484577, 20.832617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101452, 37.756680, 21.172733>,  <33.504490, 37.806549, 20.739006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101452, 37.756680, 21.172733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947399, 38.122368, 21.223143>,  <33.854969, 38.341782, 21.253387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947399, 38.122368, 21.223143>,  <34.101452, 37.756680, 21.172733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947399, 38.122368, 21.223143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043324, -0.118496, 0.992009,
		0.921845, 0.387513, 0.006029,
		-0.385130, 0.914217, 0.126024,
		33.831860, 38.396633, 21.260950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480396, 37.992538, 21.663557>,  <34.101452, 37.756680, 21.172733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480396, 37.992538, 21.663557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161728, 38.233532, 21.682852>,  <33.970528, 38.378128, 21.694429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161728, 38.233532, 21.682852>,  <34.480396, 37.992538, 21.663557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161728, 38.233532, 21.682852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048535, -0.015782, 0.998697,
		0.602460, 0.797975, -0.016669,
		-0.796672, 0.602484, 0.048238,
		33.922726, 38.414276, 21.697323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610168, 38.463631, 22.198797>,  <34.480396, 37.992538, 21.663557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610168, 38.463631, 22.198797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213097, 38.443504, 22.154871>,  <33.974854, 38.431431, 22.128515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213097, 38.443504, 22.154871>,  <34.610168, 38.463631, 22.198797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213097, 38.443504, 22.154871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102260, -0.133892, 0.985706,
		-0.064296, 0.989718, 0.127767,
		-0.992678, -0.050311, -0.109817,
		33.915295, 38.428410, 22.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296055, 38.873665, 22.799324>,  <34.610168, 38.463631, 22.198797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296055, 38.873665, 22.799324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993500, 38.643410, 22.675055>,  <33.811966, 38.505257, 22.600492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993500, 38.643410, 22.675055>,  <34.296055, 38.873665, 22.799324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993500, 38.643410, 22.675055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134417, -0.328026, 0.935057,
		-0.640167, 0.749022, 0.170738,
		-0.756385, -0.575642, -0.310673,
		33.766582, 38.470718, 22.581852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759918, 39.027985, 23.219433>,  <34.296055, 38.873665, 22.799324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759918, 39.027985, 23.219433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665298, 38.663010, 23.085867>,  <33.608528, 38.444023, 23.005728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665298, 38.663010, 23.085867>,  <33.759918, 39.027985, 23.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665298, 38.663010, 23.085867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197203, -0.291428, 0.936046,
		-0.951397, 0.287267, -0.110999,
		-0.236546, -0.912441, -0.333914,
		33.594334, 38.389278, 22.985693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027916, 38.810989, 23.601042>,  <33.759918, 39.027985, 23.219433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027916, 38.810989, 23.601042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188278, 38.474754, 23.455334>,  <33.284496, 38.273014, 23.367908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188278, 38.474754, 23.455334>,  <33.027916, 38.810989, 23.601042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188278, 38.474754, 23.455334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158803, -0.455366, 0.876027,
		-0.902253, -0.293353, -0.316045,
		0.400901, -0.840586, -0.364270,
		33.308548, 38.222580, 23.346052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558903, 38.285442, 23.959528>,  <33.027916, 38.810989, 23.601042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558903, 38.285442, 23.959528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890244, 38.103516, 23.828699>,  <33.089046, 37.994362, 23.750202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890244, 38.103516, 23.828699>,  <32.558903, 38.285442, 23.959528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890244, 38.103516, 23.828699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080435, -0.674353, 0.734015,
		-0.554402, -0.581715, -0.595185,
		0.828353, -0.454813, -0.327073,
		33.138748, 37.967072, 23.730577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384895, 37.648815, 23.799740>,  <32.558903, 38.285442, 23.959528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384895, 37.648815, 23.799740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781147, 37.606838, 23.834682>,  <33.018898, 37.581650, 23.855648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781147, 37.606838, 23.834682>,  <32.384895, 37.648815, 23.799740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781147, 37.606838, 23.834682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134725, -0.855363, 0.500203,
		0.022227, -0.507287, -0.861491,
		0.990633, -0.104946, 0.087356,
		33.078339, 37.575356, 23.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499069, 37.021946, 23.578842>,  <32.384895, 37.648815, 23.799740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499069, 37.021946, 23.578842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807556, 37.116673, 23.815197>,  <32.992649, 37.173508, 23.957010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807556, 37.116673, 23.815197>,  <32.499069, 37.021946, 23.578842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807556, 37.116673, 23.815197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189062, -0.801135, 0.567836,
		0.607851, -0.549638, -0.573075,
		0.771215, 0.236813, 0.590886,
		33.038921, 37.187717, 23.992462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755203, 36.445553, 23.749966>,  <32.499069, 37.021946, 23.578842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755203, 36.445553, 23.749966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898350, 36.670666, 24.048016>,  <32.984238, 36.805733, 24.226847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898350, 36.670666, 24.048016>,  <32.755203, 36.445553, 23.749966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898350, 36.670666, 24.048016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226960, -0.721620, 0.654029,
		0.905771, -0.403168, -0.130514,
		0.357865, 0.562779, 0.745126,
		33.005711, 36.839500, 24.271553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255539, 36.030670, 24.185843>,  <32.755203, 36.445553, 23.749966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255539, 36.030670, 24.185843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107815, 36.326324, 24.411156>,  <33.019180, 36.503719, 24.546343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107815, 36.326324, 24.411156>,  <33.255539, 36.030670, 24.185843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107815, 36.326324, 24.411156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184631, -0.652404, 0.735037,
		0.910782, 0.167456, 0.377405,
		-0.369307, 0.739140, 0.563281,
		32.997025, 36.548065, 24.580139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206226, 35.769604, 24.884476>,  <33.255539, 36.030670, 24.185843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206226, 35.769604, 24.884476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991737, 36.098923, 24.958931>,  <32.863045, 36.296513, 25.003603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991737, 36.098923, 24.958931>,  <33.206226, 35.769604, 24.884476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991737, 36.098923, 24.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427213, -0.454906, 0.781376,
		0.727981, 0.339470, 0.595654,
		-0.536220, 0.823299, 0.186137,
		32.830872, 36.345913, 25.014772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233173, 35.836960, 25.632650>,  <33.206226, 35.769604, 24.884476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233173, 35.836960, 25.632650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951042, 36.101875, 25.531546>,  <32.781765, 36.260826, 25.470882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951042, 36.101875, 25.531546>,  <33.233173, 35.836960, 25.632650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951042, 36.101875, 25.531546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481457, -0.185850, 0.856539,
		0.520299, 0.725834, 0.449949,
		-0.705328, 0.662287, -0.252761,
		32.739445, 36.300560, 25.455717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259575, 36.328754, 26.106354>,  <33.233173, 35.836960, 25.632650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259575, 36.328754, 26.106354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884869, 36.344841, 25.967295>,  <32.660046, 36.354492, 25.883860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884869, 36.344841, 25.967295>,  <33.259575, 36.328754, 26.106354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884869, 36.344841, 25.967295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349063, -0.036019, 0.936407,
		0.025136, 0.998542, 0.047779,
		-0.936762, 0.040215, -0.347649,
		32.603840, 36.356907, 25.863001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932663, 36.544865, 26.605288>,  <33.259575, 36.328754, 26.106354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932663, 36.544865, 26.605288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639328, 36.366756, 26.399784>,  <32.463326, 36.259892, 26.276482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639328, 36.366756, 26.399784>,  <32.932663, 36.544865, 26.605288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639328, 36.366756, 26.399784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343677, -0.409226, 0.845234,
		-0.586600, 0.796411, 0.147073,
		-0.733339, -0.445269, -0.513760,
		32.419327, 36.233177, 26.245657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315834, 36.623215, 26.988314>,  <32.932663, 36.544865, 26.605288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315834, 36.623215, 26.988314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237663, 36.332138, 26.725323>,  <32.190762, 36.157494, 26.567528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237663, 36.332138, 26.725323>,  <32.315834, 36.623215, 26.988314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237663, 36.332138, 26.725323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390204, -0.557362, 0.732863,
		-0.899750, 0.399768, -0.175027,
		-0.195422, -0.727690, -0.657478,
		32.179035, 36.113831, 26.528080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643246, 36.553329, 27.082457>,  <32.315834, 36.623215, 26.988314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643246, 36.553329, 27.082457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790514, 36.216389, 26.925026>,  <31.878874, 36.014225, 26.830568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790514, 36.216389, 26.925026>,  <31.643246, 36.553329, 27.082457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790514, 36.216389, 26.925026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550349, -0.538623, 0.637966,
		-0.749379, -0.018275, -0.661889,
		0.368168, -0.842348, -0.393575,
		31.900965, 35.963684, 26.806953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102133, 36.005478, 27.136732>,  <31.643246, 36.553329, 27.082457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102133, 36.005478, 27.136732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450327, 35.818695, 27.074499>,  <31.659243, 35.706627, 27.037159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450327, 35.818695, 27.074499>,  <31.102133, 36.005478, 27.136732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450327, 35.818695, 27.074499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249974, -0.691730, 0.677512,
		-0.423990, -0.550873, -0.718868,
		0.870486, -0.466956, -0.155583,
		31.711473, 35.678608, 27.027824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987707, 35.279480, 27.022810>,  <31.102133, 36.005478, 27.136732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987707, 35.279480, 27.022810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368896, 35.302433, 27.141836>,  <31.597610, 35.316204, 27.213253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368896, 35.302433, 27.141836>,  <30.987707, 35.279480, 27.022810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368896, 35.302433, 27.141836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174288, -0.699496, 0.693058,
		0.247916, -0.712329, -0.656601,
		0.952975, 0.057382, 0.297567,
		31.654789, 35.319649, 27.231106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244934, 34.524326, 27.290514>,  <30.987707, 35.279480, 27.022810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244934, 34.524326, 27.290514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529507, 34.763161, 27.438763>,  <31.700251, 34.906460, 27.527712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529507, 34.763161, 27.438763>,  <31.244934, 34.524326, 27.290514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529507, 34.763161, 27.438763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077684, -0.457331, 0.885897,
		0.698451, -0.659044, -0.278975,
		0.711429, 0.597084, 0.370620,
		31.742935, 34.942287, 27.549950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768669, 34.091213, 27.652224>,  <31.244934, 34.524326, 27.290514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768669, 34.091213, 27.652224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805367, 34.465088, 27.789598>,  <31.827385, 34.689411, 27.872025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805367, 34.465088, 27.789598>,  <31.768669, 34.091213, 27.652224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805367, 34.465088, 27.789598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025866, -0.347014, 0.937503,
		0.995447, -0.077125, -0.056012,
		0.091741, 0.934684, 0.343439,
		31.832890, 34.745495, 27.892630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204399, 34.015133, 28.137325>,  <31.768669, 34.091213, 27.652224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204399, 34.015133, 28.137325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037704, 34.361233, 28.248808>,  <31.937687, 34.568893, 28.315697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037704, 34.361233, 28.248808>,  <32.204399, 34.015133, 28.137325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037704, 34.361233, 28.248808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058221, -0.331375, 0.941701,
		0.907160, 0.376217, 0.188473,
		-0.416739, 0.865246, 0.278706,
		31.912683, 34.620808, 28.332420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507793, 34.263294, 28.712118>,  <32.204399, 34.015133, 28.137325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507793, 34.263294, 28.712118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154118, 34.447990, 28.740437>,  <31.941914, 34.558807, 28.757427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154118, 34.447990, 28.740437>,  <32.507793, 34.263294, 28.712118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154118, 34.447990, 28.740437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039239, -0.224429, 0.973700,
		0.465484, 0.858154, 0.216555,
		-0.884186, 0.461740, 0.070795,
		31.888863, 34.586514, 28.761675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499489, 34.653019, 29.364178>,  <32.507793, 34.263294, 28.712118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499489, 34.653019, 29.364178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110161, 34.680088, 29.276478>,  <31.876564, 34.696331, 29.223858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110161, 34.680088, 29.276478>,  <32.499489, 34.653019, 29.364178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110161, 34.680088, 29.276478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226527, -0.131245, 0.965122,
		0.036539, 0.989037, 0.143073,
		-0.973319, 0.067674, -0.219248,
		31.818165, 34.700390, 29.210703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176723, 35.186024, 29.848186>,  <32.499489, 34.653019, 29.364178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176723, 35.186024, 29.848186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871891, 34.961823, 29.718534>,  <31.688992, 34.827301, 29.640743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871891, 34.961823, 29.718534>,  <32.176723, 35.186024, 29.848186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871891, 34.961823, 29.718534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325772, -0.100696, 0.940071,
		-0.559555, 0.822005, -0.105859,
		-0.762083, -0.560507, -0.324131,
		31.643267, 34.793671, 29.621296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594549, 35.495468, 30.050343>,  <32.176723, 35.186024, 29.848186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594549, 35.495468, 30.050343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490606, 35.114555, 29.986298>,  <31.428240, 34.886009, 29.947870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490606, 35.114555, 29.986298>,  <31.594549, 35.495468, 30.050343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490606, 35.114555, 29.986298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221153, -0.102713, 0.969815,
		-0.939982, 0.287423, -0.183909,
		-0.259858, -0.952280, -0.160113,
		31.412649, 34.828873, 29.938263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006632, 35.436543, 30.460962>,  <31.594549, 35.495468, 30.050343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006632, 35.436543, 30.460962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128475, 35.060352, 30.400682>,  <31.201582, 34.834637, 30.364515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128475, 35.060352, 30.400682>,  <31.006632, 35.436543, 30.460962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128475, 35.060352, 30.400682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341539, -0.255548, 0.904459,
		-0.889137, -0.224037, -0.399053,
		0.304610, -0.940480, -0.150700,
		31.219858, 34.778210, 30.355473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464752, 35.117168, 30.516804>,  <31.006632, 35.436543, 30.460962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464752, 35.117168, 30.516804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725624, 34.825478, 30.599648>,  <30.882147, 34.650463, 30.649353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725624, 34.825478, 30.599648>,  <30.464752, 35.117168, 30.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725624, 34.825478, 30.599648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412430, -0.112087, 0.904068,
		-0.636055, -0.675030, -0.373855,
		0.652177, -0.729226, 0.207109,
		30.921278, 34.606709, 30.661781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084097, 34.512852, 30.857965>,  <30.464752, 35.117168, 30.516804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084097, 34.512852, 30.857965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465961, 34.439972, 30.952137>,  <30.695080, 34.396244, 31.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465961, 34.439972, 30.952137>,  <30.084097, 34.512852, 30.857965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465961, 34.439972, 30.952137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276775, -0.251986, 0.927307,
		-0.109626, -0.950425, -0.290989,
		0.954661, -0.182195, 0.235430,
		30.752359, 34.385315, 31.022766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064384, 33.983311, 31.316418>,  <30.084097, 34.512852, 30.857965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064384, 33.983311, 31.316418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446156, 34.085186, 31.378649>,  <30.675219, 34.146313, 31.415987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446156, 34.085186, 31.378649>,  <30.064384, 33.983311, 31.316418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446156, 34.085186, 31.378649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155144, -0.021920, 0.987649,
		0.254954, -0.966774, 0.018593,
		0.954425, 0.254690, 0.155577,
		30.732483, 34.161594, 31.425322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343060, 33.457661, 31.739950>,  <30.064384, 33.983311, 31.316418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343060, 33.457661, 31.739950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579275, 33.771572, 31.815191>,  <30.721004, 33.959919, 31.860336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579275, 33.771572, 31.815191>,  <30.343060, 33.457661, 31.739950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579275, 33.771572, 31.815191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179629, -0.099416, 0.978698,
		0.786763, -0.611749, 0.082260,
		0.590540, 0.784780, 0.188105,
		30.756437, 34.007008, 31.871622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869797, 33.255413, 32.263828>,  <30.343060, 33.457661, 31.739950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869797, 33.255413, 32.263828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841730, 33.654087, 32.280342>,  <30.824890, 33.893291, 32.290249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841730, 33.654087, 32.280342>,  <30.869797, 33.255413, 32.263828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841730, 33.654087, 32.280342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178547, -0.053265, 0.982489,
		0.981426, 0.061566, 0.181692,
		-0.070166, 0.996681, 0.041284,
		30.820681, 33.953091, 32.292728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335438, 33.457279, 32.842010>,  <30.869797, 33.255413, 32.263828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335438, 33.457279, 32.842010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085859, 33.759361, 32.761646>,  <30.936111, 33.940609, 32.713428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085859, 33.759361, 32.761646>,  <31.335438, 33.457279, 32.842010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085859, 33.759361, 32.761646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071455, 0.200877, 0.977007,
		0.778193, 0.623956, -0.071374,
		-0.623946, 0.755201, -0.200906,
		30.898676, 33.985920, 32.701374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537533, 33.965706, 33.284142>,  <31.335438, 33.457279, 32.842010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537533, 33.965706, 33.284142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157677, 34.082039, 33.237488>,  <30.929764, 34.151840, 33.209496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157677, 34.082039, 33.237488>,  <31.537533, 33.965706, 33.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157677, 34.082039, 33.237488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091571, 0.098381, 0.990927,
		0.299669, 0.951702, -0.066794,
		-0.949638, 0.290833, -0.116630,
		30.872786, 34.169289, 33.202499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762980, 34.672390, 33.176949>,  <31.537533, 33.965706, 33.284142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762980, 34.672390, 33.176949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998148, 34.917137, 33.388596>,  <32.139248, 35.063984, 33.515583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998148, 34.917137, 33.388596>,  <31.762980, 34.672390, 33.176949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998148, 34.917137, 33.388596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271835, 0.466626, -0.841645,
		-0.761876, 0.638654, 0.108012,
		0.587921, 0.611868, 0.529119,
		32.174522, 35.100697, 33.547333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712067, 35.369942, 32.937313>,  <31.762980, 34.672390, 33.176949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712067, 35.369942, 32.937313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066448, 35.356373, 33.122326>,  <32.279076, 35.348232, 33.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066448, 35.356373, 33.122326>,  <31.712067, 35.369942, 32.937313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066448, 35.356373, 33.122326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391537, 0.589225, -0.706762,
		-0.248561, 0.807256, 0.535308,
		0.885955, -0.033920, 0.462529,
		32.332233, 35.346195, 33.261086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934595, 36.079430, 32.999767>,  <31.712067, 35.369942, 32.937313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934595, 36.079430, 32.999767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244930, 35.827374, 33.012428>,  <32.431129, 35.676140, 33.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244930, 35.827374, 33.012428>,  <31.934595, 36.079430, 32.999767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244930, 35.827374, 33.012428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476145, 0.551842, -0.684658,
		0.413960, 0.546256, 0.728177,
		0.775837, -0.630139, 0.031657,
		32.477680, 35.638332, 33.021927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532909, 36.526562, 33.117786>,  <31.934595, 36.079430, 32.999767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532909, 36.526562, 33.117786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661900, 36.182339, 32.960083>,  <32.739296, 35.975803, 32.865459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661900, 36.182339, 32.960083>,  <32.532909, 36.526562, 33.117786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661900, 36.182339, 32.960083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394452, 0.500794, -0.770463,
		0.860474, 0.092941, 0.500946,
		0.322478, -0.860562, -0.394260,
		32.758644, 35.924171, 32.841805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204948, 36.631390, 32.905193>,  <32.532909, 36.526562, 33.117786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204948, 36.631390, 32.905193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092709, 36.308025, 32.698223>,  <33.025364, 36.114006, 32.574039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092709, 36.308025, 32.698223>,  <33.204948, 36.631390, 32.905193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092709, 36.308025, 32.698223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341781, 0.419594, -0.840908,
		0.896910, -0.412808, 0.158562,
		-0.280602, -0.808412, -0.517428,
		33.008530, 36.065502, 32.542995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754936, 36.444714, 32.550549>,  <33.204948, 36.631390, 32.905193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754936, 36.444714, 32.550549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491325, 36.227444, 32.342453>,  <33.333160, 36.097080, 32.217594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491325, 36.227444, 32.342453>,  <33.754936, 36.444714, 32.550549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491325, 36.227444, 32.342453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393724, 0.340202, -0.853958,
		0.640834, -0.767609, -0.010341,
		-0.659024, -0.543174, -0.520239,
		33.293617, 36.064491, 32.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181080, 36.262585, 31.964233>,  <33.754936, 36.444714, 32.550549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181080, 36.262585, 31.964233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797577, 36.212017, 31.862411>,  <33.567474, 36.181675, 31.801319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797577, 36.212017, 31.862411>,  <34.181080, 36.262585, 31.964233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797577, 36.212017, 31.862411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227244, 0.196956, -0.953713,
		0.170698, -0.972229, -0.160108,
		-0.958761, -0.126413, -0.254553,
		33.509949, 36.174091, 31.786045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116592, 35.821869, 31.332422>,  <34.181080, 36.262585, 31.964233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116592, 35.821869, 31.332422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804813, 36.066753, 31.385576>,  <33.617748, 36.213684, 31.417469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804813, 36.066753, 31.385576>,  <34.116592, 35.821869, 31.332422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804813, 36.066753, 31.385576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186427, 0.429181, -0.883770,
		-0.598089, -0.664076, -0.448656,
		-0.779445, 0.612214, 0.132887,
		33.570980, 36.250420, 31.425442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958302, 35.927540, 30.698637>,  <34.116592, 35.821869, 31.332422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958302, 35.927540, 30.698637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732998, 36.202290, 30.882349>,  <33.597816, 36.367142, 30.992577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732998, 36.202290, 30.882349>,  <33.958302, 35.927540, 30.698637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732998, 36.202290, 30.882349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013678, 0.548014, -0.836358,
		-0.826166, -0.477369, -0.299279,
		-0.563261, 0.686877, 0.459280,
		33.564018, 36.408352, 31.020132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470787, 36.094086, 30.213629>,  <33.958302, 35.927540, 30.698637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470787, 36.094086, 30.213629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471546, 36.418480, 30.447653>,  <33.472000, 36.613117, 30.588066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471546, 36.418480, 30.447653>,  <33.470787, 36.094086, 30.213629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471546, 36.418480, 30.447653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019492, 0.584918, -0.810858,
		-0.999808, 0.012943, -0.014697,
		0.001899, 0.810989, 0.585058,
		33.472115, 36.661777, 30.623171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057358, 36.526947, 29.900471>,  <33.470787, 36.094086, 30.213629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057358, 36.526947, 29.900471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315338, 36.724972, 30.133347>,  <33.470127, 36.843788, 30.273071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315338, 36.724972, 30.133347>,  <33.057358, 36.526947, 29.900471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315338, 36.724972, 30.133347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289310, 0.546942, -0.785592,
		-0.707344, 0.675103, 0.209524,
		0.644953, 0.495066, 0.582190,
		33.508823, 36.873493, 30.308004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987297, 37.261181, 29.696701>,  <33.057358, 36.526947, 29.900471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987297, 37.261181, 29.696701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340996, 37.213978, 29.877449>,  <33.553215, 37.185658, 29.985897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340996, 37.213978, 29.877449>,  <32.987297, 37.261181, 29.696701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340996, 37.213978, 29.877449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437889, 0.545875, -0.714335,
		-0.162368, 0.829515, 0.534360,
		0.884245, -0.118005, 0.451868,
		33.606270, 37.178577, 30.013010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245968, 37.873318, 29.616739>,  <32.987297, 37.261181, 29.696701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245968, 37.873318, 29.616739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566296, 37.647976, 29.698046>,  <33.758492, 37.512772, 29.746830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566296, 37.647976, 29.698046>,  <33.245968, 37.873318, 29.616739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566296, 37.647976, 29.698046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492324, 0.425965, -0.759059,
		0.341037, 0.707942, 0.618476,
		0.800819, -0.563358, 0.203267,
		33.806541, 37.478970, 29.759026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830097, 38.384739, 29.540915>,  <33.245968, 37.873318, 29.616739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830097, 38.384739, 29.540915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992886, 38.019718, 29.524761>,  <34.090557, 37.800705, 29.515068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992886, 38.019718, 29.524761>,  <33.830097, 38.384739, 29.540915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992886, 38.019718, 29.524761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616707, 0.307112, -0.724813,
		0.673829, 0.270073, 0.687761,
		0.406972, -0.912547, -0.040385,
		34.114979, 37.745953, 29.512646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590462, 38.386379, 29.621958>,  <33.830097, 38.384739, 29.540915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590462, 38.386379, 29.621958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513260, 38.039852, 29.437675>,  <34.466938, 37.831936, 29.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513260, 38.039852, 29.437675>,  <34.590462, 38.386379, 29.621958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513260, 38.039852, 29.437675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662161, 0.231500, -0.712706,
		0.724081, -0.442614, 0.528960,
		-0.193000, -0.866314, -0.460707,
		34.455360, 37.779957, 29.299463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269886, 38.114353, 29.353413>,  <34.590462, 38.386379, 29.621958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269886, 38.114353, 29.353413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975353, 37.968300, 29.125557>,  <34.798634, 37.880669, 28.988844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975353, 37.968300, 29.125557>,  <35.269886, 38.114353, 29.353413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975353, 37.968300, 29.125557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614482, -0.008449, -0.788886,
		0.283235, -0.930917, 0.230589,
		-0.736335, -0.365133, -0.569638,
		34.754452, 37.858761, 28.954666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615227, 37.733818, 28.782103>,  <35.269886, 38.114353, 29.353413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615227, 37.733818, 28.782103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234406, 37.734966, 28.659733>,  <35.005913, 37.735653, 28.586311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234406, 37.734966, 28.659733>,  <35.615227, 37.733818, 28.782103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234406, 37.734966, 28.659733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305928, 0.016771, -0.951907,
		0.002393, -0.999855, -0.016847,
		-0.952052, 0.002876, -0.305923,
		34.948792, 37.735825, 28.567955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615269, 37.332218, 28.260242>,  <35.615227, 37.733818, 28.782103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615269, 37.332218, 28.260242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269241, 37.526344, 28.209450>,  <35.061626, 37.642822, 28.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269241, 37.526344, 28.209450>,  <35.615269, 37.332218, 28.260242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269241, 37.526344, 28.209450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185536, 0.074350, -0.979821,
		-0.466085, -0.871170, -0.154363,
		-0.865067, 0.485320, -0.126980,
		35.009720, 37.671940, 28.171356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291584, 37.134354, 27.635561>,  <35.615269, 37.332218, 28.260242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291584, 37.134354, 27.635561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053719, 37.451706, 27.687586>,  <34.910999, 37.642117, 27.718801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053719, 37.451706, 27.687586>,  <35.291584, 37.134354, 27.635561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053719, 37.451706, 27.687586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055613, 0.201979, -0.977810,
		-0.802048, -0.574236, -0.164232,
		-0.594665, 0.793384, 0.130062,
		34.875320, 37.689720, 27.726604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807930, 37.205498, 27.033892>,  <35.291584, 37.134354, 27.635561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807930, 37.205498, 27.033892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827282, 37.573551, 27.189331>,  <34.838894, 37.794384, 27.282595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827282, 37.573551, 27.189331>,  <34.807930, 37.205498, 27.033892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827282, 37.573551, 27.189331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073034, 0.391270, -0.917374,
		-0.996155, 0.016002, 0.086131,
		0.048380, 0.920137, 0.388597,
		34.841797, 37.849594, 27.305910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405312, 37.582146, 26.568523>,  <34.807930, 37.205498, 27.033892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405312, 37.582146, 26.568523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672573, 37.814705, 26.754232>,  <34.832932, 37.954239, 26.865658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672573, 37.814705, 26.754232>,  <34.405312, 37.582146, 26.568523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672573, 37.814705, 26.754232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304478, 0.355694, -0.883615,
		-0.678869, 0.731752, 0.060636,
		0.668154, 0.581396, 0.464272,
		34.873020, 37.989124, 26.893515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189854, 38.236237, 26.268929>,  <34.405312, 37.582146, 26.568523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189854, 38.236237, 26.268929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551445, 38.270199, 26.436552>,  <34.768398, 38.290577, 26.537127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551445, 38.270199, 26.436552>,  <34.189854, 38.236237, 26.268929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551445, 38.270199, 26.436552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381666, 0.281581, -0.880365,
		-0.192750, 0.955773, 0.222137,
		0.903979, 0.084908, 0.419061,
		34.822639, 38.295670, 26.562271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579903, 38.851849, 25.907999>,  <34.189854, 38.236237, 26.268929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579903, 38.851849, 25.907999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852524, 38.600437, 26.057898>,  <35.016098, 38.449593, 26.147837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852524, 38.600437, 26.057898>,  <34.579903, 38.851849, 25.907999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852524, 38.600437, 26.057898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497566, 0.022533, -0.867133,
		0.536572, 0.777461, 0.328091,
		0.681555, -0.628527, 0.374748,
		35.056992, 38.411880, 26.170322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046101, 39.009666, 25.447149>,  <34.579903, 38.851849, 25.907999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046101, 39.009666, 25.447149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211880, 38.684647, 25.611099>,  <35.311348, 38.489635, 25.709469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211880, 38.684647, 25.611099>,  <35.046101, 39.009666, 25.447149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211880, 38.684647, 25.611099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621299, -0.076473, -0.779833,
		0.664995, 0.577858, 0.473140,
		0.414451, -0.812547, 0.409876,
		35.336216, 38.440884, 25.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775009, 39.041550, 25.317234>,  <35.046101, 39.009666, 25.447149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775009, 39.041550, 25.317234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683083, 38.658184, 25.384918>,  <35.627926, 38.428165, 25.425528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683083, 38.658184, 25.384918>,  <35.775009, 39.041550, 25.317234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683083, 38.658184, 25.384918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535415, -0.269694, -0.800372,
		0.812721, -0.093341, 0.575128,
		-0.229816, -0.958412, 0.169209,
		35.614140, 38.370659, 25.435680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426163, 38.697445, 25.217434>,  <35.775009, 39.041550, 25.317234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426163, 38.697445, 25.217434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121693, 38.443676, 25.163599>,  <35.939011, 38.291412, 25.131298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121693, 38.443676, 25.163599>,  <36.426163, 38.697445, 25.217434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121693, 38.443676, 25.163599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391214, -0.283649, -0.875497,
		0.517261, -0.719061, 0.464103,
		-0.761178, -0.634424, -0.134586,
		35.893337, 38.253349, 25.123222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737255, 37.951405, 24.992332>,  <36.426163, 38.697445, 25.217434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737255, 37.951405, 24.992332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358170, 37.971260, 24.866236>,  <36.130718, 37.983173, 24.790577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358170, 37.971260, 24.866236>,  <36.737255, 37.951405, 24.992332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358170, 37.971260, 24.866236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296106, -0.231619, -0.926646,
		-0.119008, -0.971540, 0.204811,
		-0.947712, 0.049633, -0.315244,
		36.073856, 37.986149, 24.771662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676418, 37.462162, 24.382738>,  <36.737255, 37.951405, 24.992332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676418, 37.462162, 24.382738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335640, 37.667820, 24.343046>,  <36.131172, 37.791214, 24.319231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335640, 37.667820, 24.343046>,  <36.676418, 37.462162, 24.382738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335640, 37.667820, 24.343046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101440, -0.023863, -0.994555,
		-0.513711, -0.857373, -0.031824,
		-0.851946, 0.514143, -0.099231,
		36.080055, 37.822063, 24.313276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301136, 37.224392, 23.819019>,  <36.676418, 37.462162, 24.382738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301136, 37.224392, 23.819019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160942, 37.597347, 23.854359>,  <36.076824, 37.821121, 23.875563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160942, 37.597347, 23.854359>,  <36.301136, 37.224392, 23.819019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160942, 37.597347, 23.854359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003997, 0.092843, -0.995673,
		-0.936559, -0.349322, -0.028813,
		-0.350486, 0.932392, 0.088349,
		36.055798, 37.877064, 23.880863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871658, 37.200211, 23.299541>,  <36.301136, 37.224392, 23.819019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871658, 37.200211, 23.299541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932301, 37.586914, 23.381903>,  <35.968685, 37.818935, 23.431318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932301, 37.586914, 23.381903>,  <35.871658, 37.200211, 23.299541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932301, 37.586914, 23.381903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021440, 0.211476, -0.977148,
		-0.988209, 0.143723, 0.052787,
		0.151602, 0.966758, 0.205902,
		35.977779, 37.876942, 23.443674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349236, 37.658241, 22.868505>,  <35.871658, 37.200211, 23.299541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349236, 37.658241, 22.868505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635441, 37.913479, 22.982265>,  <35.807163, 38.066620, 23.050522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635441, 37.913479, 22.982265>,  <35.349236, 37.658241, 22.868505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635441, 37.913479, 22.982265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304964, 0.080970, -0.948915,
		-0.628525, 0.765690, -0.136661,
		0.715509, 0.638093, 0.284400,
		35.850094, 38.104908, 23.067585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224564, 38.203156, 22.434217>,  <35.349236, 37.658241, 22.868505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224564, 38.203156, 22.434217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604004, 38.261993, 22.546305>,  <35.831669, 38.297298, 22.613558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604004, 38.261993, 22.546305>,  <35.224564, 38.203156, 22.434217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604004, 38.261993, 22.546305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288853, -0.040610, -0.956512,
		-0.129322, 0.988288, -0.081013,
		0.948599, 0.147099, 0.280218,
		35.888584, 38.306122, 22.630371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492001, 38.762875, 22.024872>,  <35.224564, 38.203156, 22.434217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492001, 38.762875, 22.024872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808331, 38.569126, 22.174522>,  <35.998131, 38.452877, 22.264313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808331, 38.569126, 22.174522>,  <35.492001, 38.762875, 22.024872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808331, 38.569126, 22.174522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445196, 0.035794, -0.894718,
		0.419987, 0.874128, 0.243949,
		0.790830, -0.484375, 0.374125,
		36.045578, 38.423813, 22.286760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104702, 39.086056, 21.759602>,  <35.492001, 38.762875, 22.024872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104702, 39.086056, 21.759602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208084, 38.710949, 21.852377>,  <36.270115, 38.485886, 21.908043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208084, 38.710949, 21.852377>,  <36.104702, 39.086056, 21.759602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208084, 38.710949, 21.852377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429599, -0.103472, -0.897072,
		0.865242, 0.331498, 0.376120,
		0.258460, -0.937765, 0.231940,
		36.285622, 38.429619, 21.921959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684322, 39.049999, 21.409988>,  <36.104702, 39.086056, 21.759602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684322, 39.049999, 21.409988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595028, 38.671360, 21.503046>,  <36.541451, 38.444176, 21.558880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595028, 38.671360, 21.503046>,  <36.684322, 39.049999, 21.409988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595028, 38.671360, 21.503046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414393, -0.308187, -0.856329,
		0.882295, -0.094758, 0.461061,
		-0.223237, -0.946595, 0.232645,
		36.528057, 38.387383, 21.572840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319565, 38.617970, 21.293730>,  <36.684322, 39.049999, 21.409988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319565, 38.617970, 21.293730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996464, 38.382290, 21.285957>,  <36.802601, 38.240883, 21.281294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996464, 38.382290, 21.285957>,  <37.319565, 38.617970, 21.293730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996464, 38.382290, 21.285957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275332, -0.347913, -0.896186,
		0.521269, -0.729250, 0.443253,
		-0.807757, -0.589196, -0.019430,
		36.754135, 38.205532, 21.280128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552143, 38.052528, 20.840605>,  <37.319565, 38.617970, 21.293730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552143, 38.052528, 20.840605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156147, 37.996078, 20.840322>,  <36.918549, 37.962208, 20.840153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156147, 37.996078, 20.840322>,  <37.552143, 38.052528, 20.840605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156147, 37.996078, 20.840322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062694, -0.435325, -0.898088,
		0.126432, -0.889144, 0.439816,
		-0.989992, -0.141121, -0.000705,
		36.859150, 37.953743, 20.840111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546406, 37.426929, 20.659037>,  <37.552143, 38.052528, 20.840605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546406, 37.426929, 20.659037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219460, 37.631977, 20.553867>,  <37.023293, 37.755005, 20.490767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219460, 37.631977, 20.553867>,  <37.546406, 37.426929, 20.659037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219460, 37.631977, 20.553867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251626, -0.092891, -0.963357,
		-0.518258, -0.853577, -0.053062,
		-0.817370, 0.512619, -0.262923,
		36.974247, 37.785763, 20.474991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043064, 36.814896, 20.880140>,  <37.546406, 37.426929, 20.659037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043064, 36.814896, 20.880140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298756, 36.508091, 20.857903>,  <38.452171, 36.324009, 20.844561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298756, 36.508091, 20.857903>,  <38.043064, 36.814896, 20.880140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298756, 36.508091, 20.857903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428615, -0.415364, 0.802347,
		-0.638500, -0.489050, -0.594262,
		0.639223, -0.767009, -0.055596,
		38.490524, 36.277988, 20.841225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550495, 36.221912, 20.858278>,  <38.043064, 36.814896, 20.880140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550495, 36.221912, 20.858278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915962, 36.118618, 20.983831>,  <38.135242, 36.056641, 21.059164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915962, 36.118618, 20.983831>,  <37.550495, 36.221912, 20.858278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915962, 36.118618, 20.983831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389795, -0.337854, 0.856688,
		-0.115177, -0.905081, -0.409344,
		0.913670, -0.258231, 0.313883,
		38.190063, 36.041149, 21.077997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423538, 35.656048, 21.130600>,  <37.550495, 36.221912, 20.858278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423538, 35.656048, 21.130600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778297, 35.744930, 21.292608>,  <37.991154, 35.798260, 21.389812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778297, 35.744930, 21.292608>,  <37.423538, 35.656048, 21.130600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778297, 35.744930, 21.292608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333532, -0.298634, 0.894189,
		0.319645, -0.928140, -0.190745,
		0.886896, 0.222203, 0.405021,
		38.044365, 35.811592, 21.414114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630249, 35.051834, 21.533518>,  <37.423538, 35.656048, 21.130600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630249, 35.051834, 21.533518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887669, 35.315697, 21.688797>,  <38.042122, 35.474014, 21.781965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887669, 35.315697, 21.688797>,  <37.630249, 35.051834, 21.533518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887669, 35.315697, 21.688797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190586, -0.353102, 0.915967,
		0.741295, -0.663457, -0.101519,
		0.643551, 0.659654, 0.388199,
		38.080734, 35.513592, 21.805256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997795, 34.723858, 22.066757>,  <37.630249, 35.051834, 21.533518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997795, 34.723858, 22.066757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049442, 35.113525, 22.140873>,  <38.080429, 35.347324, 22.185343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049442, 35.113525, 22.140873>,  <37.997795, 34.723858, 22.066757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049442, 35.113525, 22.140873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073793, -0.176896, 0.981460,
		0.988880, -0.140397, 0.049046,
		0.129118, 0.974165, 0.185289,
		38.088177, 35.405773, 22.196459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537300, 34.824646, 22.664360>,  <37.997795, 34.723858, 22.066757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537300, 34.824646, 22.664360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339165, 35.172104, 22.660294>,  <38.220284, 35.380577, 22.657854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339165, 35.172104, 22.660294>,  <38.537300, 34.824646, 22.664360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339165, 35.172104, 22.660294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070456, -0.028507, 0.997108,
		0.865840, 0.494619, 0.075322,
		-0.495335, 0.868643, -0.010167,
		38.190563, 35.432697, 22.657244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818745, 35.238937, 23.194494>,  <38.537300, 34.824646, 22.664360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818745, 35.238937, 23.194494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447548, 35.372715, 23.128801>,  <38.224831, 35.452980, 23.089386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447548, 35.372715, 23.128801>,  <38.818745, 35.238937, 23.194494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447548, 35.372715, 23.128801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137523, 0.102206, 0.985211,
		0.346282, 0.936858, -0.048853,
		-0.927996, 0.334443, -0.164232,
		38.169147, 35.473049, 23.079533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619026, 35.799175, 23.645761>,  <38.818745, 35.238937, 23.194494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619026, 35.799175, 23.645761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246826, 35.673351, 23.570694>,  <38.023506, 35.597858, 23.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246826, 35.673351, 23.570694>,  <38.619026, 35.799175, 23.645761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246826, 35.673351, 23.570694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206124, 0.026152, 0.978176,
		-0.302783, 0.948879, -0.089171,
		-0.930503, -0.314556, -0.187668,
		37.967674, 35.578983, 23.514393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226662, 36.047882, 24.137495>,  <38.619026, 35.799175, 23.645761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226662, 36.047882, 24.137495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934040, 35.811653, 24.001223>,  <37.758469, 35.669918, 23.919460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934040, 35.811653, 24.001223>,  <38.226662, 36.047882, 24.137495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934040, 35.811653, 24.001223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409775, -0.018505, 0.911999,
		-0.544903, 0.806774, -0.228464,
		-0.731550, -0.590570, -0.340680,
		37.714577, 35.634483, 23.899019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622978, 36.324993, 24.339182>,  <38.226662, 36.047882, 24.137495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622978, 36.324993, 24.339182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517284, 35.948036, 24.257126>,  <37.453869, 35.721863, 24.207891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517284, 35.948036, 24.257126>,  <37.622978, 36.324993, 24.339182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517284, 35.948036, 24.257126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419613, -0.079184, 0.904242,
		-0.868393, 0.325008, -0.374517,
		-0.264231, -0.942390, -0.205141,
		37.438015, 35.665318, 24.195583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872616, 36.276443, 24.492693>,  <37.622978, 36.324993, 24.339182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872616, 36.276443, 24.492693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042862, 35.916592, 24.531708>,  <37.145008, 35.700680, 24.555117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042862, 35.916592, 24.531708>,  <36.872616, 36.276443, 24.492693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042862, 35.916592, 24.531708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404115, -0.092524, 0.910016,
		-0.809657, -0.426730, -0.402935,
		0.425613, -0.899634, 0.097535,
		37.170547, 35.646702, 24.560968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300533, 35.734547, 24.599037>,  <36.872616, 36.276443, 24.492693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300533, 35.734547, 24.599037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649620, 35.604912, 24.745090>,  <36.859074, 35.527130, 24.832724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649620, 35.604912, 24.745090>,  <36.300533, 35.734547, 24.599037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649620, 35.604912, 24.745090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403939, -0.059267, 0.912864,
		-0.274211, -0.944168, -0.182637,
		0.872721, -0.324092, 0.365134,
		36.911438, 35.507687, 24.854631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067417, 35.287346, 25.079010>,  <36.300533, 35.734547, 24.599037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067417, 35.287346, 25.079010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455833, 35.302628, 25.173340>,  <36.688885, 35.311794, 25.229937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455833, 35.302628, 25.173340>,  <36.067417, 35.287346, 25.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455833, 35.302628, 25.173340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227294, -0.156174, 0.961222,
		0.073548, -0.986991, -0.142969,
		0.971045, 0.038200, 0.235824,
		36.747147, 35.314087, 25.244087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037933, 34.763306, 25.464321>,  <36.067417, 35.287346, 25.079010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037933, 34.763306, 25.464321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353020, 34.996227, 25.544754>,  <36.542072, 35.135979, 25.593014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353020, 34.996227, 25.544754>,  <36.037933, 34.763306, 25.464321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353020, 34.996227, 25.544754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271923, 0.035763, 0.961654,
		0.552783, -0.812184, 0.186513,
		0.787711, 0.582304, 0.201082,
		36.589333, 35.170918, 25.605080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254829, 34.500969, 26.120428>,  <36.037933, 34.763306, 25.464321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254829, 34.500969, 26.120428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435570, 34.857414, 26.103725>,  <36.544014, 35.071281, 26.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435570, 34.857414, 26.103725>,  <36.254829, 34.500969, 26.120428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435570, 34.857414, 26.103725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119779, 0.106984, 0.987019,
		0.884014, -0.440988, 0.155078,
		0.451854, 0.891114, -0.041754,
		36.571125, 35.124748, 26.091200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814163, 34.483334, 26.595758>,  <36.254829, 34.500969, 26.120428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814163, 34.483334, 26.595758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753937, 34.875130, 26.542194>,  <36.717800, 35.110207, 26.510056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753937, 34.875130, 26.542194>,  <36.814163, 34.483334, 26.595758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753937, 34.875130, 26.542194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054316, 0.127053, 0.990408,
		0.987107, 0.156392, 0.034073,
		-0.150563, 0.979489, -0.133910,
		36.708767, 35.168976, 26.502022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332386, 34.832947, 26.971220>,  <36.814163, 34.483334, 26.595758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332386, 34.832947, 26.971220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039135, 35.103458, 26.942430>,  <36.863186, 35.265766, 26.925158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039135, 35.103458, 26.942430>,  <37.332386, 34.832947, 26.971220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039135, 35.103458, 26.942430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009220, 0.115701, 0.993241,
		0.680033, 0.727505, -0.091058,
		-0.733124, 0.676276, -0.071973,
		36.819199, 35.306343, 26.920839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543110, 35.430809, 27.385950>,  <37.332386, 34.832947, 26.971220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543110, 35.430809, 27.385950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148682, 35.480412, 27.341597>,  <36.912025, 35.510174, 27.314985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148682, 35.480412, 27.341597>,  <37.543110, 35.430809, 27.385950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148682, 35.480412, 27.341597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065792, 0.321478, 0.944629,
		0.152790, 0.938761, -0.308840,
		-0.986066, 0.124011, -0.110882,
		36.852863, 35.517616, 27.308332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360336, 36.080124, 27.712378>,  <37.543110, 35.430809, 27.385950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360336, 36.080124, 27.712378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004303, 35.897842, 27.708687>,  <36.790684, 35.788475, 27.706472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004303, 35.897842, 27.708687>,  <37.360336, 36.080124, 27.712378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004303, 35.897842, 27.708687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207406, 0.386910, 0.898489,
		-0.405876, 0.801644, -0.438898,
		-0.890083, -0.455705, -0.009228,
		36.737278, 35.761131, 27.705919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882908, 36.568455, 28.008852>,  <37.360336, 36.080124, 27.712378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882908, 36.568455, 28.008852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719975, 36.203709, 28.029173>,  <36.622215, 35.984859, 28.041365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719975, 36.203709, 28.029173>,  <36.882908, 36.568455, 28.008852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719975, 36.203709, 28.029173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281115, 0.178109, 0.943001,
		-0.868939, 0.369835, -0.328889,
		-0.407333, -0.911866, 0.050800,
		36.597775, 35.930149, 28.044413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109642, 36.625633, 28.262760>,  <36.882908, 36.568455, 28.008852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109642, 36.625633, 28.262760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234409, 36.251236, 28.328028>,  <36.309269, 36.026596, 28.367188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234409, 36.251236, 28.328028>,  <36.109642, 36.625633, 28.262760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234409, 36.251236, 28.328028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206358, 0.100896, 0.973261,
		-0.927428, -0.337251, -0.161678,
		0.311920, -0.935992, 0.163168,
		36.327984, 35.970440, 28.376978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510651, 36.337456, 28.560568>,  <36.109642, 36.625633, 28.262760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510651, 36.337456, 28.560568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837921, 36.130581, 28.661047>,  <36.034283, 36.006454, 28.721334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837921, 36.130581, 28.661047>,  <35.510651, 36.337456, 28.560568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837921, 36.130581, 28.661047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245809, 0.080319, 0.965985,
		-0.519776, -0.852092, -0.061416,
		0.818175, -0.517192, 0.251200,
		36.083374, 35.975422, 28.736406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109028, 35.878780, 28.918077>,  <35.510651, 36.337456, 28.560568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109028, 35.878780, 28.918077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492512, 35.854591, 29.029236>,  <35.722603, 35.840076, 29.095930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492512, 35.854591, 29.029236>,  <35.109028, 35.878780, 28.918077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492512, 35.854591, 29.029236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272112, 0.089071, 0.958134,
		-0.082699, -0.994187, 0.068936,
		0.958705, -0.060479, 0.277896,
		35.780125, 35.836449, 29.112604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104137, 35.328728, 29.459045>,  <35.109028, 35.878780, 28.918077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104137, 35.328728, 29.459045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445877, 35.519989, 29.540487>,  <35.650921, 35.634747, 29.589352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445877, 35.519989, 29.540487>,  <35.104137, 35.328728, 29.459045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445877, 35.519989, 29.540487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148202, -0.151348, 0.977307,
		0.498121, -0.865136, -0.058441,
		0.854349, 0.478156, 0.203604,
		35.702183, 35.663437, 29.601568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570461, 34.910927, 29.919998>,  <35.104137, 35.328728, 29.459045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570461, 34.910927, 29.919998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689713, 35.291069, 29.955654>,  <35.761265, 35.519154, 29.977047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689713, 35.291069, 29.955654>,  <35.570461, 34.910927, 29.919998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689713, 35.291069, 29.955654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015223, -0.088640, 0.995947,
		0.954404, -0.298278, -0.011959,
		0.298129, 0.950354, 0.089139,
		35.779152, 35.576176, 29.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129925, 34.962986, 30.488176>,  <35.570461, 34.910927, 29.919998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129925, 34.962986, 30.488176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051174, 35.353779, 30.455328>,  <36.003925, 35.588253, 30.435619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051174, 35.353779, 30.455328>,  <36.129925, 34.962986, 30.488176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051174, 35.353779, 30.455328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231202, 0.127663, 0.964494,
		0.952778, 0.170900, -0.251014,
		-0.196878, 0.976983, -0.082122,
		35.992111, 35.646873, 30.430691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791679, 35.350586, 30.718672>,  <36.129925, 34.962986, 30.488176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791679, 35.350586, 30.718672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458199, 35.564285, 30.774551>,  <36.258110, 35.692505, 30.808079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458199, 35.564285, 30.774551>,  <36.791679, 35.350586, 30.718672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458199, 35.564285, 30.774551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224105, 0.096126, 0.969813,
		0.504694, 0.839843, -0.199869,
		-0.833703, 0.534250, 0.139699,
		36.208088, 35.724560, 30.816462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931664, 35.905075, 31.135311>,  <36.791679, 35.350586, 30.718672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931664, 35.905075, 31.135311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533485, 35.904869, 31.173450>,  <36.294579, 35.904743, 31.196335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533485, 35.904869, 31.173450>,  <36.931664, 35.905075, 31.135311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533485, 35.904869, 31.173450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087514, 0.392026, 0.915782,
		-0.037854, 0.919954, -0.390194,
		-0.995444, -0.000519, 0.095348,
		36.234852, 35.904713, 31.202055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807781, 36.532234, 31.368240>,  <36.931664, 35.905075, 31.135311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807781, 36.532234, 31.368240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501305, 36.293571, 31.463694>,  <36.317417, 36.150375, 31.520966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501305, 36.293571, 31.463694>,  <36.807781, 36.532234, 31.368240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501305, 36.293571, 31.463694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242792, 0.075043, 0.967171,
		-0.594976, 0.798981, 0.087366,
		-0.766195, -0.596655, 0.238635,
		36.271446, 36.114574, 31.535284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464600, 36.856392, 31.975307>,  <36.807781, 36.532234, 31.368240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464600, 36.856392, 31.975307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298889, 36.492901, 31.995644>,  <36.199463, 36.274807, 32.007843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298889, 36.492901, 31.995644>,  <36.464600, 36.856392, 31.975307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298889, 36.492901, 31.995644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256243, -0.062856, 0.964567,
		-0.873335, 0.412626, 0.258895,
		-0.414278, -0.908730, 0.050838,
		36.174606, 36.220284, 32.010895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137890, 36.799068, 32.645294>,  <36.464600, 36.856392, 31.975307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137890, 36.799068, 32.645294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200012, 36.418884, 32.537586>,  <36.237286, 36.190773, 32.472961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200012, 36.418884, 32.537586>,  <36.137890, 36.799068, 32.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200012, 36.418884, 32.537586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335306, -0.205674, 0.919385,
		-0.929220, -0.233075, 0.286752,
		0.155308, -0.950460, -0.269268,
		36.246605, 36.133747, 32.456806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868801, 36.220867, 33.255814>,  <36.137890, 36.799068, 32.645294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868801, 36.220867, 33.255814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127365, 36.026237, 33.020733>,  <36.282505, 35.909462, 32.879684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127365, 36.026237, 33.020733>,  <35.868801, 36.220867, 33.255814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127365, 36.026237, 33.020733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443714, -0.386892, 0.808352,
		-0.620699, -0.783303, -0.034194,
		0.646414, -0.486571, -0.587706,
		36.321289, 35.880268, 32.844421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905350, 35.484615, 33.471649>,  <35.868801, 36.220867, 33.255814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905350, 35.484615, 33.471649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251331, 35.524025, 33.274815>,  <36.458920, 35.547668, 33.156715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251331, 35.524025, 33.274815>,  <35.905350, 35.484615, 33.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251331, 35.524025, 33.274815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494367, -0.335962, 0.801705,
		-0.086337, -0.936709, -0.339298,
		0.864955, 0.098521, -0.492083,
		36.510818, 35.553581, 33.127190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175854, 34.838806, 33.366966>,  <35.905350, 35.484615, 33.471649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175854, 34.838806, 33.366966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482101, 35.091537, 33.318607>,  <36.665852, 35.243176, 33.289593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482101, 35.091537, 33.318607>,  <36.175854, 34.838806, 33.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482101, 35.091537, 33.318607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498045, -0.463236, 0.733051,
		0.407162, -0.621450, -0.669343,
		0.765618, 0.631833, -0.120898,
		36.711788, 35.281086, 33.282337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700817, 34.323074, 33.294064>,  <36.175854, 34.838806, 33.366966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700817, 34.323074, 33.294064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882454, 34.666550, 33.389103>,  <36.991436, 34.872635, 33.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882454, 34.666550, 33.389103>,  <36.700817, 34.323074, 33.294064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882454, 34.666550, 33.389103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549804, -0.479917, 0.683664,
		0.701083, -0.179812, -0.690037,
		0.454091, 0.858690, 0.237600,
		37.018681, 34.924156, 33.460384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360954, 34.166973, 33.250889>,  <36.700817, 34.323074, 33.294064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360954, 34.166973, 33.250889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326077, 34.476360, 33.502010>,  <37.305149, 34.661995, 33.652683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326077, 34.476360, 33.502010>,  <37.360954, 34.166973, 33.250889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326077, 34.476360, 33.502010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556349, -0.484961, 0.674751,
		0.826361, 0.408114, -0.388033,
		-0.087194, 0.773470, 0.627807,
		37.299919, 34.708401, 33.690353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010498, 34.209942, 33.615757>,  <37.360954, 34.166973, 33.250889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010498, 34.209942, 33.615757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772209, 34.449406, 33.829941>,  <37.629234, 34.593082, 33.958450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772209, 34.449406, 33.829941>,  <38.010498, 34.209942, 33.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772209, 34.449406, 33.829941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518086, -0.223025, 0.825740,
		0.613758, 0.769330, -0.177295,
		-0.595725, 0.598658, 0.535462,
		37.593491, 34.629002, 33.990578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450237, 34.440548, 34.188660>,  <38.010498, 34.209942, 33.615757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450237, 34.440548, 34.188660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068047, 34.482845, 34.298840>,  <37.838730, 34.508224, 34.364948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068047, 34.482845, 34.298840>,  <38.450237, 34.440548, 34.188660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068047, 34.482845, 34.298840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243229, -0.246183, 0.938208,
		0.167019, 0.963438, 0.209504,
		-0.955481, 0.105741, 0.275453,
		37.781403, 34.514568, 34.381477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401012, 34.666958, 34.810734>,  <38.450237, 34.440548, 34.188660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401012, 34.666958, 34.810734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029934, 34.522213, 34.773975>,  <37.807289, 34.435368, 34.751919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029934, 34.522213, 34.773975>,  <38.401012, 34.666958, 34.810734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029934, 34.522213, 34.773975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060935, -0.389589, 0.918971,
		-0.368341, 0.846922, 0.383468,
		-0.927692, -0.361861, -0.091895,
		37.751625, 34.413654, 34.746407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094521, 34.821541, 35.424507>,  <38.401012, 34.666958, 34.810734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094521, 34.821541, 35.424507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910442, 34.509811, 35.254391>,  <37.799995, 34.322773, 35.152321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910442, 34.509811, 35.254391>,  <38.094521, 34.821541, 35.424507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910442, 34.509811, 35.254391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011592, -0.473711, 0.880604,
		-0.887742, 0.410180, 0.208965,
		-0.460196, -0.779327, -0.425288,
		37.772385, 34.276012, 35.126804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826923, 35.305260, 35.866016>,  <38.094521, 34.821541, 35.424507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826923, 35.305260, 35.866016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163055, 35.191895, 36.050846>,  <38.364735, 35.123875, 36.161743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163055, 35.191895, 36.050846>,  <37.826923, 35.305260, 35.866016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163055, 35.191895, 36.050846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490057, -0.032846, 0.871071,
		-0.231700, -0.958434, -0.166493,
		0.840333, -0.283419, 0.462077,
		38.415154, 35.106869, 36.189468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721020, 34.650177, 36.252640>,  <37.826923, 35.305260, 35.866016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721020, 34.650177, 36.252640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044769, 34.821568, 36.413300>,  <38.239017, 34.924400, 36.509697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044769, 34.821568, 36.413300>,  <37.721020, 34.650177, 36.252640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044769, 34.821568, 36.413300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427819, -0.038381, 0.903049,
		0.402348, -0.902739, 0.152245,
		0.809374, 0.428473, 0.401651,
		38.287582, 34.950108, 36.533794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747158, 34.295376, 36.983932>,  <37.721020, 34.650177, 36.252640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747158, 34.295376, 36.983932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044842, 34.562344, 36.994545>,  <38.223454, 34.722523, 37.000912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044842, 34.562344, 36.994545>,  <37.747158, 34.295376, 36.983932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044842, 34.562344, 36.994545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053681, 0.020172, 0.998354,
		0.665782, -0.744412, 0.050840,
		0.744213, 0.667415, 0.026531,
		38.268105, 34.762569, 37.002502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397518, 34.034534, 37.362919>,  <37.747158, 34.295376, 36.983932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397518, 34.034534, 37.362919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356514, 34.432289, 37.373375>,  <38.331913, 34.670944, 37.379650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356514, 34.432289, 37.373375>,  <38.397518, 34.034534, 37.362919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356514, 34.432289, 37.373375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122379, -0.038686, 0.991729,
		0.987176, 0.098462, 0.125658,
		-0.102508, 0.994389, 0.026140,
		38.325760, 34.730606, 37.381218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881584, 34.226521, 37.876194>,  <38.397518, 34.034534, 37.362919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881584, 34.226521, 37.876194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633087, 34.536324, 37.828541>,  <38.483990, 34.722206, 37.799950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633087, 34.536324, 37.828541>,  <38.881584, 34.226521, 37.876194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633087, 34.536324, 37.828541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099979, 0.072444, 0.992349,
		0.777212, 0.628402, 0.032429,
		-0.621245, 0.774508, -0.119131,
		38.446712, 34.768677, 37.792801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126064, 34.960632, 38.090416>,  <38.881584, 34.226521, 37.876194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126064, 34.960632, 38.090416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729958, 34.913948, 38.120731>,  <38.492294, 34.885937, 38.138920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729958, 34.913948, 38.120731>,  <39.126064, 34.960632, 38.090416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729958, 34.913948, 38.120731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063646, 0.104470, 0.992489,
		-0.123749, 0.987656, -0.096026,
		-0.990270, -0.116707, 0.075789,
		38.432877, 34.878937, 38.143467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122417, 35.226711, 38.793377>,  <39.126064, 34.960632, 38.090416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122417, 35.226711, 38.793377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757099, 35.091656, 38.702255>,  <38.537910, 35.010624, 38.647583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757099, 35.091656, 38.702255>,  <39.122417, 35.226711, 38.793377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757099, 35.091656, 38.702255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176454, -0.176105, 0.968427,
		-0.367095, 0.924656, 0.101258,
		-0.913293, -0.337637, -0.227807,
		38.483112, 34.990364, 38.633915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742996, 35.632946, 39.218697>,  <39.122417, 35.226711, 38.793377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742996, 35.632946, 39.218697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532383, 35.309544, 39.113564>,  <38.406017, 35.115501, 39.050484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532383, 35.309544, 39.113564>,  <38.742996, 35.632946, 39.218697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532383, 35.309544, 39.113564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233981, -0.159408, 0.959084,
		-0.817325, 0.566483, -0.105243,
		-0.526529, -0.808508, -0.262834,
		38.374424, 35.066990, 39.034714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235756, 35.749901, 39.700893>,  <38.742996, 35.632946, 39.218697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235756, 35.749901, 39.700893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208519, 35.371101, 39.575317>,  <38.192177, 35.143822, 39.499973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208519, 35.371101, 39.575317>,  <38.235756, 35.749901, 39.700893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208519, 35.371101, 39.575317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256006, -0.287547, 0.922918,
		-0.964274, 0.143217, -0.222857,
		-0.068095, -0.946998, -0.313938,
		38.188091, 35.087002, 39.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562119, 35.446114, 39.913780>,  <38.235756, 35.749901, 39.700893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562119, 35.446114, 39.913780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820511, 35.144493, 39.866261>,  <37.975548, 34.963520, 39.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820511, 35.144493, 39.866261>,  <37.562119, 35.446114, 39.913780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820511, 35.144493, 39.866261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238521, -0.347218, 0.906944,
		-0.725133, -0.557533, -0.404154,
		0.645980, -0.754054, -0.118796,
		38.014305, 34.918278, 39.830624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354988, 34.988777, 40.410496>,  <37.562119, 35.446114, 39.913780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354988, 34.988777, 40.410496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715668, 34.842346, 40.318474>,  <37.932076, 34.754486, 40.263260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715668, 34.842346, 40.318474>,  <37.354988, 34.988777, 40.410496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715668, 34.842346, 40.318474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000845, -0.530599, 0.847623,
		-0.432362, -0.764495, -0.478132,
		0.901700, -0.366076, -0.230057,
		37.986176, 34.732521, 40.249458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212708, 34.224976, 40.464180>,  <37.354988, 34.988777, 40.410496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212708, 34.224976, 40.464180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591747, 34.340992, 40.517735>,  <37.819172, 34.410603, 40.549866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591747, 34.340992, 40.517735>,  <37.212708, 34.224976, 40.464180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591747, 34.340992, 40.517735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033264, -0.506426, 0.861642,
		0.317715, -0.812041, -0.489538,
		0.947603, 0.290040, 0.133887,
		37.876030, 34.428005, 40.557899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515678, 33.692890, 40.703083>,  <37.212708, 34.224976, 40.464180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515678, 33.692890, 40.703083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785591, 33.978226, 40.778790>,  <37.947540, 34.149426, 40.824211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785591, 33.978226, 40.778790>,  <37.515678, 33.692890, 40.703083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785591, 33.978226, 40.778790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171720, -0.401166, 0.899765,
		0.717762, -0.574645, -0.393194,
		0.674782, 0.713337, 0.189264,
		37.988026, 34.192226, 40.835567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194111, 33.445724, 40.960094>,  <37.515678, 33.692890, 40.703083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194111, 33.445724, 40.960094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136715, 33.810375, 41.114155>,  <38.102276, 34.029167, 41.206593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136715, 33.810375, 41.114155>,  <38.194111, 33.445724, 40.960094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136715, 33.810375, 41.114155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197901, -0.354889, 0.913723,
		0.969663, 0.207333, -0.129489,
		-0.143490, 0.911629, 0.385154,
		38.093666, 34.083862, 41.229702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681828, 33.620228, 41.487885>,  <38.194111, 33.445724, 40.960094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681828, 33.620228, 41.487885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396492, 33.879772, 41.593807>,  <38.225292, 34.035500, 41.657360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396492, 33.879772, 41.593807>,  <38.681828, 33.620228, 41.487885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396492, 33.879772, 41.593807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141839, -0.236366, 0.961256,
		0.686317, 0.723260, 0.076575,
		-0.713338, 0.648865, 0.264809,
		38.182491, 34.074432, 41.673248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906349, 33.822308, 42.128311>,  <38.681828, 33.620228, 41.487885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906349, 33.822308, 42.128311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522926, 33.934883, 42.110577>,  <38.292873, 34.002426, 42.099937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522926, 33.934883, 42.110577>,  <38.906349, 33.822308, 42.128311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522926, 33.934883, 42.110577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103739, -0.199844, 0.974321,
		0.265348, 0.938540, 0.220757,
		-0.958555, 0.281436, -0.044335,
		38.235359, 34.019314, 42.097275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838173, 34.306061, 42.653473>,  <38.906349, 33.822308, 42.128311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838173, 34.306061, 42.653473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475166, 34.155113, 42.579708>,  <38.257362, 34.064545, 42.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475166, 34.155113, 42.579708>,  <38.838173, 34.306061, 42.653473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475166, 34.155113, 42.579708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056186, -0.326038, 0.943686,
		-0.416244, 0.866771, 0.274681,
		-0.907516, -0.377370, -0.184412,
		38.202911, 34.041901, 42.524384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418610, 34.755455, 43.049725>,  <38.838173, 34.306061, 42.653473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418610, 34.755455, 43.049725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246986, 34.405872, 42.958412>,  <38.144012, 34.196125, 42.903625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246986, 34.405872, 42.958412>,  <38.418610, 34.755455, 43.049725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246986, 34.405872, 42.958412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217589, -0.145280, 0.965168,
		-0.876677, 0.463786, -0.127829,
		-0.429060, -0.873954, -0.228278,
		38.118267, 34.143684, 42.889927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743458, 34.804836, 43.388496>,  <38.418610, 34.755455, 43.049725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743458, 34.804836, 43.388496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850876, 34.427319, 43.311424>,  <37.915325, 34.200806, 43.265179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850876, 34.427319, 43.311424>,  <37.743458, 34.804836, 43.388496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850876, 34.427319, 43.311424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105856, -0.227736, 0.967952,
		-0.957433, -0.239542, -0.161064,
		0.268545, -0.943799, -0.192685,
		37.931438, 34.144180, 43.253620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358208, 34.446938, 43.725143>,  <37.743458, 34.804836, 43.388496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358208, 34.446938, 43.725143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698463, 34.247429, 43.658646>,  <37.902618, 34.127724, 43.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698463, 34.247429, 43.658646>,  <37.358208, 34.446938, 43.725143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698463, 34.247429, 43.658646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001286, -0.314237, 0.949343,
		-0.525746, -0.807764, -0.266662,
		0.850641, -0.498770, -0.166248,
		37.953655, 34.097797, 43.608772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352711, 33.784180, 44.038082>,  <37.358208, 34.446938, 43.725143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352711, 33.784180, 44.038082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739716, 33.875824, 43.995331>,  <37.971920, 33.930809, 43.969681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739716, 33.875824, 43.995331>,  <37.352711, 33.784180, 44.038082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739716, 33.875824, 43.995331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172796, -0.290688, 0.941086,
		0.184541, -0.928983, -0.320833,
		0.967515, 0.229108, -0.106881,
		38.029972, 33.944557, 43.963268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634720, 33.098972, 44.289249>,  <37.352711, 33.784180, 44.038082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634720, 33.098972, 44.289249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857384, 33.431042, 44.301479>,  <37.990982, 33.630283, 44.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857384, 33.431042, 44.301479>,  <37.634720, 33.098972, 44.289249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857384, 33.431042, 44.301479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130525, -0.123748, 0.983692,
		0.820420, -0.543595, -0.177245,
		0.556663, 0.830175, 0.030573,
		38.024384, 33.680096, 44.310650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287876, 32.951920, 44.518166>,  <37.634720, 33.098972, 44.289249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287876, 32.951920, 44.518166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176384, 33.329094, 44.591038>,  <38.109489, 33.555397, 44.634762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176384, 33.329094, 44.591038>,  <38.287876, 32.951920, 44.518166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176384, 33.329094, 44.591038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340717, -0.080268, 0.936733,
		0.897899, 0.323168, -0.298899,
		-0.278730, 0.942931, 0.182182,
		38.092766, 33.611973, 44.645691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772301, 33.581562, 44.612404>,  <38.287876, 32.951920, 44.518166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772301, 33.581562, 44.612404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441208, 33.541443, 44.833237>,  <38.242554, 33.517372, 44.965736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441208, 33.541443, 44.833237>,  <38.772301, 33.581562, 44.612404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441208, 33.541443, 44.833237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561004, -0.168062, 0.810574,
		0.011484, 0.980661, 0.195379,
		-0.827734, -0.100299, 0.552084,
		38.192886, 33.511353, 44.998863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686947, 33.884354, 43.942764>,  <38.772301, 33.581562, 44.612404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686947, 33.884354, 43.942764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335228, 33.694244, 43.955074>,  <38.124195, 33.580177, 43.962460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335228, 33.694244, 43.955074>,  <38.686947, 33.884354, 43.942764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335228, 33.694244, 43.955074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007563, -0.078540, -0.996882,
		0.476210, -0.876325, 0.072655,
		-0.879299, -0.475275, 0.030774,
		38.071438, 33.551662, 43.964306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655212, 33.360672, 43.330959>,  <38.686947, 33.884354, 43.942764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655212, 33.360672, 43.330959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289680, 33.442791, 43.471111>,  <38.070362, 33.492062, 43.555202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289680, 33.442791, 43.471111>,  <38.655212, 33.360672, 43.330959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289680, 33.442791, 43.471111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380592, -0.132016, -0.915271,
		-0.141698, -0.969744, 0.198794,
		-0.913822, 0.205352, 0.350370,
		38.015530, 33.504383, 43.576225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146549, 32.900978, 42.943615>,  <38.655212, 33.360672, 43.330959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146549, 32.900978, 42.943615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057251, 33.279190, 43.038387>,  <38.003670, 33.506119, 43.095249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057251, 33.279190, 43.038387>,  <38.146549, 32.900978, 42.943615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057251, 33.279190, 43.038387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318346, 0.159011, -0.934543,
		-0.921312, -0.284060, 0.265506,
		-0.223248, 0.945529, 0.236928,
		37.990276, 33.562847, 43.109467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422142, 33.067047, 42.798424>,  <38.146549, 32.900978, 42.943615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422142, 33.067047, 42.798424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638794, 33.403282, 42.795692>,  <37.768787, 33.605022, 42.794056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638794, 33.403282, 42.795692>,  <37.422142, 33.067047, 42.798424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638794, 33.403282, 42.795692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319663, 0.198452, -0.926517,
		-0.777463, 0.504014, 0.376193,
		0.541633, 0.840587, -0.006826,
		37.801285, 33.655457, 42.793644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055672, 33.447094, 42.338940>,  <37.422142, 33.067047, 42.798424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055672, 33.447094, 42.338940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399414, 33.644211, 42.393600>,  <37.605659, 33.762482, 42.426399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399414, 33.644211, 42.393600>,  <37.055672, 33.447094, 42.338940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399414, 33.644211, 42.393600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094826, 0.416147, -0.904339,
		-0.502516, 0.764187, 0.404346,
		0.859352, 0.492788, 0.136656,
		37.657219, 33.792046, 42.434597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939766, 34.006981, 42.077114>,  <37.055672, 33.447094, 42.338940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939766, 34.006981, 42.077114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339500, 34.014812, 42.089355>,  <37.579342, 34.019512, 42.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339500, 34.014812, 42.089355>,  <36.939766, 34.006981, 42.077114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339500, 34.014812, 42.089355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009920, 0.663310, -0.748279,
		-0.034955, 0.748089, 0.662678,
		0.999340, 0.019582, 0.030607,
		37.639301, 34.020687, 42.098537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175976, 34.752491, 42.016018>,  <36.939766, 34.006981, 42.077114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175976, 34.752491, 42.016018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501675, 34.541855, 41.918282>,  <37.697094, 34.415474, 41.859638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501675, 34.541855, 41.918282>,  <37.175976, 34.752491, 42.016018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501675, 34.541855, 41.918282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058319, 0.492976, -0.868086,
		0.577581, 0.692587, 0.432115,
		0.814248, -0.526591, -0.244342,
		37.745949, 34.383877, 41.844978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673946, 35.242451, 41.761276>,  <37.175976, 34.752491, 42.016018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673946, 35.242451, 41.761276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770386, 34.886127, 41.607216>,  <37.828247, 34.672333, 41.514782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770386, 34.886127, 41.607216>,  <37.673946, 35.242451, 41.761276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770386, 34.886127, 41.607216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103491, 0.418190, -0.902444,
		0.964967, 0.177716, 0.193014,
		0.241096, -0.890805, -0.385148,
		37.842716, 34.618885, 41.491673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306843, 35.297070, 41.414528>,  <37.673946, 35.242451, 41.761276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306843, 35.297070, 41.414528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336914, 34.898468, 41.399971>,  <38.354958, 34.659306, 41.391239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336914, 34.898468, 41.399971>,  <38.306843, 35.297070, 41.414528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336914, 34.898468, 41.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353093, 0.060731, -0.933615,
		0.932562, 0.057343, 0.356425,
		0.075183, -0.996506, -0.036388,
		38.359470, 34.599518, 41.389053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978710, 35.052082, 41.026997>,  <38.306843, 35.297070, 41.414528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978710, 35.052082, 41.026997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700783, 34.767323, 40.986145>,  <38.534027, 34.596466, 40.961636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700783, 34.767323, 40.986145>,  <38.978710, 35.052082, 41.026997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700783, 34.767323, 40.986145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110093, 0.035049, -0.993303,
		0.710711, -0.701407, 0.054022,
		-0.694817, -0.711899, -0.102130,
		38.492336, 34.553753, 40.955505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262089, 34.639103, 40.544041>,  <38.978710, 35.052082, 41.026997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262089, 34.639103, 40.544041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865032, 34.590721, 40.541492>,  <38.626801, 34.561691, 40.539963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865032, 34.590721, 40.541492>,  <39.262089, 34.639103, 40.544041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865032, 34.590721, 40.541492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002835, 0.075789, -0.997120,
		0.121089, -0.989761, -0.075574,
		-0.992638, -0.120955, -0.006371,
		38.567242, 34.554436, 40.539581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132446, 34.231136, 39.947506>,  <39.262089, 34.639103, 40.544041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132446, 34.231136, 39.947506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777008, 34.394848, 40.030334>,  <38.563744, 34.493076, 40.080032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777008, 34.394848, 40.030334>,  <39.132446, 34.231136, 39.947506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777008, 34.394848, 40.030334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238037, -0.025578, -0.970919,
		-0.392083, -0.912049, 0.120153,
		-0.888600, 0.409282, 0.207073,
		38.510429, 34.517632, 40.092457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726547, 33.891590, 39.463856>,  <39.132446, 34.231136, 39.947506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726547, 33.891590, 39.463856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493607, 34.185310, 39.603378>,  <38.353840, 34.361542, 39.687092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493607, 34.185310, 39.603378>,  <38.726547, 33.891590, 39.463856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493607, 34.185310, 39.603378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411397, 0.103865, -0.905519,
		-0.701152, -0.670830, 0.241603,
		-0.582355, 0.734301, 0.348802,
		38.318901, 34.405602, 39.708019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114326, 33.850063, 39.098858>,  <38.726547, 33.891590, 39.463856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114326, 33.850063, 39.098858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125713, 34.231819, 39.217739>,  <38.132545, 34.460873, 39.289066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125713, 34.231819, 39.217739>,  <38.114326, 33.850063, 39.098858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125713, 34.231819, 39.217739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124081, 0.298396, -0.946342,
		-0.991863, -0.009935, 0.126917,
		0.028469, 0.954390, 0.297201,
		38.134254, 34.518135, 39.306900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644947, 34.072472, 38.606064>,  <38.114326, 33.850063, 39.098858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644947, 34.072472, 38.606064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854527, 34.382133, 38.748142>,  <37.980274, 34.567928, 38.833389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854527, 34.382133, 38.748142>,  <37.644947, 34.072472, 38.606064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854527, 34.382133, 38.748142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022813, 0.404119, -0.914422,
		-0.851444, 0.487214, 0.194077,
		0.523950, 0.774151, 0.355200,
		38.011711, 34.614380, 38.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289795, 34.678902, 38.268330>,  <37.644947, 34.072472, 38.606064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289795, 34.678902, 38.268330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659527, 34.765133, 38.394272>,  <37.881367, 34.816872, 38.469837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659527, 34.765133, 38.394272>,  <37.289795, 34.678902, 38.268330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659527, 34.765133, 38.394272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189028, 0.458086, -0.868577,
		-0.331483, 0.862370, 0.382672,
		0.924331, 0.215583, 0.314860,
		37.936825, 34.829807, 38.488731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310207, 35.301708, 38.185802>,  <37.289795, 34.678902, 38.268330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310207, 35.301708, 38.185802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699131, 35.208225, 38.186310>,  <37.932484, 35.152134, 38.186615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699131, 35.208225, 38.186310>,  <37.310207, 35.301708, 38.185802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699131, 35.208225, 38.186310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099080, 0.407287, -0.907910,
		0.211672, 0.882891, 0.419164,
		0.972306, -0.233710, 0.001266,
		37.990822, 35.138111, 38.186691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724041, 35.833401, 37.804516>,  <37.310207, 35.301708, 38.185802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724041, 35.833401, 37.804516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959293, 35.509922, 37.800346>,  <38.100445, 35.315834, 37.797844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959293, 35.509922, 37.800346>,  <37.724041, 35.833401, 37.804516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959293, 35.509922, 37.800346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198461, 0.156805, -0.967484,
		0.784037, 0.566940, 0.252717,
		0.588133, -0.808697, -0.010425,
		38.135735, 35.267311, 37.797218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284042, 36.047726, 37.514469>,  <37.724041, 35.833401, 37.804516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284042, 36.047726, 37.514469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315807, 35.651516, 37.469643>,  <38.334866, 35.413792, 37.442745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315807, 35.651516, 37.469643>,  <38.284042, 36.047726, 37.514469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315807, 35.651516, 37.469643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388340, 0.134280, -0.911680,
		0.918088, 0.028877, 0.395323,
		0.079410, -0.990523, -0.112066,
		38.339630, 35.354359, 37.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974342, 35.862228, 37.056244>,  <38.284042, 36.047726, 37.514469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974342, 35.862228, 37.056244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799095, 35.502876, 37.043819>,  <38.693947, 35.287266, 37.036366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799095, 35.502876, 37.043819>,  <38.974342, 35.862228, 37.056244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799095, 35.502876, 37.043819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331927, -0.129569, -0.934364,
		0.835392, -0.419668, 0.354964,
		-0.438115, -0.898382, -0.031058,
		38.667660, 35.233360, 37.034500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446644, 35.270618, 37.052708>,  <38.974342, 35.862228, 37.056244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446644, 35.270618, 37.052708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095531, 35.163216, 36.894012>,  <38.884865, 35.098774, 36.798794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095531, 35.163216, 36.894012>,  <39.446644, 35.270618, 37.052708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095531, 35.163216, 36.894012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426766, -0.062019, -0.902233,
		0.217651, -0.961279, 0.169029,
		-0.877780, -0.268508, -0.396743,
		38.832199, 35.082664, 36.774990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534752, 34.681835, 36.595650>,  <39.446644, 35.270618, 37.052708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534752, 34.681835, 36.595650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190109, 34.854832, 36.489372>,  <38.983326, 34.958630, 36.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190109, 34.854832, 36.489372>,  <39.534752, 34.681835, 36.595650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190109, 34.854832, 36.489372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297678, 0.006567, -0.954644,
		-0.411131, -0.901614, -0.134401,
		-0.861603, 0.432492, -0.265691,
		38.931629, 34.984581, 36.409664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303596, 34.785698, 36.622009>,  <39.534752, 34.681835, 36.595650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303596, 34.785698, 36.622009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676498, 34.858509, 36.496941>,  <40.900242, 34.902195, 36.421898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676498, 34.858509, 36.496941>,  <40.303596, 34.785698, 36.622009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676498, 34.858509, 36.496941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331034, -0.777888, 0.534142,
		-0.145993, -0.601462, -0.785449,
		0.932257, 0.182029, -0.312670,
		40.956177, 34.913116, 36.403141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612930, 34.231144, 36.261467>,  <40.303596, 34.785698, 36.622009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612930, 34.231144, 36.261467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909496, 34.447231, 36.420700>,  <41.087437, 34.576885, 36.516239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909496, 34.447231, 36.420700>,  <40.612930, 34.231144, 36.261467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909496, 34.447231, 36.420700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278659, -0.787511, 0.549705,
		0.610452, -0.296632, -0.734410,
		0.741416, 0.540218, 0.398079,
		41.131920, 34.609295, 36.540123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266712, 33.876377, 36.179169>,  <40.612930, 34.231144, 36.261467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266712, 33.876377, 36.179169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250618, 34.090775, 36.516476>,  <41.240963, 34.219414, 36.718861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250618, 34.090775, 36.516476>,  <41.266712, 33.876377, 36.179169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250618, 34.090775, 36.516476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443689, -0.746595, 0.495717,
		0.895277, 0.394090, -0.207777,
		-0.040232, 0.535993, 0.843264,
		41.238548, 34.251572, 36.769455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845917, 33.809296, 36.488861>,  <41.266712, 33.876377, 36.179169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845917, 33.809296, 36.488861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619446, 33.912331, 36.802063>,  <41.483562, 33.974152, 36.989983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619446, 33.912331, 36.802063>,  <41.845917, 33.809296, 36.488861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619446, 33.912331, 36.802063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511023, -0.635652, 0.578621,
		0.646763, 0.727733, 0.228258,
		-0.566174, 0.257586, 0.783005,
		41.449593, 33.989605, 37.036964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488613, 33.907143, 36.820564>,  <41.845917, 33.809296, 36.488861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488613, 33.907143, 36.820564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148178, 33.718285, 36.912422>,  <41.943916, 33.604969, 36.967537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148178, 33.718285, 36.912422>,  <42.488613, 33.907143, 36.820564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148178, 33.718285, 36.912422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524161, -0.738937, 0.423353,
		-0.030191, 0.480679, 0.876377,
		-0.851084, -0.472144, 0.229644,
		41.892853, 33.576641, 36.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261887, 33.964802, 36.961937>,  <42.488613, 33.907143, 36.820564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261887, 33.964802, 36.961937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354393, 34.323856, 37.112015>,  <43.409897, 34.539288, 37.202061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.354393, 34.323856, 37.112015>,  <43.261887, 33.964802, 36.961937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354393, 34.323856, 37.112015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467703, -0.440738, 0.766162,
		0.853094, -0.001711, -0.521754,
		0.231268, 0.897634, 0.375190,
		43.423775, 34.593147, 37.224571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040173, 34.075226, 36.945675>,  <43.261887, 33.964802, 36.961937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040173, 34.075226, 36.945675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823570, 34.259594, 37.226910>,  <43.693607, 34.370216, 37.395649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823570, 34.259594, 37.226910>,  <44.040173, 34.075226, 36.945675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823570, 34.259594, 37.226910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349491, -0.637199, 0.686902,
		0.764609, 0.617682, 0.183960,
		-0.541506, 0.460919, 0.703082,
		43.661118, 34.397869, 37.437836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449154, 34.337254, 37.430458>,  <44.040173, 34.075226, 36.945675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449154, 34.337254, 37.430458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104099, 34.267345, 37.620327>,  <43.897068, 34.225399, 37.734249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104099, 34.267345, 37.620327>,  <44.449154, 34.337254, 37.430458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104099, 34.267345, 37.620327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474010, -0.606860, 0.637993,
		0.176555, 0.775355, 0.606344,
		-0.862637, -0.174772, 0.474670,
		43.845306, 34.214912, 37.762730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674923, 34.916836, 37.902554>,  <44.449154, 34.337254, 37.430458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674923, 34.916836, 37.902554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559586, 34.678238, 38.202168>,  <44.490383, 34.535080, 38.381935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559586, 34.678238, 38.202168>,  <44.674923, 34.916836, 37.902554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559586, 34.678238, 38.202168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530116, -0.750884, -0.393892,
		0.797393, 0.283502, 0.532721,
		-0.288342, -0.596491, 0.749038,
		44.473083, 34.499290, 38.426880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189796, 35.080421, 38.325615>,  <44.674923, 34.916836, 37.902554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189796, 35.080421, 38.325615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964912, 34.758018, 38.251556>,  <44.829983, 34.564579, 38.207123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964912, 34.758018, 38.251556>,  <45.189796, 35.080421, 38.325615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964912, 34.758018, 38.251556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379552, -0.052576, -0.923675,
		0.734752, -0.589571, 0.335479,
		-0.562210, -0.806003, -0.185143,
		44.796249, 34.516216, 38.196014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640293, 34.538540, 38.216797>,  <45.189796, 35.080421, 38.325615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640293, 34.538540, 38.216797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300476, 34.515236, 38.007080>,  <45.096584, 34.501255, 37.881252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300476, 34.515236, 38.007080>,  <45.640293, 34.538540, 38.216797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300476, 34.515236, 38.007080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527324, -0.120551, -0.841069,
		-0.014202, -0.990996, 0.133137,
		-0.849546, -0.058261, -0.524288,
		45.045612, 34.497757, 37.849792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755970, 33.916065, 37.838242>,  <45.640293, 34.538540, 38.216797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755970, 33.916065, 37.838242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499229, 34.176498, 37.676197>,  <45.345184, 34.332760, 37.578972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499229, 34.176498, 37.676197>,  <45.755970, 33.916065, 37.838242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499229, 34.176498, 37.676197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557669, 0.033719, -0.829378,
		-0.526336, -0.758255, -0.384733,
		-0.641852, 0.651086, -0.405108,
		45.306675, 34.371822, 37.554665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488392, 33.572823, 37.237705>,  <45.755970, 33.916065, 37.838242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488392, 33.572823, 37.237705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507179, 33.972172, 37.250668>,  <45.518452, 34.211781, 37.258446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.507179, 33.972172, 37.250668>,  <45.488392, 33.572823, 37.237705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507179, 33.972172, 37.250668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589708, -0.001532, -0.807615,
		-0.806250, 0.057043, -0.588819,
		0.046971, 0.998370, 0.032403,
		45.521271, 34.271683, 37.260387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316143, 33.787437, 36.649128>,  <45.488392, 33.572823, 37.237705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316143, 33.787437, 36.649128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556610, 34.067348, 36.803482>,  <45.700890, 34.235294, 36.896095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556610, 34.067348, 36.803482>,  <45.316143, 33.787437, 36.649128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556610, 34.067348, 36.803482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584367, -0.055585, -0.809583,
		-0.545079, 0.712194, -0.442344,
		0.601168, 0.699778, 0.385885,
		45.736961, 34.277283, 36.919247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334061, 34.269218, 36.148293>,  <45.316143, 33.787437, 36.649128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334061, 34.269218, 36.148293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660484, 34.296204, 36.377899>,  <45.856339, 34.312397, 36.515663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660484, 34.296204, 36.377899>,  <45.334061, 34.269218, 36.148293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660484, 34.296204, 36.377899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577172, -0.042933, -0.815493,
		-0.030375, 0.996797, -0.073976,
		0.816058, 0.067468, 0.574019,
		45.905300, 34.316444, 36.550106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747971, 34.769375, 35.876743>,  <45.334061, 34.269218, 36.148293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747971, 34.769375, 35.876743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994881, 34.514999, 36.062023>,  <46.143028, 34.362373, 36.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994881, 34.514999, 36.062023>,  <45.747971, 34.769375, 35.876743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994881, 34.514999, 36.062023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593018, -0.010807, -0.805117,
		0.517012, 0.771663, 0.370453,
		0.617275, -0.635940, 0.463197,
		46.180065, 34.324219, 36.200981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496410, 34.977856, 36.057884>,  <45.747971, 34.769375, 35.876743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496410, 34.977856, 36.057884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439686, 34.591614, 35.970711>,  <46.405651, 34.359867, 35.918407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439686, 34.591614, 35.970711>,  <46.496410, 34.977856, 36.057884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439686, 34.591614, 35.970711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749051, 0.039256, -0.661349,
		0.647158, -0.257025, 0.717722,
		-0.141809, -0.965607, -0.217930,
		46.397144, 34.301933, 35.905331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126869, 34.428379, 36.118057>,  <46.496410, 34.977856, 36.057884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126869, 34.428379, 36.118057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863430, 34.312531, 35.840248>,  <46.705364, 34.243023, 35.673561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863430, 34.312531, 35.840248>,  <47.126869, 34.428379, 36.118057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863430, 34.312531, 35.840248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719401, 0.028356, -0.694016,
		0.220694, -0.956722, 0.189677,
		-0.658602, -0.289619, -0.694525,
		46.665848, 34.225643, 35.631889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.281395, 35.191795, 35.919846>,  <47.126869, 34.428379, 36.118057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.281395, 35.191795, 35.919846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150124, 35.243977, 35.545620>,  <47.071362, 35.275284, 35.321083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150124, 35.243977, 35.545620>,  <47.281395, 35.191795, 35.919846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150124, 35.243977, 35.545620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941157, 0.129835, -0.312036,
		0.080764, -0.982917, -0.165383,
		-0.328178, 0.130450, -0.935565,
		47.051670, 35.283112, 35.264950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.622139, 34.662224, 35.484932>,  <47.281395, 35.191795, 35.919846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.622139, 34.662224, 35.484932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546326, 35.006462, 35.295849>,  <47.500839, 35.213005, 35.182400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546326, 35.006462, 35.295849>,  <47.622139, 34.662224, 35.484932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.546326, 35.006462, 35.295849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967486, 0.081572, -0.239410,
		-0.167476, -0.502713, -0.848075,
		-0.189534, 0.860596, -0.472707,
		47.489464, 35.264641, 35.154037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.927399, 34.616364, 34.726093>,  <47.622139, 34.662224, 35.484932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.927399, 34.616364, 34.726093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.874977, 34.982769, 34.877750>,  <47.843525, 35.202614, 34.968742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.874977, 34.982769, 34.877750>,  <47.927399, 34.616364, 34.726093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.874977, 34.982769, 34.877750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954577, 0.219825, -0.201144,
		-0.267595, 0.335557, -0.903214,
		-0.131053, 0.916013, 0.379139,
		47.835663, 35.257572, 34.991493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.110851, 30.965847, 25.234692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715305, 31.020079, 25.210146>,  <35.477978, 31.052618, 25.195417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715305, 31.020079, 25.210146>,  <36.110851, 30.965847, 25.234692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715305, 31.020079, 25.210146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096369, -0.269156, 0.958263,
		0.113402, 0.953506, 0.279224,
		-0.988864, 0.135577, -0.061365,
		35.418648, 31.060751, 25.191736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887413, 31.512417, 25.757292>,  <36.110851, 30.965847, 25.234692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887413, 31.512417, 25.757292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561680, 31.298788, 25.666410>,  <35.366238, 31.170610, 25.611881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561680, 31.298788, 25.666410>,  <35.887413, 31.512417, 25.757292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561680, 31.298788, 25.666410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092683, -0.266777, 0.959291,
		-0.572945, 0.802244, 0.167747,
		-0.814337, -0.534074, -0.227203,
		35.317379, 31.138565, 25.598249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357372, 31.798353, 26.061808>,  <35.887413, 31.512417, 25.757292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357372, 31.798353, 26.061808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194813, 31.436672, 26.009249>,  <35.097279, 31.219664, 25.977715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194813, 31.436672, 26.009249>,  <35.357372, 31.798353, 26.061808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194813, 31.436672, 26.009249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283568, -0.011892, 0.958878,
		-0.868581, 0.426943, -0.251570,
		-0.406394, -0.904201, -0.131396,
		35.072895, 31.165413, 25.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674892, 31.883472, 26.405958>,  <35.357372, 31.798353, 26.061808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674892, 31.883472, 26.405958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733109, 31.489637, 26.367167>,  <34.768036, 31.253336, 26.343891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733109, 31.489637, 26.367167>,  <34.674892, 31.883472, 26.405958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733109, 31.489637, 26.367167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396767, -0.147878, 0.905929,
		-0.906309, -0.093368, -0.412174,
		0.145536, -0.984589, -0.096977,
		34.776768, 31.194262, 26.338074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982616, 31.448975, 26.382946>,  <34.674892, 31.883472, 26.405958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982616, 31.448975, 26.382946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284679, 31.208092, 26.486549>,  <34.465916, 31.063562, 26.548712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284679, 31.208092, 26.486549>,  <33.982616, 31.448975, 26.382946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284679, 31.208092, 26.486549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529652, -0.327677, 0.782366,
		-0.386276, -0.727992, -0.566408,
		0.755156, -0.602208, 0.259009,
		34.511227, 31.027430, 26.564253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659779, 30.815153, 26.720930>,  <33.982616, 31.448975, 26.382946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659779, 30.815153, 26.720930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036892, 30.843559, 26.851238>,  <34.263161, 30.860603, 26.929422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036892, 30.843559, 26.851238>,  <33.659779, 30.815153, 26.720930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036892, 30.843559, 26.851238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315803, -0.123189, 0.940794,
		0.106941, -0.989839, -0.093713,
		0.942779, 0.071015, 0.325769,
		34.319725, 30.864864, 26.948969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614555, 30.564842, 27.298817>,  <33.659779, 30.815153, 26.720930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614555, 30.564842, 27.298817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981167, 30.708410, 27.369408>,  <34.201134, 30.794550, 27.411762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.981167, 30.708410, 27.369408>,  <33.614555, 30.564842, 27.298817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981167, 30.708410, 27.369408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188964, -0.000297, 0.981984,
		0.352505, -0.933369, 0.067551,
		0.916533, 0.358919, 0.176477,
		34.256126, 30.816086, 27.422352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782772, 30.334845, 27.949467>,  <33.614555, 30.564842, 27.298817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782772, 30.334845, 27.949467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.102772, 30.574001, 27.929350>,  <34.294769, 30.717495, 27.917280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.102772, 30.574001, 27.929350>,  <33.782772, 30.334845, 27.949467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102772, 30.574001, 27.929350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034402, 0.037977, 0.998686,
		0.599018, -0.800675, 0.009813,
		0.799996, 0.597894, -0.050294,
		34.342770, 30.753370, 27.914261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306618, 30.104532, 28.507154>,  <33.782772, 30.334845, 27.949467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306618, 30.104532, 28.507154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.377346, 30.484961, 28.405804>,  <34.419781, 30.713217, 28.344994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.377346, 30.484961, 28.405804>,  <34.306618, 30.104532, 28.507154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377346, 30.484961, 28.405804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137571, 0.231026, 0.963172,
		0.974582, -0.205164, -0.089990,
		0.176819, 0.951070, -0.253378,
		34.430393, 30.770281, 28.329790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911766, 30.392591, 28.890484>,  <34.306618, 30.104532, 28.507154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911766, 30.392591, 28.890484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.697575, 30.711927, 28.780268>,  <34.569061, 30.903528, 28.714138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.697575, 30.711927, 28.780268>,  <34.911766, 30.392591, 28.890484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697575, 30.711927, 28.780268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048973, 0.355058, 0.933561,
		0.843130, 0.486406, -0.229222,
		-0.535476, 0.798338, -0.275539,
		34.536930, 30.951429, 28.697605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346405, 30.994329, 29.176651>,  <34.911766, 30.392591, 28.890484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346405, 30.994329, 29.176651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962280, 31.095921, 29.130539>,  <34.731804, 31.156876, 29.102871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962280, 31.095921, 29.130539>,  <35.346405, 30.994329, 29.176651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962280, 31.095921, 29.130539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025332, 0.332190, 0.942872,
		0.277764, 0.908375, -0.312573,
		-0.960315, 0.253978, -0.115282,
		34.674187, 31.172113, 29.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222752, 31.720394, 29.326874>,  <35.346405, 30.994329, 29.176651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222752, 31.720394, 29.326874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876968, 31.527405, 29.383345>,  <34.669498, 31.411612, 29.417227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.876968, 31.527405, 29.383345>,  <35.222752, 31.720394, 29.326874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876968, 31.527405, 29.383345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046479, 0.356339, 0.933200,
		-0.500550, 0.800152, -0.330465,
		-0.864459, -0.482473, 0.141175,
		34.617630, 31.382664, 29.425697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928112, 32.042255, 29.866951>,  <35.222752, 31.720394, 29.326874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928112, 32.042255, 29.866951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693535, 31.718262, 29.868361>,  <34.552788, 31.523867, 29.869205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693535, 31.718262, 29.868361>,  <34.928112, 32.042255, 29.866951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693535, 31.718262, 29.868361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144642, 0.109003, 0.983462,
		-0.796970, 0.576236, -0.181082,
		-0.586444, -0.809982, 0.003524,
		34.517601, 31.475267, 29.869417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353485, 32.201317, 30.265682>,  <34.928112, 32.042255, 29.866951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353485, 32.201317, 30.265682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345810, 31.801611, 30.252382>,  <34.341206, 31.561789, 30.244402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345810, 31.801611, 30.252382>,  <34.353485, 32.201317, 30.265682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345810, 31.801611, 30.252382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052323, -0.032207, 0.998111,
		-0.998446, 0.020891, -0.051666,
		-0.019187, -0.999263, -0.033250,
		34.340054, 31.501833, 30.242407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889221, 31.957718, 30.807348>,  <34.353485, 32.201317, 30.265682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889221, 31.957718, 30.807348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105358, 31.634127, 30.714754>,  <34.235039, 31.439972, 30.659199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105358, 31.634127, 30.714754>,  <33.889221, 31.957718, 30.807348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105358, 31.634127, 30.714754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049626, -0.305263, 0.950974,
		-0.839981, -0.502364, -0.205093,
		0.540342, -0.808978, -0.231484,
		34.267460, 31.391434, 30.645309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547863, 31.377756, 31.103928>,  <33.889221, 31.957718, 30.807348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547863, 31.377756, 31.103928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930489, 31.268564, 31.063009>,  <34.160065, 31.203049, 31.038458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.930489, 31.268564, 31.063009>,  <33.547863, 31.377756, 31.103928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930489, 31.268564, 31.063009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014967, -0.396438, 0.917940,
		-0.291130, -0.876539, -0.383305,
		0.956567, -0.272976, -0.102296,
		34.217457, 31.186670, 31.032320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599915, 30.744698, 31.447781>,  <33.547863, 31.377756, 31.103928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599915, 30.744698, 31.447781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975559, 30.877907, 31.413918>,  <34.200947, 30.957832, 31.393600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975559, 30.877907, 31.413918>,  <33.599915, 30.744698, 31.447781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975559, 30.877907, 31.413918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200149, -0.329891, 0.922558,
		0.279305, -0.883328, -0.376458,
		0.939111, 0.333023, -0.084657,
		34.257294, 30.977814, 31.388521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158539, 30.251383, 31.717413>,  <33.599915, 30.744698, 31.447781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158539, 30.251383, 31.717413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364605, 30.593081, 31.745327>,  <34.488247, 30.798100, 31.762075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364605, 30.593081, 31.745327>,  <34.158539, 30.251383, 31.717413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364605, 30.593081, 31.745327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217166, -0.208862, 0.953528,
		0.829119, -0.476074, -0.293112,
		0.515170, 0.854243, 0.069784,
		34.519157, 30.849354, 31.766262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767330, 30.095518, 32.024773>,  <34.158539, 30.251383, 31.717413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767330, 30.095518, 32.024773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786480, 30.490881, 32.082409>,  <34.797970, 30.728098, 32.116993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786480, 30.490881, 32.082409>,  <34.767330, 30.095518, 32.024773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786480, 30.490881, 32.082409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384508, -0.151379, 0.910625,
		0.921879, 0.011810, -0.387297,
		0.047874, 0.988405, 0.144094,
		34.800842, 30.787403, 32.125637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414558, 30.207615, 32.271740>,  <34.767330, 30.095518, 32.024773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414558, 30.207615, 32.271740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230972, 30.546312, 32.379353>,  <35.120819, 30.749531, 32.443920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230972, 30.546312, 32.379353>,  <35.414558, 30.207615, 32.271740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230972, 30.546312, 32.379353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529637, 0.017640, 0.848041,
		0.713327, 0.531709, -0.456563,
		-0.458965, 0.846743, 0.269030,
		35.093285, 30.800335, 32.460060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951462, 30.632349, 32.417164>,  <35.414558, 30.207615, 32.271740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951462, 30.632349, 32.417164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637691, 30.787111, 32.611061>,  <35.449429, 30.879969, 32.727398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637691, 30.787111, 32.611061>,  <35.951462, 30.632349, 32.417164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637691, 30.787111, 32.611061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521845, -0.010654, 0.852974,
		0.335186, 0.922057, -0.193548,
		-0.784429, 0.386907, 0.484742,
		35.402363, 30.903183, 32.756485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244385, 30.986952, 32.921921>,  <35.951462, 30.632349, 32.417164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244385, 30.986952, 32.921921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870689, 30.945599, 33.058453>,  <35.646473, 30.920786, 33.140373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870689, 30.945599, 33.058453>,  <36.244385, 30.986952, 32.921921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870689, 30.945599, 33.058453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354060, -0.153779, 0.922493,
		-0.042882, 0.982682, 0.180270,
		-0.934239, -0.103385, 0.341334,
		35.590416, 30.914583, 33.160854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626308, 31.390228, 33.327511>,  <36.244385, 30.986952, 32.921921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626308, 31.390228, 33.327511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957737, 31.607996, 33.379772>,  <37.156593, 31.738657, 33.411129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957737, 31.607996, 33.379772>,  <36.626308, 31.390228, 33.327511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957737, 31.607996, 33.379772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009078, 0.246400, -0.969126,
		-0.559806, 0.801806, 0.209103,
		0.828574, 0.544421, 0.130658,
		37.206310, 31.771322, 33.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452972, 31.979059, 32.917408>,  <36.626308, 31.390228, 33.327511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452972, 31.979059, 32.917408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847733, 32.012455, 32.972637>,  <37.084587, 32.032494, 33.005775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847733, 32.012455, 32.972637>,  <36.452972, 31.979059, 32.917408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847733, 32.012455, 32.972637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103881, 0.326002, -0.939644,
		-0.123462, 0.941675, 0.313058,
		0.986897, 0.083490, 0.138071,
		37.143803, 32.037502, 33.014057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638378, 32.613579, 32.600368>,  <36.452972, 31.979059, 32.917408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638378, 32.613579, 32.600368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957893, 32.375305, 32.634052>,  <37.149605, 32.232342, 32.654263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957893, 32.375305, 32.634052>,  <36.638378, 32.613579, 32.600368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957893, 32.375305, 32.634052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169196, 0.088119, -0.981635,
		0.577327, 0.798368, 0.171177,
		0.798790, -0.595687, 0.084207,
		37.197529, 32.196598, 32.659313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017773, 32.945690, 32.179039>,  <36.638378, 32.613579, 32.600368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017773, 32.945690, 32.179039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.168690, 32.578934, 32.231144>,  <37.259239, 32.358879, 32.262409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.168690, 32.578934, 32.231144>,  <37.017773, 32.945690, 32.179039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168690, 32.578934, 32.231144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117923, -0.091951, -0.988756,
		0.918556, 0.388412, 0.073430,
		0.377293, -0.916887, 0.130265,
		37.281876, 32.303867, 32.270222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654987, 33.016731, 31.893208>,  <37.017773, 32.945690, 32.179039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654987, 33.016731, 31.893208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564011, 32.627377, 31.882030>,  <37.509422, 32.393764, 31.875324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564011, 32.627377, 31.882030>,  <37.654987, 33.016731, 31.893208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564011, 32.627377, 31.882030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070173, 0.012235, -0.997460,
		0.971259, -0.228829, 0.065523,
		-0.227446, -0.973390, -0.027941,
		37.495777, 32.335361, 31.873648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147396, 32.684120, 31.382582>,  <37.654987, 33.016731, 31.893208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147396, 32.684120, 31.382582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828255, 32.445164, 31.414980>,  <37.636768, 32.301792, 31.434420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828255, 32.445164, 31.414980>,  <38.147396, 32.684120, 31.382582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828255, 32.445164, 31.414980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054793, -0.205658, -0.977089,
		0.600358, -0.775134, 0.196818,
		-0.797852, -0.597388, 0.080996,
		37.588898, 32.265949, 31.439280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331585, 32.138031, 30.932789>,  <38.147396, 32.684120, 31.382582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331585, 32.138031, 30.932789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934937, 32.117596, 30.980240>,  <37.696945, 32.105335, 31.008711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934937, 32.117596, 30.980240>,  <38.331585, 32.138031, 30.932789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934937, 32.117596, 30.980240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117289, -0.028485, -0.992689,
		0.054094, -0.998288, 0.022254,
		-0.991623, -0.051089, 0.118629,
		37.637451, 32.102268, 31.015829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120491, 31.596996, 30.483278>,  <38.331585, 32.138031, 30.932789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120491, 31.596996, 30.483278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777893, 31.796822, 30.535217>,  <37.572334, 31.916718, 30.566380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777893, 31.796822, 30.535217>,  <38.120491, 31.596996, 30.483278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777893, 31.796822, 30.535217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217031, -0.120304, -0.968723,
		-0.468319, -0.857882, 0.211460,
		-0.856490, 0.499564, 0.129846,
		37.520947, 31.946692, 30.574171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507099, 31.154942, 30.185390>,  <38.120491, 31.596996, 30.483278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507099, 31.154942, 30.185390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384941, 31.535648, 30.197218>,  <37.311646, 31.764072, 30.204315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384941, 31.535648, 30.197218>,  <37.507099, 31.154942, 30.185390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384941, 31.535648, 30.197218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312084, -0.070704, -0.947420,
		-0.899633, -0.298562, 0.318624,
		-0.305391, 0.951768, 0.029569,
		37.293324, 31.821178, 30.206089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894123, 31.212471, 29.773304>,  <37.507099, 31.154942, 30.185390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894123, 31.212471, 29.773304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999390, 31.597334, 29.801584>,  <37.062550, 31.828251, 29.818552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999390, 31.597334, 29.801584>,  <36.894123, 31.212471, 29.773304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999390, 31.597334, 29.801584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353544, 0.164366, -0.920864,
		-0.897637, 0.217340, 0.383420,
		0.263162, 0.962158, 0.070702,
		37.078339, 31.885981, 29.822794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343384, 31.634916, 29.477417>,  <36.894123, 31.212471, 29.773304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343384, 31.634916, 29.477417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670792, 31.864677, 29.473602>,  <36.867237, 32.002533, 29.471313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670792, 31.864677, 29.473602>,  <36.343384, 31.634916, 29.477417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670792, 31.864677, 29.473602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197709, 0.266067, -0.943462,
		-0.539390, 0.774125, 0.331345,
		0.818517, 0.574403, -0.009537,
		36.916348, 32.036999, 29.470741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175678, 32.246540, 28.983387>,  <36.343384, 31.634916, 29.477417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175678, 32.246540, 28.983387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574139, 32.243759, 29.018335>,  <36.813213, 32.242092, 29.039305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574139, 32.243759, 29.018335>,  <36.175678, 32.246540, 28.983387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574139, 32.243759, 29.018335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082193, 0.420225, -0.903690,
		-0.030435, 0.907393, 0.419179,
		0.996152, -0.006950, 0.087371,
		36.872986, 32.241673, 29.044546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359730, 32.799843, 28.625641>,  <36.175678, 32.246540, 28.983387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359730, 32.799843, 28.625641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697979, 32.587067, 28.643356>,  <36.900928, 32.459400, 28.653986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697979, 32.587067, 28.643356>,  <36.359730, 32.799843, 28.625641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697979, 32.587067, 28.643356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213962, 0.261774, -0.941114,
		0.489023, 0.805303, 0.335177,
		0.845622, -0.531941, 0.044291,
		36.951664, 32.427483, 28.656643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731857, 33.066727, 28.174387>,  <36.359730, 32.799843, 28.625641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731857, 33.066727, 28.174387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952591, 32.735359, 28.212759>,  <37.085033, 32.536541, 28.235783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952591, 32.735359, 28.212759>,  <36.731857, 33.066727, 28.174387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952591, 32.735359, 28.212759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131838, -0.026923, -0.990905,
		0.823465, 0.559465, 0.094360,
		0.551837, -0.828416, 0.095929,
		37.118141, 32.486835, 28.241537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429344, 33.226093, 27.854570>,  <36.731857, 33.066727, 28.174387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429344, 33.226093, 27.854570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384735, 32.828884, 27.839251>,  <37.357971, 32.590557, 27.830059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384735, 32.828884, 27.839251>,  <37.429344, 33.226093, 27.854570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384735, 32.828884, 27.839251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266198, 0.007282, -0.963891,
		0.957446, -0.117689, 0.263529,
		-0.111520, -0.993024, -0.038300,
		37.351280, 32.530975, 27.827761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956448, 32.887169, 27.510637>,  <37.429344, 33.226093, 27.854570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956448, 32.887169, 27.510637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683716, 32.599445, 27.457418>,  <37.520077, 32.426811, 27.425488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683716, 32.599445, 27.457418>,  <37.956448, 32.887169, 27.510637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683716, 32.599445, 27.457418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157440, 0.033320, -0.986966,
		0.714364, -0.693894, 0.090529,
		-0.681833, -0.719306, -0.133049,
		37.479164, 32.383652, 27.417503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244820, 32.432755, 26.935986>,  <37.956448, 32.887169, 27.510637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244820, 32.432755, 26.935986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870983, 32.309502, 27.007088>,  <37.646683, 32.235550, 27.049749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870983, 32.309502, 27.007088>,  <38.244820, 32.432755, 26.935986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870983, 32.309502, 27.007088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125098, -0.183091, -0.975104,
		0.333010, -0.933558, 0.132568,
		-0.934588, -0.308135, 0.177757,
		37.590607, 32.217060, 27.060415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199707, 31.697039, 26.703411>,  <38.244820, 32.432755, 26.935986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199707, 31.697039, 26.703411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844837, 31.881384, 26.694162>,  <37.631916, 31.991991, 26.688614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844837, 31.881384, 26.694162>,  <38.199707, 31.697039, 26.703411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844837, 31.881384, 26.694162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097916, -0.236985, -0.966566,
		-0.450934, -0.855245, 0.255372,
		-0.887171, 0.460863, -0.023123,
		37.578686, 32.019642, 26.687225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.683117, 31.353203, 26.347677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502251, 31.709663, 26.332775>,  <37.393730, 31.923540, 26.323833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502251, 31.709663, 26.332775>,  <37.683117, 31.353203, 26.347677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502251, 31.709663, 26.332775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032016, -0.025528, -0.999162,
		-0.891357, -0.452983, -0.016988,
		-0.452170, 0.891154, -0.037257,
		37.366600, 31.977009, 26.321598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123989, 31.290720, 25.871626>,  <37.683117, 31.353203, 26.347677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123989, 31.290720, 25.871626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214649, 31.680201, 25.880888>,  <37.269047, 31.913889, 25.886446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214649, 31.680201, 25.880888>,  <37.123989, 31.290720, 25.871626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214649, 31.680201, 25.880888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013947, 0.020527, -0.999692,
		-0.973876, 0.226906, -0.008928,
		0.226653, 0.973700, 0.023156,
		37.282646, 31.972311, 25.887835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712940, 31.637255, 25.389168>,  <37.123989, 31.290720, 25.871626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712940, 31.637255, 25.389168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033592, 31.870716, 25.440924>,  <37.225983, 32.010792, 25.471977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033592, 31.870716, 25.440924>,  <36.712940, 31.637255, 25.389168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033592, 31.870716, 25.440924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070659, 0.122420, -0.989960,
		-0.593632, 0.802723, 0.056895,
		0.801629, 0.583652, 0.129392,
		37.274082, 32.045811, 25.479742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557743, 32.297749, 24.932611>,  <36.712940, 31.637255, 25.389168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557743, 32.297749, 24.932611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948437, 32.289993, 25.018049>,  <37.182854, 32.285339, 25.069313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948437, 32.289993, 25.018049>,  <36.557743, 32.297749, 24.932611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948437, 32.289993, 25.018049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203275, 0.401269, -0.893120,
		-0.068396, 0.915755, 0.395872,
		0.976730, -0.019386, 0.213596,
		37.241455, 32.284176, 25.082129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891239, 32.956940, 24.687363>,  <36.557743, 32.297749, 24.932611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891239, 32.956940, 24.687363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183105, 32.684284, 24.709133>,  <37.358223, 32.520691, 24.722195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183105, 32.684284, 24.709133>,  <36.891239, 32.956940, 24.687363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183105, 32.684284, 24.709133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193540, 0.129527, -0.972504,
		0.655845, 0.720135, 0.226435,
		0.729664, -0.681637, 0.054425,
		37.402004, 32.479794, 24.725460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398865, 33.337288, 24.420767>,  <36.891239, 32.956940, 24.687363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398865, 33.337288, 24.420767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502934, 32.951786, 24.397121>,  <37.565372, 32.720486, 24.382935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502934, 32.951786, 24.397121>,  <37.398865, 33.337288, 24.420767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502934, 32.951786, 24.397121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252369, 0.126968, -0.959265,
		0.931999, 0.234651, 0.276254,
		0.260168, -0.963752, -0.059116,
		37.580982, 32.662659, 24.379387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872929, 33.362011, 23.898220>,  <37.398865, 33.337288, 24.420767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872929, 33.362011, 23.898220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789742, 32.971954, 23.928808>,  <37.739830, 32.737919, 23.947161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789742, 32.971954, 23.928808>,  <37.872929, 33.362011, 23.898220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789742, 32.971954, 23.928808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017800, -0.081941, -0.996478,
		0.977974, -0.205871, 0.034399,
		-0.207965, -0.975142, 0.076472,
		37.727352, 32.679413, 23.951750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228088, 33.080063, 23.373064>,  <37.872929, 33.362011, 23.898220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228088, 33.080063, 23.373064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950436, 32.801846, 23.447250>,  <37.783844, 32.634914, 23.491762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950436, 32.801846, 23.447250>,  <38.228088, 33.080063, 23.373064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950436, 32.801846, 23.447250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110311, -0.151825, -0.982232,
		0.711345, -0.702259, 0.028660,
		-0.694133, -0.695544, 0.185467,
		37.742195, 32.593182, 23.502890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384968, 32.484100, 23.003233>,  <38.228088, 33.080063, 23.373064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384968, 32.484100, 23.003233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993668, 32.501129, 23.084438>,  <37.758888, 32.511349, 23.133162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993668, 32.501129, 23.084438>,  <38.384968, 32.484100, 23.003233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993668, 32.501129, 23.084438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203396, -0.004825, -0.979085,
		-0.040715, -0.999081, 0.013381,
		-0.978249, 0.042585, 0.203013,
		37.700191, 32.513901, 23.145342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033573, 31.951241, 22.590569>,  <38.384968, 32.484100, 23.003233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033573, 31.951241, 22.590569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757401, 32.228188, 22.674406>,  <37.591698, 32.394356, 22.724709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757401, 32.228188, 22.674406>,  <38.033573, 31.951241, 22.590569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757401, 32.228188, 22.674406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302964, -0.013656, -0.952904,
		-0.656898, -0.721416, 0.219191,
		-0.690433, 0.692368, 0.209592,
		37.550270, 32.435898, 22.737284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521244, 31.778202, 22.141768>,  <38.033573, 31.951241, 22.590569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521244, 31.778202, 22.141768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.414795, 32.136868, 22.283285>,  <37.350925, 32.352066, 22.368196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.414795, 32.136868, 22.283285>,  <37.521244, 31.778202, 22.141768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414795, 32.136868, 22.283285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344981, 0.254125, -0.903553,
		-0.900092, -0.362511, 0.241703,
		-0.266125, 0.896664, 0.353795,
		37.334957, 32.405869, 22.389423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793503, 31.945753, 21.941866>,  <37.521244, 31.778202, 22.141768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793503, 31.945753, 21.941866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990582, 32.287701, 22.006922>,  <37.108829, 32.492870, 22.045956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990582, 32.287701, 22.006922>,  <36.793503, 31.945753, 21.941866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990582, 32.287701, 22.006922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226203, 0.306292, -0.924671,
		-0.840287, 0.418793, 0.344282,
		0.492697, 0.854867, 0.162641,
		37.138390, 32.544159, 22.055714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519459, 32.444061, 21.466702>,  <36.793503, 31.945753, 21.941866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519459, 32.444061, 21.466702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853542, 32.634426, 21.576931>,  <37.053993, 32.748646, 21.643068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853542, 32.634426, 21.576931>,  <36.519459, 32.444061, 21.466702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853542, 32.634426, 21.576931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048319, 0.435657, -0.898815,
		-0.547811, 0.764011, 0.340868,
		0.835206, 0.475910, 0.275574,
		37.104103, 32.777199, 21.659603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485416, 33.208057, 21.316700>,  <36.519459, 32.444061, 21.466702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485416, 33.208057, 21.316700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878021, 33.135078, 21.339834>,  <37.113583, 33.091290, 21.353714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878021, 33.135078, 21.339834>,  <36.485416, 33.208057, 21.316700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878021, 33.135078, 21.339834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143199, 0.499545, -0.854370,
		0.126986, 0.846858, 0.516436,
		0.981514, -0.182446, 0.057834,
		37.172474, 33.080345, 21.357183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789661, 33.902733, 21.179590>,  <36.485416, 33.208057, 21.316700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789661, 33.902733, 21.179590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061760, 33.617023, 21.113766>,  <37.225018, 33.445599, 21.074270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061760, 33.617023, 21.113766>,  <36.789661, 33.902733, 21.179590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061760, 33.617023, 21.113766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267080, 0.450613, -0.851831,
		0.682593, 0.535504, 0.497295,
		0.680247, -0.714271, -0.164563,
		37.265835, 33.402740, 21.064396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409096, 34.282276, 20.888716>,  <36.789661, 33.902733, 21.179590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409096, 34.282276, 20.888716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453899, 33.898716, 20.784443>,  <37.480782, 33.668579, 20.721880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453899, 33.898716, 20.784443>,  <37.409096, 34.282276, 20.888716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453899, 33.898716, 20.784443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247088, 0.280969, -0.927364,
		0.962497, 0.039464, 0.268405,
		0.112011, -0.958905, -0.260681,
		37.487503, 33.611046, 20.706238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053120, 34.219322, 20.580805>,  <37.409096, 34.282276, 20.888716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053120, 34.219322, 20.580805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865078, 33.895912, 20.439217>,  <37.752254, 33.701866, 20.354263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865078, 33.895912, 20.439217>,  <38.053120, 34.219322, 20.580805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865078, 33.895912, 20.439217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284664, 0.240727, -0.927910,
		0.835447, -0.536974, 0.116991,
		-0.470101, -0.808523, -0.353972,
		37.724049, 33.653355, 20.333025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563156, 33.932789, 20.138058>,  <38.053120, 34.219322, 20.580805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563156, 33.932789, 20.138058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198608, 33.818024, 20.020010>,  <37.979881, 33.749165, 19.949181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198608, 33.818024, 20.020010>,  <38.563156, 33.932789, 20.138058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198608, 33.818024, 20.020010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233396, 0.230355, -0.944703,
		0.339030, -0.929848, -0.142973,
		-0.911365, -0.286914, -0.295120,
		37.925198, 33.731949, 19.931475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582787, 33.626156, 19.491453>,  <38.563156, 33.932789, 20.138058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582787, 33.626156, 19.491453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192741, 33.713768, 19.505163>,  <37.958714, 33.766335, 19.513390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192741, 33.713768, 19.505163>,  <38.582787, 33.626156, 19.491453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192741, 33.713768, 19.505163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051270, 0.373208, -0.926330,
		-0.215682, -0.901522, -0.375151,
		-0.975117, 0.219027, 0.034274,
		37.900208, 33.779476, 19.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359383, 33.461334, 18.857256>,  <38.582787, 33.626156, 19.491453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359383, 33.461334, 18.857256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079746, 33.706406, 19.004711>,  <37.911964, 33.853447, 19.093184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079746, 33.706406, 19.004711>,  <38.359383, 33.461334, 18.857256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079746, 33.706406, 19.004711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025670, 0.493718, -0.869243,
		-0.714570, -0.617145, -0.329428,
		-0.699093, 0.612678, 0.368638,
		37.870018, 33.890209, 19.115303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868305, 33.492123, 18.312902>,  <38.359383, 33.461334, 18.857256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868305, 33.492123, 18.312902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840515, 33.827030, 18.529848>,  <37.823841, 34.027973, 18.660015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.840515, 33.827030, 18.529848>,  <37.868305, 33.492123, 18.312902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840515, 33.827030, 18.529848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012418, 0.542908, -0.839701,
		-0.997507, -0.065072, -0.027320,
		-0.069473, 0.837268, 0.542362,
		37.819672, 34.078209, 18.692556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315838, 33.874870, 18.026861>,  <37.868305, 33.492123, 18.312902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315838, 33.874870, 18.026861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526440, 34.150406, 18.226179>,  <37.652802, 34.315727, 18.345770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526440, 34.150406, 18.226179>,  <37.315838, 33.874870, 18.026861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526440, 34.150406, 18.226179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002029, 0.585090, -0.810966,
		-0.850172, 0.427986, 0.306653,
		0.526502, 0.688838, 0.498295,
		37.684391, 34.357056, 18.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804237, 34.275814, 18.484600>,  <37.315838, 33.874870, 18.026861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804237, 34.275814, 18.484600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539841, 34.147396, 18.213299>,  <36.381203, 34.070347, 18.050518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539841, 34.147396, 18.213299>,  <36.804237, 34.275814, 18.484600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539841, 34.147396, 18.213299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750308, -0.296570, -0.590833,
		-0.011466, -0.899432, 0.436911,
		-0.660989, -0.321043, -0.678251,
		36.341545, 34.051083, 18.009823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370781, 34.918545, 18.367390>,  <36.804237, 34.275814, 18.484600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370781, 34.918545, 18.367390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154942, 35.241413, 18.463146>,  <36.025436, 35.435135, 18.520599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154942, 35.241413, 18.463146>,  <36.370781, 34.918545, 18.367390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154942, 35.241413, 18.463146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582342, -0.563175, 0.586269,
		0.608039, 0.176941, 0.773938,
		-0.539597, 0.807172, 0.239392,
		35.993061, 35.483566, 18.534964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440163, 35.066711, 19.047331>,  <36.370781, 34.918545, 18.367390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440163, 35.066711, 19.047331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083363, 35.163708, 18.894737>,  <35.869282, 35.221905, 18.803181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083363, 35.163708, 18.894737>,  <36.440163, 35.066711, 19.047331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083363, 35.163708, 18.894737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449028, -0.572513, 0.686005,
		-0.052052, 0.783214, 0.619569,
		-0.892000, 0.242496, -0.381486,
		35.815762, 35.236458, 18.780293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083439, 35.070259, 19.667439>,  <36.440163, 35.066711, 19.047331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083439, 35.070259, 19.667439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823151, 35.044350, 19.364819>,  <35.666977, 35.028805, 19.183247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823151, 35.044350, 19.364819>,  <36.083439, 35.070259, 19.667439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823151, 35.044350, 19.364819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624939, -0.520244, 0.582063,
		-0.431292, 0.851558, 0.298055,
		-0.650722, -0.064773, -0.756549,
		35.627934, 35.024918, 19.137854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410324, 35.119446, 19.939573>,  <36.083439, 35.070259, 19.667439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410324, 35.119446, 19.939573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366661, 34.948158, 19.580750>,  <35.340466, 34.845387, 19.365456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366661, 34.948158, 19.580750>,  <35.410324, 35.119446, 19.939573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366661, 34.948158, 19.580750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733861, -0.573989, 0.363297,
		-0.670472, 0.697971, -0.251601,
		-0.109155, -0.428220, -0.897058,
		35.333916, 34.819691, 19.311632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754616, 35.165627, 19.815193>,  <35.410324, 35.119446, 19.939573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754616, 35.165627, 19.815193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903862, 34.871052, 19.589470>,  <34.993412, 34.694309, 19.454035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903862, 34.871052, 19.589470>,  <34.754616, 35.165627, 19.815193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903862, 34.871052, 19.589470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605134, -0.654221, 0.453660,
		-0.703275, 0.172215, -0.689743,
		0.373118, -0.736435, -0.564311,
		35.015797, 34.650120, 19.420177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178417, 34.753044, 19.659241>,  <34.754616, 35.165627, 19.815193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178417, 34.753044, 19.659241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533054, 34.568024, 19.658628>,  <34.745838, 34.457012, 19.658260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533054, 34.568024, 19.658628>,  <34.178417, 34.753044, 19.659241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533054, 34.568024, 19.658628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329797, -0.634452, 0.699074,
		-0.324329, -0.619288, -0.715048,
		0.886592, -0.462551, -0.001532,
		34.799030, 34.429260, 19.658169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931461, 34.163567, 19.835537>,  <34.178417, 34.753044, 19.659241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931461, 34.163567, 19.835537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328590, 34.125439, 19.864435>,  <34.566868, 34.102562, 19.881775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328590, 34.125439, 19.864435>,  <33.931461, 34.163567, 19.835537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328590, 34.125439, 19.864435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119269, -0.743695, 0.657794,
		-0.008970, -0.661689, -0.749725,
		0.992821, -0.095319, 0.072248,
		34.626438, 34.096844, 19.886110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014561, 33.432514, 19.872347>,  <33.931461, 34.163567, 19.835537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014561, 33.432514, 19.872347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323029, 33.624588, 20.039547>,  <34.508110, 33.739834, 20.139868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323029, 33.624588, 20.039547>,  <34.014561, 33.432514, 19.872347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323029, 33.624588, 20.039547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113712, -0.542128, 0.832566,
		0.626396, -0.689579, -0.363467,
		0.771166, 0.480186, 0.418001,
		34.554379, 33.768642, 20.164948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508923, 32.840553, 20.050989>,  <34.014561, 33.432514, 19.872347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508923, 32.840553, 20.050989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627052, 33.143387, 20.284094>,  <34.697929, 33.325085, 20.423958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627052, 33.143387, 20.284094>,  <34.508923, 32.840553, 20.050989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627052, 33.143387, 20.284094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224389, -0.647872, 0.727951,
		0.928672, -0.084218, -0.361214,
		0.295327, 0.757080, 0.582763,
		34.715649, 33.370510, 20.458923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882267, 32.463905, 20.566048>,  <34.508923, 32.840553, 20.050989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882267, 32.463905, 20.566048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826946, 32.828705, 20.720520>,  <34.793755, 33.047585, 20.813204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826946, 32.828705, 20.720520>,  <34.882267, 32.463905, 20.566048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826946, 32.828705, 20.720520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271442, -0.340094, 0.900364,
		0.952466, 0.229349, -0.200518,
		-0.138303, 0.911995, 0.386183,
		34.785454, 33.102303, 20.836374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462456, 32.566906, 21.061056>,  <34.882267, 32.463905, 20.566048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462456, 32.566906, 21.061056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184029, 32.832947, 21.169226>,  <35.016972, 32.992573, 21.234127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184029, 32.832947, 21.169226>,  <35.462456, 32.566906, 21.061056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184029, 32.832947, 21.169226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298742, -0.074198, 0.951445,
		0.652876, 0.743055, -0.147048,
		-0.696065, 0.665105, 0.270424,
		34.975208, 33.032478, 21.250353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786777, 32.805752, 21.567120>,  <35.462456, 32.566906, 21.061056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786777, 32.805752, 21.567120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404663, 32.911804, 21.619486>,  <35.175396, 32.975437, 21.650906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404663, 32.911804, 21.619486>,  <35.786777, 32.805752, 21.567120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404663, 32.911804, 21.619486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118427, -0.062621, 0.990986,
		0.270938, 0.962177, 0.028422,
		-0.955284, 0.265130, 0.130914,
		35.118076, 32.991344, 21.658760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769802, 33.274837, 22.124722>,  <35.786777, 32.805752, 21.567120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769802, 33.274837, 22.124722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394508, 33.136581, 22.118460>,  <35.169331, 33.053627, 22.114702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394508, 33.136581, 22.118460>,  <35.769802, 33.274837, 22.124722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394508, 33.136581, 22.118460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083205, -0.269309, 0.959453,
		-0.335845, 0.898890, 0.281434,
		-0.938235, -0.345644, -0.015654,
		35.113037, 33.032887, 22.113764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461731, 33.444817, 22.780144>,  <35.769802, 33.274837, 22.124722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461731, 33.444817, 22.780144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233398, 33.142509, 22.651789>,  <35.096401, 32.961124, 22.574776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233398, 33.142509, 22.651789>,  <35.461731, 33.444817, 22.780144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233398, 33.142509, 22.651789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064067, -0.430622, 0.900256,
		-0.818567, 0.493332, 0.294230,
		-0.570827, -0.755770, -0.320887,
		35.062149, 32.915779, 22.555523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937614, 33.200470, 23.377762>,  <35.461731, 33.444817, 22.780144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937614, 33.200470, 23.377762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932163, 32.884140, 23.133005>,  <34.928890, 32.694344, 22.986151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932163, 32.884140, 23.133005>,  <34.937614, 33.200470, 23.377762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932163, 32.884140, 23.133005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011209, -0.612032, 0.790753,
		-0.999844, 0.003921, 0.017208,
		-0.013632, -0.790823, -0.611893,
		34.928074, 32.646893, 22.949438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297718, 32.747047, 23.513073>,  <34.937614, 33.200470, 23.377762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297718, 32.747047, 23.513073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562218, 32.525780, 23.310389>,  <34.720917, 32.393021, 23.188778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562218, 32.525780, 23.310389>,  <34.297718, 32.747047, 23.513073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562218, 32.525780, 23.310389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185815, -0.533636, 0.825049,
		-0.726787, -0.639719, -0.250081,
		0.661252, -0.553166, -0.506709,
		34.760593, 32.359829, 23.158377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088688, 32.054684, 23.762812>,  <34.297718, 32.747047, 23.513073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088688, 32.054684, 23.762812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450260, 31.999798, 23.600788>,  <34.667206, 31.966866, 23.503574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.450260, 31.999798, 23.600788>,  <34.088688, 32.054684, 23.762812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450260, 31.999798, 23.600788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194836, -0.710999, 0.675662,
		-0.380709, -0.689675, -0.615962,
		0.903935, -0.137219, -0.405057,
		34.721439, 31.958632, 23.479271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174824, 31.292068, 23.603464>,  <34.088688, 32.054684, 23.762812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174824, 31.292068, 23.603464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541664, 31.447880, 23.637400>,  <34.761768, 31.541367, 23.657761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541664, 31.447880, 23.637400>,  <34.174824, 31.292068, 23.603464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541664, 31.447880, 23.637400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271197, -0.765562, 0.583410,
		0.292204, -0.512036, -0.807735,
		0.917098, 0.389530, 0.084838,
		34.816795, 31.564739, 23.662851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572598, 30.734356, 23.566294>,  <34.174824, 31.292068, 23.603464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572598, 30.734356, 23.566294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784313, 31.007732, 23.767397>,  <34.911343, 31.171759, 23.888060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784313, 31.007732, 23.767397>,  <34.572598, 30.734356, 23.566294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784313, 31.007732, 23.767397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273068, -0.698255, 0.661720,
		0.803299, -0.212952, -0.556203,
		0.529286, 0.683441, 0.502757,
		34.943100, 31.212765, 23.918224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133072, 30.387243, 23.882074>,  <34.572598, 30.734356, 23.566294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133072, 30.387243, 23.882074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.100384, 30.723616, 24.096050>,  <35.080772, 30.925438, 24.224436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.100384, 30.723616, 24.096050>,  <35.133072, 30.387243, 23.882074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100384, 30.723616, 24.096050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077963, -0.529695, 0.844598,
		0.993602, 0.110723, -0.022277,
		-0.081716, 0.840930, 0.534938,
		35.075871, 30.975895, 24.256533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440746, 30.187838, 24.528025>,  <35.133072, 30.387243, 23.882074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440746, 30.187838, 24.528025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226517, 30.519993, 24.589489>,  <35.097980, 30.719286, 24.626368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226517, 30.519993, 24.589489>,  <35.440746, 30.187838, 24.528025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226517, 30.519993, 24.589489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379282, -0.399100, 0.834784,
		0.754523, 0.388808, 0.528700,
		-0.535575, 0.830390, 0.153662,
		35.065845, 30.769110, 24.635588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.175396, 32.418442, 29.131029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779911, 32.361500, 29.112349>,  <37.542622, 32.327335, 29.101141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779911, 32.361500, 29.112349>,  <38.175396, 32.418442, 29.131029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779911, 32.361500, 29.112349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038146, -0.062247, 0.997332,
		-0.144883, 0.987856, 0.056114,
		-0.988713, -0.142356, -0.046701,
		37.483295, 32.318794, 29.098339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893894, 32.888329, 29.557465>,  <38.175396, 32.418442, 29.131029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893894, 32.888329, 29.557465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602959, 32.616940, 29.516172>,  <37.428398, 32.454105, 29.491398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602959, 32.616940, 29.516172>,  <37.893894, 32.888329, 29.557465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602959, 32.616940, 29.516172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177846, 0.041060, 0.983201,
		-0.662837, 0.733477, -0.150528,
		-0.727336, -0.678473, -0.103230,
		37.384758, 32.413399, 29.485203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263428, 33.146427, 29.855463>,  <37.893894, 32.888329, 29.557465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263428, 33.146427, 29.855463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221134, 32.748669, 29.855852>,  <37.195759, 32.510014, 29.856087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221134, 32.748669, 29.855852>,  <37.263428, 33.146427, 29.855463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221134, 32.748669, 29.855852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039834, 0.005215, 0.999193,
		-0.993597, 0.105605, -0.040162,
		-0.105729, -0.994394, 0.000975,
		37.189415, 32.450352, 29.856144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725739, 33.025303, 30.373854>,  <37.263428, 33.146427, 29.855463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725739, 33.025303, 30.373854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890976, 32.666904, 30.308674>,  <36.990120, 32.451866, 30.269566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890976, 32.666904, 30.308674>,  <36.725739, 33.025303, 30.373854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890976, 32.666904, 30.308674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159821, -0.247480, 0.955621,
		-0.896556, -0.368716, -0.245430,
		0.413092, -0.895992, -0.162951,
		37.014904, 32.398106, 30.259789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382843, 32.594776, 30.858511>,  <36.725739, 33.025303, 30.373854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382843, 32.594776, 30.858511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710304, 32.392441, 30.749750>,  <36.906780, 32.271038, 30.684494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710304, 32.392441, 30.749750>,  <36.382843, 32.594776, 30.858511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710304, 32.392441, 30.749750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093468, -0.349787, 0.932155,
		-0.566632, -0.788525, -0.239074,
		0.818653, -0.505843, -0.271902,
		36.955898, 32.240688, 30.668179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351635, 31.970474, 31.278976>,  <36.382843, 32.594776, 30.858511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351635, 31.970474, 31.278976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734505, 32.026917, 31.177862>,  <36.964226, 32.060783, 31.117193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734505, 32.026917, 31.177862>,  <36.351635, 31.970474, 31.278976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734505, 32.026917, 31.177862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284337, -0.294033, 0.912523,
		0.054435, -0.945322, -0.321563,
		0.957178, 0.141105, -0.252784,
		37.021660, 32.069248, 31.102026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629242, 31.406265, 31.611271>,  <36.351635, 31.970474, 31.278976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629242, 31.406265, 31.611271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921284, 31.672796, 31.550671>,  <37.096508, 31.832714, 31.514311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.921284, 31.672796, 31.550671>,  <36.629242, 31.406265, 31.611271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921284, 31.672796, 31.550671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373279, -0.203198, 0.905192,
		0.572369, -0.717440, -0.397081,
		0.730107, 0.666327, -0.151501,
		37.140316, 31.872694, 31.505220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163097, 31.099819, 31.919096>,  <36.629242, 31.406265, 31.611271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163097, 31.099819, 31.919096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.296173, 31.476925, 31.910076>,  <37.376019, 31.703190, 31.904663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.296173, 31.476925, 31.910076>,  <37.163097, 31.099819, 31.919096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296173, 31.476925, 31.910076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370001, -0.108498, 0.922674,
		0.867420, -0.315308, -0.384920,
		0.332690, 0.942767, -0.022551,
		37.395981, 31.759754, 31.903311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851982, 31.127975, 32.167774>,  <37.163097, 31.099819, 31.919096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851982, 31.127975, 32.167774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.686493, 31.487282, 32.227036>,  <37.587200, 31.702866, 32.262592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.686493, 31.487282, 32.227036>,  <37.851982, 31.127975, 32.167774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686493, 31.487282, 32.227036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234019, -0.052339, 0.970822,
		0.879810, 0.436326, -0.188557,
		-0.413726, 0.898265, 0.148157,
		37.562374, 31.756762, 32.271484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218845, 31.459061, 32.626621>,  <37.851982, 31.127975, 32.167774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218845, 31.459061, 32.626621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903217, 31.703545, 32.651234>,  <37.713840, 31.850235, 32.666000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903217, 31.703545, 32.651234>,  <38.218845, 31.459061, 32.626621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903217, 31.703545, 32.651234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101778, 0.031293, 0.994315,
		0.605811, 0.790848, -0.086901,
		-0.789071, 0.611212, 0.061533,
		37.666496, 31.886908, 32.669693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444817, 31.914679, 33.076981>,  <38.218845, 31.459061, 32.626621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444817, 31.914679, 33.076981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047226, 31.954956, 33.059631>,  <37.808674, 31.979122, 33.049221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047226, 31.954956, 33.059631>,  <38.444817, 31.914679, 33.076981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047226, 31.954956, 33.059631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049144, -0.055575, 0.997244,
		0.098004, 0.993364, 0.060188,
		-0.993972, 0.100692, -0.043372,
		37.749035, 31.985163, 33.046619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369789, 32.398170, 33.592415>,  <38.444817, 31.914679, 33.076981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369789, 32.398170, 33.592415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.024071, 32.207230, 33.529015>,  <37.816639, 32.092663, 33.490974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.024071, 32.207230, 33.529015>,  <38.369789, 32.398170, 33.592415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024071, 32.207230, 33.529015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155571, -0.045965, 0.986755,
		-0.478319, 0.877507, -0.034536,
		-0.864297, -0.477356, -0.158501,
		37.764782, 32.064022, 33.481464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903854, 32.650841, 34.077023>,  <38.369789, 32.398170, 33.592415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903854, 32.650841, 34.077023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735756, 32.299454, 33.986084>,  <37.634895, 32.088623, 33.931522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735756, 32.299454, 33.986084>,  <37.903854, 32.650841, 34.077023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735756, 32.299454, 33.986084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159915, -0.174925, 0.971508,
		-0.893207, 0.444631, -0.066968,
		-0.420248, -0.878467, -0.227348,
		37.609680, 32.035915, 33.917881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662346, 33.183483, 34.610020>,  <37.903854, 32.650841, 34.077023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662346, 33.183483, 34.610020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.588169, 33.412128, 34.929737>,  <37.543663, 33.549316, 35.121567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.588169, 33.412128, 34.929737>,  <37.662346, 33.183483, 34.610020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588169, 33.412128, 34.929737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338953, 0.726273, -0.598029,
		-0.922347, -0.381822, 0.059069,
		-0.185440, 0.571611, 0.799295,
		37.532536, 33.583611, 35.169525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978256, 33.392475, 34.645012>,  <37.662346, 33.183483, 34.610020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978256, 33.392475, 34.645012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219646, 33.666946, 34.807484>,  <37.364479, 33.831627, 34.904964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219646, 33.666946, 34.807484>,  <36.978256, 33.392475, 34.645012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219646, 33.666946, 34.807484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214627, 0.630370, -0.746036,
		-0.767954, 0.363037, 0.527685,
		0.603475, 0.686176, 0.406177,
		37.400688, 33.872799, 34.929337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558792, 33.963985, 34.624043>,  <36.978256, 33.392475, 34.645012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558792, 33.963985, 34.624043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935699, 34.090775, 34.667213>,  <37.161846, 34.166847, 34.693115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935699, 34.090775, 34.667213>,  <36.558792, 33.963985, 34.624043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935699, 34.090775, 34.667213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113769, 0.606222, -0.787116,
		-0.314925, 0.729399, 0.607288,
		0.942273, 0.316973, 0.107932,
		37.218380, 34.185867, 34.699593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544788, 34.612148, 34.775951>,  <36.558792, 33.963985, 34.624043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544788, 34.612148, 34.775951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.923946, 34.588627, 34.650711>,  <37.151443, 34.574512, 34.575565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.923946, 34.588627, 34.650711>,  <36.544788, 34.612148, 34.775951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923946, 34.588627, 34.650711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226685, 0.566050, -0.792591,
		0.223841, 0.822271, 0.523227,
		0.947897, -0.058807, -0.313102,
		37.208317, 34.570984, 34.556782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695744, 35.295017, 34.607880>,  <36.544788, 34.612148, 34.775951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695744, 35.295017, 34.607880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010017, 35.114071, 34.439091>,  <37.198582, 35.005505, 34.337818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010017, 35.114071, 34.439091>,  <36.695744, 35.295017, 34.607880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010017, 35.114071, 34.439091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096708, 0.583914, -0.806035,
		0.611016, 0.674100, 0.415027,
		0.785688, -0.452364, -0.421972,
		37.245724, 34.978363, 34.312500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226875, 35.862522, 34.328979>,  <36.695744, 35.295017, 34.607880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226875, 35.862522, 34.328979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260460, 35.515564, 34.132786>,  <37.280613, 35.307388, 34.015072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260460, 35.515564, 34.132786>,  <37.226875, 35.862522, 34.328979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260460, 35.515564, 34.132786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176587, 0.471477, -0.864018,
		0.980697, 0.159158, -0.113584,
		0.083963, -0.867397, -0.490481,
		37.285648, 35.255344, 33.985641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670536, 35.967136, 33.817410>,  <37.226875, 35.862522, 34.328979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670536, 35.967136, 33.817410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460957, 35.642643, 33.713585>,  <37.335209, 35.447948, 33.651291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460957, 35.642643, 33.713585>,  <37.670536, 35.967136, 33.817410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460957, 35.642643, 33.713585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143914, 0.384681, -0.911762,
		0.839501, -0.440365, -0.318303,
		-0.523953, -0.811233, -0.259565,
		37.303772, 35.399273, 33.635715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749794, 36.040009, 33.112434>,  <37.670536, 35.967136, 33.817410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749794, 36.040009, 33.112434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430744, 35.803009, 33.157574>,  <37.239315, 35.660809, 33.184658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430744, 35.803009, 33.157574>,  <37.749794, 36.040009, 33.112434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430744, 35.803009, 33.157574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363357, 0.322696, -0.873979,
		0.481414, -0.738115, -0.472680,
		-0.797629, -0.592497, 0.112849,
		37.191456, 35.625259, 33.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576984, 35.729641, 32.465260>,  <37.749794, 36.040009, 33.112434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576984, 35.729641, 32.465260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240547, 35.682133, 32.676338>,  <37.038685, 35.653629, 32.802986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240547, 35.682133, 32.676338>,  <37.576984, 35.729641, 32.465260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240547, 35.682133, 32.676338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540333, 0.228903, -0.809718,
		-0.024621, -0.966177, -0.256703,
		-0.841091, -0.118769, 0.527693,
		36.988220, 35.646503, 32.834644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176594, 35.364456, 32.080338>,  <37.576984, 35.729641, 32.465260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176594, 35.364456, 32.080338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900703, 35.513664, 32.328575>,  <36.735168, 35.603188, 32.477516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.900703, 35.513664, 32.328575>,  <37.176594, 35.364456, 32.080338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900703, 35.513664, 32.328575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625574, 0.124584, -0.770153,
		-0.364596, -0.919422, 0.147420,
		-0.689729, 0.373016, 0.620590,
		36.693783, 35.625568, 32.514751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503323, 34.942787, 32.040955>,  <37.176594, 35.364456, 32.080338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503323, 34.942787, 32.040955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.431175, 35.312691, 32.174988>,  <36.387886, 35.534634, 32.255409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.431175, 35.312691, 32.174988>,  <36.503323, 34.942787, 32.040955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431175, 35.312691, 32.174988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499843, 0.207225, -0.840960,
		-0.847126, -0.319174, 0.424859,
		-0.180371, 0.924763, 0.335083,
		36.377064, 35.590118, 32.275513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711098, 34.970642, 32.017784>,  <36.503323, 34.942787, 32.040955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711098, 34.970642, 32.017784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.868740, 35.338257, 32.020615>,  <35.963326, 35.558826, 32.022312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.868740, 35.338257, 32.020615>,  <35.711098, 34.970642, 32.017784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868740, 35.338257, 32.020615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492665, 0.217754, -0.842535,
		-0.775864, 0.328557, 0.538596,
		0.394102, 0.919040, 0.007079,
		35.986969, 35.613968, 32.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198238, 35.365303, 31.786686>,  <35.711098, 34.970642, 32.017784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198238, 35.365303, 31.786686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516716, 35.592995, 31.704664>,  <35.707802, 35.729610, 31.655451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516716, 35.592995, 31.704664>,  <35.198238, 35.365303, 31.786686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516716, 35.592995, 31.704664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440644, 0.313303, -0.841234,
		-0.414612, 0.760143, 0.500279,
		0.796197, 0.569231, -0.205053,
		35.755573, 35.763763, 31.643148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963535, 35.927658, 31.416222>,  <35.198238, 35.365303, 31.786686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963535, 35.927658, 31.416222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.357986, 35.926807, 31.349840>,  <35.594658, 35.926296, 31.310011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.357986, 35.926807, 31.349840>,  <34.963535, 35.927658, 31.416222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357986, 35.926807, 31.349840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158007, 0.293896, -0.942687,
		0.050781, 0.955835, 0.289483,
		0.986131, -0.002130, -0.165953,
		35.653828, 35.926167, 31.300055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136917, 36.432228, 30.952787>,  <34.963535, 35.927658, 31.416222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136917, 36.432228, 30.952787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.472004, 36.215931, 30.922251>,  <35.673058, 36.086155, 30.903929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.472004, 36.215931, 30.922251>,  <35.136917, 36.432228, 30.952787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472004, 36.215931, 30.922251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089742, 0.274202, -0.957476,
		0.538678, 0.795244, 0.278231,
		0.837718, -0.540740, -0.076340,
		35.723320, 36.053707, 30.899349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714016, 37.095264, 30.743599>,  <35.136917, 36.432228, 30.952787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714016, 37.095264, 30.743599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.380367, 37.153141, 30.530691>,  <34.180180, 37.187866, 30.402946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.380367, 37.153141, 30.530691>,  <34.714016, 37.095264, 30.743599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380367, 37.153141, 30.530691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540646, -0.405690, 0.736965,
		-0.109302, 0.902485, 0.416622,
		-0.834119, 0.144694, -0.532268,
		34.130131, 37.196548, 30.371012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311325, 37.581577, 31.065237>,  <34.714016, 37.095264, 30.743599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311325, 37.581577, 31.065237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060760, 37.360779, 30.845089>,  <33.910423, 37.228298, 30.713001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060760, 37.360779, 30.845089>,  <34.311325, 37.581577, 31.065237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060760, 37.360779, 30.845089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399623, -0.378795, 0.834755,
		-0.669261, 0.742841, 0.016690,
		-0.626412, -0.551999, -0.550368,
		33.872837, 37.195179, 30.679979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627922, 37.695557, 31.322586>,  <34.311325, 37.581577, 31.065237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627922, 37.695557, 31.322586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.586361, 37.349682, 31.126007>,  <33.561424, 37.142159, 31.008059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.586361, 37.349682, 31.126007>,  <33.627922, 37.695557, 31.322586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586361, 37.349682, 31.126007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509609, -0.378048, 0.772903,
		-0.854110, 0.330755, -0.401370,
		-0.103905, -0.864686, -0.491450,
		33.555191, 37.090275, 30.978573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972725, 37.442863, 31.521471>,  <33.627922, 37.695557, 31.322586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972725, 37.442863, 31.521471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.140953, 37.112305, 31.371700>,  <33.241890, 36.913971, 31.281837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.140953, 37.112305, 31.371700>,  <32.972725, 37.442863, 31.521471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140953, 37.112305, 31.371700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455412, -0.549230, 0.700675,
		-0.784681, -0.124162, -0.607338,
		0.420566, -0.826396, -0.374426,
		33.267124, 36.864388, 31.259373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400913, 36.850304, 31.562115>,  <32.972725, 37.442863, 31.521471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400913, 36.850304, 31.562115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.753540, 36.670181, 31.505451>,  <32.965115, 36.562107, 31.471453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.753540, 36.670181, 31.505451>,  <32.400913, 36.850304, 31.562115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753540, 36.670181, 31.505451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231018, -0.673229, 0.702420,
		-0.411677, -0.586501, -0.697523,
		0.881562, -0.450310, -0.141660,
		33.018009, 36.535088, 31.462954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222141, 36.158848, 31.540972>,  <32.400913, 36.850304, 31.562115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222141, 36.158848, 31.540972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.618332, 36.130596, 31.588232>,  <32.856049, 36.113647, 31.616589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.618332, 36.130596, 31.588232>,  <32.222141, 36.158848, 31.540972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618332, 36.130596, 31.588232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136133, -0.629671, 0.764841,
		0.020377, -0.773645, -0.633292,
		0.990481, -0.070627, 0.118149,
		32.915478, 36.109409, 31.623676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506287, 35.354805, 31.513683>,  <32.222141, 36.158848, 31.540972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506287, 35.354805, 31.513683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.733799, 35.598335, 31.734888>,  <32.870308, 35.744453, 31.867611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.733799, 35.598335, 31.734888>,  <32.506287, 35.354805, 31.513683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733799, 35.598335, 31.734888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056922, -0.641615, 0.764912,
		0.820516, -0.466547, -0.330284,
		0.568783, 0.608822, 0.553012,
		32.904434, 35.780983, 31.900791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654789, 34.931496, 31.983665>,  <32.506287, 35.354805, 31.513683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654789, 34.931496, 31.983665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.772263, 35.280727, 32.139347>,  <32.842747, 35.490269, 32.232758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.772263, 35.280727, 32.139347>,  <32.654789, 34.931496, 31.983665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772263, 35.280727, 32.139347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098605, -0.377317, 0.920820,
		0.950803, -0.308807, -0.024722,
		0.293684, 0.873081, 0.389204,
		32.860367, 35.542652, 32.256107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275253, 34.798401, 32.382504>,  <32.654789, 34.931496, 31.983665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275253, 34.798401, 32.382504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.115524, 35.144081, 32.504948>,  <33.019688, 35.351490, 32.578415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.115524, 35.144081, 32.504948>,  <33.275253, 34.798401, 32.382504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115524, 35.144081, 32.504948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214871, -0.412806, 0.885111,
		0.891276, 0.287670, 0.350533,
		-0.399322, 0.864198, 0.306112,
		32.995728, 35.403339, 32.596783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541370, 34.923466, 33.091560>,  <33.275253, 34.798401, 32.382504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541370, 34.923466, 33.091560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210835, 35.147110, 33.064545>,  <33.012512, 35.281296, 33.048336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210835, 35.147110, 33.064545>,  <33.541370, 34.923466, 33.091560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210835, 35.147110, 33.064545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305806, -0.344769, 0.887478,
		0.472909, 0.754012, 0.455875,
		-0.826341, 0.559106, -0.067537,
		32.962933, 35.314842, 33.044285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574059, 35.333344, 33.740612>,  <33.541370, 34.923466, 33.091560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574059, 35.333344, 33.740612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.198769, 35.326443, 33.602375>,  <32.973595, 35.322304, 33.519432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.198769, 35.326443, 33.602375>,  <33.574059, 35.333344, 33.740612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198769, 35.326443, 33.602375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327441, -0.278620, 0.902858,
		-0.111863, 0.960247, 0.255761,
		-0.938226, -0.017250, -0.345592,
		32.917301, 35.321266, 33.498699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117565, 35.852131, 34.107906>,  <33.574059, 35.333344, 33.740612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117565, 35.852131, 34.107906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.920189, 35.526211, 33.986172>,  <32.801765, 35.330658, 33.913132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.920189, 35.526211, 33.986172>,  <33.117565, 35.852131, 34.107906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920189, 35.526211, 33.986172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409457, -0.091095, 0.907770,
		-0.767374, 0.572541, -0.288676,
		-0.493438, -0.814800, -0.304335,
		32.772156, 35.281773, 33.894871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.705788, 38.802074, 27.444363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425041, 38.573235, 27.274614>,  <35.256596, 38.435928, 27.172766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425041, 38.573235, 27.274614>,  <35.705788, 38.802074, 27.444363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425041, 38.573235, 27.274614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369516, -0.216907, 0.903554,
		-0.608973, 0.790981, -0.059161,
		-0.701862, -0.572101, -0.424371,
		35.214481, 38.401604, 27.147303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098351, 39.006775, 27.725424>,  <35.705788, 38.802074, 27.444363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098351, 39.006775, 27.725424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031780, 38.631126, 27.605190>,  <34.991837, 38.405739, 27.533051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031780, 38.631126, 27.605190>,  <35.098351, 39.006775, 27.725424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031780, 38.631126, 27.605190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276319, -0.248204, 0.928463,
		-0.946546, 0.237581, -0.218188,
		-0.166430, -0.939122, -0.300584,
		34.981850, 38.349388, 27.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292824, 38.851837, 27.893675>,  <35.098351, 39.006775, 27.725424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292824, 38.851837, 27.893675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465366, 38.496086, 27.833090>,  <34.568890, 38.282635, 27.796740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465366, 38.496086, 27.833090>,  <34.292824, 38.851837, 27.893675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465366, 38.496086, 27.833090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366599, -0.326190, 0.871324,
		-0.824342, -0.320322, -0.466748,
		0.431353, -0.889378, -0.151462,
		34.594772, 38.229271, 27.787651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887180, 38.327827, 27.971052>,  <34.292824, 38.851837, 27.893675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887180, 38.327827, 27.971052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218853, 38.112862, 28.032553>,  <34.417858, 37.983883, 28.069452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218853, 38.112862, 28.032553>,  <33.887180, 38.327827, 27.971052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218853, 38.112862, 28.032553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345537, -0.276594, 0.896716,
		-0.439381, -0.796670, -0.415044,
		0.829186, -0.537413, 0.153749,
		34.467609, 37.951637, 28.078678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665855, 37.617702, 28.200541>,  <33.887180, 38.327827, 27.971052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665855, 37.617702, 28.200541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040363, 37.676197, 28.328302>,  <34.265068, 37.711292, 28.404959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040363, 37.676197, 28.328302>,  <33.665855, 37.617702, 28.200541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040363, 37.676197, 28.328302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196396, -0.535962, 0.821080,
		0.291260, -0.831480, -0.473083,
		0.936267, 0.146236, 0.319404,
		34.321243, 37.720070, 28.424124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837315, 36.972134, 28.373438>,  <33.665855, 37.617702, 28.200541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837315, 36.972134, 28.373438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081600, 37.233894, 28.551781>,  <34.228172, 37.390949, 28.658787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081600, 37.233894, 28.551781>,  <33.837315, 36.972134, 28.373438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081600, 37.233894, 28.551781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129957, -0.472590, 0.871647,
		0.781116, -0.590268, -0.203572,
		0.610712, 0.654402, 0.445858,
		34.264812, 37.430214, 28.685537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132015, 36.615543, 28.891365>,  <33.837315, 36.972134, 28.373438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132015, 36.615543, 28.891365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271774, 36.968903, 29.016285>,  <34.355629, 37.180920, 29.091236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271774, 36.968903, 29.016285>,  <34.132015, 36.615543, 28.891365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271774, 36.968903, 29.016285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259682, -0.228951, 0.938161,
		0.900271, -0.408887, 0.149408,
		0.349395, 0.883398, 0.312298,
		34.376595, 37.233921, 29.109974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658237, 36.544300, 29.387739>,  <34.132015, 36.615543, 28.891365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658237, 36.544300, 29.387739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505039, 36.908623, 29.449375>,  <34.413120, 37.127216, 29.486357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505039, 36.908623, 29.449375>,  <34.658237, 36.544300, 29.387739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505039, 36.908623, 29.449375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321831, -0.287922, 0.901957,
		0.865876, 0.295851, 0.403398,
		-0.382992, 0.910809, 0.154091,
		34.390141, 37.181866, 29.495602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885876, 36.762856, 30.000395>,  <34.658237, 36.544300, 29.387739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885876, 36.762856, 30.000395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551792, 36.968758, 29.922985>,  <34.351341, 37.092300, 29.876539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551792, 36.968758, 29.922985>,  <34.885876, 36.762856, 30.000395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551792, 36.968758, 29.922985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363864, -0.253408, 0.896319,
		0.412344, 0.819031, 0.398950,
		-0.835210, 0.514755, -0.193525,
		34.301228, 37.123184, 29.864927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534248, 36.812305, 30.235216>,  <34.885876, 36.762856, 30.000395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534248, 36.812305, 30.235216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708908, 36.465923, 30.332760>,  <35.813705, 36.258095, 30.391285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708908, 36.465923, 30.332760>,  <35.534248, 36.812305, 30.235216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708908, 36.465923, 30.332760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409840, -0.049828, -0.910796,
		0.800855, 0.497640, 0.333144,
		0.436649, -0.865951, 0.243857,
		35.839901, 36.206139, 30.405916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313244, 36.789062, 30.038511>,  <35.534248, 36.812305, 30.235216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313244, 36.789062, 30.038511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204433, 36.404289, 30.048918>,  <36.139149, 36.173424, 30.055161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204433, 36.404289, 30.048918>,  <36.313244, 36.789062, 30.038511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204433, 36.404289, 30.048918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291298, -0.108082, -0.950507,
		0.917141, -0.250985, 0.309611,
		-0.272027, -0.961938, 0.026015,
		36.122826, 36.115707, 30.056723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792336, 36.421997, 29.702320>,  <36.313244, 36.789062, 30.038511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792336, 36.421997, 29.702320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472435, 36.182983, 29.679163>,  <36.280495, 36.039574, 29.665270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472435, 36.182983, 29.679163>,  <36.792336, 36.421997, 29.702320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472435, 36.182983, 29.679163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257956, -0.254963, -0.931908,
		0.542091, -0.760224, 0.358045,
		-0.799748, -0.597539, -0.057891,
		36.232510, 36.003723, 29.661795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061146, 35.850033, 29.337353>,  <36.792336, 36.421997, 29.702320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061146, 35.850033, 29.337353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666935, 35.822460, 29.275396>,  <36.430408, 35.805916, 29.238222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666935, 35.822460, 29.275396>,  <37.061146, 35.850033, 29.337353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666935, 35.822460, 29.275396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169396, -0.362930, -0.916290,
		0.006951, -0.929263, 0.369354,
		-0.985524, -0.068936, -0.154891,
		36.371277, 35.801781, 29.228930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888828, 35.115498, 29.159410>,  <37.061146, 35.850033, 29.337353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888828, 35.115498, 29.159410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621437, 35.377922, 29.019285>,  <36.461002, 35.535378, 28.935209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621437, 35.377922, 29.019285>,  <36.888828, 35.115498, 29.159410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621437, 35.377922, 29.019285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122299, -0.367644, -0.921890,
		-0.733605, -0.659109, 0.165527,
		-0.668481, 0.656059, -0.350314,
		36.420891, 35.574741, 28.914190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617409, 34.684635, 28.571733>,  <36.888828, 35.115498, 29.159410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617409, 34.684635, 28.571733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550179, 35.075298, 28.518242>,  <36.509842, 35.309696, 28.486147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550179, 35.075298, 28.518242>,  <36.617409, 34.684635, 28.571733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550179, 35.075298, 28.518242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149726, -0.108793, -0.982724,
		-0.974338, -0.185192, -0.127946,
		-0.168073, 0.976662, -0.133729,
		36.499756, 35.368298, 28.478123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071278, 34.699444, 28.143188>,  <36.617409, 34.684635, 28.571733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071278, 34.699444, 28.143188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221462, 35.069321, 28.117968>,  <36.311573, 35.291248, 28.102835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221462, 35.069321, 28.117968>,  <36.071278, 34.699444, 28.143188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221462, 35.069321, 28.117968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082367, -0.101051, -0.991466,
		-0.923172, 0.367060, -0.114104,
		0.375458, 0.924692, -0.063054,
		36.334099, 35.346729, 28.099052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675339, 34.989788, 27.599657>,  <36.071278, 34.699444, 28.143188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675339, 34.989788, 27.599657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977905, 35.250027, 27.626701>,  <36.159443, 35.406170, 27.642927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977905, 35.250027, 27.626701>,  <35.675339, 34.989788, 27.599657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977905, 35.250027, 27.626701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152877, -0.075344, -0.985369,
		-0.635979, 0.755680, -0.156452,
		0.756412, 0.650592, 0.067609,
		36.204830, 35.445206, 27.646984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603680, 35.511314, 27.086166>,  <35.675339, 34.989788, 27.599657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603680, 35.511314, 27.086166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994526, 35.553627, 27.159973>,  <36.229034, 35.579014, 27.204258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994526, 35.553627, 27.159973>,  <35.603680, 35.511314, 27.086166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994526, 35.553627, 27.159973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188512, -0.028995, -0.981643,
		-0.098489, 0.993967, -0.048272,
		0.977120, 0.105781, 0.184519,
		36.287663, 35.585361, 27.215328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794292, 36.081898, 26.667379>,  <35.603680, 35.511314, 27.086166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794292, 36.081898, 26.667379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114098, 35.856331, 26.750113>,  <36.305981, 35.720993, 26.799753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114098, 35.856331, 26.750113>,  <35.794292, 36.081898, 26.667379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114098, 35.856331, 26.750113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271612, 0.032295, -0.961865,
		0.535728, 0.825203, 0.178986,
		0.799514, -0.563913, 0.206834,
		36.353951, 35.687157, 26.812162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362915, 36.392910, 26.300253>,  <35.794292, 36.081898, 26.667379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362915, 36.392910, 26.300253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486839, 36.016853, 26.357037>,  <36.561195, 35.791218, 26.391106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486839, 36.016853, 26.357037>,  <36.362915, 36.392910, 26.300253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486839, 36.016853, 26.357037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304208, -0.043442, -0.951615,
		0.900818, 0.338007, 0.272539,
		0.309813, -0.940140, 0.141957,
		36.579784, 35.734810, 26.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031586, 36.315571, 26.072748>,  <36.362915, 36.392910, 26.300253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031586, 36.315571, 26.072748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906578, 35.935631, 26.077196>,  <36.831573, 35.707668, 26.079865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906578, 35.935631, 26.077196>,  <37.031586, 36.315571, 26.072748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906578, 35.935631, 26.077196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520132, -0.180907, -0.834707,
		0.794854, -0.255079, 0.550583,
		-0.312520, -0.949846, 0.011120,
		36.812820, 35.650677, 26.080532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642078, 35.843624, 25.958719>,  <37.031586, 36.315571, 26.072748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642078, 35.843624, 25.958719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312973, 35.647919, 25.843010>,  <37.115509, 35.530495, 25.773584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312973, 35.647919, 25.843010>,  <37.642078, 35.843624, 25.958719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312973, 35.647919, 25.843010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418701, -0.177542, -0.890600,
		0.384377, -0.853875, 0.350929,
		-0.822766, -0.489261, -0.289275,
		37.066143, 35.501141, 25.756227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893501, 35.307419, 25.762951>,  <37.642078, 35.843624, 25.958719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893501, 35.307419, 25.762951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541969, 35.333012, 25.573822>,  <37.331051, 35.348366, 25.460344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541969, 35.333012, 25.573822>,  <37.893501, 35.307419, 25.762951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541969, 35.333012, 25.573822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417872, -0.375107, -0.827452,
		-0.230296, -0.924771, 0.302922,
		-0.878832, 0.063976, -0.472822,
		37.278320, 35.352203, 25.431974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.967171, 32.946632, 22.931845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035667, 33.242855, 23.191771>,  <32.076767, 33.420589, 23.347725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.035667, 33.242855, 23.191771>,  <31.967171, 32.946632, 22.931845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035667, 33.242855, 23.191771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131878, -0.636390, 0.760010,
		0.976363, -0.215841, -0.011313,
		0.171241, 0.740554, 0.649812,
		32.087040, 33.465023, 23.386715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280457, 32.566277, 23.492117>,  <31.967171, 32.946632, 22.931845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280457, 32.566277, 23.492117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.169006, 32.911091, 23.661472>,  <32.102135, 33.117981, 23.763086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.169006, 32.911091, 23.661472>,  <32.280457, 32.566277, 23.492117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169006, 32.911091, 23.661472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007365, -0.438917, 0.898498,
		0.960371, 0.253464, 0.115946,
		-0.278627, 0.862037, 0.423390,
		32.085419, 33.169701, 23.788488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751728, 32.612980, 24.089998>,  <32.280457, 32.566277, 23.492117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751728, 32.612980, 24.089998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.436825, 32.848705, 24.162598>,  <32.247883, 32.990139, 24.206158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.436825, 32.848705, 24.162598>,  <32.751728, 32.612980, 24.089998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436825, 32.848705, 24.162598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039317, -0.341712, 0.938982,
		0.615373, 0.732082, 0.292185,
		-0.787255, 0.589312, 0.181497,
		32.200649, 33.025497, 24.217047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941204, 32.977798, 24.718750>,  <32.751728, 32.612980, 24.089998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941204, 32.977798, 24.718750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.543087, 33.013279, 24.703129>,  <32.304218, 33.034569, 24.693756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.543087, 33.013279, 24.703129>,  <32.941204, 32.977798, 24.718750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543087, 33.013279, 24.703129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065926, -0.324265, 0.943666,
		0.071042, 0.941798, 0.328587,
		-0.995292, 0.088702, -0.039053,
		32.244499, 33.039890, 24.691412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787251, 33.474506, 25.174646>,  <32.941204, 32.977798, 24.718750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787251, 33.474506, 25.174646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451309, 33.260521, 25.137861>,  <32.249744, 33.132130, 25.115791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451309, 33.260521, 25.137861>,  <32.787251, 33.474506, 25.174646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451309, 33.260521, 25.137861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067929, -0.271667, 0.959991,
		-0.538546, 0.800005, 0.264500,
		-0.839853, -0.534967, -0.091961,
		32.199352, 33.100029, 25.110273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523308, 33.553310, 25.824377>,  <32.787251, 33.474506, 25.174646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523308, 33.553310, 25.824377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.324020, 33.253197, 25.650547>,  <32.204449, 33.073128, 25.546249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.324020, 33.253197, 25.650547>,  <32.523308, 33.553310, 25.824377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324020, 33.253197, 25.650547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039731, -0.480928, 0.875860,
		-0.866142, 0.453634, 0.209796,
		-0.498217, -0.750283, -0.434575,
		32.174557, 33.028111, 25.520174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964811, 33.462730, 26.256208>,  <32.523308, 33.553310, 25.824377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964811, 33.462730, 26.256208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.000134, 33.109898, 26.071114>,  <32.021328, 32.898197, 25.960056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.000134, 33.109898, 26.071114>,  <31.964811, 33.462730, 26.256208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000134, 33.109898, 26.071114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135695, -0.470874, 0.871702,
		-0.986807, -0.014186, -0.161276,
		0.088306, -0.882087, -0.462737,
		32.026627, 32.845272, 25.932293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423319, 33.116669, 26.520121>,  <31.964811, 33.462730, 26.256208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423319, 33.116669, 26.520121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.662178, 32.838081, 26.360950>,  <31.805492, 32.670929, 26.265448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.662178, 32.838081, 26.360950>,  <31.423319, 33.116669, 26.520121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662178, 32.838081, 26.360950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028218, -0.514017, 0.857316,
		-0.801636, -0.500714, -0.326597,
		0.597147, -0.696471, -0.397925,
		31.841322, 32.629139, 26.241573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129053, 32.418285, 26.697090>,  <31.423319, 33.116669, 26.520121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129053, 32.418285, 26.697090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.522396, 32.385834, 26.632065>,  <31.758402, 32.366364, 26.593050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.522396, 32.385834, 26.632065>,  <31.129053, 32.418285, 26.697090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522396, 32.385834, 26.632065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086571, -0.577434, 0.811835,
		-0.159729, -0.812397, -0.560802,
		0.983358, -0.081124, -0.162563,
		31.817404, 32.361496, 26.583296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331165, 31.689713, 26.662491>,  <31.129053, 32.418285, 26.697090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331165, 31.689713, 26.662491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.656292, 31.894682, 26.773306>,  <31.851368, 32.017662, 26.839794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.656292, 31.894682, 26.773306>,  <31.331165, 31.689713, 26.662491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656292, 31.894682, 26.773306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128784, -0.621893, 0.772440,
		0.568104, -0.592175, -0.571477,
		0.812817, 0.512424, 0.277038,
		31.900137, 32.048409, 26.856417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792017, 31.203444, 26.996725>,  <31.331165, 31.689713, 26.662491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792017, 31.203444, 26.996725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.982710, 31.541376, 27.093876>,  <32.097126, 31.744135, 27.152166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.982710, 31.541376, 27.093876>,  <31.792017, 31.203444, 26.996725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982710, 31.541376, 27.093876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107973, -0.330482, 0.937616,
		0.872393, -0.420765, -0.248770,
		0.476730, 0.844830, 0.242879,
		32.125729, 31.794825, 27.166740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448761, 31.046066, 27.230793>,  <31.792017, 31.203444, 26.996725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448761, 31.046066, 27.230793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364620, 31.400421, 27.396181>,  <32.314137, 31.613033, 27.495413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364620, 31.400421, 27.396181>,  <32.448761, 31.046066, 27.230793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364620, 31.400421, 27.396181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124225, -0.395283, 0.910121,
		0.969700, 0.242812, -0.026899,
		-0.210356, 0.885886, 0.413469,
		32.301514, 31.666187, 27.520222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868889, 31.132103, 27.730585>,  <32.448761, 31.046066, 27.230793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868889, 31.132103, 27.730585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.599010, 31.407154, 27.837879>,  <32.437084, 31.572186, 27.902256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.599010, 31.407154, 27.837879>,  <32.868889, 31.132103, 27.730585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599010, 31.407154, 27.837879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195943, -0.183507, 0.963292,
		0.711609, 0.702491, -0.010924,
		-0.674699, 0.687627, 0.268233,
		32.396599, 31.613441, 27.918348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151634, 31.523289, 28.263927>,  <32.868889, 31.132103, 27.730585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151634, 31.523289, 28.263927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.754551, 31.542736, 28.308041>,  <32.516300, 31.554405, 28.334509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.754551, 31.542736, 28.308041>,  <33.151634, 31.523289, 28.263927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754551, 31.542736, 28.308041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112113, 0.036692, 0.993018,
		0.044233, 0.998143, -0.041876,
		-0.992710, 0.048619, 0.110282,
		32.456738, 31.557322, 28.341125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750412, 31.872425, 28.386618>,  <33.151634, 31.523289, 28.263927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750412, 31.872425, 28.386618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021095, 31.594553, 28.484175>,  <34.183506, 31.427830, 28.542709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021095, 31.594553, 28.484175>,  <33.750412, 31.872425, 28.386618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021095, 31.594553, 28.484175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289593, -0.053414, -0.955658,
		0.676902, 0.717335, 0.165028,
		0.676712, -0.694678, 0.243891,
		34.224110, 31.386150, 28.557343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437214, 31.997362, 28.040211>,  <33.750412, 31.872425, 28.386618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437214, 31.997362, 28.040211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432953, 31.606894, 28.126909>,  <34.430397, 31.372612, 28.178928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.432953, 31.606894, 28.126909>,  <34.437214, 31.997362, 28.040211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432953, 31.606894, 28.126909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434061, -0.199786, -0.878451,
		0.900821, 0.084722, 0.425845,
		-0.010654, -0.976170, 0.216746,
		34.429756, 31.314043, 28.191933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087463, 31.818338, 27.925953>,  <34.437214, 31.997362, 28.040211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087463, 31.818338, 27.925953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863571, 31.486967, 27.917917>,  <34.729237, 31.288143, 27.913095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863571, 31.486967, 27.917917>,  <35.087463, 31.818338, 27.925953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863571, 31.486967, 27.917917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291950, -0.174454, -0.940389,
		0.775542, -0.532231, 0.339507,
		-0.559733, -0.828430, -0.020088,
		34.695652, 31.238438, 27.911890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416599, 31.290888, 27.481455>,  <35.087463, 31.818338, 27.925953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416599, 31.290888, 27.481455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056171, 31.117472, 27.477083>,  <34.839916, 31.013422, 27.474461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056171, 31.117472, 27.477083>,  <35.416599, 31.290888, 27.481455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056171, 31.117472, 27.477083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150412, -0.288783, -0.945506,
		0.406759, -0.853608, 0.325422,
		-0.901068, -0.433541, -0.010928,
		34.785851, 30.987410, 27.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544922, 30.617729, 27.290672>,  <35.416599, 31.290888, 27.481455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544922, 30.617729, 27.290672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.177532, 30.725878, 27.175226>,  <34.957096, 30.790768, 27.105959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.177532, 30.725878, 27.175226>,  <35.544922, 30.617729, 27.290672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177532, 30.725878, 27.175226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222727, -0.249406, -0.942438,
		-0.326790, -0.929891, 0.168855,
		-0.918478, 0.270370, -0.288615,
		34.901989, 30.806990, 27.088642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308434, 30.027725, 26.877388>,  <35.544922, 30.617729, 27.290672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308434, 30.027725, 26.877388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107018, 30.362009, 26.789715>,  <34.986168, 30.562580, 26.737112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.107018, 30.362009, 26.789715>,  <35.308434, 30.027725, 26.877388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107018, 30.362009, 26.789715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143293, -0.169394, -0.975076,
		-0.852008, -0.522394, -0.034455,
		-0.503537, 0.835710, -0.219181,
		34.955956, 30.612722, 26.723961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029972, 29.909605, 26.245646>,  <35.308434, 30.027725, 26.877388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029972, 29.909605, 26.245646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.971283, 30.304138, 26.275629>,  <34.936069, 30.540857, 26.293619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.971283, 30.304138, 26.275629>,  <35.029972, 29.909605, 26.245646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971283, 30.304138, 26.275629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071242, 0.086119, -0.993735,
		-0.986609, -0.140465, -0.082905,
		-0.146725, 0.986333, 0.074958,
		34.927265, 30.600039, 26.298117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551628, 30.001715, 25.736128>,  <35.029972, 29.909605, 26.245646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551628, 30.001715, 25.736128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715622, 30.358263, 25.813457>,  <34.814018, 30.572191, 25.859856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715622, 30.358263, 25.813457>,  <34.551628, 30.001715, 25.736128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715622, 30.358263, 25.813457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167078, 0.134974, -0.976661,
		-0.896659, 0.432717, -0.093591,
		0.409986, 0.891369, 0.193323,
		34.838619, 30.625673, 25.871454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253658, 30.467409, 25.350122>,  <34.551628, 30.001715, 25.736128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253658, 30.467409, 25.350122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.602066, 30.648869, 25.425510>,  <34.811111, 30.757744, 25.470743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.602066, 30.648869, 25.425510>,  <34.253658, 30.467409, 25.350122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602066, 30.648869, 25.425510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043051, 0.311694, -0.949207,
		-0.489352, 0.834895, 0.251962,
		0.871023, 0.453649, 0.188471,
		34.863373, 30.784964, 25.482052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114578, 31.111305, 24.985830>,  <34.253658, 30.467409, 25.350122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114578, 31.111305, 24.985830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505642, 31.064470, 25.055653>,  <34.740280, 31.036369, 25.097546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505642, 31.064470, 25.055653>,  <34.114578, 31.111305, 24.985830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505642, 31.064470, 25.055653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210170, 0.534653, -0.818519,
		0.002511, 0.836921, 0.547318,
		0.977661, -0.117085, 0.174554,
		34.798939, 31.029345, 25.108019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430973, 31.803699, 25.015999>,  <34.114578, 31.111305, 24.985830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430973, 31.803699, 25.015999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665249, 31.506901, 24.885519>,  <34.805813, 31.328821, 24.807230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665249, 31.506901, 24.885519>,  <34.430973, 31.803699, 25.015999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665249, 31.506901, 24.885519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158757, 0.499674, -0.851541,
		0.794835, 0.446952, 0.410452,
		0.585690, -0.741997, -0.326202,
		34.840958, 31.284302, 24.787659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157608, 32.052299, 24.926830>,  <34.430973, 31.803699, 25.015999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157608, 32.052299, 24.926830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.132954, 31.717825, 24.708843>,  <35.118160, 31.517139, 24.578051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.132954, 31.717825, 24.708843>,  <35.157608, 32.052299, 24.926830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132954, 31.717825, 24.708843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239334, 0.517694, -0.821408,
		0.968979, -0.181059, 0.168218,
		-0.061637, -0.836188, -0.544968,
		35.114464, 31.466969, 24.545353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768925, 32.019516, 24.546740>,  <35.157608, 32.052299, 24.926830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768925, 32.019516, 24.546740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488163, 31.808533, 24.355274>,  <35.319706, 31.681942, 24.240395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488163, 31.808533, 24.355274>,  <35.768925, 32.019516, 24.546740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488163, 31.808533, 24.355274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168943, 0.529558, -0.831280,
		0.691947, -0.664345, -0.282587,
		-0.701903, -0.527460, -0.478662,
		35.277592, 31.650295, 24.211676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016640, 32.090168, 23.868080>,  <35.768925, 32.019516, 24.546740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016640, 32.090168, 23.868080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652294, 31.937428, 23.805456>,  <35.433685, 31.845783, 23.767881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652294, 31.937428, 23.805456>,  <36.016640, 32.090168, 23.868080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652294, 31.937428, 23.805456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049188, 0.477094, -0.877475,
		0.409758, -0.791562, -0.453352,
		-0.910867, -0.381851, -0.156557,
		35.379036, 31.822872, 23.758488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745777, 31.806757, 23.786816>,  <36.016640, 32.090168, 23.868080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745777, 31.806757, 23.786816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057800, 32.039383, 23.694481>,  <37.245014, 32.178959, 23.639080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057800, 32.039383, 23.694481>,  <36.745777, 31.806757, 23.786816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057800, 32.039383, 23.694481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337848, -0.080961, 0.937712,
		0.526653, -0.809460, -0.259636,
		0.780061, 0.581566, -0.230836,
		37.291821, 32.213852, 23.625231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253952, 31.481873, 24.059326>,  <36.745777, 31.806757, 23.786816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253952, 31.481873, 24.059326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405235, 31.848917, 24.010416>,  <37.496006, 32.069145, 23.981070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405235, 31.848917, 24.010416>,  <37.253952, 31.481873, 24.059326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405235, 31.848917, 24.010416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470310, -0.076691, 0.879163,
		0.797352, -0.390012, -0.460566,
		0.378205, 0.917611, -0.122277,
		37.518696, 32.124199, 23.973734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027279, 31.448835, 24.269321>,  <37.253952, 31.481873, 24.059326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027279, 31.448835, 24.269321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880436, 31.819113, 24.305819>,  <37.792332, 32.041279, 24.327717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880436, 31.819113, 24.305819>,  <38.027279, 31.448835, 24.269321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880436, 31.819113, 24.305819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091279, -0.061766, 0.993908,
		0.925689, 0.373200, -0.061821,
		-0.367108, 0.925693, 0.091241,
		37.770302, 32.096821, 24.333191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415089, 31.721214, 24.786724>,  <38.027279, 31.448835, 24.269321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415089, 31.721214, 24.786724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088840, 31.952499, 24.778406>,  <37.893093, 32.091270, 24.773417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088840, 31.952499, 24.778406>,  <38.415089, 31.721214, 24.786724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088840, 31.952499, 24.778406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036849, -0.016047, 0.999192,
		0.577411, 0.815729, 0.034395,
		-0.815621, 0.578212, -0.020793,
		37.844154, 32.125961, 24.772169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529587, 32.171703, 25.313650>,  <38.415089, 31.721214, 24.786724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529587, 32.171703, 25.313650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142422, 32.229671, 25.231539>,  <37.910122, 32.264454, 25.182272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.142422, 32.229671, 25.231539>,  <38.529587, 32.171703, 25.313650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142422, 32.229671, 25.231539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192923, 0.094855, 0.976618,
		0.161003, 0.984886, -0.063853,
		-0.967915, 0.144919, -0.205279,
		37.852047, 32.273148, 25.169954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310860, 32.836716, 25.695721>,  <38.529587, 32.171703, 25.313650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310860, 32.836716, 25.695721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.994633, 32.600075, 25.632469>,  <37.804897, 32.458088, 25.594519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.994633, 32.600075, 25.632469>,  <38.310860, 32.836716, 25.695721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994633, 32.600075, 25.632469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237525, 0.058236, 0.969634,
		-0.564433, 0.804121, -0.186561,
		-0.790567, -0.591607, -0.158129,
		37.757462, 32.422592, 25.585032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647713, 33.213535, 25.898487>,  <38.310860, 32.836716, 25.695721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647713, 33.213535, 25.898487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.559322, 32.823463, 25.892883>,  <37.506287, 32.589420, 25.889521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.559322, 32.823463, 25.892883>,  <37.647713, 33.213535, 25.898487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559322, 32.823463, 25.892883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249897, 0.042728, 0.967330,
		-0.942720, 0.217258, -0.253136,
		-0.220976, -0.975179, -0.014012,
		37.493031, 32.530910, 25.888680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896126, 33.146580, 26.185539>,  <37.647713, 33.213535, 25.898487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896126, 33.146580, 26.185539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034901, 32.774357, 26.232346>,  <37.118164, 32.551022, 26.260429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034901, 32.774357, 26.232346>,  <36.896126, 33.146580, 26.185539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034901, 32.774357, 26.232346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054299, 0.104625, 0.993028,
		-0.936317, -0.350867, -0.014231,
		0.346932, -0.930562, 0.117014,
		37.138981, 32.495190, 26.267450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459354, 32.646900, 26.708160>,  <36.896126, 33.146580, 26.185539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459354, 32.646900, 26.708160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795898, 32.431767, 26.686810>,  <36.997826, 32.302689, 26.673998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795898, 32.431767, 26.686810>,  <36.459354, 32.646900, 26.708160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795898, 32.431767, 26.686810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153158, -0.331972, 0.930773,
		-0.518321, -0.774939, -0.361681,
		0.841360, -0.537833, -0.053380,
		37.048306, 32.270416, 26.670795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337978, 31.975340, 27.076897>,  <36.459354, 32.646900, 26.708160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337978, 31.975340, 27.076897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734200, 32.029770, 27.070017>,  <36.971931, 32.062428, 27.065889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.734200, 32.029770, 27.070017>,  <36.337978, 31.975340, 27.076897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734200, 32.029770, 27.070017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055954, -0.286435, 0.956464,
		0.125224, -0.948387, -0.291342,
		0.990549, 0.136074, -0.017197,
		37.031364, 32.070591, 27.064857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646973, 31.403402, 27.415071>,  <36.337978, 31.975340, 27.076897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646973, 31.403402, 27.415071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889442, 31.721241, 27.428734>,  <37.034924, 31.911945, 27.436932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889442, 31.721241, 27.428734>,  <36.646973, 31.403402, 27.415071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889442, 31.721241, 27.428734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007104, -0.037534, 0.999270,
		0.795300, -0.605974, -0.017107,
		0.606174, 0.794599, 0.034155,
		37.071293, 31.959621, 27.438980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139462, 31.214371, 27.827991>,  <36.646973, 31.403402, 27.415071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139462, 31.214371, 27.827991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175766, 31.612715, 27.826124>,  <37.197548, 31.851721, 27.825005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175766, 31.612715, 27.826124>,  <37.139462, 31.214371, 27.827991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175766, 31.612715, 27.826124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171739, -0.011034, 0.985081,
		0.980953, -0.090212, -0.172029,
		0.090765, 0.995862, -0.004669,
		37.202995, 31.911472, 27.824724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744732, 31.335800, 28.223370>,  <37.139462, 31.214371, 27.827991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744732, 31.335800, 28.223370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557507, 31.688890, 28.239914>,  <37.445171, 31.900745, 28.249840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557507, 31.688890, 28.239914>,  <37.744732, 31.335800, 28.223370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557507, 31.688890, 28.239914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086438, -0.000848, 0.996257,
		0.879458, 0.469884, -0.075905,
		-0.468061, 0.882728, 0.041361,
		37.417088, 31.953709, 28.252323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009953, 31.723207, 28.788012>,  <37.744732, 31.335800, 28.223370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009953, 31.723207, 28.788012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678066, 31.938702, 28.729580>,  <37.478935, 32.067997, 28.694521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678066, 31.938702, 28.729580>,  <38.009953, 31.723207, 28.788012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678066, 31.938702, 28.729580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096388, 0.119488, 0.988146,
		0.549804, 0.833958, -0.047213,
		-0.829714, 0.538736, -0.146079,
		37.429153, 32.100323, 28.685757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.927307, 34.821693, 25.213205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615860, 35.049442, 25.107697>,  <37.428993, 35.186092, 25.044392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.615860, 35.049442, 25.107697>,  <37.927307, 34.821693, 25.213205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615860, 35.049442, 25.107697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240969, -0.116822, -0.963476,
		-0.579388, -0.813739, -0.046241,
		-0.778616, 0.569370, -0.263772,
		37.382275, 35.220253, 25.028564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759670, 34.445755, 24.608398>,  <37.927307, 34.821693, 25.213205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759670, 34.445755, 24.608398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580959, 34.803596, 24.611923>,  <37.473732, 35.018299, 24.614038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580959, 34.803596, 24.611923>,  <37.759670, 34.445755, 24.608398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580959, 34.803596, 24.611923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121811, 0.070587, -0.990040,
		-0.886314, -0.441254, -0.140509,
		-0.446778, 0.894602, 0.008812,
		37.446926, 35.071976, 24.614567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198204, 34.413910, 24.133020>,  <37.759670, 34.445755, 24.608398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198204, 34.413910, 24.133020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304512, 34.798985, 24.153427>,  <37.368298, 35.030029, 24.165670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304512, 34.798985, 24.153427>,  <37.198204, 34.413910, 24.133020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304512, 34.798985, 24.153427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012978, 0.049341, -0.998698,
		-0.963950, 0.266083, 0.000619,
		0.265767, 0.962687, 0.051015,
		37.384243, 35.087791, 24.168732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011250, 34.637417, 23.445724>,  <37.198204, 34.413910, 24.133020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011250, 34.637417, 23.445724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209564, 34.958111, 23.579243>,  <37.328552, 35.150528, 23.659353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.209564, 34.958111, 23.579243>,  <37.011250, 34.637417, 23.445724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209564, 34.958111, 23.579243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201103, 0.267924, -0.942218,
		-0.844837, 0.534269, -0.028397,
		0.495789, 0.801731, 0.333795,
		37.358299, 35.198631, 23.679380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816597, 35.247791, 23.042337>,  <37.011250, 34.637417, 23.445724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816597, 35.247791, 23.042337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166309, 35.379128, 23.185347>,  <37.376137, 35.457932, 23.271152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.166309, 35.379128, 23.185347>,  <36.816597, 35.247791, 23.042337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166309, 35.379128, 23.185347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247081, 0.332962, -0.909993,
		-0.417831, 0.883928, 0.209975,
		0.874282, 0.328342, 0.357523,
		37.428593, 35.477631, 23.292604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930019, 35.928497, 22.857470>,  <36.816597, 35.247791, 23.042337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930019, 35.928497, 22.857470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298992, 35.786392, 22.918011>,  <37.520374, 35.701130, 22.954336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298992, 35.786392, 22.918011>,  <36.930019, 35.928497, 22.857470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298992, 35.786392, 22.918011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284420, 0.359935, -0.888568,
		0.261196, 0.862691, 0.433059,
		0.922432, -0.355261, 0.151353,
		37.575722, 35.679813, 22.963417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376747, 36.455215, 22.612354>,  <36.930019, 35.928497, 22.857470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376747, 36.455215, 22.612354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624325, 36.141041, 22.613104>,  <37.772873, 35.952538, 22.613554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624325, 36.141041, 22.613104>,  <37.376747, 36.455215, 22.612354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624325, 36.141041, 22.613104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554266, 0.435086, -0.709570,
		0.556505, 0.440222, 0.704632,
		0.618944, -0.785433, 0.001873,
		37.810009, 35.905411, 22.613667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052292, 36.680122, 22.527000>,  <37.376747, 36.455215, 22.612354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052292, 36.680122, 22.527000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063000, 36.295383, 22.418085>,  <38.069424, 36.064541, 22.352736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063000, 36.295383, 22.418085>,  <38.052292, 36.680122, 22.527000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063000, 36.295383, 22.418085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424300, 0.257566, -0.868118,
		0.905126, -0.092294, 0.415005,
		0.026769, -0.961843, -0.272290,
		38.071030, 36.006832, 22.336399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650333, 36.507790, 22.363224>,  <38.052292, 36.680122, 22.527000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650333, 36.507790, 22.363224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453976, 36.208641, 22.184467>,  <38.336159, 36.029152, 22.077213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453976, 36.208641, 22.184467>,  <38.650333, 36.507790, 22.363224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453976, 36.208641, 22.184467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510708, 0.168552, -0.843071,
		0.705831, -0.642091, 0.299201,
		-0.490897, -0.747870, -0.446890,
		38.306705, 35.984280, 22.050400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143875, 36.298946, 22.003962>,  <38.650333, 36.507790, 22.363224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143875, 36.298946, 22.003962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822147, 36.148785, 21.819723>,  <38.629112, 36.058689, 21.709181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822147, 36.148785, 21.819723>,  <39.143875, 36.298946, 22.003962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822147, 36.148785, 21.819723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520269, -0.070466, -0.851090,
		0.287047, -0.924178, 0.251988,
		-0.804316, -0.375405, -0.460594,
		38.580853, 36.036163, 21.681545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334488, 35.726475, 21.553072>,  <39.143875, 36.298946, 22.003962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334488, 35.726475, 21.553072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981018, 35.814060, 21.387583>,  <38.768936, 35.866611, 21.288288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981018, 35.814060, 21.387583>,  <39.334488, 35.726475, 21.553072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981018, 35.814060, 21.387583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412269, -0.054527, -0.909429,
		-0.221690, -0.974208, -0.042087,
		-0.883678, 0.218962, -0.413725,
		38.715916, 35.879749, 21.263466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305805, 35.283226, 20.897947>,  <39.334488, 35.726475, 21.553072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305805, 35.283226, 20.897947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057335, 35.594887, 20.864321>,  <38.908253, 35.781883, 20.844145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057335, 35.594887, 20.864321>,  <39.305805, 35.283226, 20.897947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057335, 35.594887, 20.864321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334187, 0.166331, -0.927714,
		-0.708848, -0.604363, -0.363703,
		-0.621171, 0.779153, -0.084066,
		38.870983, 35.828632, 20.839102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247665, 35.286469, 20.194643>,  <39.305805, 35.283226, 20.897947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247665, 35.286469, 20.194643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117718, 35.642017, 20.323864>,  <39.039749, 35.855347, 20.401396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.117718, 35.642017, 20.323864>,  <39.247665, 35.286469, 20.194643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117718, 35.642017, 20.323864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254109, 0.411056, -0.875478,
		-0.910981, -0.202329, -0.359411,
		-0.324872, 0.888874, 0.323051,
		39.020256, 35.908680, 20.420778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884899, 35.416359, 19.476608>,  <39.247665, 35.286469, 20.194643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884899, 35.416359, 19.476608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118744, 35.408516, 19.152178>,  <39.259052, 35.403809, 18.957520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118744, 35.408516, 19.152178>,  <38.884899, 35.416359, 19.476608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118744, 35.408516, 19.152178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801689, 0.167493, 0.573795,
		0.124598, -0.985678, 0.113639,
		0.584611, -0.019609, -0.811077,
		39.294128, 35.402634, 18.908855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293732, 35.258961, 19.099157>,  <38.884899, 35.416359, 19.476608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293732, 35.258961, 19.099157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094067, 34.989037, 18.881729>,  <37.974266, 34.827084, 18.751272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.094067, 34.989037, 18.881729>,  <38.293732, 35.258961, 19.099157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094067, 34.989037, 18.881729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006400, -0.630168, 0.776433,
		-0.866483, 0.384090, 0.318877,
		-0.499166, -0.674806, -0.543571,
		37.944317, 34.786594, 18.718658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605354, 35.122154, 19.507610>,  <38.293732, 35.258961, 19.099157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605354, 35.122154, 19.507610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675186, 34.808826, 19.268972>,  <37.717087, 34.620831, 19.125790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675186, 34.808826, 19.268972>,  <37.605354, 35.122154, 19.507610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675186, 34.808826, 19.268972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192572, -0.621362, 0.759490,
		-0.965628, -0.017705, -0.259324,
		0.174581, -0.783323, -0.596595,
		37.727562, 34.573830, 19.089994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958153, 34.713978, 19.607141>,  <37.605354, 35.122154, 19.507610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958153, 34.713978, 19.607141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230507, 34.467705, 19.448483>,  <37.393921, 34.319942, 19.353287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230507, 34.467705, 19.448483>,  <36.958153, 34.713978, 19.607141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230507, 34.467705, 19.448483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247896, -0.703356, 0.666212,
		-0.689155, -0.355291, -0.631533,
		0.680891, -0.615678, -0.396647,
		37.434772, 34.283001, 19.329489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630501, 34.067451, 19.616692>,  <36.958153, 34.713978, 19.607141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630501, 34.067451, 19.616692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015938, 33.965149, 19.585499>,  <37.247200, 33.903767, 19.566782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015938, 33.965149, 19.585499>,  <36.630501, 34.067451, 19.616692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015938, 33.965149, 19.585499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105342, -0.631187, 0.768444,
		-0.245758, -0.732250, -0.635148,
		0.963591, -0.255759, -0.077983,
		37.305016, 33.888420, 19.562103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674961, 33.288963, 19.714867>,  <36.630501, 34.067451, 19.616692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674961, 33.288963, 19.714867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035480, 33.440868, 19.798241>,  <37.251793, 33.532013, 19.848265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.035480, 33.440868, 19.798241>,  <36.674961, 33.288963, 19.714867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035480, 33.440868, 19.798241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039720, -0.551568, 0.833184,
		0.431380, -0.742666, -0.512210,
		0.901296, 0.379764, 0.208436,
		37.305870, 33.554798, 19.860771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025463, 32.685131, 19.948532>,  <36.674961, 33.288963, 19.714867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025463, 32.685131, 19.948532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247803, 32.999050, 20.058176>,  <37.381207, 33.187401, 20.123962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247803, 32.999050, 20.058176>,  <37.025463, 32.685131, 19.948532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247803, 32.999050, 20.058176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101526, -0.391361, 0.914619,
		0.825063, -0.480558, -0.297214,
		0.555845, 0.784793, 0.274109,
		37.414555, 33.234489, 20.140409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583508, 32.410542, 20.262676>,  <37.025463, 32.685131, 19.948532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583508, 32.410542, 20.262676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545769, 32.779202, 20.413231>,  <37.523125, 33.000397, 20.503563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545769, 32.779202, 20.413231>,  <37.583508, 32.410542, 20.262676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545769, 32.779202, 20.413231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133694, -0.362918, 0.922180,
		0.986521, 0.137329, -0.088978,
		-0.094350, 0.921646, 0.376386,
		37.517464, 33.055695, 20.526146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112850, 32.449451, 20.866087>,  <37.583508, 32.410542, 20.262676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112850, 32.449451, 20.866087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856686, 32.749031, 20.934147>,  <37.702988, 32.928780, 20.974983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856686, 32.749031, 20.934147>,  <38.112850, 32.449451, 20.866087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856686, 32.749031, 20.934147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014125, -0.232987, 0.972377,
		0.767904, 0.620316, 0.159786,
		-0.640409, 0.748949, 0.170149,
		37.664562, 32.973717, 20.985191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429276, 32.887291, 21.445768>,  <38.112850, 32.449451, 20.866087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429276, 32.887291, 21.445768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031761, 32.924328, 21.421074>,  <37.793251, 32.946552, 21.406258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031761, 32.924328, 21.421074>,  <38.429276, 32.887291, 21.445768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031761, 32.924328, 21.421074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075759, -0.156532, 0.984763,
		0.081521, 0.983323, 0.162575,
		-0.993788, 0.092595, -0.061735,
		37.733624, 32.952106, 21.402554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227314, 33.287357, 22.025839>,  <38.429276, 32.887291, 21.445768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227314, 33.287357, 22.025839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.879845, 33.124481, 21.912991>,  <37.671364, 33.026756, 21.845282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.879845, 33.124481, 21.912991>,  <38.227314, 33.287357, 22.025839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879845, 33.124481, 21.912991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282602, -0.060398, 0.957334,
		-0.406860, 0.911343, -0.062608,
		-0.868678, -0.407194, -0.282121,
		37.619240, 33.002323, 21.828354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676155, 33.646240, 22.349928>,  <38.227314, 33.287357, 22.025839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676155, 33.646240, 22.349928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.519741, 33.291092, 22.252958>,  <37.425892, 33.078003, 22.194777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.519741, 33.291092, 22.252958>,  <37.676155, 33.646240, 22.349928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519741, 33.291092, 22.252958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189902, -0.179897, 0.965181,
		-0.900570, 0.423460, -0.098262,
		-0.391039, -0.887873, -0.242426,
		37.402428, 33.024731, 22.180231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029892, 33.645039, 22.761940>,  <37.676155, 33.646240, 22.349928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029892, 33.645039, 22.761940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149944, 33.279438, 22.652752>,  <37.221977, 33.060078, 22.587238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149944, 33.279438, 22.652752>,  <37.029892, 33.645039, 22.761940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149944, 33.279438, 22.652752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075868, -0.308132, 0.948313,
		-0.950875, -0.263911, -0.161825,
		0.300133, -0.914005, -0.272972,
		37.239983, 33.005238, 22.570860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579365, 33.191956, 23.104733>,  <37.029892, 33.645039, 22.761940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579365, 33.191956, 23.104733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.863464, 32.929710, 23.002193>,  <37.033924, 32.772362, 22.940670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.863464, 32.929710, 23.002193>,  <36.579365, 33.191956, 23.104733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863464, 32.929710, 23.002193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080396, -0.286227, 0.954783,
		-0.699344, -0.698744, -0.150584,
		0.710249, -0.655615, -0.256348,
		37.076538, 32.733025, 22.925289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412193, 32.504684, 23.376160>,  <36.579365, 33.191956, 23.104733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412193, 32.504684, 23.376160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806843, 32.484856, 23.314034>,  <37.043633, 32.472958, 23.276758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.806843, 32.484856, 23.314034>,  <36.412193, 32.504684, 23.376160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806843, 32.484856, 23.314034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136327, -0.271622, 0.952699,
		-0.089410, -0.961127, -0.261231,
		0.986621, -0.049569, -0.155313,
		37.102829, 32.469986, 23.267439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994381, 31.947161, 23.028147>,  <36.412193, 32.504684, 23.376160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994381, 31.947161, 23.028147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614532, 31.944798, 23.153486>,  <35.386623, 31.943380, 23.228689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614532, 31.944798, 23.153486>,  <35.994381, 31.947161, 23.028147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614532, 31.944798, 23.153486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279281, 0.469632, -0.837525,
		-0.142210, -0.882842, -0.447622,
		-0.949620, -0.005908, 0.313348,
		35.329647, 31.943026, 23.247490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596077, 31.637421, 22.485109>,  <35.994381, 31.947161, 23.028147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596077, 31.637421, 22.485109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352314, 31.869913, 22.700809>,  <35.206055, 32.009407, 22.830229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.352314, 31.869913, 22.700809>,  <35.596077, 31.637421, 22.485109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352314, 31.869913, 22.700809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235635, 0.516630, -0.823146,
		-0.757029, -0.628701, -0.177882,
		-0.609412, 0.581230, 0.539249,
		35.169491, 32.044281, 22.862583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968845, 31.609129, 22.151665>,  <35.596077, 31.637421, 22.485109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968845, 31.609129, 22.151665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979076, 31.941616, 22.373810>,  <34.985214, 32.141109, 22.507097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979076, 31.941616, 22.373810>,  <34.968845, 31.609129, 22.151665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979076, 31.941616, 22.373810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288228, 0.538083, -0.792080,
		-0.957220, -0.139810, 0.253343,
		0.025579, 0.831216, 0.555361,
		34.986752, 32.190979, 22.540419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432892, 31.913786, 22.067053>,  <34.968845, 31.609129, 22.151665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432892, 31.913786, 22.067053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634312, 32.218441, 22.230196>,  <34.755161, 32.401234, 22.328083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634312, 32.218441, 22.230196>,  <34.432892, 31.913786, 22.067053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634312, 32.218441, 22.230196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288964, 0.593357, -0.751283,
		-0.814212, 0.260448, 0.518869,
		0.503545, 0.761639, 0.407859,
		34.785374, 32.446934, 22.352554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943718, 32.488884, 22.125647>,  <34.432892, 31.913786, 22.067053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943718, 32.488884, 22.125647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311470, 32.643116, 22.094467>,  <34.532120, 32.735657, 22.075760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311470, 32.643116, 22.094467>,  <33.943718, 32.488884, 22.125647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311470, 32.643116, 22.094467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308913, 0.584968, -0.749923,
		-0.243558, 0.713541, 0.656916,
		0.919376, 0.385580, -0.077948,
		34.587284, 32.758789, 22.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824917, 33.134193, 21.789684>,  <33.943718, 32.488884, 22.125647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824917, 33.134193, 21.789684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223141, 33.116596, 21.756386>,  <34.462074, 33.106037, 21.736406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223141, 33.116596, 21.756386>,  <33.824917, 33.134193, 21.789684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223141, 33.116596, 21.756386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054460, 0.452225, -0.890239,
		0.076807, 0.890818, 0.447821,
		0.995558, -0.043988, -0.083248,
		34.521809, 33.103401, 21.731411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034367, 33.863117, 21.680706>,  <33.824917, 33.134193, 21.789684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034367, 33.863117, 21.680706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312538, 33.608189, 21.547915>,  <34.479439, 33.455231, 21.468241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312538, 33.608189, 21.547915>,  <34.034367, 33.863117, 21.680706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312538, 33.608189, 21.547915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057887, 0.510161, -0.858129,
		0.716264, 0.577547, 0.391671,
		0.695425, -0.637319, -0.331977,
		34.521164, 33.416992, 21.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960999, 34.718212, 21.849117>,  <34.034367, 33.863117, 21.680706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960999, 34.718212, 21.849117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622242, 34.896660, 21.733362>,  <33.418987, 35.003731, 21.663910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622242, 34.896660, 21.733362>,  <33.960999, 34.718212, 21.849117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622242, 34.896660, 21.733362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449090, -0.308624, 0.838492,
		0.284758, 0.840076, 0.461721,
		-0.846895, 0.446121, -0.289387,
		33.368172, 35.030495, 21.646545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811504, 35.243614, 22.457762>,  <33.960999, 34.718212, 21.849117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811504, 35.243614, 22.457762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499725, 35.138783, 22.230154>,  <33.312660, 35.075882, 22.093590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499725, 35.138783, 22.230154>,  <33.811504, 35.243614, 22.457762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499725, 35.138783, 22.230154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481480, -0.330503, 0.811754,
		-0.400805, 0.906688, 0.131423,
		-0.779443, -0.262078, -0.569020,
		33.265892, 35.060158, 22.059448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191116, 35.539932, 22.811382>,  <33.811504, 35.243614, 22.457762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191116, 35.539932, 22.811382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120323, 35.233551, 22.564157>,  <33.077847, 35.049725, 22.415823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120323, 35.233551, 22.564157>,  <33.191116, 35.539932, 22.811382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120323, 35.233551, 22.564157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657344, -0.375388, 0.653439,
		-0.732514, 0.521923, -0.437057,
		-0.176979, -0.765950, -0.618060,
		33.067230, 35.003765, 22.378740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564770, 35.314232, 22.967716>,  <33.191116, 35.539932, 22.811382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564770, 35.314232, 22.967716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708511, 34.994308, 22.775393>,  <32.794754, 34.802357, 22.659998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708511, 34.994308, 22.775393>,  <32.564770, 35.314232, 22.967716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708511, 34.994308, 22.775393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552426, -0.597568, 0.581152,
		-0.752125, 0.056775, -0.656570,
		0.359350, -0.799806, -0.480810,
		32.816319, 34.754368, 22.631149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040249, 34.967167, 22.824615>,  <32.564770, 35.314232, 22.967716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040249, 34.967167, 22.824615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321991, 34.684761, 22.795145>,  <32.491035, 34.515316, 22.777462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321991, 34.684761, 22.795145>,  <32.040249, 34.967167, 22.824615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321991, 34.684761, 22.795145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568523, -0.623226, 0.537002,
		-0.425047, -0.336354, -0.840358,
		0.704356, -0.706013, -0.073675,
		32.533298, 34.472958, 22.773043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734612, 34.385326, 22.636877>,  <32.040249, 34.967167, 22.824615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734612, 34.385326, 22.636877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072880, 34.257473, 22.807838>,  <32.275841, 34.180763, 22.910416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072880, 34.257473, 22.807838>,  <31.734612, 34.385326, 22.636877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072880, 34.257473, 22.807838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533681, -0.513646, 0.671827,
		0.004799, -0.796244, -0.604957,
		0.845672, -0.319630, 0.427405,
		32.326580, 34.161583, 22.936060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699900, 33.605770, 22.618729>,  <31.734612, 34.385326, 22.636877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699900, 33.605770, 22.618729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965559, 33.722755, 22.893938>,  <32.124954, 33.792946, 23.059063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965559, 33.722755, 22.893938>,  <31.699900, 33.605770, 22.618729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965559, 33.722755, 22.893938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455800, -0.571073, 0.682732,
		0.592583, -0.767035, -0.245974,
		0.664148, 0.292460, 0.688022,
		32.164803, 33.810493, 23.100346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.754063, 38.462372, 20.273148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098228, 38.263680, 20.318666>,  <36.304726, 38.144463, 20.345978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098228, 38.263680, 20.318666>,  <35.754063, 38.462372, 20.273148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098228, 38.263680, 20.318666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090028, 0.071626, 0.993360,
		-0.501585, -0.864943, 0.016908,
		0.860411, -0.496732, 0.113796,
		36.356354, 38.114658, 20.352806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578884, 37.877769, 20.768898>,  <35.754063, 38.462372, 20.273148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578884, 37.877769, 20.768898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.977554, 37.899967, 20.792746>,  <36.216759, 37.913284, 20.807055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.977554, 37.899967, 20.792746>,  <35.578884, 37.877769, 20.768898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977554, 37.899967, 20.792746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054230, -0.094027, 0.994092,
		0.060771, -0.994022, -0.090705,
		0.996678, 0.055493, 0.059620,
		36.276558, 37.916615, 20.810631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697281, 37.363792, 21.324066>,  <35.578884, 37.877769, 20.768898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697281, 37.363792, 21.324066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.018909, 37.597450, 21.279819>,  <36.211887, 37.737644, 21.253271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.018909, 37.597450, 21.279819>,  <35.697281, 37.363792, 21.324066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018909, 37.597450, 21.279819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043067, 0.128343, 0.990794,
		0.592968, -0.801435, 0.078039,
		0.804073, 0.584149, -0.110618,
		36.260132, 37.772694, 21.246634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240658, 37.113052, 21.761702>,  <35.697281, 37.363792, 21.324066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240658, 37.113052, 21.761702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.328621, 37.498764, 21.702635>,  <36.381397, 37.730190, 21.667194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.328621, 37.498764, 21.702635>,  <36.240658, 37.113052, 21.761702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328621, 37.498764, 21.702635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054419, 0.163262, 0.985080,
		0.974002, -0.208588, 0.088378,
		0.219905, 0.964280, -0.147667,
		36.394592, 37.788048, 21.658335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628586, 37.228542, 22.264906>,  <36.240658, 37.113052, 21.761702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628586, 37.228542, 22.264906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.522182, 37.592869, 22.138638>,  <36.458340, 37.811466, 22.062876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.522182, 37.592869, 22.138638>,  <36.628586, 37.228542, 22.264906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522182, 37.592869, 22.138638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037883, 0.317338, 0.947555,
		0.963227, 0.264013, -0.049909,
		-0.266005, 0.910820, -0.315670,
		36.442383, 37.866116, 22.043936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067001, 37.714993, 22.607025>,  <36.628586, 37.228542, 22.264906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067001, 37.714993, 22.607025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.728279, 37.899929, 22.501831>,  <36.525047, 38.010891, 22.438715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.728279, 37.899929, 22.501831>,  <37.067001, 37.714993, 22.607025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728279, 37.899929, 22.501831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151914, 0.263603, 0.952594,
		0.509745, 0.846614, -0.152985,
		-0.846807, 0.462340, -0.262983,
		36.474236, 38.038631, 22.422935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047241, 38.219818, 23.130503>,  <37.067001, 37.714993, 22.607025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047241, 38.219818, 23.130503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677868, 38.241562, 22.978544>,  <36.456245, 38.254608, 22.887369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677868, 38.241562, 22.978544>,  <37.047241, 38.219818, 23.130503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677868, 38.241562, 22.978544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364984, 0.181481, 0.913154,
		0.118584, 0.981891, -0.147745,
		-0.923431, 0.054361, -0.379896,
		36.400837, 38.257870, 22.864576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813435, 38.779926, 23.469549>,  <37.047241, 38.219818, 23.130503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813435, 38.779926, 23.469549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.488724, 38.590439, 23.332956>,  <36.293900, 38.476746, 23.250999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.488724, 38.590439, 23.332956>,  <36.813435, 38.779926, 23.469549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488724, 38.590439, 23.332956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267815, -0.217639, 0.938567,
		-0.518941, 0.853358, 0.049804,
		-0.811773, -0.473722, -0.341484,
		36.245193, 38.448322, 23.230511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323936, 39.081768, 23.805573>,  <36.813435, 38.779926, 23.469549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323936, 39.081768, 23.805573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.211880, 38.716980, 23.685688>,  <36.144646, 38.498108, 23.613758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.211880, 38.716980, 23.685688>,  <36.323936, 39.081768, 23.805573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211880, 38.716980, 23.685688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374172, -0.183784, 0.908966,
		-0.884035, 0.366780, -0.289750,
		-0.280139, -0.911974, -0.299711,
		36.127838, 38.443386, 23.595776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510849, 39.008854, 23.879686>,  <36.323936, 39.081768, 23.805573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510849, 39.008854, 23.879686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.701199, 38.657223, 23.890751>,  <35.815411, 38.446243, 23.897390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.701199, 38.657223, 23.890751>,  <35.510849, 39.008854, 23.879686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701199, 38.657223, 23.890751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392106, -0.183899, 0.901351,
		-0.787269, -0.439780, -0.432205,
		0.475878, -0.879076, 0.027662,
		35.843964, 38.393501, 23.899050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987801, 38.469917, 24.152052>,  <35.510849, 39.008854, 23.879686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987801, 38.469917, 24.152052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.330578, 38.269920, 24.202087>,  <35.536243, 38.149921, 24.232109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.330578, 38.269920, 24.202087>,  <34.987801, 38.469917, 24.152052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330578, 38.269920, 24.202087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338780, -0.363530, 0.867798,
		-0.388429, -0.786030, -0.480915,
		0.856943, -0.500002, 0.125085,
		35.587662, 38.119923, 24.239614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866955, 37.817982, 24.401772>,  <34.987801, 38.469917, 24.152052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866955, 37.817982, 24.401772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.240665, 37.885620, 24.527327>,  <35.464893, 37.926205, 24.602659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.240665, 37.885620, 24.527327>,  <34.866955, 37.817982, 24.401772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240665, 37.885620, 24.527327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296958, -0.118165, 0.947551,
		0.197319, -0.978490, -0.060184,
		0.934281, 0.169098, 0.313887,
		35.520950, 37.936348, 24.621492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359898, 37.441154, 24.087130>,  <34.866955, 37.817982, 24.401772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359898, 37.441154, 24.087130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.966946, 37.490116, 24.030640>,  <33.731174, 37.519493, 23.996746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.966946, 37.490116, 24.030640>,  <34.359898, 37.441154, 24.087130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966946, 37.490116, 24.030640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183965, 0.500191, -0.846147,
		-0.032932, -0.857220, -0.513897,
		-0.982381, 0.122404, -0.141226,
		33.672230, 37.526836, 23.988272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257534, 37.337364, 23.435852>,  <34.359898, 37.441154, 24.087130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257534, 37.337364, 23.435852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.900402, 37.507023, 23.496449>,  <33.686123, 37.608818, 23.532806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.900402, 37.507023, 23.496449>,  <34.257534, 37.337364, 23.435852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900402, 37.507023, 23.496449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119066, 0.546677, -0.828835,
		-0.434363, -0.721974, -0.538593,
		-0.892834, 0.424143, 0.151494,
		33.632553, 37.634266, 23.541897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777199, 37.120197, 22.831188>,  <34.257534, 37.337364, 23.435852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777199, 37.120197, 22.831188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.647923, 37.458004, 23.001993>,  <33.570358, 37.660686, 23.104477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.647923, 37.458004, 23.001993>,  <33.777199, 37.120197, 22.831188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647923, 37.458004, 23.001993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019976, 0.445040, -0.895288,
		-0.946124, -0.297877, -0.126962,
		-0.323189, 0.844517, 0.427014,
		33.550964, 37.711357, 23.130096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131180, 37.296577, 22.418379>,  <33.777199, 37.120197, 22.831188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131180, 37.296577, 22.418379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.259785, 37.625866, 22.605541>,  <33.336948, 37.823441, 22.717838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.259785, 37.625866, 22.605541>,  <33.131180, 37.296577, 22.418379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259785, 37.625866, 22.605541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030229, 0.484965, -0.874011,
		-0.946424, 0.295147, 0.131036,
		0.321510, 0.823224, 0.467904,
		33.356239, 37.872833, 22.745913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835808, 37.773586, 22.082760>,  <33.131180, 37.296577, 22.418379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835808, 37.773586, 22.082760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.126732, 37.988499, 22.253565>,  <33.301289, 38.117447, 22.356047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.126732, 37.988499, 22.253565>,  <32.835808, 37.773586, 22.082760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126732, 37.988499, 22.253565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193748, 0.436137, -0.878775,
		-0.658388, 0.721879, 0.213111,
		0.727315, 0.537285, 0.427011,
		33.344925, 38.149685, 22.381668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617020, 38.514122, 21.998672>,  <32.835808, 37.773586, 22.082760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617020, 38.514122, 21.998672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.012245, 38.468002, 22.039518>,  <33.249382, 38.440331, 22.064026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.012245, 38.468002, 22.039518>,  <32.617020, 38.514122, 21.998672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012245, 38.468002, 22.039518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137614, 0.363122, -0.921523,
		0.069173, 0.924580, 0.374656,
		0.988067, -0.115302, 0.102117,
		33.308666, 38.433411, 22.070154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836456, 39.150391, 21.754683>,  <32.617020, 38.514122, 21.998672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836456, 39.150391, 21.754683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.162598, 38.920685, 21.725237>,  <33.358284, 38.782864, 21.707569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.162598, 38.920685, 21.725237>,  <32.836456, 39.150391, 21.754683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162598, 38.920685, 21.725237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175169, 0.365877, -0.914029,
		0.551825, 0.732364, 0.398913,
		0.815356, -0.574261, -0.073612,
		33.407204, 38.748405, 21.703154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271175, 39.642933, 21.434246>,  <32.836456, 39.150391, 21.754683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271175, 39.642933, 21.434246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.418114, 39.275299, 21.377209>,  <33.506275, 39.054718, 21.342985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.418114, 39.275299, 21.377209>,  <33.271175, 39.642933, 21.434246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418114, 39.275299, 21.377209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220213, 0.234902, -0.946746,
		0.903639, 0.316381, 0.288686,
		0.367345, -0.919089, -0.142595,
		33.528316, 38.999573, 21.334431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941200, 39.694901, 20.999281>,  <33.271175, 39.642933, 21.434246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941200, 39.694901, 20.999281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.829689, 39.314075, 20.948910>,  <33.762783, 39.085579, 20.918688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.829689, 39.314075, 20.948910>,  <33.941200, 39.694901, 20.999281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829689, 39.314075, 20.948910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320815, 0.031270, -0.946626,
		0.905186, -0.304296, 0.296719,
		-0.278776, -0.952064, -0.125928,
		33.746056, 39.028458, 20.911131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270542, 39.556629, 20.374119>,  <33.941200, 39.694901, 20.999281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270542, 39.556629, 20.374119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.030537, 39.238007, 20.403730>,  <33.886532, 39.046833, 20.421497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.030537, 39.238007, 20.403730>,  <34.270542, 39.556629, 20.374119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030537, 39.238007, 20.403730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090552, -0.159567, -0.983025,
		0.794848, -0.583126, 0.167872,
		-0.600014, -0.796557, 0.074029,
		33.850533, 38.999039, 20.425940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545036, 39.025566, 20.077427>,  <34.270542, 39.556629, 20.374119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545036, 39.025566, 20.077427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.154892, 38.943069, 20.046078>,  <33.920807, 38.893570, 20.027269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.154892, 38.943069, 20.046078>,  <34.545036, 39.025566, 20.077427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154892, 38.943069, 20.046078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134266, -0.272973, -0.952606,
		0.175078, -0.939653, 0.293938,
		-0.975357, -0.206246, -0.078372,
		33.862286, 38.881195, 20.022566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470112, 38.496597, 19.651131>,  <34.545036, 39.025566, 20.077427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470112, 38.496597, 19.651131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.082253, 38.593136, 19.635469>,  <33.849537, 38.651058, 19.626072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.082253, 38.593136, 19.635469>,  <34.470112, 38.496597, 19.651131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082253, 38.593136, 19.635469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007768, -0.190460, -0.981664,
		-0.244387, -0.951563, 0.186554,
		-0.969647, 0.241355, -0.039154,
		33.791359, 38.665543, 19.623724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127228, 37.990955, 19.460636>,  <34.470112, 38.496597, 19.651131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127228, 37.990955, 19.460636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897709, 38.288307, 19.323149>,  <33.759998, 38.466721, 19.240656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.897709, 38.288307, 19.323149>,  <34.127228, 37.990955, 19.460636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897709, 38.288307, 19.323149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156498, -0.312429, -0.936961,
		-0.803910, -0.591412, 0.062931,
		-0.573792, 0.743384, -0.343719,
		33.725571, 38.511322, 19.220034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237091, 37.591732, 20.101748>,  <34.127228, 37.990955, 19.460636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237091, 37.591732, 20.101748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.174740, 37.273342, 19.867779>,  <34.137329, 37.082310, 19.727398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.174740, 37.273342, 19.867779>,  <34.237091, 37.591732, 20.101748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174740, 37.273342, 19.867779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492982, -0.450450, 0.744355,
		-0.855963, 0.404381, -0.322186,
		-0.155874, -0.795972, -0.584921,
		34.127979, 37.034550, 19.692303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546856, 37.504551, 19.736937>,  <34.237091, 37.591732, 20.101748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546856, 37.504551, 19.736937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.574913, 37.157207, 19.540558>,  <33.591747, 36.948799, 19.422729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.574913, 37.157207, 19.540558>,  <33.546856, 37.504551, 19.736937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574913, 37.157207, 19.540558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088142, -0.484840, 0.870150,
		-0.993635, -0.104308, 0.042530,
		0.070144, -0.868361, -0.490948,
		33.595955, 36.896698, 19.393274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985352, 37.158966, 19.818766>,  <33.546856, 37.504551, 19.736937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985352, 37.158966, 19.818766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.262501, 36.881229, 19.740978>,  <33.428791, 36.714588, 19.694305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.262501, 36.881229, 19.740978>,  <32.985352, 37.158966, 19.818766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262501, 36.881229, 19.740978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316071, -0.534865, 0.783593,
		-0.648097, -0.481462, -0.590054,
		0.692870, -0.694344, -0.194468,
		33.470364, 36.672928, 19.682638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655972, 36.474724, 19.710506>,  <32.985352, 37.158966, 19.818766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655972, 36.474724, 19.710506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.040096, 36.405079, 19.797668>,  <33.270573, 36.363293, 19.849966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.040096, 36.405079, 19.797668>,  <32.655972, 36.474724, 19.710506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040096, 36.405079, 19.797668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278916, -0.593567, 0.754906,
		-0.002097, -0.785724, -0.618574,
		0.960313, -0.174114, 0.217906,
		33.328190, 36.352844, 19.863041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741257, 35.715240, 19.753613>,  <32.655972, 36.474724, 19.710506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741257, 35.715240, 19.753613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.051949, 35.873524, 19.949614>,  <33.238365, 35.968494, 20.067213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.051949, 35.873524, 19.949614>,  <32.741257, 35.715240, 19.753613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051949, 35.873524, 19.949614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055508, -0.731955, 0.679088,
		0.627378, -0.554670, -0.546570,
		0.776734, 0.395706, 0.490001,
		33.284969, 35.992237, 20.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956314, 35.125221, 19.936533>,  <32.741257, 35.715240, 19.753613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956314, 35.125221, 19.936533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.129555, 35.395363, 20.175304>,  <33.233498, 35.557449, 20.318567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.129555, 35.395363, 20.175304>,  <32.956314, 35.125221, 19.936533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129555, 35.395363, 20.175304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052743, -0.642138, 0.764773,
		0.899802, -0.362706, -0.242489,
		0.433099, 0.675354, 0.596927,
		33.259483, 35.597969, 20.354382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494934, 34.756710, 20.346422>,  <32.956314, 35.125221, 19.936533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494934, 34.756710, 20.346422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.408684, 35.079678, 20.566088>,  <33.356934, 35.273457, 20.697887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.408684, 35.079678, 20.566088>,  <33.494934, 34.756710, 20.346422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408684, 35.079678, 20.566088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050688, -0.552379, 0.832051,
		0.975160, 0.207247, 0.078180,
		-0.215625, 0.807420, 0.549163,
		33.343998, 35.321903, 20.730837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941074, 34.622967, 20.960953>,  <33.494934, 34.756710, 20.346422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941074, 34.622967, 20.960953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.668190, 34.894848, 21.068727>,  <33.504459, 35.057976, 21.133392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.668190, 34.894848, 21.068727>,  <33.941074, 34.622967, 20.960953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668190, 34.894848, 21.068727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178815, -0.512419, 0.839912,
		0.708953, 0.524818, 0.471118,
		-0.682211, 0.679701, 0.269435,
		33.463528, 35.098759, 21.149559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514599, 34.292316, 21.284706>,  <33.941074, 34.622967, 20.960953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514599, 34.292316, 21.284706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.621548, 33.922985, 21.174450>,  <34.685715, 33.701385, 21.108297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.621548, 33.922985, 21.174450>,  <34.514599, 34.292316, 21.284706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621548, 33.922985, 21.174450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196324, 0.332252, -0.922532,
		0.943382, 0.192543, 0.270106,
		0.267370, -0.923329, -0.275639,
		34.701759, 33.645985, 21.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223061, 34.291355, 21.191778>,  <34.514599, 34.292316, 21.284706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223061, 34.291355, 21.191778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.052567, 34.012718, 20.960924>,  <34.950272, 33.845535, 20.822411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.052567, 34.012718, 20.960924>,  <35.223061, 34.291355, 21.191778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052567, 34.012718, 20.960924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182225, 0.558799, -0.809035,
		0.886069, -0.450008, -0.111244,
		-0.426235, -0.696589, -0.577137,
		34.924698, 33.803741, 20.787783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711693, 34.229942, 20.544737>,  <35.223061, 34.291355, 21.191778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711693, 34.229942, 20.544737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.347279, 34.099346, 20.444010>,  <35.128628, 34.020988, 20.383574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.347279, 34.099346, 20.444010>,  <35.711693, 34.229942, 20.544737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347279, 34.099346, 20.444010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118692, 0.377214, -0.918489,
		0.394874, -0.866666, -0.304903,
		-0.911036, -0.326497, -0.251818,
		35.073967, 34.001400, 20.368465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859726, 33.888870, 20.005089>,  <35.711693, 34.229942, 20.544737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859726, 33.888870, 20.005089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.466221, 33.959820, 19.994184>,  <35.230118, 34.002392, 19.987642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.466221, 33.959820, 19.994184>,  <35.859726, 33.888870, 20.005089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466221, 33.959820, 19.994184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075752, 0.272732, -0.959103,
		-0.162690, -0.945597, -0.281741,
		-0.983765, 0.177378, -0.027260,
		35.171093, 34.013035, 19.986006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778297, 33.597019, 19.395182>,  <35.859726, 33.888870, 20.005089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778297, 33.597019, 19.395182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.470280, 33.840282, 19.472307>,  <35.285469, 33.986240, 19.518583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.470280, 33.840282, 19.472307>,  <35.778297, 33.597019, 19.395182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470280, 33.840282, 19.472307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082805, 0.394931, -0.914971,
		-0.632598, -0.688599, -0.354472,
		-0.770041, 0.608161, 0.192813,
		35.239269, 34.022732, 19.530151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464531, 33.677422, 18.681923>,  <35.778297, 33.597019, 19.395182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464531, 33.677422, 18.681923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323917, 33.976353, 18.907463>,  <35.239552, 34.155712, 19.042788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323917, 33.976353, 18.907463>,  <35.464531, 33.677422, 18.681923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323917, 33.976353, 18.907463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349181, 0.663497, -0.661698,
		-0.868618, -0.035721, -0.494192,
		-0.351532, 0.747325, 0.563853,
		35.218456, 34.200550, 19.076618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127197, 34.105724, 18.240847>,  <35.464531, 33.677422, 18.681923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127197, 34.105724, 18.240847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.181210, 34.334549, 18.564455>,  <35.213615, 34.471844, 18.758619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.181210, 34.334549, 18.564455>,  <35.127197, 34.105724, 18.240847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181210, 34.334549, 18.564455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235150, 0.774669, -0.587021,
		-0.962534, 0.269506, -0.029916,
		0.135030, 0.572062, 0.809019,
		35.221718, 34.506168, 18.807161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843502, 34.739773, 18.113029>,  <35.127197, 34.105724, 18.240847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843502, 34.739773, 18.113029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074924, 34.832336, 18.425880>,  <35.213776, 34.887875, 18.613592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074924, 34.832336, 18.425880>,  <34.843502, 34.739773, 18.113029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074924, 34.832336, 18.425880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280294, 0.844103, -0.457083,
		-0.765970, 0.483673, 0.423497,
		0.578554, 0.231409, 0.782129,
		35.248489, 34.901760, 18.660519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722603, 35.532776, 18.198431>,  <34.843502, 34.739773, 18.113029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722603, 35.532776, 18.198431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.063389, 35.436699, 18.384535>,  <35.267860, 35.379055, 18.496197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.063389, 35.436699, 18.384535>,  <34.722603, 35.532776, 18.198431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063389, 35.436699, 18.384535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458053, 0.772371, -0.440035,
		-0.253662, 0.588008, 0.768051,
		0.851964, -0.240189, 0.465260,
		35.318977, 35.364643, 18.524113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.389538, 30.610712, 33.583317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750683, 30.734486, 33.463924>,  <34.967369, 30.808750, 33.392288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750683, 30.734486, 33.463924>,  <34.389538, 30.610712, 33.583317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750683, 30.734486, 33.463924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380848, 0.253499, -0.889209,
		-0.199486, 0.916509, 0.346722,
		0.902862, 0.309433, -0.298481,
		35.021542, 30.827316, 33.374378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359058, 31.350458, 33.414478>,  <34.389538, 30.610712, 33.583317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359058, 31.350458, 33.414478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668304, 31.189728, 33.218178>,  <34.853851, 31.093290, 33.100399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668304, 31.189728, 33.218178>,  <34.359058, 31.350458, 33.414478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668304, 31.189728, 33.218178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421054, 0.253508, -0.870889,
		0.474352, 0.879927, 0.026801,
		0.773113, -0.401824, -0.490748,
		34.900238, 31.069181, 33.070953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430592, 31.847750, 32.818913>,  <34.359058, 31.350458, 33.414478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430592, 31.847750, 32.818913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636749, 31.529171, 32.692398>,  <34.760445, 31.338024, 32.616489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636749, 31.529171, 32.692398>,  <34.430592, 31.847750, 32.818913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636749, 31.529171, 32.692398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273892, 0.196628, -0.941446,
		0.812004, 0.571846, -0.116799,
		0.515396, -0.796448, -0.316287,
		34.791367, 31.290237, 32.597511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732712, 32.066147, 32.202808>,  <34.430592, 31.847750, 32.818913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732712, 32.066147, 32.202808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777531, 31.668880, 32.189705>,  <34.804420, 31.430521, 32.181843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777531, 31.668880, 32.189705>,  <34.732712, 32.066147, 32.202808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777531, 31.668880, 32.189705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296378, -0.001938, -0.955069,
		0.948476, 0.116718, -0.294568,
		0.112044, -0.993163, -0.032755,
		34.811142, 31.370932, 32.179878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174866, 31.897068, 31.741270>,  <34.732712, 32.066147, 32.202808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174866, 31.897068, 31.741270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971405, 31.552687, 31.743589>,  <34.849327, 31.346058, 31.744982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971405, 31.552687, 31.743589>,  <35.174866, 31.897068, 31.741270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971405, 31.552687, 31.743589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134313, -0.086001, -0.987200,
		0.850431, -0.501363, 0.159382,
		-0.508652, -0.860952, 0.005798,
		34.818810, 31.294401, 31.745329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468269, 31.491661, 31.274794>,  <35.174866, 31.897068, 31.741270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468269, 31.491661, 31.274794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088947, 31.367519, 31.301342>,  <34.861355, 31.293034, 31.317270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088947, 31.367519, 31.301342>,  <35.468269, 31.491661, 31.274794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088947, 31.367519, 31.301342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079554, 0.030000, -0.996379,
		0.307241, -0.950147, -0.053139,
		-0.948300, -0.310356, 0.066371,
		34.804459, 31.274412, 31.321253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429516, 30.943430, 30.791405>,  <35.468269, 31.491661, 31.274794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429516, 30.943430, 30.791405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047916, 31.023861, 30.880358>,  <34.818958, 31.072121, 30.933729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047916, 31.023861, 30.880358>,  <35.429516, 30.943430, 30.791405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047916, 31.023861, 30.880358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269085, -0.247161, -0.930862,
		-0.132211, -0.947881, 0.289898,
		-0.953999, 0.201077, 0.222383,
		34.761719, 31.084185, 30.947073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034504, 30.397573, 30.385120>,  <35.429516, 30.943430, 30.791405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034504, 30.397573, 30.385120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792572, 30.705465, 30.466803>,  <34.647411, 30.890200, 30.515812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792572, 30.705465, 30.466803>,  <35.034504, 30.397573, 30.385120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792572, 30.705465, 30.466803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364818, -0.039878, -0.930224,
		-0.707877, -0.637124, 0.304930,
		-0.604828, 0.769729, 0.204206,
		34.611122, 30.936384, 30.528065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430653, 30.210863, 30.157686>,  <35.034504, 30.397573, 30.385120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430653, 30.210863, 30.157686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400074, 30.608912, 30.182631>,  <34.381725, 30.847740, 30.197598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400074, 30.608912, 30.182631>,  <34.430653, 30.210863, 30.157686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400074, 30.608912, 30.182631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316262, 0.035115, -0.948022,
		-0.945587, -0.092197, 0.312034,
		-0.076447, 0.995122, 0.062363,
		34.377140, 30.907448, 30.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841774, 30.420980, 29.803967>,  <34.430653, 30.210863, 30.157686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841774, 30.420980, 29.803967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049763, 30.762634, 29.807650>,  <34.174557, 30.967627, 29.809860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049763, 30.762634, 29.807650>,  <33.841774, 30.420980, 29.803967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049763, 30.762634, 29.807650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289014, 0.186068, -0.939068,
		-0.803802, 0.485630, 0.343607,
		0.519974, 0.854132, 0.009208,
		34.205753, 31.018873, 29.810411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441391, 30.789524, 29.557823>,  <33.841774, 30.420980, 29.803967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441391, 30.789524, 29.557823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803402, 30.951202, 29.504841>,  <34.020611, 31.048210, 29.473051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803402, 30.951202, 29.504841>,  <33.441391, 30.789524, 29.557823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803402, 30.951202, 29.504841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145625, 0.001858, -0.989338,
		-0.399642, 0.914669, 0.060543,
		0.905030, 0.404198, -0.132456,
		34.074909, 31.072462, 29.465103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394886, 31.376949, 29.153782>,  <33.441391, 30.789524, 29.557823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394886, 31.376949, 29.153782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781807, 31.286758, 29.107332>,  <34.013958, 31.232643, 29.079462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.781807, 31.286758, 29.107332>,  <33.394886, 31.376949, 29.153782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781807, 31.286758, 29.107332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092347, 0.113308, -0.989259,
		0.236213, 0.967637, 0.088781,
		0.967303, -0.225477, -0.116123,
		34.071999, 31.219114, 29.072495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092628, 32.005398, 29.018656>,  <33.394886, 31.376949, 29.153782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092628, 32.005398, 29.018656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729225, 31.855753, 28.944201>,  <32.511181, 31.765966, 28.899529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729225, 31.855753, 28.944201>,  <33.092628, 32.005398, 29.018656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729225, 31.855753, 28.944201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254995, 0.143474, 0.956239,
		-0.331036, 0.916218, -0.225745,
		-0.908511, -0.374113, -0.186136,
		32.456673, 31.743519, 28.888359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628609, 32.468269, 29.277563>,  <33.092628, 32.005398, 29.018656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628609, 32.468269, 29.277563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430691, 32.120674, 29.274853>,  <32.311939, 31.912117, 29.273226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430691, 32.120674, 29.274853>,  <32.628609, 32.468269, 29.277563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430691, 32.120674, 29.274853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367279, 0.202043, 0.907901,
		-0.787584, 0.451710, -0.419129,
		-0.494791, -0.868986, -0.006778,
		32.282253, 31.859978, 29.272820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003338, 32.627247, 29.577122>,  <32.628609, 32.468269, 29.277563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003338, 32.627247, 29.577122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008759, 32.227650, 29.594233>,  <32.012009, 31.987892, 29.604500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008759, 32.227650, 29.594233>,  <32.003338, 32.627247, 29.577122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008759, 32.227650, 29.594233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283579, 0.037186, 0.958228,
		-0.958853, -0.025112, -0.282789,
		0.013547, -0.998993, 0.042777,
		32.012821, 31.927952, 29.607065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316320, 32.438148, 29.761732>,  <32.003338, 32.627247, 29.577122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316320, 32.438148, 29.761732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582933, 32.156994, 29.861078>,  <31.742901, 31.988300, 29.920685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582933, 32.156994, 29.861078>,  <31.316320, 32.438148, 29.761732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582933, 32.156994, 29.861078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314565, 0.036862, 0.948520,
		-0.675858, -0.710345, -0.196535,
		0.666531, -0.702888, 0.248363,
		31.782892, 31.946127, 29.935587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977797, 31.948429, 30.258472>,  <31.316320, 32.438148, 29.761732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977797, 31.948429, 30.258472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366285, 31.871233, 30.314302>,  <31.599379, 31.824915, 30.347799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.366285, 31.871233, 30.314302>,  <30.977797, 31.948429, 30.258472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366285, 31.871233, 30.314302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137877, 0.022260, 0.990199,
		-0.194204, -0.980949, -0.004990,
		0.971223, -0.192989, 0.139573,
		31.657652, 31.813337, 30.356174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061077, 31.311083, 30.599218>,  <30.977797, 31.948429, 30.258472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061077, 31.311083, 30.599218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376753, 31.525820, 30.718536>,  <31.566158, 31.654661, 30.790127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376753, 31.525820, 30.718536>,  <31.061077, 31.311083, 30.599218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376753, 31.525820, 30.718536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283408, -0.112553, 0.952372,
		0.544847, -0.836141, 0.063319,
		0.789190, 0.536842, 0.298293,
		31.613510, 31.686872, 30.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226553, 30.998623, 31.184786>,  <31.061077, 31.311083, 30.599218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226553, 30.998623, 31.184786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436630, 31.337919, 31.212107>,  <31.562675, 31.541496, 31.228500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.436630, 31.337919, 31.212107>,  <31.226553, 30.998623, 31.184786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436630, 31.337919, 31.212107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142797, 0.008718, 0.989714,
		0.838918, -0.529542, 0.125705,
		0.525191, 0.848239, 0.068304,
		31.594187, 31.592390, 31.232597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651558, 30.863457, 31.793077>,  <31.226553, 30.998623, 31.184786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651558, 30.863457, 31.793077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636581, 31.254978, 31.712542>,  <31.627596, 31.489891, 31.664221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636581, 31.254978, 31.712542>,  <31.651558, 30.863457, 31.793077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636581, 31.254978, 31.712542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080327, 0.197881, 0.976929,
		0.996065, 0.052752, 0.071215,
		-0.037443, 0.978805, -0.201340,
		31.625349, 31.548620, 31.652140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867462, 31.161880, 32.345482>,  <31.651558, 30.863457, 31.793077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867462, 31.161880, 32.345482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710714, 31.497412, 32.194324>,  <31.616665, 31.698730, 32.103630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710714, 31.497412, 32.194324>,  <31.867462, 31.161880, 32.345482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710714, 31.497412, 32.194324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117133, 0.361911, 0.924824,
		0.912534, 0.406674, -0.043568,
		-0.391870, 0.838830, -0.377891,
		31.593153, 31.749062, 32.080956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162804, 31.724707, 32.739777>,  <31.867462, 31.161880, 32.345482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162804, 31.724707, 32.739777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822990, 31.878952, 32.595783>,  <31.619102, 31.971500, 32.509388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822990, 31.878952, 32.595783>,  <32.162804, 31.724707, 32.739777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822990, 31.878952, 32.595783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294242, 0.220007, 0.930064,
		0.437845, 0.896046, -0.073440,
		-0.849537, 0.385615, -0.359983,
		31.568129, 31.994637, 32.487789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980017, 32.299801, 33.112110>,  <32.162804, 31.724707, 32.739777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980017, 32.299801, 33.112110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621244, 32.227692, 32.950607>,  <31.405981, 32.184425, 32.853706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621244, 32.227692, 32.950607>,  <31.980017, 32.299801, 33.112110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621244, 32.227692, 32.950607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431286, 0.155325, 0.888745,
		-0.097501, 0.971276, -0.217064,
		-0.896932, -0.180270, -0.403753,
		31.352165, 32.173611, 32.829483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480825, 32.884251, 33.413559>,  <31.980017, 32.299801, 33.112110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480825, 32.884251, 33.413559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.244455, 32.581478, 33.301945>,  <31.102633, 32.399815, 33.234978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.244455, 32.581478, 33.301945>,  <31.480825, 32.884251, 33.413559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244455, 32.581478, 33.301945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524203, 0.097368, 0.846009,
		-0.613204, 0.646196, -0.454324,
		-0.590925, -0.756934, -0.279031,
		31.067179, 32.354397, 33.218235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858067, 33.168938, 33.554054>,  <31.480825, 32.884251, 33.413559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858067, 33.168938, 33.554054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.822721, 32.770535, 33.548916>,  <30.801516, 32.531494, 33.545834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.822721, 32.770535, 33.548916>,  <30.858067, 33.168938, 33.554054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822721, 32.770535, 33.548916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413610, 0.024954, 0.910112,
		-0.906156, 0.085733, -0.414163,
		-0.088361, -0.996005, -0.012848,
		30.796213, 32.471733, 33.545063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221720, 33.120583, 33.839725>,  <30.858067, 33.168938, 33.554054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221720, 33.120583, 33.839725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378395, 32.754021, 33.872669>,  <30.472401, 32.534084, 33.892437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378395, 32.754021, 33.872669>,  <30.221720, 33.120583, 33.839725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378395, 32.754021, 33.872669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328080, -0.055478, 0.943020,
		-0.859618, -0.396390, -0.322384,
		0.391689, -0.916405, 0.082358,
		30.495901, 32.479099, 33.897377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543999, 33.362099, 33.928223>,  <30.221720, 33.120583, 33.839725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543999, 33.362099, 33.928223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.566868, 33.069675, 34.200188>,  <29.580589, 32.894222, 34.363365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.566868, 33.069675, 34.200188>,  <29.543999, 33.362099, 33.928223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566868, 33.069675, 34.200188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997875, 0.063156, -0.015999,
		-0.031244, 0.679384, 0.733118,
		0.057171, -0.731060, 0.679914,
		29.584019, 32.850357, 34.404163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658430, 34.033920, 33.506477>,  <29.543999, 33.362099, 33.928223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658430, 34.033920, 33.506477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.004080, 34.232700, 33.474636>,  <30.211470, 34.351967, 33.455532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.004080, 34.232700, 33.474636>,  <29.658430, 34.033920, 33.506477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004080, 34.232700, 33.474636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065262, -0.046182, -0.996799,
		-0.499032, 0.866551, -0.007476,
		0.864123, 0.496946, -0.079599,
		30.263317, 34.381783, 33.450756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681435, 34.476669, 32.882370>,  <29.658430, 34.033920, 33.506477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681435, 34.476669, 32.882370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059006, 34.409019, 32.995785>,  <30.285549, 34.368427, 33.063835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059006, 34.409019, 32.995785>,  <29.681435, 34.476669, 32.882370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059006, 34.409019, 32.995785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311345, 0.170296, -0.934914,
		0.109834, 0.970770, 0.213404,
		0.943928, -0.169127, 0.283540,
		30.342184, 34.358280, 33.080845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113977, 34.994446, 32.631023>,  <29.681435, 34.476669, 32.882370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113977, 34.994446, 32.631023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.336599, 34.664494, 32.670673>,  <30.470173, 34.466522, 32.694462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.336599, 34.664494, 32.670673>,  <30.113977, 34.994446, 32.631023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336599, 34.664494, 32.670673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495206, 0.233565, -0.836791,
		0.667097, 0.514807, 0.538475,
		0.556554, -0.824877, 0.099125,
		30.503565, 34.417030, 32.700409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760021, 35.263294, 32.365730>,  <30.113977, 34.994446, 32.631023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760021, 35.263294, 32.365730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773241, 34.863777, 32.351200>,  <30.781174, 34.624065, 32.342480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773241, 34.863777, 32.351200>,  <30.760021, 35.263294, 32.365730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773241, 34.863777, 32.351200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435074, 0.047103, -0.899162,
		0.899788, 0.013913, 0.436105,
		0.033052, -0.998793, -0.036330,
		30.783157, 34.564140, 32.340302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456417, 35.067402, 32.081078>,  <30.760021, 35.263294, 32.365730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456417, 35.067402, 32.081078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229765, 34.746853, 32.004406>,  <31.093775, 34.554523, 31.958403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229765, 34.746853, 32.004406>,  <31.456417, 35.067402, 32.081078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229765, 34.746853, 32.004406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402341, -0.066082, -0.913102,
		0.719065, -0.594509, 0.359868,
		-0.566628, -0.801369, -0.191678,
		31.059776, 34.506443, 31.946903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900455, 34.655071, 31.717091>,  <31.456417, 35.067402, 32.081078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900455, 34.655071, 31.717091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.541721, 34.504688, 31.623842>,  <31.326481, 34.414459, 31.567894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.541721, 34.504688, 31.623842>,  <31.900455, 34.655071, 31.717091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541721, 34.504688, 31.623842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328548, -0.213214, -0.920107,
		0.296216, -0.901774, 0.314737,
		-0.896835, -0.375957, -0.233119,
		31.272671, 34.391903, 31.553907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002411, 34.178711, 31.259249>,  <31.900455, 34.655071, 31.717091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002411, 34.178711, 31.259249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610125, 34.226185, 31.197149>,  <31.374752, 34.254669, 31.159889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610125, 34.226185, 31.197149>,  <32.002411, 34.178711, 31.259249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610125, 34.226185, 31.197149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167866, 0.104925, -0.980210,
		-0.100045, -0.987373, -0.122825,
		-0.980720, 0.118683, -0.155249,
		31.315908, 34.261791, 31.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825863, 33.698479, 30.746023>,  <32.002411, 34.178711, 31.259249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825863, 33.698479, 30.746023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545120, 33.982750, 30.726698>,  <31.376675, 34.153313, 30.715103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.545120, 33.982750, 30.726698>,  <31.825863, 33.698479, 30.746023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545120, 33.982750, 30.726698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093785, 0.024961, -0.995280,
		-0.706118, -0.703073, -0.084171,
		-0.701856, 0.710679, -0.048312,
		31.334564, 34.195953, 30.712204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343588, 33.497765, 30.250902>,  <31.825863, 33.698479, 30.746023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343588, 33.497765, 30.250902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295225, 33.894154, 30.274050>,  <31.266209, 34.131989, 30.287939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295225, 33.894154, 30.274050>,  <31.343588, 33.497765, 30.250902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295225, 33.894154, 30.274050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102117, 0.070406, -0.992278,
		-0.987398, -0.114062, -0.109708,
		-0.120905, 0.990976, 0.057871,
		31.258953, 34.191448, 30.291410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956028, 33.625114, 29.742428>,  <31.343588, 33.497765, 30.250902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956028, 33.625114, 29.742428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099953, 33.992054, 29.810545>,  <31.186308, 34.212219, 29.851416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099953, 33.992054, 29.810545>,  <30.956028, 33.625114, 29.742428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099953, 33.992054, 29.810545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094150, 0.217282, -0.971558,
		-0.928262, 0.333546, 0.164550,
		0.359813, 0.917353, 0.170292,
		31.207897, 34.267262, 29.861633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612944, 34.003822, 29.314045>,  <30.956028, 33.625114, 29.742428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612944, 34.003822, 29.314045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.939114, 34.217186, 29.403984>,  <31.134815, 34.345203, 29.457947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.939114, 34.217186, 29.403984>,  <30.612944, 34.003822, 29.314045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939114, 34.217186, 29.403984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124293, 0.218028, -0.967995,
		-0.565364, 0.817272, 0.111486,
		0.815423, 0.533413, 0.224847,
		31.183741, 34.377209, 29.471437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597137, 34.648537, 28.910019>,  <30.612944, 34.003822, 29.314045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597137, 34.648537, 28.910019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985538, 34.656288, 29.005335>,  <31.218578, 34.660938, 29.062525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.985538, 34.656288, 29.005335>,  <30.597137, 34.648537, 28.910019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985538, 34.656288, 29.005335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195217, 0.511109, -0.837053,
		-0.138013, 0.859297, 0.492505,
		0.971001, 0.019379, 0.238289,
		31.276838, 34.662102, 29.076822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820080, 35.308880, 28.822529>,  <30.597137, 34.648537, 28.910019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820080, 35.308880, 28.822529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.152571, 35.086727, 28.812593>,  <31.352066, 34.953438, 28.806633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.152571, 35.086727, 28.812593>,  <30.820080, 35.308880, 28.822529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152571, 35.086727, 28.812593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321686, 0.516941, -0.793278,
		0.453410, 0.651404, 0.608352,
		0.831227, -0.555378, -0.024839,
		31.401939, 34.920113, 28.805141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343134, 35.758808, 28.673283>,  <30.820080, 35.308880, 28.822529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343134, 35.758808, 28.673283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.527248, 35.419079, 28.569912>,  <31.637716, 35.215240, 28.507889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.527248, 35.419079, 28.569912>,  <31.343134, 35.758808, 28.673283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527248, 35.419079, 28.569912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442957, 0.471987, -0.762245,
		0.769368, 0.236378, 0.593463,
		0.460285, -0.849326, -0.258426,
		31.665333, 35.164280, 28.492384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957594, 35.883232, 28.502201>,  <31.343134, 35.758808, 28.673283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957594, 35.883232, 28.502201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919930, 35.538342, 28.303123>,  <31.897331, 35.331406, 28.183678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919930, 35.538342, 28.303123>,  <31.957594, 35.883232, 28.502201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919930, 35.538342, 28.303123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491765, 0.394384, -0.776291,
		0.865621, -0.317846, 0.386877,
		-0.094163, -0.862227, -0.497693,
		31.891680, 35.279675, 28.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556473, 35.746765, 28.133905>,  <31.957594, 35.883232, 28.502201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556473, 35.746765, 28.133905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327625, 35.485886, 27.934982>,  <32.190315, 35.329357, 27.815628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327625, 35.485886, 27.934982>,  <32.556473, 35.746765, 28.133905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327625, 35.485886, 27.934982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420368, 0.287467, -0.860612,
		0.704249, -0.701426, 0.109698,
		-0.572122, -0.652199, -0.497305,
		32.155987, 35.290226, 27.785791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969860, 35.358128, 27.602463>,  <32.556473, 35.746765, 28.133905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969860, 35.358128, 27.602463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584839, 35.343163, 27.495068>,  <32.353825, 35.334183, 27.430630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584839, 35.343163, 27.495068>,  <32.969860, 35.358128, 27.602463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584839, 35.343163, 27.495068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249748, 0.262743, -0.931983,
		0.105410, -0.964140, -0.243562,
		-0.962556, -0.037411, -0.268488,
		32.296070, 35.331940, 27.414522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839111, 35.070042, 26.901468>,  <32.969860, 35.358128, 27.602463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839111, 35.070042, 26.901468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510746, 35.289547, 26.964663>,  <32.313728, 35.421249, 27.002579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510746, 35.289547, 26.964663>,  <32.839111, 35.070042, 26.901468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510746, 35.289547, 26.964663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044714, 0.214039, -0.975801,
		-0.569300, -0.808112, -0.151170,
		-0.820913, 0.548764, 0.157986,
		32.264473, 35.454178, 27.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413212, 34.915825, 26.290670>,  <32.839111, 35.070042, 26.901468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413212, 34.915825, 26.290670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264336, 35.254940, 26.441792>,  <32.175011, 35.458408, 26.532463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264336, 35.254940, 26.441792>,  <32.413212, 34.915825, 26.290670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264336, 35.254940, 26.441792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069352, 0.380506, -0.922174,
		-0.925560, -0.369429, -0.082826,
		-0.372194, 0.847784, 0.377802,
		32.152676, 35.509274, 26.555132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956839, 35.094944, 25.767792>,  <32.413212, 34.915825, 26.290670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956839, 35.094944, 25.767792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005299, 35.423828, 25.990246>,  <32.034374, 35.621159, 26.123718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005299, 35.423828, 25.990246>,  <31.956839, 35.094944, 25.767792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005299, 35.423828, 25.990246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054606, 0.564935, -0.823327,
		-0.991131, 0.069376, 0.113339,
		0.121148, 0.822214, 0.556136,
		32.041641, 35.670494, 26.157087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616920, 35.603001, 25.480692>,  <31.956839, 35.094944, 25.767792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616920, 35.603001, 25.480692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849964, 35.814800, 25.727333>,  <31.989790, 35.941879, 25.875319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.849964, 35.814800, 25.727333>,  <31.616920, 35.603001, 25.480692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849964, 35.814800, 25.727333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094855, 0.709178, -0.698619,
		-0.807197, 0.465511, 0.362950,
		0.582611, 0.529495, 0.616603,
		32.024746, 35.973648, 25.912313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415815, 36.329887, 25.342655>,  <31.616920, 35.603001, 25.480692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415815, 36.329887, 25.342655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774193, 36.357430, 25.518175>,  <31.989220, 36.373955, 25.623487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774193, 36.357430, 25.518175>,  <31.415815, 36.329887, 25.342655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774193, 36.357430, 25.518175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344848, 0.514808, -0.784890,
		-0.279939, 0.854536, 0.437495,
		0.895943, 0.068852, 0.438799,
		32.042976, 36.378086, 25.649815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702562, 36.823090, 24.942205>,  <31.415815, 36.329887, 25.342655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702562, 36.823090, 24.942205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024422, 36.716370, 25.154377>,  <32.217537, 36.652336, 25.281679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024422, 36.716370, 25.154377>,  <31.702562, 36.823090, 24.942205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024422, 36.716370, 25.154377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592340, 0.422229, -0.686189,
		-0.040886, 0.866337, 0.497784,
		0.804650, -0.266802, 0.530430,
		32.265816, 36.636330, 25.313505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150650, 37.472557, 25.118858>,  <31.702562, 36.823090, 24.942205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150650, 37.472557, 25.118858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354233, 37.128738, 25.100357>,  <32.476383, 36.922447, 25.089256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.354233, 37.128738, 25.100357>,  <32.150650, 37.472557, 25.118858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354233, 37.128738, 25.100357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740086, 0.464397, -0.486423,
		0.439584, 0.213336, 0.872498,
		0.508958, -0.859548, -0.046254,
		32.506920, 36.870872, 25.086481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782112, 37.552490, 25.434227>,  <32.150650, 37.472557, 25.118858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782112, 37.552490, 25.434227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817284, 37.261417, 25.162123>,  <32.838387, 37.086773, 24.998861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817284, 37.261417, 25.162123>,  <32.782112, 37.552490, 25.434227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817284, 37.261417, 25.162123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693714, 0.534813, -0.482427,
		0.714863, -0.429486, 0.551827,
		0.087929, -0.727679, -0.680258,
		32.843662, 37.043114, 24.958046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465546, 37.617489, 25.259792>,  <32.782112, 37.552490, 25.434227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465546, 37.617489, 25.259792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306221, 37.388977, 24.972742>,  <33.210625, 37.251869, 24.800512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306221, 37.388977, 24.972742>,  <33.465546, 37.617489, 25.259792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306221, 37.388977, 24.972742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434320, 0.571636, -0.696131,
		0.807906, -0.588957, 0.020429,
		-0.398313, -0.571281, -0.717624,
		33.186726, 37.217594, 24.757454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070988, 37.528099, 24.795105>,  <33.465546, 37.617489, 25.259792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070988, 37.528099, 24.795105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761021, 37.421738, 24.565741>,  <33.575039, 37.357922, 24.428122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761021, 37.421738, 24.565741>,  <34.070988, 37.528099, 24.795105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761021, 37.421738, 24.565741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424981, 0.452336, -0.784081,
		0.467858, -0.851288, -0.237523,
		-0.774919, -0.265896, -0.573411,
		33.528545, 37.341969, 24.393717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893547, 37.376549, 25.030886>,  <34.070988, 37.528099, 24.795105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893547, 37.376549, 25.030886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203671, 37.626324, 25.068771>,  <35.389744, 37.776188, 25.091503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203671, 37.626324, 25.068771>,  <34.893547, 37.376549, 25.030886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203671, 37.626324, 25.068771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132131, 0.013722, 0.991137,
		0.617608, -0.780951, 0.093147,
		0.775308, 0.624442, 0.094713,
		35.436264, 37.813656, 25.097185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282124, 37.154613, 25.597845>,  <34.893547, 37.376549, 25.030886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282124, 37.154613, 25.597845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367973, 37.542686, 25.552790>,  <35.419483, 37.775528, 25.525757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367973, 37.542686, 25.552790>,  <35.282124, 37.154613, 25.597845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367973, 37.542686, 25.552790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339131, 0.182175, 0.922931,
		0.915930, -0.159881, 0.368117,
		0.214621, 0.970180, -0.112638,
		35.432362, 37.833740, 25.518999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419098, 37.291508, 26.315979>,  <35.282124, 37.154613, 25.597845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419098, 37.291508, 26.315979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417641, 37.647289, 26.133171>,  <35.416767, 37.860756, 26.023487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417641, 37.647289, 26.133171>,  <35.419098, 37.291508, 26.315979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417641, 37.647289, 26.133171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048288, 0.456332, 0.888498,
		0.998827, 0.025304, 0.041288,
		-0.003642, 0.889450, -0.457018,
		35.416550, 37.914124, 25.996065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929882, 37.692135, 26.755791>,  <35.419098, 37.291508, 26.315979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929882, 37.692135, 26.755791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657814, 37.897034, 26.546036>,  <35.494576, 38.019974, 26.420183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657814, 37.897034, 26.546036>,  <35.929882, 37.692135, 26.755791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657814, 37.897034, 26.546036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322843, 0.432914, 0.841640,
		0.658138, 0.741750, -0.129079,
		-0.680166, 0.512243, -0.524386,
		35.453766, 38.050705, 26.388720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087997, 38.355503, 26.884636>,  <35.929882, 37.692135, 26.755791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087997, 38.355503, 26.884636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693218, 38.345840, 26.820959>,  <35.456348, 38.340042, 26.782753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693218, 38.345840, 26.820959>,  <36.087997, 38.355503, 26.884636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693218, 38.345840, 26.820959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157146, 0.359894, 0.919664,
		0.035077, 0.932680, -0.358994,
		-0.986952, -0.024155, -0.159191,
		35.397133, 38.338593, 26.773201>
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
