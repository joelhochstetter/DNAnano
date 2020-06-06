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
	<24.059385, 34.621483, 34.764381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.204988, 34.970329, 34.895168>,  <24.292351, 35.179638, 34.973640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.204988, 34.970329, 34.895168>,  <24.059385, 34.621483, 34.764381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.204988, 34.970329, 34.895168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902335, -0.417216, 0.108275,
		0.230845, 0.255623, -0.938812,
		0.364009, 0.872117, 0.326970,
		24.314192, 35.231964, 34.993259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739374, 34.914391, 34.372620>,  <24.059385, 34.621483, 34.764381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739374, 34.914391, 34.372620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696983, 35.047394, 34.747471>,  <24.671549, 35.127197, 34.972382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696983, 35.047394, 34.747471>,  <24.739374, 34.914391, 34.372620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696983, 35.047394, 34.747471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895158, -0.378452, 0.235512,
		0.432967, 0.863836, -0.257540,
		-0.105977, 0.332508, 0.937127,
		24.665190, 35.147148, 35.028610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273567, 35.458466, 34.704094>,  <24.739374, 34.914391, 34.372620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273567, 35.458466, 34.704094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131025, 35.190254, 34.964371>,  <25.045500, 35.029327, 35.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131025, 35.190254, 34.964371>,  <25.273567, 35.458466, 34.704094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131025, 35.190254, 34.964371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928844, -0.178730, 0.324507,
		-0.101291, 0.720035, 0.686505,
		-0.356355, -0.670526, 0.650696,
		25.024118, 34.989098, 35.159580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413574, 35.641548, 35.506279>,  <25.273567, 35.458466, 34.704094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413574, 35.641548, 35.506279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399134, 35.273258, 35.350861>,  <25.390469, 35.052284, 35.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399134, 35.273258, 35.350861>,  <25.413574, 35.641548, 35.506279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399134, 35.273258, 35.350861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995587, 0.000566, -0.093845,
		0.086625, -0.390217, 0.916639,
		-0.036102, -0.920723, -0.388544,
		25.388304, 34.997040, 35.234299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931637, 35.023827, 35.805717>,  <25.413574, 35.641548, 35.506279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931637, 35.023827, 35.805717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851419, 34.936226, 35.423759>,  <25.803289, 34.883663, 35.194584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851419, 34.936226, 35.423759>,  <25.931637, 35.023827, 35.805717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851419, 34.936226, 35.423759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968084, 0.105257, -0.227453,
		0.150322, -0.970030, 0.190907,
		-0.200542, -0.219005, -0.954892,
		25.791258, 34.870525, 35.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423601, 34.457672, 35.473503>,  <25.931637, 35.023827, 35.805717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423601, 34.457672, 35.473503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262648, 34.724499, 35.222710>,  <26.166077, 34.884594, 35.072235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262648, 34.724499, 35.222710>,  <26.423601, 34.457672, 35.473503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262648, 34.724499, 35.222710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915036, 0.271931, -0.297931,
		-0.028245, -0.693594, -0.719813,
		-0.402382, 0.667070, -0.626982,
		26.141933, 34.924618, 35.034615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986492, 33.898525, 35.728443>,  <26.423601, 34.457672, 35.473503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986492, 33.898525, 35.728443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329676, 33.997845, 35.908333>,  <27.535585, 34.057438, 36.016266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329676, 33.997845, 35.908333>,  <26.986492, 33.898525, 35.728443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329676, 33.997845, 35.908333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043914, -0.836778, 0.545779,
		0.511837, -0.488006, -0.707017,
		0.857960, 0.248302, 0.449724,
		27.587063, 34.072334, 36.043251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478601, 33.249691, 35.810139>,  <26.986492, 33.898525, 35.728443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478601, 33.249691, 35.810139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574797, 33.518532, 36.090267>,  <27.632513, 33.679836, 36.258343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574797, 33.518532, 36.090267>,  <27.478601, 33.249691, 35.810139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574797, 33.518532, 36.090267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170105, -0.739508, 0.651301,
		0.955631, -0.037501, -0.292170,
		0.240487, 0.672103, 0.700317,
		27.646942, 33.720161, 36.300362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132723, 32.974396, 36.150829>,  <27.478601, 33.249691, 35.810139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132723, 32.974396, 36.150829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942038, 33.239979, 36.381271>,  <27.827627, 33.399330, 36.519539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942038, 33.239979, 36.381271>,  <28.132723, 32.974396, 36.150829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942038, 33.239979, 36.381271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019624, -0.663245, 0.748145,
		0.878840, 0.345344, 0.329207,
		-0.476712, 0.663960, 0.576110,
		27.799025, 33.439167, 36.554104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461788, 32.893402, 36.783463>,  <28.132723, 32.974396, 36.150829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461788, 32.893402, 36.783463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118715, 33.067219, 36.893406>,  <27.912870, 33.171509, 36.959373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118715, 33.067219, 36.893406>,  <28.461788, 32.893402, 36.783463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118715, 33.067219, 36.893406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047934, -0.599811, 0.798704,
		0.511938, 0.671861, 0.535278,
		-0.857684, 0.434546, 0.274861,
		27.861410, 33.197582, 36.975864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510517, 33.093319, 37.577515>,  <28.461788, 32.893402, 36.783463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510517, 33.093319, 37.577515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131287, 33.043941, 37.460274>,  <27.903748, 33.014317, 37.389927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131287, 33.043941, 37.460274>,  <28.510517, 33.093319, 37.577515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131287, 33.043941, 37.460274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112108, -0.732742, 0.671209,
		-0.297625, 0.669217, 0.680858,
		-0.948078, -0.123439, -0.293107,
		27.846863, 33.006908, 37.372341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278755, 32.727448, 38.072964>,  <28.510517, 33.093319, 37.577515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278755, 32.727448, 38.072964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947313, 32.710716, 37.849655>,  <27.748449, 32.700676, 37.715672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947313, 32.710716, 37.849655>,  <28.278755, 32.727448, 38.072964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947313, 32.710716, 37.849655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313191, -0.791924, 0.524183,
		-0.464034, 0.609185, 0.643091,
		-0.828603, -0.041829, -0.558271,
		27.698732, 32.698166, 37.682175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712849, 32.619564, 38.485012>,  <28.278755, 32.727448, 38.072964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712849, 32.619564, 38.485012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625591, 32.474339, 38.122665>,  <27.573236, 32.387203, 37.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625591, 32.474339, 38.122665>,  <27.712849, 32.619564, 38.485012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625591, 32.474339, 38.122665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265556, -0.871116, 0.413081,
		-0.939092, 0.330670, 0.093615,
		-0.218143, -0.363062, -0.905870,
		27.560148, 32.365421, 37.850906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660246, 31.967468, 38.131149>,  <27.712849, 32.619564, 38.485012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660246, 31.967468, 38.131149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275406, 32.064266, 38.080868>,  <27.044502, 32.122345, 38.050697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275406, 32.064266, 38.080868>,  <27.660246, 31.967468, 38.131149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275406, 32.064266, 38.080868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257377, 0.653493, -0.711831,
		-0.090111, -0.717206, -0.691010,
		-0.962100, 0.241994, -0.125706,
		26.986776, 32.136864, 38.043156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444012, 31.919094, 37.323540>,  <27.660246, 31.967468, 38.131149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444012, 31.919094, 37.323540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251537, 32.193592, 37.541725>,  <27.136053, 32.358292, 37.672634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251537, 32.193592, 37.541725>,  <27.444012, 31.919094, 37.323540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251537, 32.193592, 37.541725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333828, 0.718796, -0.609829,
		-0.810566, -0.111352, -0.574963,
		-0.481187, 0.686246, 0.545459,
		27.107182, 32.399467, 37.705364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971445, 32.416271, 36.883926>,  <27.444012, 31.919094, 37.323540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971445, 32.416271, 36.883926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086788, 32.595325, 37.222507>,  <27.155994, 32.702759, 37.425655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086788, 32.595325, 37.222507>,  <26.971445, 32.416271, 36.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086788, 32.595325, 37.222507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479089, 0.697941, -0.532308,
		-0.829049, 0.559020, -0.013197,
		0.288360, 0.447632, 0.846448,
		27.173296, 32.729614, 37.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629009, 33.109222, 37.131382>,  <26.971445, 32.416271, 36.883926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629009, 33.109222, 37.131382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012012, 33.096378, 37.246029>,  <27.241814, 33.088673, 37.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012012, 33.096378, 37.246029>,  <26.629009, 33.109222, 37.131382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012012, 33.096378, 37.246029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168478, 0.868876, -0.465479,
		-0.234090, 0.493988, 0.837364,
		0.957506, -0.032113, 0.286621,
		27.299265, 33.086746, 37.332016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777800, 33.818707, 37.411453>,  <26.629009, 33.109222, 37.131382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777800, 33.818707, 37.411453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121891, 33.649921, 37.296940>,  <27.328346, 33.548653, 37.228230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121891, 33.649921, 37.296940>,  <26.777800, 33.818707, 37.411453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121891, 33.649921, 37.296940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263451, 0.848488, -0.458979,
		0.436581, 0.319403, 0.841058,
		0.860227, -0.421959, -0.286286,
		27.379959, 33.523335, 37.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217485, 34.312988, 37.363232>,  <26.777800, 33.818707, 37.411453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217485, 34.312988, 37.363232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406313, 34.054131, 37.123779>,  <27.519609, 33.898815, 36.980106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406313, 34.054131, 37.123779>,  <27.217485, 34.312988, 37.363232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406313, 34.054131, 37.123779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221226, 0.744293, -0.630148,
		0.853353, 0.165039, 0.494521,
		0.472068, -0.647140, -0.598634,
		27.547934, 33.859989, 36.944191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897255, 34.572899, 37.268974>,  <27.217485, 34.312988, 37.363232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897255, 34.572899, 37.268974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817392, 34.319759, 36.969738>,  <27.769474, 34.167873, 36.790195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817392, 34.319759, 36.969738>,  <27.897255, 34.572899, 37.268974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817392, 34.319759, 36.969738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051170, 0.755685, -0.652933,
		0.978529, -0.168643, -0.118495,
		-0.199658, -0.632851, -0.748089,
		27.757494, 34.129906, 36.745312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299862, 34.734806, 36.726276>,  <27.897255, 34.572899, 37.268974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299862, 34.734806, 36.726276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997437, 34.538914, 36.552597>,  <27.815981, 34.421379, 36.448387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997437, 34.538914, 36.552597>,  <28.299862, 34.734806, 36.726276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997437, 34.538914, 36.552597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192857, 0.800659, -0.567232,
		0.625437, -0.345126, -0.699798,
		-0.756065, -0.489729, -0.434201,
		27.770617, 34.391994, 36.422337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352976, 34.897591, 35.971291>,  <28.299862, 34.734806, 36.726276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352976, 34.897591, 35.971291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976894, 34.770824, 36.021225>,  <27.751245, 34.694767, 36.051186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976894, 34.770824, 36.021225>,  <28.352976, 34.897591, 35.971291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976894, 34.770824, 36.021225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302471, 0.608303, -0.733811,
		0.156616, -0.727691, -0.667785,
		-0.940204, -0.316912, 0.124835,
		27.694834, 34.675751, 36.058674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105804, 34.605770, 35.340721>,  <28.352976, 34.897591, 35.971291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105804, 34.605770, 35.340721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812534, 34.765114, 35.561180>,  <27.636572, 34.860718, 35.693455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812534, 34.765114, 35.561180>,  <28.105804, 34.605770, 35.340721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812534, 34.765114, 35.561180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131218, 0.712365, -0.689433,
		-0.667262, -0.577796, -0.470015,
		-0.733174, 0.398358, 0.551151,
		27.592583, 34.884621, 35.726524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606762, 34.793682, 34.848213>,  <28.105804, 34.605770, 35.340721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606762, 34.793682, 34.848213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559462, 35.008167, 35.182518>,  <27.531082, 35.136860, 35.383099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559462, 35.008167, 35.182518>,  <27.606762, 34.793682, 34.848213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559462, 35.008167, 35.182518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048976, 0.843789, -0.534436,
		-0.991775, -0.022265, -0.126039,
		-0.118249, 0.536213, 0.835759,
		27.523987, 35.169033, 35.433247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067560, 35.159443, 34.785988>,  <27.606762, 34.793682, 34.848213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067560, 35.159443, 34.785988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285053, 35.345715, 35.065273>,  <27.415548, 35.457478, 35.232845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285053, 35.345715, 35.065273>,  <27.067560, 35.159443, 34.785988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285053, 35.345715, 35.065273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091047, 0.859756, -0.502524,
		-0.834306, 0.209668, 0.509875,
		0.543731, 0.465682, 0.698210,
		27.448172, 35.485420, 35.274734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695539, 35.751995, 35.214840>,  <27.067560, 35.159443, 34.785988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695539, 35.751995, 35.214840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091385, 35.791981, 35.173515>,  <27.328892, 35.815971, 35.148720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091385, 35.791981, 35.173515>,  <26.695539, 35.751995, 35.214840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091385, 35.791981, 35.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139460, 0.841948, -0.521225,
		0.034880, 0.530219, 0.847143,
		0.989613, 0.099962, -0.103311,
		27.388269, 35.821968, 35.142521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793085, 36.556198, 35.215336>,  <26.695539, 35.751995, 35.214840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793085, 36.556198, 35.215336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168488, 36.538982, 35.078308>,  <27.393730, 36.528652, 34.996094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168488, 36.538982, 35.078308>,  <26.793085, 36.556198, 35.215336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168488, 36.538982, 35.078308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262107, -0.734645, -0.625777,
		-0.224729, 0.677085, -0.700752,
		0.938508, -0.043042, -0.342565,
		27.450039, 36.526070, 34.975540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849466, 36.717999, 34.504539>,  <26.793085, 36.556198, 35.215336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849466, 36.717999, 34.504539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151773, 36.482761, 34.619755>,  <27.333157, 36.341618, 34.688885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151773, 36.482761, 34.619755>,  <26.849466, 36.717999, 34.504539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151773, 36.482761, 34.619755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166219, -0.597735, -0.784273,
		0.633395, 0.544849, -0.549500,
		0.755766, -0.588092, 0.288038,
		27.378504, 36.306335, 34.706165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418377, 36.500271, 33.960182>,  <26.849466, 36.717999, 34.504539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418377, 36.500271, 33.960182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307360, 36.220161, 34.223267>,  <27.240749, 36.052097, 34.381119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307360, 36.220161, 34.223267>,  <27.418377, 36.500271, 33.960182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307360, 36.220161, 34.223267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240487, -0.612173, -0.753266,
		0.930127, -0.367236, 0.001498,
		-0.277544, -0.700273, 0.657714,
		27.224096, 36.010078, 34.420582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937452, 35.976723, 33.979382>,  <27.418377, 36.500271, 33.960182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937452, 35.976723, 33.979382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319016, 36.016758, 33.866215>,  <27.547955, 36.040779, 33.798317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319016, 36.016758, 33.866215>,  <26.937452, 35.976723, 33.979382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319016, 36.016758, 33.866215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227545, -0.373419, -0.899323,
		-0.195655, 0.922248, -0.333433,
		0.953909, 0.100086, -0.282914,
		27.605188, 36.046783, 33.781342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951572, 36.321781, 33.319187>,  <26.937452, 35.976723, 33.979382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951572, 36.321781, 33.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257771, 36.064404, 33.319172>,  <27.441490, 35.909977, 33.319164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257771, 36.064404, 33.319172>,  <26.951572, 36.321781, 33.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257771, 36.064404, 33.319172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321667, -0.382637, -0.866094,
		0.557269, 0.663001, -0.499881,
		0.765495, -0.643442, -0.000034,
		27.487419, 35.871372, 33.319160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407370, 36.458199, 32.724842>,  <26.951572, 36.321781, 33.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407370, 36.458199, 32.724842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426287, 36.069382, 32.816833>,  <27.437637, 35.836090, 32.872028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426287, 36.069382, 32.816833>,  <27.407370, 36.458199, 32.724842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426287, 36.069382, 32.816833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203437, -0.234782, -0.950521,
		0.977945, -0.001835, -0.208853,
		0.047291, -0.972046, 0.229977,
		27.440474, 35.777767, 32.885826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854387, 36.172802, 32.199188>,  <27.407370, 36.458199, 32.724842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854387, 36.172802, 32.199188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681608, 35.831371, 32.315693>,  <27.577940, 35.626514, 32.385593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681608, 35.831371, 32.315693>,  <27.854387, 36.172802, 32.199188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681608, 35.831371, 32.315693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120988, -0.374861, -0.919152,
		0.893746, -0.361788, 0.265193,
		-0.431949, -0.853574, 0.291259,
		27.552023, 35.575298, 32.403072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291594, 35.665855, 31.972036>,  <27.854387, 36.172802, 32.199188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291594, 35.665855, 31.972036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949511, 35.462860, 32.014126>,  <27.744261, 35.341061, 32.039379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949511, 35.462860, 32.014126>,  <28.291594, 35.665855, 31.972036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949511, 35.462860, 32.014126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139026, -0.420205, -0.896716,
		0.499292, -0.752249, 0.429917,
		-0.855207, -0.507493, 0.105223,
		27.692949, 35.310612, 32.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411966, 35.050064, 31.783285>,  <28.291594, 35.665855, 31.972036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411966, 35.050064, 31.783285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013758, 35.043766, 31.746002>,  <27.774832, 35.039986, 31.723633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013758, 35.043766, 31.746002>,  <28.411966, 35.050064, 31.783285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013758, 35.043766, 31.746002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091784, -0.396843, -0.913286,
		-0.022605, -0.917752, 0.396511,
		-0.995522, -0.015749, -0.093205,
		27.715101, 35.039043, 31.718040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282057, 34.604588, 31.277571>,  <28.411966, 35.050064, 31.783285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282057, 34.604588, 31.277571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903496, 34.733086, 31.264145>,  <27.676359, 34.810184, 31.256088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903496, 34.733086, 31.264145>,  <28.282057, 34.604588, 31.277571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903496, 34.733086, 31.264145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150591, -0.530795, -0.834014,
		-0.285738, -0.784257, 0.550722,
		-0.946402, 0.321243, -0.033566,
		27.619576, 34.829460, 31.254074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722420, 34.023167, 31.307594>,  <28.282057, 34.604588, 31.277571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722420, 34.023167, 31.307594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658155, 34.352951, 31.090540>,  <27.619596, 34.550819, 30.960306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658155, 34.352951, 31.090540>,  <27.722420, 34.023167, 31.307594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658155, 34.352951, 31.090540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065146, -0.557438, -0.827659,
		-0.984858, -0.097620, 0.143268,
		-0.160659, 0.824459, -0.542638,
		27.609957, 34.600288, 30.927748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002409, 34.154800, 31.073822>,  <27.722420, 34.023167, 31.307594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002409, 34.154800, 31.073822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268152, 34.313820, 30.820656>,  <27.427599, 34.409229, 30.668756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268152, 34.313820, 30.820656>,  <27.002409, 34.154800, 31.073822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268152, 34.313820, 30.820656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295838, -0.637782, -0.711136,
		-0.686372, 0.659691, -0.306108,
		0.664360, 0.397545, -0.632917,
		27.467461, 34.433083, 30.630781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579655, 34.375538, 31.748600>,  <27.002409, 34.154800, 31.073822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579655, 34.375538, 31.748600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820765, 34.693882, 31.725735>,  <26.965431, 34.884888, 31.712015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820765, 34.693882, 31.725735>,  <26.579655, 34.375538, 31.748600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820765, 34.693882, 31.725735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022530, 0.054636, 0.998252,
		0.797592, -0.603011, 0.015003,
		0.602776, 0.795860, -0.057163,
		27.001598, 34.932640, 31.708586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607668, 34.649956, 32.414074>,  <26.579655, 34.375538, 31.748600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607668, 34.649956, 32.414074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935856, 34.842739, 32.291080>,  <27.132769, 34.958408, 32.217285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935856, 34.842739, 32.291080>,  <26.607668, 34.649956, 32.414074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935856, 34.842739, 32.291080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139337, 0.353039, 0.925175,
		0.554450, -0.801921, 0.222503,
		0.820470, 0.481960, -0.307480,
		27.181997, 34.987328, 32.198837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993704, 34.523804, 32.876278>,  <26.607668, 34.649956, 32.414074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993704, 34.523804, 32.876278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174129, 34.848579, 32.728065>,  <27.282385, 35.043446, 32.639137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174129, 34.848579, 32.728065>,  <26.993704, 34.523804, 32.876278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174129, 34.848579, 32.728065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118989, 0.356750, 0.926591,
		0.884524, -0.462042, 0.064305,
		0.451065, 0.811940, -0.370532,
		27.309448, 35.092163, 32.616905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628342, 34.527744, 33.161961>,  <26.993704, 34.523804, 32.876278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628342, 34.527744, 33.161961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535564, 34.909016, 33.084335>,  <27.479898, 35.137779, 33.037762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535564, 34.909016, 33.084335>,  <27.628342, 34.527744, 33.161961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535564, 34.909016, 33.084335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382394, 0.272786, 0.882815,
		0.894415, 0.130553, -0.427759,
		-0.231941, 0.953175, -0.194061,
		27.465982, 35.194969, 33.026115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122190, 34.965408, 33.490982>,  <27.628342, 34.527744, 33.161961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122190, 34.965408, 33.490982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798851, 35.198833, 33.459923>,  <27.604847, 35.338886, 33.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798851, 35.198833, 33.459923>,  <28.122190, 34.965408, 33.490982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798851, 35.198833, 33.459923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181255, 0.372195, 0.910284,
		0.560104, 0.721755, -0.406637,
		-0.808350, 0.583559, -0.077646,
		27.556347, 35.373901, 33.436630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600668, 34.682465, 33.066200>,  <28.122190, 34.965408, 33.490982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600668, 34.682465, 33.066200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681700, 35.053268, 33.192444>,  <28.730318, 35.275753, 33.268192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681700, 35.053268, 33.192444>,  <28.600668, 34.682465, 33.066200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681700, 35.053268, 33.192444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970955, -0.232042, 0.058334,
		0.127311, 0.294629, -0.947093,
		0.202578, 0.927012, 0.315613,
		28.742474, 35.331371, 33.287128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219879, 34.971615, 32.795300>,  <28.600668, 34.682465, 33.066200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219879, 34.971615, 32.795300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183378, 35.121246, 33.164459>,  <29.161478, 35.211025, 33.385956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183378, 35.121246, 33.164459>,  <29.219879, 34.971615, 32.795300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183378, 35.121246, 33.164459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985882, -0.096715, 0.136684,
		0.140389, 0.922339, -0.359973,
		-0.091254, 0.374080, 0.922896,
		29.156002, 35.233471, 33.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722057, 35.408688, 32.758480>,  <29.219879, 34.971615, 32.795300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722057, 35.408688, 32.758480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634068, 35.330528, 33.140774>,  <29.581274, 35.283634, 33.370152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634068, 35.330528, 33.140774>,  <29.722057, 35.408688, 32.758480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634068, 35.330528, 33.140774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956320, -0.236548, 0.171746,
		0.192519, 0.951770, 0.238896,
		-0.219973, -0.195397, 0.955736,
		29.568075, 35.271908, 33.427494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091763, 35.718319, 33.344379>,  <29.722057, 35.408688, 32.758480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091763, 35.718319, 33.344379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000677, 35.335266, 33.414902>,  <29.946026, 35.105434, 33.457214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000677, 35.335266, 33.414902>,  <30.091763, 35.718319, 33.344379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000677, 35.335266, 33.414902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946650, -0.260126, -0.190231,
		0.228034, 0.123582, 0.965779,
		-0.227715, -0.957634, 0.176306,
		29.932364, 35.047977, 33.467793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716930, 35.434750, 33.803139>,  <30.091763, 35.718319, 33.344379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716930, 35.434750, 33.803139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508347, 35.158241, 33.603050>,  <30.383196, 34.992336, 33.482998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508347, 35.158241, 33.603050>,  <30.716930, 35.434750, 33.803139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508347, 35.158241, 33.603050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848849, -0.360614, -0.386540,
		0.086818, -0.626177, 0.774832,
		-0.521458, -0.691273, -0.500222,
		30.351910, 34.950859, 33.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241556, 35.160961, 33.434010>,  <30.716930, 35.434750, 33.803139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241556, 35.160961, 33.434010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567551, 35.392570, 33.443253>,  <31.763147, 35.531536, 33.448799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567551, 35.392570, 33.443253>,  <31.241556, 35.160961, 33.434010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567551, 35.392570, 33.443253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032573, -0.085585, 0.995798,
		0.578566, -0.810808, -0.088611,
		0.814985, 0.579021, 0.023107,
		31.812046, 35.566277, 33.450184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911833, 34.874317, 33.646358>,  <31.241556, 35.160961, 33.434010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911833, 34.874317, 33.646358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906025, 35.265877, 33.727882>,  <31.902540, 35.500813, 33.776798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906025, 35.265877, 33.727882>,  <31.911833, 34.874317, 33.646358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906025, 35.265877, 33.727882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195920, -0.197096, 0.960608,
		0.980512, 0.053880, -0.188925,
		-0.014521, 0.978903, 0.203811,
		31.901669, 35.559547, 33.789024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542747, 35.057793, 33.978287>,  <31.911833, 34.874317, 33.646358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542747, 35.057793, 33.978287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291687, 35.351440, 34.081917>,  <32.141052, 35.527630, 34.144096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291687, 35.351440, 34.081917>,  <32.542747, 35.057793, 33.978287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291687, 35.351440, 34.081917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220368, -0.151637, 0.963558,
		0.746654, 0.661870, -0.066602,
		-0.627651, 0.734122, 0.259075,
		32.103394, 35.571678, 34.159641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838654, 35.511631, 34.372807>,  <32.542747, 35.057793, 33.978287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838654, 35.511631, 34.372807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458046, 35.506569, 34.495743>,  <32.229683, 35.503532, 34.569504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458046, 35.506569, 34.495743>,  <32.838654, 35.511631, 34.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458046, 35.506569, 34.495743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305133, -0.165104, 0.937888,
		0.038869, 0.986195, 0.160962,
		-0.951516, -0.012660, 0.307338,
		32.172592, 35.502769, 34.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842102, 35.500095, 35.085472>,  <32.838654, 35.511631, 34.372807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842102, 35.500095, 35.085472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443783, 35.477039, 35.057007>,  <32.204792, 35.463207, 35.039928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443783, 35.477039, 35.057007>,  <32.842102, 35.500095, 35.085472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443783, 35.477039, 35.057007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036365, -0.464280, 0.884942,
		-0.084046, 0.883811, 0.460233,
		-0.995798, -0.057639, -0.071160,
		32.145042, 35.459747, 35.035660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363434, 35.796787, 35.699066>,  <32.842102, 35.500095, 35.085472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363434, 35.796787, 35.699066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225113, 35.474133, 35.507332>,  <32.142120, 35.280540, 35.392292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225113, 35.474133, 35.507332>,  <32.363434, 35.796787, 35.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225113, 35.474133, 35.507332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189369, -0.560332, 0.806330,
		-0.919000, 0.188060, 0.346516,
		-0.345802, -0.806636, -0.479332,
		32.121372, 35.232143, 35.363533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715565, 35.916569, 36.368587>,  <32.363434, 35.796787, 35.699066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715565, 35.916569, 36.368587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873775, 36.209885, 36.589802>,  <32.968700, 36.385872, 36.722530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873775, 36.209885, 36.589802>,  <32.715565, 35.916569, 36.368587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873775, 36.209885, 36.589802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446442, -0.372724, 0.813490,
		0.802652, -0.568654, 0.179949,
		0.395523, 0.733286, 0.553039,
		32.992432, 36.429871, 36.755714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946377, 35.624187, 37.051632>,  <32.715565, 35.916569, 36.368587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946377, 35.624187, 37.051632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918232, 36.018585, 37.112106>,  <32.901344, 36.255226, 37.148392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918232, 36.018585, 37.112106>,  <32.946377, 35.624187, 37.051632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918232, 36.018585, 37.112106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359903, -0.166448, 0.918022,
		0.930332, 0.010186, 0.366575,
		-0.070366, 0.985998, 0.151186,
		32.897121, 36.314384, 37.157463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678226, 34.919765, 36.837276>,  <32.946377, 35.624187, 37.051632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678226, 34.919765, 36.837276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523235, 34.600101, 36.653450>,  <32.430241, 34.408302, 36.543152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523235, 34.600101, 36.653450>,  <32.678226, 34.919765, 36.837276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523235, 34.600101, 36.653450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351387, 0.588911, -0.727813,
		0.852285, -0.120523, -0.509003,
		-0.387475, -0.799161, -0.459570,
		32.406994, 34.360352, 36.515579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703796, 35.003887, 36.089027>,  <32.678226, 34.919765, 36.837276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703796, 35.003887, 36.089027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381874, 34.769428, 36.126385>,  <32.188721, 34.628754, 36.148800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381874, 34.769428, 36.126385>,  <32.703796, 35.003887, 36.089027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381874, 34.769428, 36.126385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473852, 0.539761, -0.695789,
		0.357423, -0.604229, -0.712149,
		-0.804806, -0.586144, 0.093392,
		32.140430, 34.593586, 36.154404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442310, 34.686375, 35.546623>,  <32.703796, 35.003887, 36.089027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442310, 34.686375, 35.546623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120441, 34.760994, 35.772083>,  <31.927319, 34.805763, 35.907360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120441, 34.760994, 35.772083>,  <32.442310, 34.686375, 35.546623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120441, 34.760994, 35.772083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426215, 0.479412, -0.767141,
		-0.413327, -0.857534, -0.306262,
		-0.804675, 0.186546, 0.563647,
		31.879040, 34.816959, 35.941177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740303, 34.361000, 35.406887>,  <32.442310, 34.686375, 35.546623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740303, 34.361000, 35.406887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735994, 34.737179, 35.542801>,  <31.733410, 34.962887, 35.624348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735994, 34.737179, 35.542801>,  <31.740303, 34.361000, 35.406887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735994, 34.737179, 35.542801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309006, 0.320039, -0.895595,
		-0.950999, -0.114642, 0.287155,
		-0.010772, 0.940443, 0.339782,
		31.732763, 35.019310, 35.644737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044460, 34.721321, 35.274815>,  <31.740303, 34.361000, 35.406887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044460, 34.721321, 35.274815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331114, 34.997978, 35.310734>,  <31.503105, 35.163975, 35.332283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331114, 34.997978, 35.310734>,  <31.044460, 34.721321, 35.274815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331114, 34.997978, 35.310734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242090, 0.367420, -0.897995,
		-0.654085, 0.621796, 0.430746,
		0.716634, 0.691645, 0.089794,
		31.546104, 35.205471, 35.337673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891731, 35.295372, 34.877178>,  <31.044460, 34.721321, 35.274815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891731, 35.295372, 34.877178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271435, 35.395649, 34.953136>,  <31.499258, 35.455814, 34.998711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271435, 35.395649, 34.953136>,  <30.891731, 35.295372, 34.877178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271435, 35.395649, 34.953136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051224, 0.472498, -0.879842,
		-0.310292, 0.844926, 0.435682,
		0.949260, 0.250690, 0.189893,
		31.556213, 35.470856, 35.010105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062147, 36.010548, 34.900013>,  <30.891731, 35.295372, 34.877178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062147, 36.010548, 34.900013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405075, 35.849262, 34.772003>,  <31.610832, 35.752491, 34.695198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405075, 35.849262, 34.772003>,  <31.062147, 36.010548, 34.900013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405075, 35.849262, 34.772003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098854, 0.481155, -0.871044,
		0.505201, 0.778401, 0.372645,
		0.857321, -0.403215, -0.320028,
		31.662271, 35.728298, 34.675995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343081, 36.573696, 34.434326>,  <31.062147, 36.010548, 34.900013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343081, 36.573696, 34.434326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565149, 36.251621, 34.350941>,  <31.698391, 36.058376, 34.300911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565149, 36.251621, 34.350941>,  <31.343081, 36.573696, 34.434326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565149, 36.251621, 34.350941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108316, 0.318495, -0.941716,
		0.824653, 0.500233, 0.264034,
		0.555171, -0.805188, -0.208465,
		31.731701, 36.010063, 34.288403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032066, 36.842163, 34.105320>,  <31.343081, 36.573696, 34.434326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032066, 36.842163, 34.105320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936630, 36.468815, 33.998070>,  <31.879368, 36.244804, 33.933720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936630, 36.468815, 33.998070>,  <32.032066, 36.842163, 34.105320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936630, 36.468815, 33.998070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116753, 0.246530, -0.962077,
		0.964076, -0.260850, 0.050153,
		-0.238593, -0.933371, -0.268128,
		31.865053, 36.188805, 33.917633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555222, 36.571564, 33.711563>,  <32.032066, 36.842163, 34.105320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555222, 36.571564, 33.711563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207100, 36.395107, 33.623966>,  <31.998226, 36.289234, 33.571407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207100, 36.395107, 33.623966>,  <32.555222, 36.571564, 33.711563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207100, 36.395107, 33.623966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086558, 0.300718, -0.949777,
		0.484845, -0.845552, -0.223532,
		-0.870306, -0.441147, -0.218991,
		31.946009, 36.262764, 33.558270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586433, 36.051693, 33.135460>,  <32.555222, 36.571564, 33.711563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586433, 36.051693, 33.135460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225002, 36.223049, 33.137718>,  <32.008144, 36.325863, 33.139072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225002, 36.223049, 33.137718>,  <32.586433, 36.051693, 33.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225002, 36.223049, 33.137718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158987, 0.347521, -0.924095,
		-0.397840, -0.834091, -0.382121,
		-0.903574, 0.428394, 0.005649,
		31.953930, 36.351566, 33.139412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017406, 35.702568, 32.653744>,  <32.586433, 36.051693, 33.135460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017406, 35.702568, 32.653744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925524, 36.089870, 32.693180>,  <31.870396, 36.322250, 32.716843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925524, 36.089870, 32.693180>,  <32.017406, 35.702568, 32.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925524, 36.089870, 32.693180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164019, 0.138360, -0.976706,
		-0.959341, -0.208181, -0.190594,
		-0.229702, 0.968255, 0.098589,
		31.856613, 36.380348, 32.722755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505024, 35.888695, 32.312344>,  <32.017406, 35.702568, 32.653744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505024, 35.888695, 32.312344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732828, 36.215057, 32.352261>,  <31.869511, 36.410873, 32.376213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732828, 36.215057, 32.352261>,  <31.505024, 35.888695, 32.312344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732828, 36.215057, 32.352261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138309, 0.024560, -0.990085,
		-0.810264, 0.577667, -0.098860,
		0.569511, 0.815903, 0.099797,
		31.903681, 36.459827, 32.382198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210995, 36.406567, 31.753885>,  <31.505024, 35.888695, 32.312344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210995, 36.406567, 31.753885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589830, 36.466587, 31.867376>,  <31.817133, 36.502602, 31.935471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589830, 36.466587, 31.867376>,  <31.210995, 36.406567, 31.753885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589830, 36.466587, 31.867376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256620, 0.176933, -0.950179,
		-0.192779, 0.972717, 0.129065,
		0.947091, 0.150055, 0.283728,
		31.873959, 36.511604, 31.952496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474781, 36.702240, 31.226362>,  <31.210995, 36.406567, 31.753885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474781, 36.702240, 31.226362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837364, 36.645370, 31.385422>,  <32.054913, 36.611248, 31.480858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837364, 36.645370, 31.385422>,  <31.474781, 36.702240, 31.226362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837364, 36.645370, 31.385422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413672, 0.109563, -0.903809,
		0.084930, 0.983759, 0.158128,
		0.906456, -0.142174, 0.397648,
		32.109303, 36.602718, 31.504717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880079, 37.208183, 30.896238>,  <31.474781, 36.702240, 31.226362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880079, 37.208183, 30.896238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147377, 36.948833, 31.042150>,  <32.307755, 36.793224, 31.129698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147377, 36.948833, 31.042150>,  <31.880079, 37.208183, 30.896238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147377, 36.948833, 31.042150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475364, -0.005040, -0.879775,
		0.572259, 0.761308, 0.304844,
		0.668243, -0.648371, 0.364783,
		32.347851, 36.754322, 31.151585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466160, 37.529209, 30.750118>,  <31.880079, 37.208183, 30.896238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466160, 37.529209, 30.750118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542095, 37.139168, 30.795954>,  <32.587654, 36.905144, 30.823456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542095, 37.139168, 30.795954>,  <32.466160, 37.529209, 30.750118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542095, 37.139168, 30.795954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417293, -0.025513, -0.908414,
		0.888724, 0.220265, 0.402062,
		0.189834, -0.975106, 0.114589,
		32.599045, 36.846638, 30.830330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130871, 37.499477, 30.609591>,  <32.466160, 37.529209, 30.750118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130871, 37.499477, 30.609591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995129, 37.124298, 30.581064>,  <32.913685, 36.899189, 30.563948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995129, 37.124298, 30.581064>,  <33.130871, 37.499477, 30.609591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995129, 37.124298, 30.581064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553713, -0.137895, -0.821211,
		0.760422, -0.318169, 0.566151,
		-0.339354, -0.937952, -0.071316,
		32.893322, 36.842911, 30.559669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736572, 37.009228, 30.557991>,  <33.130871, 37.499477, 30.609591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736572, 37.009228, 30.557991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423046, 36.808601, 30.411535>,  <33.234928, 36.688225, 30.323662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423046, 36.808601, 30.411535>,  <33.736572, 37.009228, 30.557991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423046, 36.808601, 30.411535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479427, -0.114025, -0.870143,
		0.394686, -0.857572, 0.329839,
		-0.783819, -0.501567, -0.366139,
		33.187901, 36.658131, 30.301693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116051, 36.517765, 30.208067>,  <33.736572, 37.009228, 30.557991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116051, 36.517765, 30.208067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739067, 36.462399, 30.086340>,  <33.512878, 36.429180, 30.013304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739067, 36.462399, 30.086340>,  <34.116051, 36.517765, 30.208067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739067, 36.462399, 30.086340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334182, -0.415984, -0.845742,
		-0.009529, -0.898776, 0.438304,
		-0.942460, -0.138414, -0.304319,
		33.456329, 36.420876, 29.995045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081070, 35.861668, 29.944931>,  <34.116051, 36.517765, 30.208067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081070, 35.861668, 29.944931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799057, 36.074421, 29.757305>,  <33.629848, 36.202072, 29.644730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799057, 36.074421, 29.757305>,  <34.081070, 35.861668, 29.944931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799057, 36.074421, 29.757305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371685, -0.286164, -0.883154,
		-0.603966, -0.797000, 0.004063,
		-0.705037, 0.531884, -0.469066,
		33.587547, 36.233986, 29.616585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057430, 35.530781, 29.299160>,  <34.081070, 35.861668, 29.944931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057430, 35.530781, 29.299160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831715, 35.849876, 29.214117>,  <33.696285, 36.041332, 29.163092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831715, 35.849876, 29.214117>,  <34.057430, 35.530781, 29.299160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831715, 35.849876, 29.214117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329636, -0.018397, -0.943929,
		-0.756917, -0.602727, -0.252581,
		-0.564285, 0.797735, -0.212606,
		33.662430, 36.089195, 29.150335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639515, 35.451748, 28.662209>,  <34.057430, 35.530781, 29.299160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639515, 35.451748, 28.662209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712944, 35.838757, 28.731733>,  <33.757000, 36.070961, 28.773449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712944, 35.838757, 28.731733>,  <33.639515, 35.451748, 28.662209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712944, 35.838757, 28.731733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366121, 0.096802, -0.925518,
		-0.912281, 0.233533, -0.336459,
		0.183569, 0.967518, 0.173812,
		33.768013, 36.129013, 28.783876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252739, 35.879326, 28.104984>,  <33.639515, 35.451748, 28.662209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252739, 35.879326, 28.104984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559044, 36.084194, 28.260571>,  <33.742825, 36.207115, 28.353922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559044, 36.084194, 28.260571>,  <33.252739, 35.879326, 28.104984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559044, 36.084194, 28.260571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295656, 0.256757, -0.920143,
		-0.571141, 0.819607, 0.045187,
		0.765758, 0.512172, 0.388966,
		33.788773, 36.237846, 28.377260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308643, 36.441067, 27.576353>,  <33.252739, 35.879326, 28.104984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308643, 36.441067, 27.576353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652554, 36.468380, 27.778790>,  <33.858898, 36.484768, 27.900251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652554, 36.468380, 27.778790>,  <33.308643, 36.441067, 27.576353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652554, 36.468380, 27.778790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445976, 0.382404, -0.809242,
		-0.248784, 0.921469, 0.298330,
		0.859774, 0.068278, 0.506090,
		33.910484, 36.488865, 27.930616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540554, 37.160767, 27.587786>,  <33.308643, 36.441067, 27.576353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540554, 37.160767, 27.587786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866203, 36.934761, 27.641407>,  <34.061592, 36.799160, 27.673580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866203, 36.934761, 27.641407>,  <33.540554, 37.160767, 27.587786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866203, 36.934761, 27.641407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460391, 0.487333, -0.741988,
		0.353903, 0.665785, 0.656874,
		0.814121, -0.565011, 0.134053,
		34.110439, 36.765259, 27.681623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082397, 37.636803, 27.403862>,  <33.540554, 37.160767, 27.587786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082397, 37.636803, 27.403862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247852, 37.272789, 27.392962>,  <34.347126, 37.054382, 27.386421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247852, 37.272789, 27.392962>,  <34.082397, 37.636803, 27.403862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247852, 37.272789, 27.392962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557702, 0.276922, -0.782484,
		0.719634, 0.308466, 0.622073,
		0.413636, -0.910035, -0.027250,
		34.371944, 36.999779, 27.384787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596188, 37.778728, 27.054247>,  <34.082397, 37.636803, 27.403862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596188, 37.778728, 27.054247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617695, 37.379314, 27.051638>,  <34.630600, 37.139668, 27.050072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617695, 37.379314, 27.051638>,  <34.596188, 37.778728, 27.054247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617695, 37.379314, 27.051638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306930, 0.022743, -0.951460,
		0.950212, 0.049155, 0.307703,
		0.053768, -0.998532, -0.006524,
		34.633823, 37.079754, 27.049681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273640, 37.568211, 26.917276>,  <34.596188, 37.778728, 27.054247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273640, 37.568211, 26.917276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023712, 37.279961, 26.797075>,  <34.873756, 37.107010, 26.724955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023712, 37.279961, 26.797075>,  <35.273640, 37.568211, 26.917276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023712, 37.279961, 26.797075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276888, 0.155348, -0.948261,
		0.730021, -0.675700, 0.102467,
		-0.624822, -0.720622, -0.300501,
		34.836266, 37.063774, 26.706924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683128, 37.265797, 26.360996>,  <35.273640, 37.568211, 26.917276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683128, 37.265797, 26.360996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311970, 37.125004, 26.311806>,  <35.089275, 37.040527, 26.282291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311970, 37.125004, 26.311806>,  <35.683128, 37.265797, 26.360996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311970, 37.125004, 26.311806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068516, 0.163246, -0.984203,
		0.366496, -0.921662, -0.127359,
		-0.927893, -0.351980, -0.122978,
		35.033600, 37.019409, 26.274912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672234, 36.744076, 25.780842>,  <35.683128, 37.265797, 26.360996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672234, 36.744076, 25.780842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295525, 36.871151, 25.824915>,  <35.069500, 36.947395, 25.851358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295525, 36.871151, 25.824915>,  <35.672234, 36.744076, 25.780842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295525, 36.871151, 25.824915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120552, -0.013103, -0.992620,
		-0.313903, -0.948104, 0.050638,
		-0.941771, 0.317691, 0.110183,
		35.012993, 36.966457, 25.857969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153458, 36.214458, 25.589561>,  <35.672234, 36.744076, 25.780842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153458, 36.214458, 25.589561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017872, 36.587067, 25.536825>,  <34.936520, 36.810631, 25.505182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017872, 36.587067, 25.536825>,  <35.153458, 36.214458, 25.589561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017872, 36.587067, 25.536825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000519, -0.139954, -0.990158,
		-0.940800, -0.335694, 0.046956,
		-0.338962, 0.931516, -0.131843,
		34.916183, 36.866520, 25.497272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948467, 36.270634, 24.907246>,  <35.153458, 36.214458, 25.589561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948467, 36.270634, 24.907246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916573, 36.661385, 24.986597>,  <34.897434, 36.895836, 25.034208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916573, 36.661385, 24.986597>,  <34.948467, 36.270634, 24.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916573, 36.661385, 24.986597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009009, 0.199709, -0.979814,
		-0.996775, -0.076339, -0.024724,
		-0.079736, 0.976877, 0.198377,
		34.892651, 36.954449, 25.046110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567009, 36.481644, 24.469713>,  <34.948467, 36.270634, 24.907246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567009, 36.481644, 24.469713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732147, 36.828899, 24.579912>,  <34.831230, 37.037251, 24.646030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732147, 36.828899, 24.579912>,  <34.567009, 36.481644, 24.469713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732147, 36.828899, 24.579912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096514, 0.259075, -0.961023,
		-0.905674, 0.423342, 0.023170,
		0.412844, 0.868137, 0.275496,
		34.855999, 37.089340, 24.662561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323288, 37.049786, 24.008865>,  <34.567009, 36.481644, 24.469713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323288, 37.049786, 24.008865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685711, 37.156883, 24.139938>,  <34.903164, 37.221142, 24.218582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685711, 37.156883, 24.139938>,  <34.323288, 37.049786, 24.008865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685711, 37.156883, 24.139938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199530, 0.412555, -0.888812,
		-0.373164, 0.870695, 0.320374,
		0.906056, 0.267748, 0.327680,
		34.957527, 37.237209, 24.238243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458145, 37.736404, 23.725742>,  <34.323288, 37.049786, 24.008865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458145, 37.736404, 23.725742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828259, 37.654537, 23.853474>,  <35.050327, 37.605419, 23.930113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828259, 37.654537, 23.853474>,  <34.458145, 37.736404, 23.725742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828259, 37.654537, 23.853474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379020, 0.467387, -0.798683,
		0.014213, 0.860036, 0.510035,
		0.925279, -0.204665, 0.319328,
		35.105843, 37.593136, 23.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917366, 38.425766, 23.572758>,  <34.458145, 37.736404, 23.725742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917366, 38.425766, 23.572758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150135, 38.105942, 23.632189>,  <35.289795, 37.914047, 23.667847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150135, 38.105942, 23.632189>,  <34.917366, 38.425766, 23.572758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150135, 38.105942, 23.632189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672601, 0.370481, -0.640586,
		0.457142, 0.472703, 0.753375,
		0.581918, -0.799560, 0.148578,
		35.324711, 37.866074, 23.676762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657162, 38.603046, 23.829800>,  <34.917366, 38.425766, 23.572758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657162, 38.603046, 23.829800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691582, 38.246628, 23.651527>,  <35.712234, 38.032776, 23.544565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691582, 38.246628, 23.651527>,  <35.657162, 38.603046, 23.829800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691582, 38.246628, 23.651527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554137, 0.414564, -0.721852,
		0.827967, -0.184854, 0.529434,
		0.086047, -0.891048, -0.445679,
		35.717396, 37.979313, 23.517824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411648, 38.493282, 23.658529>,  <35.657162, 38.603046, 23.829800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411648, 38.493282, 23.658529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185726, 38.271786, 23.413786>,  <36.050171, 38.138889, 23.266941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185726, 38.271786, 23.413786>,  <36.411648, 38.493282, 23.658529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185726, 38.271786, 23.413786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441703, 0.423434, -0.790950,
		0.697059, -0.716993, 0.005429,
		-0.564807, -0.553737, -0.611857,
		36.016285, 38.105663, 23.230228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890587, 38.246571, 23.244387>,  <36.411648, 38.493282, 23.658529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890587, 38.246571, 23.244387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545052, 38.208427, 23.046524>,  <36.337730, 38.185543, 22.927807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545052, 38.208427, 23.046524>,  <36.890587, 38.246571, 23.244387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545052, 38.208427, 23.046524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401890, 0.461602, -0.790827,
		0.303743, -0.881947, -0.360430,
		-0.863843, -0.095355, -0.494654,
		36.285900, 38.179821, 22.898129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007351, 37.820362, 22.641441>,  <36.890587, 38.246571, 23.244387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007351, 37.820362, 22.641441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690243, 38.057140, 22.583311>,  <36.499977, 38.199207, 22.548433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690243, 38.057140, 22.583311>,  <37.007351, 37.820362, 22.641441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690243, 38.057140, 22.583311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444428, 0.398205, -0.802444,
		-0.417132, -0.700740, -0.578761,
		-0.792770, 0.591943, -0.145325,
		36.452412, 38.234722, 22.539713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954674, 37.841179, 21.917412>,  <37.007351, 37.820362, 22.641441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954674, 37.841179, 21.917412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714787, 38.146347, 22.013985>,  <36.570854, 38.329449, 22.071928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714787, 38.146347, 22.013985>,  <36.954674, 37.841179, 21.917412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714787, 38.146347, 22.013985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320384, 0.505398, -0.801203,
		-0.733274, -0.403145, -0.547525,
		-0.599719, 0.762920, 0.241434,
		36.534870, 38.375221, 22.086414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547558, 37.975353, 21.285519>,  <36.954674, 37.841179, 21.917412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547558, 37.975353, 21.285519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542484, 38.298889, 21.520676>,  <36.539440, 38.493011, 21.661770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542484, 38.298889, 21.520676>,  <36.547558, 37.975353, 21.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542484, 38.298889, 21.520676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322597, 0.559813, -0.763243,
		-0.946451, 0.179968, -0.268032,
		-0.012688, 0.808839, 0.587893,
		36.538677, 38.541542, 21.697044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117809, 38.454262, 20.913473>,  <36.547558, 37.975353, 21.285519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117809, 38.454262, 20.913473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346596, 38.667324, 21.162994>,  <36.483868, 38.795162, 21.312708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346596, 38.667324, 21.162994>,  <36.117809, 38.454262, 20.913473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346596, 38.667324, 21.162994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224159, 0.630036, -0.743510,
		-0.789054, 0.565095, 0.240961,
		0.571968, 0.532656, 0.623803,
		36.518185, 38.827122, 21.350136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889088, 39.163517, 20.944771>,  <36.117809, 38.454262, 20.913473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889088, 39.163517, 20.944771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271584, 39.180874, 21.060509>,  <36.501080, 39.191288, 21.129951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271584, 39.180874, 21.060509>,  <35.889088, 39.163517, 20.944771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271584, 39.180874, 21.060509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163157, 0.741811, -0.650458,
		-0.242864, 0.669203, 0.702271,
		0.956241, 0.043392, 0.289344,
		36.558456, 39.193893, 21.147312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092876, 39.801365, 20.768461>,  <35.889088, 39.163517, 20.944771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092876, 39.801365, 20.768461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449574, 39.635651, 20.841291>,  <36.663593, 39.536221, 20.884989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449574, 39.635651, 20.841291>,  <36.092876, 39.801365, 20.768461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449574, 39.635651, 20.841291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420356, 0.609325, -0.672327,
		0.167596, 0.676082, 0.717513,
		0.891747, -0.414290, 0.182075,
		36.717098, 39.511364, 20.895914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613560, 40.336864, 20.903999>,  <36.092876, 39.801365, 20.768461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613560, 40.336864, 20.903999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833572, 40.021259, 20.794514>,  <36.965580, 39.831894, 20.728823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833572, 40.021259, 20.794514>,  <36.613560, 40.336864, 20.903999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833572, 40.021259, 20.794514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569450, 0.594068, -0.568163,
		0.610896, 0.156639, 0.776061,
		0.550030, -0.789017, -0.273715,
		36.998581, 39.784554, 20.712399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276703, 40.522034, 21.083780>,  <36.613560, 40.336864, 20.903999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276703, 40.522034, 21.083780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302856, 40.256672, 20.785620>,  <37.318550, 40.097454, 20.606724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302856, 40.256672, 20.785620>,  <37.276703, 40.522034, 21.083780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302856, 40.256672, 20.785620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694239, 0.566815, -0.443568,
		0.716768, -0.488485, 0.497620,
		0.065383, -0.663402, -0.745401,
		37.322472, 40.057652, 20.562000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970325, 40.555737, 20.905462>,  <37.276703, 40.522034, 21.083780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970325, 40.555737, 20.905462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796120, 40.383240, 20.589399>,  <37.691597, 40.279739, 20.399761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796120, 40.383240, 20.589399>,  <37.970325, 40.555737, 20.905462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796120, 40.383240, 20.589399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592069, 0.523968, -0.612301,
		0.678070, -0.734497, 0.027129,
		-0.435518, -0.431245, -0.790159,
		37.665462, 40.253868, 20.352352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520157, 40.355000, 20.455128>,  <37.970325, 40.555737, 20.905462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520157, 40.355000, 20.455128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192226, 40.363235, 20.226233>,  <37.995468, 40.368176, 20.088896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192226, 40.363235, 20.226233>,  <38.520157, 40.355000, 20.455128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192226, 40.363235, 20.226233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488411, 0.546787, -0.680058,
		0.298892, -0.837019, -0.458326,
		-0.819828, 0.020588, -0.572239,
		37.946278, 40.369411, 20.054562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727859, 40.156151, 19.801580>,  <38.520157, 40.355000, 20.455128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727859, 40.156151, 19.801580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387482, 40.362320, 19.761116>,  <38.183254, 40.486019, 19.736837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387482, 40.362320, 19.761116>,  <38.727859, 40.156151, 19.801580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387482, 40.362320, 19.761116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389379, 0.489750, -0.780083,
		-0.352528, -0.703197, -0.617444,
		-0.850945, 0.515421, -0.101160,
		38.132198, 40.516945, 19.730768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651901, 40.173588, 19.004475>,  <38.727859, 40.156151, 19.801580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651901, 40.173588, 19.004475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397594, 40.432583, 19.172552>,  <38.245010, 40.587978, 19.273397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397594, 40.432583, 19.172552>,  <38.651901, 40.173588, 19.004475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397594, 40.432583, 19.172552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257366, 0.691043, -0.675442,
		-0.727710, -0.321282, -0.605984,
		-0.635768, 0.647485, 0.420192,
		38.206863, 40.626827, 19.298609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249630, 40.483517, 18.383888>,  <38.651901, 40.173588, 19.004475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249630, 40.483517, 18.383888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193050, 40.753918, 18.673168>,  <38.159103, 40.916157, 18.846735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193050, 40.753918, 18.673168>,  <38.249630, 40.483517, 18.383888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193050, 40.753918, 18.673168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114283, 0.736810, -0.666371,
		-0.983327, -0.011609, -0.181477,
		-0.141450, 0.676000, 0.723199,
		38.150616, 40.956718, 18.890127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879128, 40.916687, 18.082001>,  <38.249630, 40.483517, 18.383888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879128, 40.916687, 18.082001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020500, 41.103275, 18.406343>,  <38.105324, 41.215229, 18.600948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020500, 41.103275, 18.406343>,  <37.879128, 40.916687, 18.082001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020500, 41.103275, 18.406343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209930, 0.805139, -0.554689,
		-0.911600, 0.366269, 0.186635,
		0.353433, 0.466474, 0.810856,
		38.126530, 41.243217, 18.649601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611214, 41.632763, 18.054403>,  <37.879128, 40.916687, 18.082001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611214, 41.632763, 18.054403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953407, 41.644646, 18.261196>,  <38.158722, 41.651775, 18.385271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953407, 41.644646, 18.261196>,  <37.611214, 41.632763, 18.054403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953407, 41.644646, 18.261196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345433, 0.711029, -0.612465,
		-0.385784, 0.702534, 0.598010,
		0.855480, 0.029706, 0.516982,
		38.210052, 41.653557, 18.416290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832958, 42.387691, 18.151913>,  <37.611214, 41.632763, 18.054403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832958, 42.387691, 18.151913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186058, 42.199787, 18.148569>,  <38.397919, 42.087044, 18.146563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186058, 42.199787, 18.148569>,  <37.832958, 42.387691, 18.151913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186058, 42.199787, 18.148569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397919, 0.756972, -0.518319,
		0.249813, 0.454223, 0.855146,
		0.882754, -0.469762, -0.008357,
		38.450886, 42.058857, 18.146061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328609, 42.773365, 18.409252>,  <37.832958, 42.387691, 18.151913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328609, 42.773365, 18.409252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501019, 42.533726, 18.139349>,  <38.604465, 42.389942, 17.977407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501019, 42.533726, 18.139349>,  <38.328609, 42.773365, 18.409252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501019, 42.533726, 18.139349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386500, 0.798292, -0.461895,
		0.815374, -0.061704, 0.575637,
		0.431025, -0.599101, -0.674756,
		38.630325, 42.353996, 17.936922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668648, 42.949524, 18.785353>,  <38.328609, 42.773365, 18.409252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668648, 42.949524, 18.785353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799774, 43.202621, 19.065971>,  <37.878452, 43.354481, 19.234343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799774, 43.202621, 19.065971>,  <37.668648, 42.949524, 18.785353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799774, 43.202621, 19.065971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664170, 0.373748, -0.647449,
		-0.671872, 0.678193, -0.297729,
		0.327820, 0.632745, 0.701546,
		37.898121, 43.392445, 19.276436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658230, 43.633492, 18.417198>,  <37.668648, 42.949524, 18.785353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658230, 43.633492, 18.417198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898842, 43.556831, 18.727406>,  <38.043209, 43.510834, 18.913530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898842, 43.556831, 18.727406>,  <37.658230, 43.633492, 18.417198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898842, 43.556831, 18.727406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767370, 0.408458, -0.494273,
		-0.222039, 0.892430, 0.392768,
		0.601533, -0.191651, 0.775518,
		38.079304, 43.499336, 18.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132801, 44.263184, 18.618412>,  <37.658230, 43.633492, 18.417198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132801, 44.263184, 18.618412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317837, 43.923317, 18.719669>,  <38.428860, 43.719398, 18.780424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317837, 43.923317, 18.719669>,  <38.132801, 44.263184, 18.618412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317837, 43.923317, 18.719669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832968, 0.318751, -0.452286,
		0.303601, 0.420085, 0.855193,
		0.462592, -0.849663, 0.253144,
		38.456615, 43.668419, 18.795612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726780, 44.484638, 18.906307>,  <38.132801, 44.263184, 18.618412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726780, 44.484638, 18.906307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780426, 44.104443, 18.794182>,  <38.812614, 43.876324, 18.726906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780426, 44.104443, 18.794182>,  <38.726780, 44.484638, 18.906307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780426, 44.104443, 18.794182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945029, 0.207803, -0.252462,
		0.298214, -0.231045, 0.926114,
		0.134119, -0.950493, -0.280314,
		38.820663, 43.819294, 18.710087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262424, 44.235886, 19.335783>,  <38.726780, 44.484638, 18.906307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262424, 44.235886, 19.335783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250160, 44.037727, 18.988533>,  <39.242802, 43.918831, 18.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250160, 44.037727, 18.988533>,  <39.262424, 44.235886, 19.335783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250160, 44.037727, 18.988533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935121, 0.292520, -0.199951,
		0.352999, -0.817933, 0.454288,
		-0.030658, -0.495396, -0.868126,
		39.240963, 43.889107, 18.728096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791317, 44.036453, 19.836475>,  <39.262424, 44.235886, 19.335783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791317, 44.036453, 19.836475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480213, 44.020542, 19.585554>,  <38.293552, 44.010998, 19.435001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480213, 44.020542, 19.585554>,  <38.791317, 44.036453, 19.836475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480213, 44.020542, 19.585554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545412, -0.453370, 0.704969,
		-0.312441, 0.890435, 0.330918,
		-0.777757, -0.039775, -0.627306,
		38.246887, 44.008610, 19.397362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129810, 44.272633, 20.179808>,  <38.791317, 44.036453, 19.836475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129810, 44.272633, 20.179808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041546, 44.014080, 19.887644>,  <37.988586, 43.858948, 19.712345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041546, 44.014080, 19.887644>,  <38.129810, 44.272633, 20.179808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041546, 44.014080, 19.887644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758278, -0.357316, 0.545288,
		-0.613452, 0.674178, -0.411292,
		-0.220660, -0.646381, -0.730411,
		37.975349, 43.820164, 19.668520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360027, 44.281250, 20.056639>,  <38.129810, 44.272633, 20.179808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360027, 44.281250, 20.056639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542419, 43.941448, 19.950491>,  <37.651855, 43.737568, 19.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542419, 43.941448, 19.950491>,  <37.360027, 44.281250, 20.056639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542419, 43.941448, 19.950491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605276, -0.514597, 0.607314,
		-0.652476, -0.116301, -0.748832,
		0.455978, -0.849508, -0.265368,
		37.679214, 43.686596, 19.870880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865158, 43.796860, 20.195555>,  <37.360027, 44.281250, 20.056639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865158, 43.796860, 20.195555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215210, 43.604935, 20.220642>,  <37.425240, 43.489780, 20.235695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215210, 43.604935, 20.220642>,  <36.865158, 43.796860, 20.195555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215210, 43.604935, 20.220642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366681, -0.572978, 0.732967,
		-0.315748, -0.664438, -0.677366,
		0.875128, -0.479811, 0.062720,
		37.477749, 43.460991, 20.239458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666958, 43.069843, 20.301678>,  <36.865158, 43.796860, 20.195555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666958, 43.069843, 20.301678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044399, 43.082531, 20.433504>,  <37.270863, 43.090145, 20.512600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044399, 43.082531, 20.433504>,  <36.666958, 43.069843, 20.301678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044399, 43.082531, 20.433504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296866, -0.359677, 0.884592,
		0.146596, -0.932537, -0.329975,
		0.943599, 0.031719, 0.329566,
		37.327480, 43.092045, 20.532373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771191, 42.372684, 20.649857>,  <36.666958, 43.069843, 20.301678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771191, 42.372684, 20.649857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054367, 42.625111, 20.776712>,  <37.224274, 42.776566, 20.852827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054367, 42.625111, 20.776712>,  <36.771191, 42.372684, 20.649857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054367, 42.625111, 20.776712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158404, -0.295727, 0.942048,
		0.688278, -0.717151, -0.109395,
		0.707941, 0.631062, 0.317141,
		37.266750, 42.814430, 20.871855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153358, 41.945396, 21.235090>,  <36.771191, 42.372684, 20.649857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153358, 41.945396, 21.235090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239170, 42.331577, 21.294252>,  <37.290657, 42.563286, 21.329750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239170, 42.331577, 21.294252>,  <37.153358, 41.945396, 21.235090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239170, 42.331577, 21.294252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176350, -0.110653, 0.978088,
		0.960666, -0.235907, 0.146520,
		0.214525, 0.965455, 0.147903,
		37.303528, 42.621212, 21.338623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641434, 41.906765, 21.721266>,  <37.153358, 41.945396, 21.235090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641434, 41.906765, 21.721266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515282, 42.284878, 21.754669>,  <37.439590, 42.511745, 21.774712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515282, 42.284878, 21.754669>,  <37.641434, 41.906765, 21.721266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515282, 42.284878, 21.754669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184953, -0.147538, 0.971609,
		0.930769, 0.290977, 0.221364,
		-0.315375, 0.945286, 0.083507,
		37.420670, 42.568462, 21.779720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911228, 42.171577, 22.373463>,  <37.641434, 41.906765, 21.721266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911228, 42.171577, 22.373463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609470, 42.421394, 22.292627>,  <37.428417, 42.571285, 22.244127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609470, 42.421394, 22.292627>,  <37.911228, 42.171577, 22.373463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609470, 42.421394, 22.292627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209505, 0.062679, 0.975797,
		0.622091, 0.778473, 0.083559,
		-0.754394, 0.624540, -0.202086,
		37.383152, 42.608757, 22.232002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967865, 42.840317, 22.787403>,  <37.911228, 42.171577, 22.373463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967865, 42.840317, 22.787403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581512, 42.808678, 22.688766>,  <37.349701, 42.789696, 22.629583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581512, 42.808678, 22.688766>,  <37.967865, 42.840317, 22.787403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581512, 42.808678, 22.688766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258826, 0.263303, 0.929344,
		-0.008579, 0.961465, -0.274793,
		-0.965886, -0.079097, -0.246593,
		37.291748, 42.784950, 22.614788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554752, 43.251545, 23.302565>,  <37.967865, 42.840317, 22.787403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554752, 43.251545, 23.302565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251320, 43.078777, 23.107424>,  <37.069260, 42.975117, 22.990339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251320, 43.078777, 23.107424>,  <37.554752, 43.251545, 23.302565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251320, 43.078777, 23.107424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534498, -0.015705, 0.845024,
		-0.372643, 0.901776, -0.218946,
		-0.758584, -0.431918, -0.487850,
		37.023746, 42.949203, 22.961069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001392, 43.636040, 23.529249>,  <37.554752, 43.251545, 23.302565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001392, 43.636040, 23.529249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852348, 43.299549, 23.372530>,  <36.762920, 43.097656, 23.278498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852348, 43.299549, 23.372530>,  <37.001392, 43.636040, 23.529249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852348, 43.299549, 23.372530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719173, -0.005059, 0.694813,
		-0.586474, 0.540666, -0.603099,
		-0.372611, -0.841222, -0.391800,
		36.740566, 43.047184, 23.254990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294216, 43.687946, 23.488422>,  <37.001392, 43.636040, 23.529249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294216, 43.687946, 23.488422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368080, 43.294956, 23.498617>,  <36.412399, 43.059162, 23.504734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368080, 43.294956, 23.498617>,  <36.294216, 43.687946, 23.488422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368080, 43.294956, 23.498617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518372, -0.075333, 0.851830,
		-0.834980, -0.170508, -0.523197,
		0.184658, -0.982472, 0.025485,
		36.423477, 43.000214, 23.506264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644459, 43.342079, 23.592613>,  <36.294216, 43.687946, 23.488422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644459, 43.342079, 23.592613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928673, 43.086533, 23.710585>,  <36.099201, 42.933205, 23.781368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928673, 43.086533, 23.710585>,  <35.644459, 43.342079, 23.592613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928673, 43.086533, 23.710585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539778, -0.225984, 0.810907,
		-0.451414, -0.735377, -0.505417,
		0.710539, -0.638868, 0.294928,
		36.141834, 42.894871, 23.799063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270332, 42.695599, 23.753551>,  <35.644459, 43.342079, 23.592613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270332, 42.695599, 23.753551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627403, 42.656513, 23.929546>,  <35.841644, 42.633064, 24.035143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627403, 42.656513, 23.929546>,  <35.270332, 42.695599, 23.753551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627403, 42.656513, 23.929546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448240, -0.294406, 0.844041,
		0.047063, -0.950672, -0.306606,
		0.892673, -0.097710, 0.439985,
		35.895206, 42.627201, 24.061543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199596, 42.096550, 24.123941>,  <35.270332, 42.695599, 23.753551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199596, 42.096550, 24.123941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519249, 42.263794, 24.296721>,  <35.711040, 42.364140, 24.400389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519249, 42.263794, 24.296721>,  <35.199596, 42.096550, 24.123941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519249, 42.263794, 24.296721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373492, -0.217715, 0.901723,
		0.471061, -0.881921, -0.017821,
		0.799128, 0.418111, 0.431947,
		35.758987, 42.389229, 24.426304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596661, 41.520744, 24.422174>,  <35.199596, 42.096550, 24.123941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596661, 41.520744, 24.422174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671776, 41.855618, 24.627645>,  <35.716843, 42.056541, 24.750927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671776, 41.855618, 24.627645>,  <35.596661, 41.520744, 24.422174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671776, 41.855618, 24.627645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391135, -0.415986, 0.820956,
		0.900972, -0.355080, 0.249335,
		0.187785, 0.837182, 0.513676,
		35.728111, 42.106773, 24.781748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938992, 41.354805, 25.049721>,  <35.596661, 41.520744, 24.422174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938992, 41.354805, 25.049721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834122, 41.729870, 25.140976>,  <35.771198, 41.954910, 25.195728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834122, 41.729870, 25.140976>,  <35.938992, 41.354805, 25.049721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834122, 41.729870, 25.140976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406815, -0.321763, 0.854968,
		0.875080, 0.131344, 0.465816,
		-0.262178, 0.937666, 0.228136,
		35.755470, 42.011169, 25.209417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063198, 41.317394, 25.664431>,  <35.938992, 41.354805, 25.049721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063198, 41.317394, 25.664431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806206, 41.615646, 25.593718>,  <35.652012, 41.794598, 25.551291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806206, 41.615646, 25.593718>,  <36.063198, 41.317394, 25.664431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806206, 41.615646, 25.593718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586685, -0.330209, 0.739434,
		0.492972, 0.578787, 0.649604,
		-0.642479, 0.745633, -0.176782,
		35.613461, 41.839336, 25.540684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988491, 41.559540, 26.289082>,  <36.063198, 41.317394, 25.664431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988491, 41.559540, 26.289082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663364, 41.698463, 26.102016>,  <35.468288, 41.781818, 25.989777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663364, 41.698463, 26.102016>,  <35.988491, 41.559540, 26.289082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663364, 41.698463, 26.102016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570512, -0.312443, 0.759537,
		0.117673, 0.884171, 0.452100,
		-0.812816, 0.347305, -0.467664,
		35.419521, 41.802654, 25.961718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616638, 42.015926, 26.850101>,  <35.988491, 41.559540, 26.289082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616638, 42.015926, 26.850101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363914, 41.870647, 26.576195>,  <35.212280, 41.783482, 26.411850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363914, 41.870647, 26.576195>,  <35.616638, 42.015926, 26.850101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363914, 41.870647, 26.576195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598159, -0.333398, 0.728733,
		-0.492974, 0.870019, -0.006607,
		-0.631809, -0.363198, -0.684766,
		35.174374, 41.761688, 26.370766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006687, 42.245552, 27.008881>,  <35.616638, 42.015926, 26.850101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006687, 42.245552, 27.008881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925980, 41.916077, 26.796906>,  <34.877556, 41.718391, 26.669720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925980, 41.916077, 26.796906>,  <35.006687, 42.245552, 27.008881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925980, 41.916077, 26.796906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643840, -0.296194, 0.705507,
		-0.738079, 0.483543, -0.470559,
		-0.201766, -0.823684, -0.529939,
		34.865448, 41.668972, 26.637924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229038, 42.149208, 27.059652>,  <35.006687, 42.245552, 27.008881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229038, 42.149208, 27.059652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344711, 41.791431, 26.923212>,  <34.414116, 41.576767, 26.841347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344711, 41.791431, 26.923212>,  <34.229038, 42.149208, 27.059652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344711, 41.791431, 26.923212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700570, -0.440571, 0.561337,
		-0.652363, 0.076639, -0.754022,
		0.289181, -0.894440, -0.341103,
		34.431465, 41.523098, 26.820881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672600, 41.745644, 26.833708>,  <34.229038, 42.149208, 27.059652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672600, 41.745644, 26.833708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958450, 41.476593, 26.910519>,  <34.129963, 41.315163, 26.956604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958450, 41.476593, 26.910519>,  <33.672600, 41.745644, 26.833708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958450, 41.476593, 26.910519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602457, -0.452341, 0.657597,
		-0.355459, -0.585624, -0.728487,
		0.714629, -0.672631, 0.192024,
		34.172840, 41.274803, 26.968126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257477, 41.082352, 27.026312>,  <33.672600, 41.745644, 26.833708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257477, 41.082352, 27.026312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628471, 40.993607, 27.146673>,  <33.851070, 40.940361, 27.218889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628471, 40.993607, 27.146673>,  <33.257477, 41.082352, 27.026312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628471, 40.993607, 27.146673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372333, -0.475680, 0.796930,
		-0.033674, -0.851179, -0.523794,
		0.927488, -0.221862, 0.300904,
		33.906719, 40.927048, 27.236944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276199, 40.335320, 27.115257>,  <33.257477, 41.082352, 27.026312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276199, 40.335320, 27.115257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580662, 40.486191, 27.326300>,  <33.763340, 40.576714, 27.452925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580662, 40.486191, 27.326300>,  <33.276199, 40.335320, 27.115257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580662, 40.486191, 27.326300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308105, -0.505554, 0.805907,
		0.570708, -0.775982, -0.268596,
		0.761159, 0.377182, 0.527608,
		33.809010, 40.599346, 27.484583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495491, 39.774559, 27.428516>,  <33.276199, 40.335320, 27.115257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495491, 39.774559, 27.428516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626038, 40.090782, 27.635790>,  <33.704365, 40.280514, 27.760153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626038, 40.090782, 27.635790>,  <33.495491, 39.774559, 27.428516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626038, 40.090782, 27.635790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220447, -0.469424, 0.855011,
		0.919179, -0.393276, 0.021072,
		0.326364, 0.790553, 0.518181,
		33.723946, 40.327950, 27.791245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840836, 39.536747, 28.008709>,  <33.495491, 39.774559, 27.428516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840836, 39.536747, 28.008709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752911, 39.909073, 28.125511>,  <33.700157, 40.132469, 28.195593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752911, 39.909073, 28.125511>,  <33.840836, 39.536747, 28.008709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752911, 39.909073, 28.125511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275652, -0.346392, 0.896676,
		0.935787, 0.116609, 0.332722,
		-0.219813, 0.930814, 0.292005,
		33.686966, 40.188316, 28.213112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097733, 39.578899, 28.652355>,  <33.840836, 39.536747, 28.008709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097733, 39.578899, 28.652355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834629, 39.879135, 28.627157>,  <33.676765, 40.059277, 28.612038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834629, 39.879135, 28.627157>,  <34.097733, 39.578899, 28.652355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834629, 39.879135, 28.627157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348713, -0.229317, 0.908743,
		0.667647, 0.619701, 0.412575,
		-0.657759, 0.750590, -0.062995,
		33.637302, 40.104313, 28.608259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117088, 39.878460, 29.272303>,  <34.097733, 39.578899, 28.652355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117088, 39.878460, 29.272303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760677, 39.992477, 29.130981>,  <33.546833, 40.060890, 29.046188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760677, 39.992477, 29.130981>,  <34.117088, 39.878460, 29.272303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760677, 39.992477, 29.130981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387482, -0.072095, 0.919054,
		0.236502, 0.955798, 0.174689,
		-0.891024, 0.285047, -0.353304,
		33.493370, 40.077991, 29.024990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977142, 40.237679, 29.808586>,  <34.117088, 39.878460, 29.272303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977142, 40.237679, 29.808586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634220, 40.150612, 29.621975>,  <33.428467, 40.098370, 29.510008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634220, 40.150612, 29.621975>,  <33.977142, 40.237679, 29.808586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634220, 40.150612, 29.621975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401375, -0.284870, 0.870487,
		-0.322379, 0.933525, 0.156853,
		-0.857304, -0.217670, -0.466530,
		33.377029, 40.085312, 29.482016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460339, 40.512226, 30.247610>,  <33.977142, 40.237679, 29.808586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460339, 40.512226, 30.247610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255550, 40.273029, 30.000940>,  <33.132675, 40.129513, 29.852938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255550, 40.273029, 30.000940>,  <33.460339, 40.512226, 30.247610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255550, 40.273029, 30.000940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502474, -0.373781, 0.779620,
		-0.696709, 0.709008, -0.109110,
		-0.511973, -0.597993, -0.616674,
		33.101959, 40.093632, 29.815939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831509, 40.580189, 30.472618>,  <33.460339, 40.512226, 30.247610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831509, 40.580189, 30.472618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814884, 40.239525, 30.263643>,  <32.804909, 40.035126, 30.138258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814884, 40.239525, 30.263643>,  <32.831509, 40.580189, 30.472618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814884, 40.239525, 30.263643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424002, -0.458436, 0.781062,
		-0.904707, 0.253978, -0.342053,
		-0.041563, -0.851664, -0.522437,
		32.802414, 39.984024, 30.106913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142948, 40.364422, 30.388948>,  <32.831509, 40.580189, 30.472618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142948, 40.364422, 30.388948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356022, 40.029907, 30.336985>,  <32.483864, 39.829197, 30.305807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356022, 40.029907, 30.336985>,  <32.142948, 40.364422, 30.388948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356022, 40.029907, 30.336985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430226, -0.399766, 0.809378,
		-0.728804, -0.375251, -0.572740,
		0.532682, -0.836286, -0.129909,
		32.515827, 39.779022, 30.298012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659700, 39.839581, 30.367271>,  <32.142948, 40.364422, 30.388948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659700, 39.839581, 30.367271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011059, 39.675262, 30.464977>,  <32.221874, 39.576672, 30.523602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011059, 39.675262, 30.464977>,  <31.659700, 39.839581, 30.367271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011059, 39.675262, 30.464977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447514, -0.527531, 0.722109,
		-0.167783, -0.743610, -0.647219,
		0.878396, -0.410797, 0.244265,
		32.274578, 39.552025, 30.538258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559296, 39.056465, 30.569382>,  <31.659700, 39.839581, 30.367271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559296, 39.056465, 30.569382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913969, 39.141983, 30.733372>,  <32.126774, 39.193295, 30.831766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913969, 39.141983, 30.733372>,  <31.559296, 39.056465, 30.569382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913969, 39.141983, 30.733372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289652, -0.434295, 0.852930,
		0.360404, -0.875031, -0.323157,
		0.886685, 0.213797, 0.409976,
		32.179974, 39.206123, 30.856365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641169, 38.524872, 31.024412>,  <31.559296, 39.056465, 30.569382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641169, 38.524872, 31.024412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926514, 38.780804, 31.138767>,  <32.097721, 38.934364, 31.207380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926514, 38.780804, 31.138767>,  <31.641169, 38.524872, 31.024412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926514, 38.780804, 31.138767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192398, -0.213465, 0.957818,
		0.673870, -0.738274, -0.029175,
		0.713360, 0.639831, 0.285890,
		32.140522, 38.972752, 31.224535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174526, 38.168041, 31.573206>,  <31.641169, 38.524872, 31.024412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174526, 38.168041, 31.573206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172474, 38.566059, 31.612932>,  <32.171242, 38.804871, 31.636768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172474, 38.566059, 31.612932>,  <32.174526, 38.168041, 31.573206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172474, 38.566059, 31.612932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173375, -0.098699, 0.979898,
		0.984843, -0.012193, 0.173022,
		-0.005129, 0.995043, 0.099316,
		32.170937, 38.864571, 31.642727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677429, 38.317764, 32.141247>,  <32.174526, 38.168041, 31.573206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677429, 38.317764, 32.141247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440968, 38.636967, 32.094387>,  <32.299091, 38.828487, 32.066269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440968, 38.636967, 32.094387>,  <32.677429, 38.317764, 32.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440968, 38.636967, 32.094387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105373, 0.067591, 0.992133,
		0.799646, 0.598847, 0.044132,
		-0.591153, 0.798006, -0.117151,
		32.263622, 38.876369, 32.059242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780792, 38.765713, 32.714848>,  <32.677429, 38.317764, 32.141247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780792, 38.765713, 32.714848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426151, 38.902298, 32.590054>,  <32.213367, 38.984249, 32.515175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426151, 38.902298, 32.590054>,  <32.780792, 38.765713, 32.714848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426151, 38.902298, 32.590054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389357, -0.186879, 0.901930,
		0.249673, 0.921129, 0.298639,
		-0.886603, 0.341464, -0.311990,
		32.160172, 39.004738, 32.496456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541733, 39.336594, 33.189934>,  <32.780792, 38.765713, 32.714848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541733, 39.336594, 33.189934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222458, 39.180096, 33.006710>,  <32.030891, 39.086197, 32.896774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222458, 39.180096, 33.006710>,  <32.541733, 39.336594, 33.189934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222458, 39.180096, 33.006710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444894, -0.129817, 0.886125,
		-0.406154, 0.911085, -0.070443,
		-0.798191, -0.391243, -0.458062,
		31.983000, 39.062721, 32.869293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762928, 39.940529, 32.969616>,  <32.541733, 39.336594, 33.189934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762928, 39.940529, 32.969616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961418, 39.927834, 33.316662>,  <33.080513, 39.920216, 33.524887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961418, 39.927834, 33.316662>,  <32.762928, 39.940529, 32.969616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961418, 39.927834, 33.316662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866437, -0.045388, -0.497218,
		0.055158, 0.998465, 0.004973,
		0.496230, -0.031734, 0.867611,
		33.110287, 39.918312, 33.576946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193253, 40.555977, 33.077980>,  <32.762928, 39.940529, 32.969616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193253, 40.555977, 33.077980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357449, 40.286522, 33.323814>,  <33.455967, 40.124851, 33.471313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357449, 40.286522, 33.323814>,  <33.193253, 40.555977, 33.077980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357449, 40.286522, 33.323814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868355, 0.083071, -0.488936,
		0.278310, 0.734381, 0.619054,
		0.410491, -0.673634, 0.614584,
		33.480595, 40.084431, 33.508190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796673, 40.851418, 33.251595>,  <33.193253, 40.555977, 33.077980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796673, 40.851418, 33.251595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881172, 40.474968, 33.357166>,  <33.931873, 40.249100, 33.420509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881172, 40.474968, 33.357166>,  <33.796673, 40.851418, 33.251595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881172, 40.474968, 33.357166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909821, 0.090647, -0.404980,
		0.357212, 0.325682, 0.875403,
		0.211247, -0.941124, 0.263932,
		33.944546, 40.192631, 33.436344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420250, 40.865685, 33.526482>,  <33.796673, 40.851418, 33.251595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420250, 40.865685, 33.526482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403473, 40.485004, 33.404816>,  <34.393406, 40.256596, 33.331818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403473, 40.485004, 33.404816>,  <34.420250, 40.865685, 33.526482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403473, 40.485004, 33.404816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837802, 0.132367, -0.529686,
		0.544361, -0.277047, 0.791780,
		-0.041943, -0.951695, -0.304165,
		34.390888, 40.199497, 33.313564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010067, 40.481651, 33.693821>,  <34.420250, 40.865685, 33.526482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010067, 40.481651, 33.693821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855301, 40.269726, 33.391933>,  <34.762444, 40.142570, 33.210800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855301, 40.269726, 33.391933>,  <35.010067, 40.481651, 33.693821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855301, 40.269726, 33.391933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853897, 0.103094, -0.510129,
		0.348080, -0.841825, 0.412518,
		-0.386911, -0.529814, -0.754717,
		34.739227, 40.110783, 33.165520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644352, 40.086983, 33.479610>,  <35.010067, 40.481651, 33.693821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644352, 40.086983, 33.479610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373058, 40.060955, 33.186825>,  <35.210281, 40.045338, 33.011154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373058, 40.060955, 33.186825>,  <35.644352, 40.086983, 33.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373058, 40.060955, 33.186825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726585, 0.089586, -0.681211,
		0.109903, -0.993851, -0.013478,
		-0.678230, -0.065074, -0.731963,
		35.169590, 40.041435, 32.967236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023533, 39.608543, 32.978127>,  <35.644352, 40.086983, 33.479610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023533, 39.608543, 32.978127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729156, 39.774982, 32.764488>,  <35.552532, 39.874844, 32.636303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729156, 39.774982, 32.764488>,  <36.023533, 39.608543, 32.978127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729156, 39.774982, 32.764488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646693, 0.198435, -0.736486,
		-0.200463, -0.887406, -0.415121,
		-0.735936, 0.416094, -0.534100,
		35.508377, 39.899811, 32.604259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947895, 39.231159, 32.257290>,  <36.023533, 39.608543, 32.978127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947895, 39.231159, 32.257290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809227, 39.606071, 32.242687>,  <35.726025, 39.831017, 32.233925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809227, 39.606071, 32.242687>,  <35.947895, 39.231159, 32.257290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809227, 39.606071, 32.242687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504193, 0.153388, -0.849860,
		-0.790955, -0.313025, -0.525743,
		-0.346670, 0.937276, -0.036502,
		35.705227, 39.887253, 32.231735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908802, 39.418537, 31.515886>,  <35.947895, 39.231159, 32.257290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908802, 39.418537, 31.515886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858818, 39.779293, 31.681284>,  <35.828827, 39.995747, 31.780521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858818, 39.779293, 31.681284>,  <35.908802, 39.418537, 31.515886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858818, 39.779293, 31.681284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300983, 0.431577, -0.850383,
		-0.945408, 0.018194, -0.325382,
		-0.124956, 0.901892, 0.413493,
		35.821331, 40.049862, 31.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455025, 39.896175, 31.010134>,  <35.908802, 39.418537, 31.515886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455025, 39.896175, 31.010134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687649, 40.123047, 31.243406>,  <35.827221, 40.259171, 31.383369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687649, 40.123047, 31.243406>,  <35.455025, 39.896175, 31.010134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687649, 40.123047, 31.243406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468596, 0.352445, -0.810062,
		-0.664987, 0.744376, -0.060808,
		0.581559, 0.567175, 0.583183,
		35.862118, 40.293198, 31.418362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339180, 40.515678, 30.655521>,  <35.455025, 39.896175, 31.010134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339180, 40.515678, 30.655521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664974, 40.551525, 30.884808>,  <35.860451, 40.573036, 31.022379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664974, 40.551525, 30.884808>,  <35.339180, 40.515678, 30.655521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664974, 40.551525, 30.884808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416467, 0.597551, -0.685193,
		-0.403932, 0.796807, 0.449375,
		0.814490, 0.089622, 0.573213,
		35.909321, 40.578411, 31.056772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383595, 41.196297, 30.920378>,  <35.339180, 40.515678, 30.655521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383595, 41.196297, 30.920378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756489, 41.054665, 30.890541>,  <35.980225, 40.969685, 30.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756489, 41.054665, 30.890541>,  <35.383595, 41.196297, 30.920378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756489, 41.054665, 30.890541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200280, 0.676573, -0.708616,
		0.301376, 0.645657, 0.701641,
		0.932234, -0.354084, -0.074590,
		36.036160, 40.948441, 30.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791336, 41.852135, 30.789946>,  <35.383595, 41.196297, 30.920378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791336, 41.852135, 30.789946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008076, 41.528824, 30.697784>,  <36.138119, 41.334835, 30.642488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008076, 41.528824, 30.697784>,  <35.791336, 41.852135, 30.789946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008076, 41.528824, 30.697784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507462, 0.533149, -0.676930,
		0.669988, 0.249873, 0.699057,
		0.541848, -0.808280, -0.230402,
		36.170631, 41.286339, 30.628664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508732, 42.087696, 30.859121>,  <35.791336, 41.852135, 30.789946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508732, 42.087696, 30.859121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523003, 41.762672, 30.626406>,  <36.531567, 41.567657, 30.486776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523003, 41.762672, 30.626406>,  <36.508732, 42.087696, 30.859121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523003, 41.762672, 30.626406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480791, 0.524316, -0.702804,
		0.876109, -0.254643, 0.409377,
		0.035679, -0.812557, -0.581788,
		36.533707, 41.518906, 30.451870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220737, 42.043865, 30.570587>,  <36.508732, 42.087696, 30.859121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220737, 42.043865, 30.570587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968605, 41.856060, 30.323284>,  <36.817326, 41.743378, 30.174902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968605, 41.856060, 30.323284>,  <37.220737, 42.043865, 30.570587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968605, 41.856060, 30.323284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228548, 0.648868, -0.725766,
		0.741922, -0.598775, -0.301696,
		-0.630332, -0.469510, -0.618259,
		36.779507, 41.715206, 30.137806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697510, 41.713516, 30.120256>,  <37.220737, 42.043865, 30.570587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697510, 41.713516, 30.120256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363934, 41.728012, 29.899990>,  <37.163788, 41.736710, 29.767830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363934, 41.728012, 29.899990>,  <37.697510, 41.713516, 30.120256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363934, 41.728012, 29.899990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537087, 0.282593, -0.794782,
		0.126811, -0.958555, -0.255130,
		-0.833940, 0.036239, -0.550664,
		37.113750, 41.738884, 29.734791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016613, 41.677677, 29.543819>,  <37.697510, 41.713516, 30.120256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016613, 41.677677, 29.543819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642067, 41.741825, 29.418924>,  <37.417339, 41.780315, 29.343987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642067, 41.741825, 29.418924>,  <38.016613, 41.677677, 29.543819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642067, 41.741825, 29.418924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339626, 0.189164, -0.921342,
		-0.088692, -0.968761, -0.231594,
		-0.936369, 0.160371, -0.312239,
		37.361156, 41.789936, 29.325253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824116, 41.228519, 28.999140>,  <38.016613, 41.677677, 29.543819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824116, 41.228519, 28.999140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594326, 41.553978, 28.963428>,  <37.456451, 41.749252, 28.942001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594326, 41.553978, 28.963428>,  <37.824116, 41.228519, 28.999140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594326, 41.553978, 28.963428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400589, 0.184352, -0.897520,
		-0.713802, -0.551363, -0.431840,
		-0.574470, 0.813642, -0.089280,
		37.421986, 41.798069, 28.936646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676399, 41.198380, 28.279818>,  <37.824116, 41.228519, 28.999140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676399, 41.198380, 28.279818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541668, 41.560650, 28.382816>,  <37.460831, 41.778011, 28.444614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541668, 41.560650, 28.382816>,  <37.676399, 41.198380, 28.279818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541668, 41.560650, 28.382816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115558, 0.311170, -0.943302,
		-0.934450, -0.287971, -0.209468,
		-0.336823, 0.905674, 0.257496,
		37.440620, 41.832352, 28.460066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300003, 41.324116, 27.763845>,  <37.676399, 41.198380, 28.279818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300003, 41.324116, 27.763845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340767, 41.680969, 27.939896>,  <37.365227, 41.895081, 28.045525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340767, 41.680969, 27.939896>,  <37.300003, 41.324116, 27.763845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340767, 41.680969, 27.939896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191486, 0.416562, -0.888712,
		-0.976190, 0.174846, -0.128380,
		0.101910, 0.892135, 0.440125,
		37.371342, 41.948608, 28.071934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838772, 41.796467, 27.400789>,  <37.300003, 41.324116, 27.763845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838772, 41.796467, 27.400789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111061, 42.019894, 27.590361>,  <37.274437, 42.153950, 27.704103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111061, 42.019894, 27.590361>,  <36.838772, 41.796467, 27.400789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111061, 42.019894, 27.590361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210363, 0.470659, -0.856871,
		-0.701683, 0.682992, 0.202887,
		0.680727, 0.558572, 0.473929,
		37.315281, 42.187466, 27.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715084, 42.557449, 27.302757>,  <36.838772, 41.796467, 27.400789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715084, 42.557449, 27.302757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104080, 42.494183, 27.371166>,  <37.337479, 42.456223, 27.412212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104080, 42.494183, 27.371166>,  <36.715084, 42.557449, 27.302757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104080, 42.494183, 27.371166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230332, 0.543140, -0.807432,
		0.034820, 0.824610, 0.564629,
		0.972489, -0.158167, 0.171022,
		37.395828, 42.446732, 27.422472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098072, 43.259529, 27.293745>,  <36.715084, 42.557449, 27.302757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098072, 43.259529, 27.293745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375496, 42.978474, 27.230146>,  <37.541950, 42.809841, 27.191988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375496, 42.978474, 27.230146>,  <37.098072, 43.259529, 27.293745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375496, 42.978474, 27.230146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321314, 0.499246, -0.804681,
		0.644777, 0.507003, 0.572022,
		0.693556, -0.702639, -0.158995,
		37.583561, 42.767681, 27.182447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726479, 43.641300, 27.028351>,  <37.098072, 43.259529, 27.293745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726479, 43.641300, 27.028351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775105, 43.261551, 26.912485>,  <37.804279, 43.033699, 26.842966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775105, 43.261551, 26.912485>,  <37.726479, 43.641300, 27.028351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775105, 43.261551, 26.912485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317568, 0.313692, -0.894845,
		0.940411, 0.016795, 0.339626,
		0.121567, -0.949376, -0.289666,
		37.811573, 42.976738, 26.825584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442406, 43.499428, 26.839911>,  <37.726479, 43.641300, 27.028351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442406, 43.499428, 26.839911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242088, 43.214222, 26.643618>,  <38.121899, 43.043098, 26.525843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242088, 43.214222, 26.643618>,  <38.442406, 43.499428, 26.839911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242088, 43.214222, 26.643618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563816, 0.161456, -0.809965,
		0.656750, -0.682304, 0.321155,
		-0.500790, -0.713017, -0.490730,
		38.091850, 43.000317, 26.496399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971771, 43.185097, 26.401884>,  <38.442406, 43.499428, 26.839911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971771, 43.185097, 26.401884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647861, 43.029922, 26.225807>,  <38.453514, 42.936817, 26.120161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647861, 43.029922, 26.225807>,  <38.971771, 43.185097, 26.401884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647861, 43.029922, 26.225807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436342, 0.103400, -0.893820,
		0.392256, -0.915870, 0.085540,
		-0.809778, -0.387931, -0.440191,
		38.404926, 42.913544, 26.093750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214188, 42.618641, 26.032988>,  <38.971771, 43.185097, 26.401884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214188, 42.618641, 26.032988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877922, 42.722786, 25.843046>,  <38.676163, 42.785275, 25.729080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877922, 42.722786, 25.843046>,  <39.214188, 42.618641, 26.032988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877922, 42.722786, 25.843046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473979, -0.070401, -0.877717,
		-0.261959, -0.962940, -0.064225,
		-0.840667, 0.260367, -0.474855,
		38.625721, 42.800896, 25.700590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177868, 42.159351, 25.538609>,  <39.214188, 42.618641, 26.032988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177868, 42.159351, 25.538609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944641, 42.450523, 25.394306>,  <38.804703, 42.625225, 25.307724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944641, 42.450523, 25.394306>,  <39.177868, 42.159351, 25.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944641, 42.450523, 25.394306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396556, -0.132553, -0.908390,
		-0.709065, -0.672716, -0.211378,
		-0.583070, 0.727931, -0.360758,
		38.769722, 42.668903, 25.286079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035500, 41.993694, 24.783054>,  <39.177868, 42.159351, 25.538609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035500, 41.993694, 24.783054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921181, 42.375664, 24.815144>,  <38.852589, 42.604847, 24.834396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921181, 42.375664, 24.815144>,  <39.035500, 41.993694, 24.783054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921181, 42.375664, 24.815144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384622, 0.190979, -0.903102,
		-0.877717, -0.227247, -0.421867,
		-0.285795, 0.954927, 0.080221,
		38.835442, 42.662144, 24.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762424, 42.085548, 24.187670>,  <39.035500, 41.993694, 24.783054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762424, 42.085548, 24.187670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848682, 42.458218, 24.304625>,  <38.900436, 42.681820, 24.374798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848682, 42.458218, 24.304625>,  <38.762424, 42.085548, 24.187670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848682, 42.458218, 24.304625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329586, 0.212410, -0.919921,
		-0.919167, 0.294746, -0.261259,
		0.215649, 0.931669, 0.292385,
		38.913376, 42.737717, 24.392340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504787, 42.441830, 23.651190>,  <38.762424, 42.085548, 24.187670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504787, 42.441830, 23.651190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773251, 42.667820, 23.843168>,  <38.934330, 42.803413, 23.958355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773251, 42.667820, 23.843168>,  <38.504787, 42.441830, 23.651190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773251, 42.667820, 23.843168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348359, 0.331117, -0.876931,
		-0.654361, 0.755755, 0.025419,
		0.671161, 0.564974, 0.479944,
		38.974598, 42.837311, 23.987152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427708, 43.143677, 23.448175>,  <38.504787, 42.441830, 23.651190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427708, 43.143677, 23.448175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800499, 43.131374, 23.592659>,  <39.024174, 43.123993, 23.679350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800499, 43.131374, 23.592659>,  <38.427708, 43.143677, 23.448175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800499, 43.131374, 23.592659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323012, 0.522779, -0.788901,
		-0.164566, 0.851913, 0.497154,
		0.931977, -0.030761, 0.361210,
		39.080093, 43.122147, 23.701021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702572, 43.798611, 23.293961>,  <38.427708, 43.143677, 23.448175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702572, 43.798611, 23.293961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034599, 43.582794, 23.350367>,  <39.233814, 43.453304, 23.384211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034599, 43.582794, 23.350367>,  <38.702572, 43.798611, 23.293961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034599, 43.582794, 23.350367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415619, 0.429934, -0.801509,
		0.371818, 0.723916, 0.581117,
		0.830067, -0.539539, 0.141016,
		39.283619, 43.420933, 23.392672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253906, 44.222382, 23.071577>,  <38.702572, 43.798611, 23.293961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253906, 44.222382, 23.071577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456429, 43.880878, 23.120155>,  <39.577942, 43.675976, 23.149302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456429, 43.880878, 23.120155>,  <39.253906, 44.222382, 23.071577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456429, 43.880878, 23.120155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575598, 0.229715, -0.784805,
		0.642135, 0.467257, 0.607728,
		0.506310, -0.853758, 0.121444,
		39.608322, 43.624752, 23.156588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955582, 44.407204, 23.075750>,  <39.253906, 44.222382, 23.071577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955582, 44.407204, 23.075750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904018, 44.028744, 22.956968>,  <39.873081, 43.801666, 22.885698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904018, 44.028744, 22.956968>,  <39.955582, 44.407204, 23.075750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904018, 44.028744, 22.956968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534405, 0.185969, -0.824516,
		0.835340, -0.264984, 0.481653,
		-0.128911, -0.946149, -0.296956,
		39.865345, 43.744900, 22.867882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547302, 44.278580, 22.625145>,  <39.955582, 44.407204, 23.075750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547302, 44.278580, 22.625145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319653, 43.958191, 22.550804>,  <40.183064, 43.765957, 22.506199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319653, 43.958191, 22.550804>,  <40.547302, 44.278580, 22.625145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319653, 43.958191, 22.550804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364649, -0.043276, -0.930139,
		0.736971, -0.597138, 0.316702,
		-0.569127, -0.800970, -0.185853,
		40.148914, 43.717899, 22.495049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998917, 43.817314, 22.071077>,  <40.547302, 44.278580, 22.625145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998917, 43.817314, 22.071077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628143, 43.668461, 22.051855>,  <40.405678, 43.579147, 22.040321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628143, 43.668461, 22.051855>,  <40.998917, 43.817314, 22.071077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628143, 43.668461, 22.051855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085205, -0.084025, -0.992814,
		0.365423, -0.924367, 0.109593,
		-0.926934, -0.372135, -0.048056,
		40.350063, 43.556820, 22.037437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468666, 43.200584, 21.986782>,  <40.998917, 43.817314, 22.071077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468666, 43.200584, 21.986782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637306, 42.840939, 21.939695>,  <41.738491, 42.625153, 21.911444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637306, 42.840939, 21.939695>,  <41.468666, 43.200584, 21.986782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637306, 42.840939, 21.939695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093439, -0.172200, 0.980620,
		-0.901957, -0.402426, -0.156611,
		0.421596, -0.899111, -0.117715,
		41.763786, 42.571205, 21.904381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990128, 42.599232, 22.276815>,  <41.468666, 43.200584, 21.986782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990128, 42.599232, 22.276815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388321, 42.568150, 22.298651>,  <41.627235, 42.549500, 22.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388321, 42.568150, 22.298651>,  <40.990128, 42.599232, 22.276815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388321, 42.568150, 22.298651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076076, -0.308483, 0.948183,
		-0.056840, -0.948051, -0.313000,
		0.995481, -0.077707, 0.054590,
		41.686966, 42.544838, 22.315027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069420, 42.036591, 22.668636>,  <40.990128, 42.599232, 22.276815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069420, 42.036591, 22.668636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412014, 42.239868, 22.704790>,  <41.617573, 42.361835, 22.726482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412014, 42.239868, 22.704790>,  <41.069420, 42.036591, 22.668636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412014, 42.239868, 22.704790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106300, -0.345019, 0.932557,
		0.505102, -0.789116, -0.349526,
		0.856488, 0.508191, 0.090387,
		41.668961, 42.392326, 22.731907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496429, 41.636192, 22.886847>,  <41.069420, 42.036591, 22.668636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496429, 41.636192, 22.886847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681087, 41.975716, 22.989929>,  <41.791882, 42.179428, 23.051779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681087, 41.975716, 22.989929>,  <41.496429, 41.636192, 22.886847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681087, 41.975716, 22.989929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036195, -0.308300, 0.950600,
		0.886325, -0.429513, -0.173048,
		0.461646, 0.848805, 0.257708,
		41.819580, 42.230358, 23.067242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958714, 41.433567, 23.309467>,  <41.496429, 41.636192, 22.886847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958714, 41.433567, 23.309467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978466, 41.818516, 23.416357>,  <41.990318, 42.049484, 23.480490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978466, 41.818516, 23.416357>,  <41.958714, 41.433567, 23.309467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978466, 41.818516, 23.416357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386640, -0.265109, 0.883304,
		0.920907, 0.059699, -0.385183,
		0.049383, 0.962369, 0.267223,
		41.993282, 42.107227, 23.496523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728954, 41.646358, 23.625137>,  <41.958714, 41.433567, 23.309467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728954, 41.646358, 23.625137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455883, 41.911400, 23.748365>,  <42.292042, 42.070427, 23.822302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455883, 41.911400, 23.748365>,  <42.728954, 41.646358, 23.625137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455883, 41.911400, 23.748365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238011, -0.196970, 0.951080,
		0.690871, 0.722604, -0.023241,
		-0.682677, 0.662605, 0.308069,
		42.251080, 42.110180, 23.840786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090508, 42.017616, 24.123016>,  <42.728954, 41.646358, 23.625137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090508, 42.017616, 24.123016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698742, 42.073109, 24.181683>,  <42.463684, 42.106403, 24.216883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698742, 42.073109, 24.181683>,  <43.090508, 42.017616, 24.123016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698742, 42.073109, 24.181683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089506, -0.352779, 0.931416,
		0.180959, 0.925365, 0.333098,
		-0.979409, 0.138734, 0.146664,
		42.404919, 42.114727, 24.225681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950520, 42.380516, 24.737696>,  <43.090508, 42.017616, 24.123016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950520, 42.380516, 24.737696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595787, 42.200840, 24.694328>,  <42.382946, 42.093033, 24.668308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595787, 42.200840, 24.694328>,  <42.950520, 42.380516, 24.737696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595787, 42.200840, 24.694328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014166, -0.208088, 0.978007,
		-0.461871, 0.868866, 0.178177,
		-0.886834, -0.449189, -0.108418,
		42.329739, 42.066082, 24.661802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520733, 42.674690, 25.238049>,  <42.950520, 42.380516, 24.737696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520733, 42.674690, 25.238049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330906, 42.336994, 25.138407>,  <42.217010, 42.134377, 25.078621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330906, 42.336994, 25.138407>,  <42.520733, 42.674690, 25.238049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330906, 42.336994, 25.138407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214742, -0.163408, 0.962904,
		-0.853624, 0.510455, -0.103745,
		-0.474566, -0.844236, -0.249105,
		42.188538, 42.083725, 25.063675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771347, 42.710850, 25.585676>,  <42.520733, 42.674690, 25.238049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771347, 42.710850, 25.585676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858536, 42.326546, 25.517061>,  <41.910851, 42.095963, 25.475891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858536, 42.326546, 25.517061>,  <41.771347, 42.710850, 25.585676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858536, 42.326546, 25.517061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191766, -0.214502, 0.957713,
		-0.956930, -0.175859, -0.230996,
		0.217971, -0.960762, -0.171540,
		41.923927, 42.038319, 25.465599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148407, 42.356667, 25.844194>,  <41.771347, 42.710850, 25.585676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148407, 42.356667, 25.844194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412834, 42.057735, 25.817402>,  <41.571491, 41.878376, 25.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412834, 42.057735, 25.817402>,  <41.148407, 42.356667, 25.844194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412834, 42.057735, 25.817402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360782, -0.394867, 0.844936,
		-0.657897, -0.534392, -0.530657,
		0.661065, -0.747332, -0.066983,
		41.611153, 41.833534, 25.797308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745960, 41.696583, 26.029303>,  <41.148407, 42.356667, 25.844194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745960, 41.696583, 26.029303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132244, 41.610027, 26.086678>,  <41.364014, 41.558094, 26.121103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132244, 41.610027, 26.086678>,  <40.745960, 41.696583, 26.029303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132244, 41.610027, 26.086678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220648, -0.392976, 0.892684,
		-0.136801, -0.893725, -0.427248,
		0.965712, -0.216392, 0.143440,
		41.421959, 41.545109, 26.129709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842819, 40.991890, 26.255285>,  <40.745960, 41.696583, 26.029303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842819, 40.991890, 26.255285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184341, 41.151649, 26.388845>,  <41.389256, 41.247505, 26.468981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184341, 41.151649, 26.388845>,  <40.842819, 40.991890, 26.255285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184341, 41.151649, 26.388845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139590, -0.442260, 0.885957,
		0.501522, -0.803048, -0.321854,
		0.853810, 0.399399, 0.333901,
		41.440483, 41.271469, 26.489016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315639, 40.477905, 26.369358>,  <40.842819, 40.991890, 26.255285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315639, 40.477905, 26.369358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392845, 40.797379, 26.597340>,  <41.439171, 40.989063, 26.734129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392845, 40.797379, 26.597340>,  <41.315639, 40.477905, 26.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392845, 40.797379, 26.597340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265149, -0.516809, 0.814005,
		0.944691, -0.308239, 0.112017,
		0.193017, 0.798685, 0.569954,
		41.450748, 41.036983, 26.768326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530212, 40.218517, 27.062939>,  <41.315639, 40.477905, 26.369358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530212, 40.218517, 27.062939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425606, 40.598782, 27.129696>,  <41.362843, 40.826939, 27.169750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425606, 40.598782, 27.129696>,  <41.530212, 40.218517, 27.062939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425606, 40.598782, 27.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475612, -0.277387, 0.834775,
		0.839882, 0.138931, 0.524687,
		-0.261517, 0.950660, 0.166895,
		41.347149, 40.883980, 27.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702171, 40.345722, 27.781788>,  <41.530212, 40.218517, 27.062939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702171, 40.345722, 27.781788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439960, 40.634941, 27.694620>,  <41.282635, 40.808472, 27.642319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439960, 40.634941, 27.694620>,  <41.702171, 40.345722, 27.781788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439960, 40.634941, 27.694620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429783, -0.119928, 0.894932,
		0.620940, 0.680313, 0.389369,
		-0.655530, 0.723044, -0.217919,
		41.243301, 40.851852, 27.629244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593819, 40.592476, 28.415047>,  <41.702171, 40.345722, 27.781788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593819, 40.592476, 28.415047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294506, 40.722660, 28.183823>,  <41.114918, 40.800770, 28.045088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294506, 40.722660, 28.183823>,  <41.593819, 40.592476, 28.415047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294506, 40.722660, 28.183823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604493, 0.024402, 0.796237,
		0.273246, 0.945242, 0.178476,
		-0.748281, 0.325456, -0.578060,
		41.070023, 40.820297, 28.010405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300072, 40.979351, 28.830366>,  <41.593819, 40.592476, 28.415047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300072, 40.979351, 28.830366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002556, 40.926338, 28.568308>,  <40.824047, 40.894531, 28.411074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002556, 40.926338, 28.568308>,  <41.300072, 40.979351, 28.830366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002556, 40.926338, 28.568308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664958, 0.047168, 0.745390,
		-0.067884, 0.990056, -0.123209,
		-0.743789, -0.132528, -0.655144,
		40.779419, 40.886581, 28.371765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762730, 41.419357, 29.022825>,  <41.300072, 40.979351, 28.830366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762730, 41.419357, 29.022825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572758, 41.169102, 28.775272>,  <40.458775, 41.018948, 28.626741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572758, 41.169102, 28.775272>,  <40.762730, 41.419357, 29.022825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572758, 41.169102, 28.775272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785630, -0.015449, 0.618504,
		-0.396524, 0.779956, -0.484188,
		-0.474926, -0.625644, -0.618883,
		40.430279, 40.981407, 28.589607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995884, 41.629032, 28.998064>,  <40.762730, 41.419357, 29.022825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995884, 41.629032, 28.998064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021973, 41.255127, 28.858370>,  <40.037624, 41.030785, 28.774553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021973, 41.255127, 28.858370>,  <39.995884, 41.629032, 28.998064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021973, 41.255127, 28.858370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601442, -0.316089, 0.733727,
		-0.796250, 0.162191, -0.582821,
		0.065220, -0.934763, -0.349234,
		40.041538, 40.974697, 28.753599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319466, 41.356823, 28.805132>,  <39.995884, 41.629032, 28.998064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319466, 41.356823, 28.805132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527336, 41.021866, 28.872904>,  <39.652058, 40.820892, 28.913567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527336, 41.021866, 28.872904>,  <39.319466, 41.356823, 28.805132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527336, 41.021866, 28.872904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588002, -0.206681, 0.782008,
		-0.619833, -0.506014, -0.599797,
		0.519674, -0.837396, 0.169430,
		39.683239, 40.770645, 28.923733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844002, 40.887794, 29.017502>,  <39.319466, 41.356823, 28.805132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844002, 40.887794, 29.017502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185589, 40.705200, 29.117397>,  <39.390541, 40.595646, 29.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185589, 40.705200, 29.117397>,  <38.844002, 40.887794, 29.017502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185589, 40.705200, 29.117397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490825, -0.547354, 0.677860,
		-0.172736, -0.701447, -0.691473,
		0.853964, -0.456483, 0.249740,
		39.441776, 40.568256, 29.192320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650581, 40.193798, 29.047659>,  <38.844002, 40.887794, 29.017502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650581, 40.193798, 29.047659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989090, 40.229729, 29.257710>,  <39.192196, 40.251286, 29.383739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989090, 40.229729, 29.257710>,  <38.650581, 40.193798, 29.047659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989090, 40.229729, 29.257710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351373, -0.646796, 0.676899,
		0.400453, -0.757354, -0.515802,
		0.846271, 0.089828, 0.525125,
		39.242970, 40.256676, 29.415247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894943, 39.460846, 29.207735>,  <38.650581, 40.193798, 29.047659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894943, 39.460846, 29.207735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006901, 39.738503, 29.473011>,  <39.074074, 39.905098, 29.632177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006901, 39.738503, 29.473011>,  <38.894943, 39.460846, 29.207735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006901, 39.738503, 29.473011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484114, -0.494487, 0.721884,
		0.829032, -0.523110, 0.197641,
		0.279894, 0.694145, 0.663190,
		39.090870, 39.946747, 29.671968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752445, 39.061432, 29.854818>,  <38.894943, 39.460846, 29.207735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752445, 39.061432, 29.854818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851887, 39.414459, 30.014448>,  <38.911552, 39.626278, 30.110226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851887, 39.414459, 30.014448>,  <38.752445, 39.061432, 29.854818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851887, 39.414459, 30.014448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387582, -0.286946, 0.876038,
		0.887679, -0.372463, 0.270733,
		0.248606, 0.882572, 0.399076,
		38.926468, 39.679230, 30.134171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106361, 38.895306, 30.509813>,  <38.752445, 39.061432, 29.854818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106361, 38.895306, 30.509813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981060, 39.275173, 30.508562>,  <38.905880, 39.503094, 30.507812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981060, 39.275173, 30.508562>,  <39.106361, 38.895306, 30.509813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981060, 39.275173, 30.508562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334054, -0.107107, 0.936449,
		0.888977, 0.294390, 0.350791,
		-0.313253, 0.949664, -0.003126,
		38.887085, 39.560074, 30.507624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400246, 39.234695, 31.032251>,  <39.106361, 38.895306, 30.509813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400246, 39.234695, 31.032251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063557, 39.436306, 30.954840>,  <38.861542, 39.557274, 30.908392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063557, 39.436306, 30.954840>,  <39.400246, 39.234695, 31.032251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063557, 39.436306, 30.954840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286086, -0.112381, 0.951591,
		0.457880, 0.856344, 0.238789,
		-0.841725, 0.504029, -0.193531,
		38.811039, 39.587513, 30.896780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383423, 39.894558, 31.395901>,  <39.400246, 39.234695, 31.032251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383423, 39.894558, 31.395901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002453, 39.792194, 31.329699>,  <38.773869, 39.730778, 31.289978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002453, 39.792194, 31.329699>,  <39.383423, 39.894558, 31.395901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002453, 39.792194, 31.329699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176381, 0.019984, 0.984119,
		-0.248535, 0.966495, -0.064171,
		-0.952429, -0.255906, -0.165505,
		38.716724, 39.715424, 31.280046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073887, 40.127491, 31.966795>,  <39.383423, 39.894558, 31.395901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073887, 40.127491, 31.966795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779644, 39.890480, 31.835468>,  <38.603100, 39.748272, 31.756672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779644, 39.890480, 31.835468>,  <39.073887, 40.127491, 31.966795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779644, 39.890480, 31.835468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244628, -0.219597, 0.944423,
		-0.631695, 0.775039, 0.016588,
		-0.735607, -0.592530, -0.328314,
		38.558960, 39.712723, 31.736975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603313, 40.195290, 32.470997>,  <39.073887, 40.127491, 31.966795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603313, 40.195290, 32.470997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484188, 39.852734, 32.302280>,  <38.412712, 39.647202, 32.201050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484188, 39.852734, 32.302280>,  <38.603313, 40.195290, 32.470997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484188, 39.852734, 32.302280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353284, -0.311601, 0.882097,
		-0.886847, 0.411713, -0.209749,
		-0.297813, -0.856386, -0.421794,
		38.394844, 39.595818, 32.175743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956474, 40.065273, 32.706863>,  <38.603313, 40.195290, 32.470997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956474, 40.065273, 32.706863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108093, 39.720028, 32.573387>,  <38.199066, 39.512878, 32.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108093, 39.720028, 32.573387>,  <37.956474, 40.065273, 32.706863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108093, 39.720028, 32.573387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332376, -0.463524, 0.821384,
		-0.863624, -0.200435, -0.462579,
		0.379050, -0.863117, -0.333690,
		38.221809, 39.461094, 32.473282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419125, 39.450378, 32.655464>,  <37.956474, 40.065273, 32.706863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419125, 39.450378, 32.655464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788212, 39.301186, 32.694386>,  <38.009666, 39.211670, 32.717739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788212, 39.301186, 32.694386>,  <37.419125, 39.450378, 32.655464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788212, 39.301186, 32.694386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285848, -0.492743, 0.821885,
		-0.258605, -0.786185, -0.561281,
		0.922721, -0.372985, 0.097304,
		38.065029, 39.189289, 32.723576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303875, 38.702480, 32.710526>,  <37.419125, 39.450378, 32.655464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303875, 38.702480, 32.710526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677891, 38.757446, 32.841255>,  <37.902302, 38.790424, 32.919693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677891, 38.757446, 32.841255>,  <37.303875, 38.702480, 32.710526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677891, 38.757446, 32.841255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183457, -0.601289, 0.777686,
		0.303383, -0.787126, -0.537021,
		0.935041, 0.137416, 0.326825,
		37.958405, 38.798672, 32.939304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606384, 37.960133, 32.779240>,  <37.303875, 38.702480, 32.710526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606384, 37.960133, 32.779240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808010, 38.186810, 33.039940>,  <37.928986, 38.322815, 33.196362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808010, 38.186810, 33.039940>,  <37.606384, 37.960133, 32.779240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808010, 38.186810, 33.039940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078759, -0.721327, 0.688103,
		0.860068, -0.398179, -0.318962,
		0.504064, 0.566694, 0.651750,
		37.959229, 38.356819, 33.235466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031219, 37.435368, 33.196060>,  <37.606384, 37.960133, 32.779240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031219, 37.435368, 33.196060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045177, 37.782204, 33.394829>,  <38.053555, 37.990307, 33.514091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045177, 37.782204, 33.394829>,  <38.031219, 37.435368, 33.196060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045177, 37.782204, 33.394829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098621, -0.491809, 0.865100,
		0.994513, -0.079198, 0.068350,
		0.034899, 0.867094, 0.496922,
		38.055649, 38.042332, 33.543903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531551, 37.351936, 33.707802>,  <38.031219, 37.435368, 33.196060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531551, 37.351936, 33.707802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292255, 37.654953, 33.812294>,  <38.148678, 37.836765, 33.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292255, 37.654953, 33.812294>,  <38.531551, 37.351936, 33.707802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292255, 37.654953, 33.812294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290492, -0.508844, 0.810365,
		0.746811, 0.408906, 0.524470,
		-0.598237, 0.757544, 0.261227,
		38.112785, 37.882217, 33.890663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792122, 37.580292, 34.403252>,  <38.531551, 37.351936, 33.707802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792122, 37.580292, 34.403252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427738, 37.742870, 34.375092>,  <38.209106, 37.840416, 34.358196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427738, 37.742870, 34.375092>,  <38.792122, 37.580292, 34.403252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427738, 37.742870, 34.375092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229495, -0.357563, 0.905252,
		0.342762, 0.840804, 0.419002,
		-0.910959, 0.406444, -0.070401,
		38.154449, 37.864803, 34.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662060, 37.908016, 35.005627>,  <38.792122, 37.580292, 34.403252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662060, 37.908016, 35.005627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296871, 37.839775, 34.857368>,  <38.077759, 37.798832, 34.768414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296871, 37.839775, 34.857368>,  <38.662060, 37.908016, 35.005627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296871, 37.839775, 34.857368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268876, -0.431715, 0.861004,
		-0.306900, 0.885730, 0.348274,
		-0.912972, -0.170599, -0.370645,
		38.022980, 37.788597, 34.746174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328876, 38.048088, 35.613140>,  <38.662060, 37.908016, 35.005627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328876, 38.048088, 35.613140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064491, 37.850571, 35.387115>,  <37.905861, 37.732059, 35.251499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064491, 37.850571, 35.387115>,  <38.328876, 38.048088, 35.613140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064491, 37.850571, 35.387115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347812, -0.465645, 0.813758,
		-0.664947, 0.734399, 0.136027,
		-0.660963, -0.493794, -0.565062,
		37.866203, 37.702431, 35.217598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570816, 38.151569, 35.821617>,  <38.328876, 38.048088, 35.613140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570816, 38.151569, 35.821617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572414, 37.809357, 35.614521>,  <37.573376, 37.604031, 35.490265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572414, 37.809357, 35.614521>,  <37.570816, 38.151569, 35.821617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572414, 37.809357, 35.614521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514481, -0.445727, 0.732555,
		-0.857493, 0.263439, -0.441935,
		0.003999, -0.855528, -0.517742,
		37.573612, 37.552700, 35.459198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963470, 37.856911, 35.916950>,  <37.570816, 38.151569, 35.821617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963470, 37.856911, 35.916950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192581, 37.552959, 35.793983>,  <37.330048, 37.370586, 35.720203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192581, 37.552959, 35.793983>,  <36.963470, 37.856911, 35.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192581, 37.552959, 35.793983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425873, -0.596307, 0.680478,
		-0.700400, -0.258840, -0.665163,
		0.572776, -0.759882, -0.307420,
		37.364414, 37.324993, 35.701756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514107, 37.271881, 36.092403>,  <36.963470, 37.856911, 35.916950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514107, 37.271881, 36.092403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861275, 37.089153, 36.014389>,  <37.069576, 36.979519, 35.967583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861275, 37.089153, 36.014389>,  <36.514107, 37.271881, 36.092403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861275, 37.089153, 36.014389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274274, -0.768124, 0.578584,
		-0.414115, -0.448672, -0.791961,
		0.867919, -0.456815, -0.195033,
		37.121651, 36.952110, 35.955879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338089, 36.548527, 35.986607>,  <36.514107, 37.271881, 36.092403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338089, 36.548527, 35.986607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706860, 36.584644, 36.137287>,  <36.928120, 36.606316, 36.227695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706860, 36.584644, 36.137287>,  <36.338089, 36.548527, 35.986607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706860, 36.584644, 36.137287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246921, -0.612309, 0.751071,
		0.298471, -0.785446, -0.542208,
		0.921925, 0.090291, 0.376700,
		36.983437, 36.611732, 36.250298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478336, 35.933372, 36.040287>,  <36.338089, 36.548527, 35.986607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478336, 35.933372, 36.040287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716980, 36.146351, 36.280472>,  <36.860168, 36.274139, 36.424583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716980, 36.146351, 36.280472>,  <36.478336, 35.933372, 36.040287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716980, 36.146351, 36.280472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211387, -0.617523, 0.757615,
		0.774189, -0.578932, -0.255870,
		0.596614, 0.532449, 0.600458,
		36.895966, 36.306087, 36.460609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875401, 35.479202, 36.437183>,  <36.478336, 35.933372, 36.040287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875401, 35.479202, 36.437183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828770, 35.826725, 36.629677>,  <36.800789, 36.035240, 36.745171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828770, 35.826725, 36.629677>,  <36.875401, 35.479202, 36.437183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828770, 35.826725, 36.629677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372886, -0.487377, 0.789570,
		0.920524, -0.087396, 0.380785,
		-0.116580, 0.868807, 0.481231,
		36.793797, 36.087368, 36.774048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876488, 35.228233, 37.053932>,  <36.875401, 35.479202, 36.437183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876488, 35.228233, 37.053932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804443, 35.617931, 37.108200>,  <36.761219, 35.851749, 37.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804443, 35.617931, 37.108200>,  <36.876488, 35.228233, 37.053932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804443, 35.617931, 37.108200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400328, -0.198590, 0.894595,
		0.898498, 0.106810, 0.425785,
		-0.180109, 0.974245, 0.135674,
		36.750412, 35.910206, 37.148903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862492, 35.384418, 37.885681>,  <36.876488, 35.228233, 37.053932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862492, 35.384418, 37.885681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714958, 35.719418, 37.724407>,  <36.626438, 35.920418, 37.627644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714958, 35.719418, 37.724407>,  <36.862492, 35.384418, 37.885681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714958, 35.719418, 37.724407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566113, 0.141630, 0.812069,
		0.737211, 0.527764, 0.421882,
		-0.368830, 0.837500, -0.403186,
		36.604309, 35.970669, 37.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016853, 36.066078, 38.252949>,  <36.862492, 35.384418, 37.885681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016853, 36.066078, 38.252949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666504, 36.057690, 38.060112>,  <36.456295, 36.052658, 37.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666504, 36.057690, 38.060112>,  <37.016853, 36.066078, 38.252949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666504, 36.057690, 38.060112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481973, 0.086744, 0.871881,
		0.023537, 0.996010, -0.086082,
		-0.875870, -0.020968, -0.482092,
		36.403744, 36.051399, 37.915485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534710, 36.640911, 38.455612>,  <37.016853, 36.066078, 38.252949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534710, 36.640911, 38.455612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288223, 36.363434, 38.306446>,  <36.140331, 36.196949, 38.216946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288223, 36.363434, 38.306446>,  <36.534710, 36.640911, 38.455612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288223, 36.363434, 38.306446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578422, 0.077269, 0.812070,
		-0.534512, 0.716114, -0.448862,
		-0.616218, -0.693693, -0.372915,
		36.103359, 36.155327, 38.194572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000580, 36.984364, 38.595112>,  <36.534710, 36.640911, 38.455612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000580, 36.984364, 38.595112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872982, 36.617256, 38.500504>,  <35.796425, 36.396992, 38.443741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872982, 36.617256, 38.500504>,  <36.000580, 36.984364, 38.595112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872982, 36.617256, 38.500504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710314, 0.066296, 0.700756,
		-0.627452, 0.391540, -0.673053,
		-0.318995, -0.917770, -0.236519,
		35.777283, 36.341927, 38.429546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290588, 37.024082, 38.670292>,  <36.000580, 36.984364, 38.595112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290588, 37.024082, 38.670292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351631, 36.628849, 38.662174>,  <35.388256, 36.391708, 38.657303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351631, 36.628849, 38.662174>,  <35.290588, 37.024082, 38.670292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351631, 36.628849, 38.662174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809115, -0.136704, 0.571529,
		-0.567491, -0.070794, -0.820331,
		0.152603, -0.988079, -0.020297,
		35.397411, 36.332424, 38.656086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592018, 36.673332, 38.518162>,  <35.290588, 37.024082, 38.670292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592018, 36.673332, 38.518162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819050, 36.420261, 38.728905>,  <34.955269, 36.268421, 38.855350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819050, 36.420261, 38.728905>,  <34.592018, 36.673332, 38.518162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819050, 36.420261, 38.728905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687037, -0.011326, 0.726534,
		-0.453692, -0.774335, -0.441100,
		0.567576, -0.632675, 0.526858,
		34.989323, 36.230457, 38.886963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151989, 36.312176, 38.890839>,  <34.592018, 36.673332, 38.518162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151989, 36.312176, 38.890839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464645, 36.197948, 39.112644>,  <34.652241, 36.129414, 39.245728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464645, 36.197948, 39.112644>,  <34.151989, 36.312176, 38.890839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464645, 36.197948, 39.112644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604111, -0.125400, 0.786972,
		-0.155202, -0.950117, -0.270535,
		0.781640, -0.285573, 0.554514,
		34.699139, 36.112278, 39.278999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829361, 35.929203, 39.269947>,  <34.151989, 36.312176, 38.890839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829361, 35.929203, 39.269947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185379, 36.008514, 39.434143>,  <34.398991, 36.056099, 39.532661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185379, 36.008514, 39.434143>,  <33.829361, 35.929203, 39.269947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185379, 36.008514, 39.434143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426841, 0.046308, 0.903140,
		0.160062, -0.979052, 0.125849,
		0.890049, 0.198276, 0.410487,
		34.452393, 36.067997, 39.557289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958248, 35.432957, 39.769493>,  <33.829361, 35.929203, 39.269947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958248, 35.432957, 39.769493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170650, 35.761932, 39.851105>,  <34.298092, 35.959316, 39.900070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170650, 35.761932, 39.851105>,  <33.958248, 35.432957, 39.769493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170650, 35.761932, 39.851105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481910, 0.095055, 0.871049,
		0.696990, -0.560856, 0.446816,
		0.531006, 0.822438, 0.204030,
		34.329952, 36.008663, 39.912315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209282, 35.297401, 40.472702>,  <33.958248, 35.432957, 39.769493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209282, 35.297401, 40.472702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183758, 35.689236, 40.396450>,  <34.168446, 35.924335, 40.350700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183758, 35.689236, 40.396450>,  <34.209282, 35.297401, 40.472702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183758, 35.689236, 40.396450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736343, 0.082717, 0.671534,
		0.673593, 0.183215, 0.716034,
		-0.063806, 0.979587, -0.190626,
		34.164616, 35.983112, 40.339264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221245, 35.622566, 41.092163>,  <34.209282, 35.297401, 40.472702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221245, 35.622566, 41.092163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051132, 35.883045, 40.840744>,  <33.949062, 36.039333, 40.689892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051132, 35.883045, 40.840744>,  <34.221245, 35.622566, 41.092163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051132, 35.883045, 40.840744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595552, 0.321592, 0.736136,
		0.681505, 0.687403, 0.251052,
		-0.425286, 0.651195, -0.628551,
		33.923546, 36.078403, 40.652180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330368, 36.236320, 41.504036>,  <34.221245, 35.622566, 41.092163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330368, 36.236320, 41.504036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000134, 36.229172, 41.278439>,  <33.801994, 36.224884, 41.143082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000134, 36.229172, 41.278439>,  <34.330368, 36.236320, 41.504036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000134, 36.229172, 41.278439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557498, 0.180271, 0.810369,
		0.087189, 0.983454, -0.158793,
		-0.825587, -0.017872, -0.563992,
		33.752457, 36.223812, 41.109241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827709, 36.818867, 41.704414>,  <34.330368, 36.236320, 41.504036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827709, 36.818867, 41.704414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595226, 36.543705, 41.530518>,  <33.455738, 36.378609, 41.426182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595226, 36.543705, 41.530518>,  <33.827709, 36.818867, 41.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595226, 36.543705, 41.530518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696242, 0.143809, 0.703254,
		-0.421249, 0.711416, -0.562527,
		-0.581203, -0.687900, -0.434738,
		33.420864, 36.337334, 41.400097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183117, 37.169193, 41.602158>,  <33.827709, 36.818867, 41.704414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183117, 37.169193, 41.602158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112946, 36.775730, 41.618347>,  <33.070843, 36.539654, 41.628059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112946, 36.775730, 41.618347>,  <33.183117, 37.169193, 41.602158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112946, 36.775730, 41.618347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577885, 0.136172, 0.804677,
		-0.797040, 0.117777, -0.592331,
		-0.175432, -0.983659, 0.040473,
		33.060314, 36.480633, 41.630489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469845, 37.005665, 41.402630>,  <33.183117, 37.169193, 41.602158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469845, 37.005665, 41.402630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633457, 36.762852, 41.675159>,  <32.731625, 36.617165, 41.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633457, 36.762852, 41.675159>,  <32.469845, 37.005665, 41.402630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633457, 36.762852, 41.675159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705122, 0.263675, 0.658239,
		-0.579222, -0.749657, -0.320183,
		0.409029, -0.607034, 0.681326,
		32.756165, 36.580742, 41.879559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959337, 36.814209, 41.923035>,  <32.469845, 37.005665, 41.402630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959337, 36.814209, 41.923035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267483, 36.713013, 42.157139>,  <32.452370, 36.652294, 42.297604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267483, 36.713013, 42.157139>,  <31.959337, 36.814209, 41.923035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267483, 36.713013, 42.157139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494067, 0.343356, 0.798752,
		-0.403034, -0.904489, 0.139512,
		0.770364, -0.252995, 0.585262,
		32.498592, 36.637115, 42.332718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148106, 37.107616, 42.592190>,  <31.959337, 36.814209, 41.923035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148106, 37.107616, 42.592190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878149, 37.375126, 42.716942>,  <31.716175, 37.535633, 42.791794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878149, 37.375126, 42.716942>,  <32.148106, 37.107616, 42.592190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878149, 37.375126, 42.716942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077272, -0.356270, 0.931182,
		0.733863, 0.652543, 0.188765,
		-0.674888, 0.668774, 0.311877,
		31.675682, 37.575760, 42.810505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711906, 36.691441, 42.971241>,  <32.148106, 37.107616, 42.592190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711906, 36.691441, 42.971241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701893, 36.322262, 43.124889>,  <32.695885, 36.100754, 43.217079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701893, 36.322262, 43.124889>,  <32.711906, 36.691441, 42.971241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701893, 36.322262, 43.124889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216738, -0.380114, -0.899188,
		0.975909, 0.060748, 0.209551,
		-0.025029, -0.922943, 0.384123,
		32.694386, 36.045380, 43.240128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285793, 36.343475, 42.959496>,  <32.711906, 36.691441, 42.971241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285793, 36.343475, 42.959496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996552, 36.068787, 42.929737>,  <32.823006, 35.903973, 42.911880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996552, 36.068787, 42.929737>,  <33.285793, 36.343475, 42.959496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996552, 36.068787, 42.929737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154731, -0.056071, -0.986364,
		0.673188, -0.724753, 0.146803,
		-0.723102, -0.686723, -0.074395,
		32.779621, 35.862770, 42.907417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482365, 35.694889, 42.598206>,  <33.285793, 36.343475, 42.959496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482365, 35.694889, 42.598206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106270, 35.790379, 42.501080>,  <32.880611, 35.847672, 42.442802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106270, 35.790379, 42.501080>,  <33.482365, 35.694889, 42.598206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106270, 35.790379, 42.501080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266061, 0.070018, -0.961410,
		-0.212511, -0.968560, -0.129349,
		-0.940240, 0.238725, -0.242816,
		32.824200, 35.861996, 42.428234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009933, 35.275818, 42.168621>,  <33.482365, 35.694889, 42.598206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009933, 35.275818, 42.168621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889248, 35.649117, 42.090622>,  <32.816837, 35.873096, 42.043823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889248, 35.649117, 42.090622>,  <33.009933, 35.275818, 42.168621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889248, 35.649117, 42.090622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402840, -0.060586, -0.913263,
		-0.864111, -0.354098, -0.357668,
		-0.301715, 0.933244, -0.194998,
		32.798733, 35.929089, 42.032124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790283, 35.225010, 41.481960>,  <33.009933, 35.275818, 42.168621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790283, 35.225010, 41.481960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855190, 35.618092, 41.517639>,  <32.894135, 35.853943, 41.539047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855190, 35.618092, 41.517639>,  <32.790283, 35.225010, 41.481960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855190, 35.618092, 41.517639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469368, 0.002642, -0.882998,
		-0.867965, 0.185143, -0.460823,
		0.162263, 0.982708, 0.089193,
		32.903870, 35.912903, 41.544395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567154, 35.601536, 40.825832>,  <32.790283, 35.225010, 41.481960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567154, 35.601536, 40.825832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824120, 35.848358, 41.007622>,  <32.978298, 35.996452, 41.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824120, 35.848358, 41.007622>,  <32.567154, 35.601536, 40.825832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824120, 35.848358, 41.007622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532604, 0.066923, -0.843714,
		-0.551031, 0.784071, -0.285653,
		0.642415, 0.617053, 0.454476,
		33.016846, 36.033474, 41.143963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656761, 36.105797, 40.352825>,  <32.567154, 35.601536, 40.825832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656761, 36.105797, 40.352825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985558, 36.170033, 40.571381>,  <33.182835, 36.208572, 40.702515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985558, 36.170033, 40.571381>,  <32.656761, 36.105797, 40.352825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985558, 36.170033, 40.571381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481378, 0.316759, -0.817276,
		-0.304317, 0.934813, 0.183070,
		0.821989, 0.160586, 0.546393,
		33.232155, 36.218208, 40.735298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029369, 36.680340, 40.098061>,  <32.656761, 36.105797, 40.352825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029369, 36.680340, 40.098061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325092, 36.526775, 40.319340>,  <33.502525, 36.434635, 40.452106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325092, 36.526775, 40.319340>,  <33.029369, 36.680340, 40.098061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325092, 36.526775, 40.319340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644990, 0.167779, -0.745545,
		0.193408, 0.907999, 0.371660,
		0.739311, -0.383911, 0.553201,
		33.546886, 36.411602, 40.485298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708496, 36.838486, 40.276901>,  <33.029369, 36.680340, 40.098061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708496, 36.838486, 40.276901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997066, 36.727375, 40.530636>,  <34.170208, 36.660709, 40.682877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997066, 36.727375, 40.530636>,  <33.708496, 36.838486, 40.276901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997066, 36.727375, 40.530636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685343, 0.155097, -0.711512,
		0.099258, 0.948043, 0.302264,
		0.721424, -0.277778, 0.634340,
		34.213493, 36.644043, 40.720940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386703, 37.392956, 40.373909>,  <33.708496, 36.838486, 40.276901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386703, 37.392956, 40.373909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460075, 37.001186, 40.407581>,  <34.504097, 36.766125, 40.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460075, 37.001186, 40.407581>,  <34.386703, 37.392956, 40.373909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460075, 37.001186, 40.407581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784611, 0.094278, -0.612778,
		0.592232, 0.178451, 0.785759,
		0.183430, -0.979422, 0.084180,
		34.515106, 36.707359, 40.432835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027580, 37.044552, 40.363876>,  <34.386703, 37.392956, 40.373909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027580, 37.044552, 40.363876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828327, 36.723244, 40.233261>,  <34.708775, 36.530460, 40.154892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828327, 36.723244, 40.233261>,  <35.027580, 37.044552, 40.363876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828327, 36.723244, 40.233261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772110, -0.239528, -0.588618,
		0.394604, -0.545331, 0.739528,
		-0.498130, -0.803269, -0.326537,
		34.678886, 36.482262, 40.135300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550640, 36.410667, 40.213413>,  <35.027580, 37.044552, 40.363876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550640, 36.410667, 40.213413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228966, 36.315639, 39.995476>,  <35.035961, 36.258621, 39.864716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228966, 36.315639, 39.995476>,  <35.550640, 36.410667, 40.213413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228966, 36.315639, 39.995476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594382, -0.319933, -0.737803,
		0.000969, -0.917171, 0.398492,
		-0.804182, -0.237571, -0.544840,
		34.987713, 36.244370, 39.832024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779694, 35.906666, 39.880589>,  <35.550640, 36.410667, 40.213413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779694, 35.906666, 39.880589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438808, 35.956112, 39.677235>,  <35.234276, 35.985779, 39.555222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438808, 35.956112, 39.677235>,  <35.779694, 35.906666, 39.880589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438808, 35.956112, 39.677235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451160, -0.318402, -0.833712,
		-0.264929, -0.939862, 0.215576,
		-0.852213, 0.123615, -0.508382,
		35.183144, 35.993198, 39.524719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800949, 35.409279, 39.453934>,  <35.779694, 35.906666, 39.880589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800949, 35.409279, 39.453934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538002, 35.666348, 39.296532>,  <35.380234, 35.820591, 39.202091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538002, 35.666348, 39.296532>,  <35.800949, 35.409279, 39.453934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538002, 35.666348, 39.296532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405345, -0.138647, -0.903588,
		-0.635270, -0.753490, -0.169363,
		-0.657364, 0.642674, -0.393502,
		35.340794, 35.859150, 39.178482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470238, 35.089348, 38.919476>,  <35.800949, 35.409279, 39.453934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470238, 35.089348, 38.919476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457008, 35.483150, 38.850597>,  <35.449070, 35.719433, 38.809273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457008, 35.483150, 38.850597>,  <35.470238, 35.089348, 38.919476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457008, 35.483150, 38.850597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409458, -0.143816, -0.900922,
		-0.911729, -0.100303, -0.398358,
		-0.033075, 0.984508, -0.172191,
		35.447086, 35.778503, 38.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354973, 35.036430, 38.209610>,  <35.470238, 35.089348, 38.919476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354973, 35.036430, 38.209610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439167, 35.426395, 38.238556>,  <35.489681, 35.660374, 38.255924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439167, 35.426395, 38.238556>,  <35.354973, 35.036430, 38.209610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439167, 35.426395, 38.238556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491599, -0.041566, -0.869829,
		-0.845002, 0.218659, -0.488016,
		0.210481, 0.974916, 0.072369,
		35.502312, 35.718868, 38.260265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188179, 35.445736, 37.553268>,  <35.354973, 35.036430, 38.209610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188179, 35.445736, 37.553268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464970, 35.663807, 37.742561>,  <35.631042, 35.794651, 37.856136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464970, 35.663807, 37.742561>,  <35.188179, 35.445736, 37.553268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464970, 35.663807, 37.742561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444117, 0.195314, -0.874421,
		-0.569146, 0.815248, -0.106971,
		0.691977, 0.545181, 0.473228,
		35.672562, 35.827362, 37.884529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346245, 36.026344, 37.154266>,  <35.188179, 35.445736, 37.553268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346245, 36.026344, 37.154266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665405, 36.048695, 37.394341>,  <35.856903, 36.062107, 37.538387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665405, 36.048695, 37.394341>,  <35.346245, 36.026344, 37.154266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665405, 36.048695, 37.394341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548167, 0.346882, -0.761043,
		-0.250721, 0.936243, 0.246147,
		0.797905, 0.055880, 0.600188,
		35.904778, 36.065460, 37.574398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622742, 36.725491, 37.216949>,  <35.346245, 36.026344, 37.154266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622742, 36.725491, 37.216949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907513, 36.452438, 37.282879>,  <36.078377, 36.288605, 37.322437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907513, 36.452438, 37.282879>,  <35.622742, 36.725491, 37.216949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907513, 36.452438, 37.282879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569958, 0.424566, -0.703485,
		0.410245, 0.594774, 0.691334,
		0.711932, -0.682633, 0.164820,
		36.121094, 36.247650, 37.332325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188419, 37.101185, 37.132389>,  <35.622742, 36.725491, 37.216949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188419, 37.101185, 37.132389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336628, 36.730228, 37.111801>,  <36.425552, 36.507652, 37.099449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336628, 36.730228, 37.111801>,  <36.188419, 37.101185, 37.132389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336628, 36.730228, 37.111801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746459, 0.330297, -0.577670,
		0.552729, 0.175620, 0.814646,
		0.370526, -0.927395, -0.051471,
		36.447784, 36.452011, 37.096359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895634, 37.127750, 37.431084>,  <36.188419, 37.101185, 37.132389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895634, 37.127750, 37.431084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853794, 36.806812, 37.196033>,  <36.828690, 36.614250, 37.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853794, 36.806812, 37.196033>,  <36.895634, 37.127750, 37.431084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853794, 36.806812, 37.196033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729882, 0.339412, -0.593357,
		0.675523, -0.490962, 0.550113,
		-0.104601, -0.802344, -0.587625,
		36.822414, 36.566109, 37.019745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603043, 36.917347, 37.371750>,  <36.895634, 37.127750, 37.431084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603043, 36.917347, 37.371750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405888, 36.741688, 37.071293>,  <37.287594, 36.636292, 36.891018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405888, 36.741688, 37.071293>,  <37.603043, 36.917347, 37.371750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405888, 36.741688, 37.071293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551743, 0.509776, -0.660082,
		0.672790, -0.739779, -0.008961,
		-0.492883, -0.439152, -0.751140,
		37.258022, 36.609943, 36.845951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145535, 36.806194, 36.833279>,  <37.603043, 36.917347, 37.371750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145535, 36.806194, 36.833279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797894, 36.752831, 36.642761>,  <37.589310, 36.720814, 36.528450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797894, 36.752831, 36.642761>,  <38.145535, 36.806194, 36.833279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797894, 36.752831, 36.642761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377004, 0.444686, -0.812479,
		0.320190, -0.885696, -0.336186,
		-0.869107, -0.133405, -0.476295,
		37.537163, 36.712811, 36.499874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307598, 36.539326, 36.154408>,  <38.145535, 36.806194, 36.833279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307598, 36.539326, 36.154408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929401, 36.644787, 36.077957>,  <37.702484, 36.708061, 36.032085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929401, 36.644787, 36.077957>,  <38.307598, 36.539326, 36.154408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929401, 36.644787, 36.077957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273392, 0.323816, -0.905759,
		-0.176911, -0.908643, -0.378246,
		-0.945494, 0.263649, -0.191130,
		37.645752, 36.723881, 36.020618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960392, 36.156952, 36.191101>,  <38.307598, 36.539326, 36.154408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960392, 36.156952, 36.191101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931732, 36.522861, 36.350128>,  <38.914536, 36.742405, 36.445545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931732, 36.522861, 36.350128>,  <38.960392, 36.156952, 36.191101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931732, 36.522861, 36.350128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901391, 0.230038, -0.366848,
		-0.427038, 0.332076, -0.841049,
		-0.071652, 0.914772, 0.397565,
		38.910236, 36.797295, 36.469398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079754, 36.713852, 35.666229>,  <38.960392, 36.156952, 36.191101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079754, 36.713852, 35.666229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170097, 36.864525, 36.025585>,  <39.224304, 36.954929, 36.241199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170097, 36.864525, 36.025585>,  <39.079754, 36.713852, 35.666229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170097, 36.864525, 36.025585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762311, 0.505840, -0.403742,
		-0.606524, 0.776037, -0.172905,
		0.225856, 0.376687, 0.898385,
		39.237854, 36.977531, 36.295101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190361, 37.398174, 35.561829>,  <39.079754, 36.713852, 35.666229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190361, 37.398174, 35.561829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401112, 37.313244, 35.891026>,  <39.527561, 37.262283, 36.088543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401112, 37.313244, 35.891026>,  <39.190361, 37.398174, 35.561829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401112, 37.313244, 35.891026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807777, 0.426292, -0.407151,
		-0.264386, 0.879313, 0.396116,
		0.526874, -0.212328, 0.822995,
		39.559174, 37.249546, 36.137924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594810, 38.017040, 35.649696>,  <39.190361, 37.398174, 35.561829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594810, 38.017040, 35.649696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751488, 37.661530, 35.744896>,  <39.845493, 37.448223, 35.802017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751488, 37.661530, 35.744896>,  <39.594810, 38.017040, 35.649696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751488, 37.661530, 35.744896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813421, 0.213603, -0.541036,
		0.430024, 0.405517, 0.806620,
		0.391696, -0.888780, 0.238001,
		39.868996, 37.394894, 35.816296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268826, 38.075657, 36.023796>,  <39.594810, 38.017040, 35.649696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268826, 38.075657, 36.023796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265205, 37.742435, 35.802551>,  <40.263031, 37.542503, 35.669804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265205, 37.742435, 35.802551>,  <40.268826, 38.075657, 36.023796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265205, 37.742435, 35.802551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868294, 0.267800, -0.417549,
		0.495966, -0.484047, 0.720913,
		-0.009053, -0.833056, -0.553115,
		40.262489, 37.492519, 35.636616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877781, 37.645050, 36.072662>,  <40.268826, 38.075657, 36.023796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877781, 37.645050, 36.072662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712212, 37.617474, 35.709583>,  <40.612869, 37.600925, 35.491737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712212, 37.617474, 35.709583>,  <40.877781, 37.645050, 36.072662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712212, 37.617474, 35.709583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836046, 0.365689, -0.409022,
		0.360134, -0.928180, -0.093728,
		-0.413921, -0.068942, -0.907698,
		40.588036, 37.596790, 35.437275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404503, 37.866993, 35.742958>,  <40.877781, 37.645050, 36.072662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404503, 37.866993, 35.742958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134464, 37.776485, 35.462090>,  <40.972443, 37.722179, 35.293568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134464, 37.776485, 35.462090>,  <41.404503, 37.866993, 35.742958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134464, 37.776485, 35.462090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627606, 0.324132, -0.707849,
		0.387764, -0.918553, -0.076809,
		-0.675093, -0.226272, -0.702175,
		40.931934, 37.708603, 35.251438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010067, 37.296543, 36.022190>,  <41.404503, 37.866993, 35.742958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010067, 37.296543, 36.022190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952633, 37.538250, 36.335686>,  <41.918171, 37.683273, 36.523781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952633, 37.538250, 36.335686>,  <42.010067, 37.296543, 36.022190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952633, 37.538250, 36.335686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055237, -0.785816, 0.615989,
		0.988095, 0.131741, 0.079457,
		-0.143589, 0.604266, 0.783737,
		41.909557, 37.719528, 36.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460106, 37.084015, 36.515564>,  <42.010067, 37.296543, 36.022190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460106, 37.084015, 36.515564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145794, 37.258049, 36.691402>,  <41.957207, 37.362469, 36.796906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145794, 37.258049, 36.691402>,  <42.460106, 37.084015, 36.515564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145794, 37.258049, 36.691402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041338, -0.672209, 0.739207,
		0.617119, 0.599028, 0.510225,
		-0.785783, 0.435087, 0.439595,
		41.910057, 37.388577, 36.823280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702793, 37.647125, 36.078648>,  <42.460106, 37.084015, 36.515564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702793, 37.647125, 36.078648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923813, 37.979965, 36.059433>,  <43.056423, 38.179668, 36.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923813, 37.979965, 36.059433>,  <42.702793, 37.647125, 36.078648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923813, 37.979965, 36.059433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797397, -0.544523, -0.260102,
		-0.242588, 0.105414, -0.964385,
		0.552549, 0.832095, -0.048038,
		43.089577, 38.229595, 36.045021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088657, 37.675945, 35.423019>,  <42.702793, 37.647125, 36.078648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088657, 37.675945, 35.423019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274284, 37.894405, 35.701977>,  <43.385658, 38.025482, 35.869354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274284, 37.894405, 35.701977>,  <43.088657, 37.675945, 35.423019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274284, 37.894405, 35.701977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884458, -0.329022, -0.330874,
		0.048753, 0.770367, -0.635734,
		0.464065, 0.546150, 0.697398,
		43.413506, 38.058250, 35.911198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509037, 38.158714, 35.146488>,  <43.088657, 37.675945, 35.423019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509037, 38.158714, 35.146488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652615, 38.042530, 35.501293>,  <43.738762, 37.972820, 35.714176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652615, 38.042530, 35.501293>,  <43.509037, 38.158714, 35.146488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652615, 38.042530, 35.501293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713592, -0.527166, -0.461393,
		0.601620, 0.798579, 0.018049,
		0.358944, -0.290462, 0.887012,
		43.760296, 37.955391, 35.767395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178547, 38.060730, 34.977505>,  <43.509037, 38.158714, 35.146488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178547, 38.060730, 34.977505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089088, 37.846428, 35.303192>,  <44.035416, 37.717846, 35.498604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089088, 37.846428, 35.303192>,  <44.178547, 38.060730, 34.977505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089088, 37.846428, 35.303192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585601, -0.741649, -0.327151,
		0.779137, 0.403643, 0.479602,
		-0.223644, -0.535751, 0.814220,
		44.021996, 37.685703, 35.547459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803082, 37.789768, 35.339794>,  <44.178547, 38.060730, 34.977505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803082, 37.789768, 35.339794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489933, 37.553143, 35.416912>,  <44.302044, 37.411167, 35.463184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489933, 37.553143, 35.416912>,  <44.803082, 37.789768, 35.339794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489933, 37.553143, 35.416912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542245, -0.800648, -0.254822,
		0.305104, -0.094950, 0.947574,
		-0.782868, -0.591564, 0.192794,
		44.255074, 37.375675, 35.474751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103554, 37.175045, 35.748356>,  <44.803082, 37.789768, 35.339794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103554, 37.175045, 35.748356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754566, 37.103313, 35.566525>,  <44.545174, 37.060272, 35.457428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754566, 37.103313, 35.566525>,  <45.103554, 37.175045, 35.748356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754566, 37.103313, 35.566525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395674, -0.805153, -0.441782,
		-0.286776, -0.565304, 0.773427,
		-0.872469, -0.179333, -0.454575,
		44.492825, 37.049515, 35.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893951, 36.429203, 35.899635>,  <45.103554, 37.175045, 35.748356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893951, 36.429203, 35.899635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786480, 36.595509, 35.552082>,  <44.721996, 36.695290, 35.343552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786480, 36.595509, 35.552082>,  <44.893951, 36.429203, 35.899635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786480, 36.595509, 35.552082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319450, -0.812538, -0.487580,
		-0.908716, -0.408566, 0.085497,
		-0.268678, 0.415759, -0.868882,
		44.705875, 36.720238, 35.291416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631535, 36.355518, 35.659565>,  <44.893951, 36.429203, 35.899635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631535, 36.355518, 35.659565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015030, 36.446812, 35.727356>,  <46.245129, 36.501587, 35.768032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015030, 36.446812, 35.727356>,  <45.631535, 36.355518, 35.659565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015030, 36.446812, 35.727356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252642, -0.957395, -0.139883,
		0.130333, 0.176930, -0.975556,
		0.958742, 0.228235, 0.169480,
		46.302654, 36.515282, 35.778198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171223, 36.109959, 35.124329>,  <45.631535, 36.355518, 35.659565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171223, 36.109959, 35.124329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277534, 36.100410, 35.509823>,  <46.341320, 36.094681, 35.741119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277534, 36.100410, 35.509823>,  <46.171223, 36.109959, 35.124329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277534, 36.100410, 35.509823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442146, -0.885331, -0.143863,
		0.856661, 0.464348, -0.224748,
		0.265779, -0.023871, 0.963739,
		46.357269, 36.093250, 35.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.913490, 36.282761, 35.264565>,  <46.171223, 36.109959, 35.124329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.913490, 36.282761, 35.264565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760578, 36.046753, 35.549026>,  <46.668831, 35.905151, 35.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760578, 36.046753, 35.549026>,  <46.913490, 36.282761, 35.264565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760578, 36.046753, 35.549026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632569, -0.728106, -0.264043,
		0.673588, 0.348920, 0.651563,
		-0.382277, -0.590014, 0.711159,
		46.645897, 35.869747, 35.762375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998474, 35.594753, 35.334949>,  <46.913490, 36.282761, 35.264565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998474, 35.594753, 35.334949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289906, 35.849808, 35.234879>,  <47.464764, 36.002842, 35.174835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.289906, 35.849808, 35.234879>,  <46.998474, 35.594753, 35.334949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289906, 35.849808, 35.234879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413582, 0.700673, 0.581384,
		0.546009, -0.320112, 0.774211,
		0.728577, 0.637640, -0.250181,
		47.508480, 36.041100, 35.159824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.665169, 35.177841, 35.273170>,  <46.998474, 35.594753, 35.334949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.665169, 35.177841, 35.273170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583126, 35.264996, 34.891499>,  <47.533901, 35.317287, 34.662495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583126, 35.264996, 34.891499>,  <47.665169, 35.177841, 35.273170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583126, 35.264996, 34.891499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676155, 0.736406, 0.022816,
		0.707635, -0.640494, -0.298363,
		-0.205103, 0.217885, -0.954180,
		47.521595, 35.330360, 34.605244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.885361, 37.143188, 25.763264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568932, 37.047379, 25.538111>,  <38.379074, 36.989891, 25.403019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568932, 37.047379, 25.538111>,  <38.885361, 37.143188, 25.763264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568932, 37.047379, 25.538111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522963, -0.212564, 0.825425,
		-0.317359, 0.947335, 0.042889,
		-0.791071, -0.239526, -0.562881,
		38.331612, 36.975521, 25.369247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292095, 37.498825, 26.055349>,  <38.885361, 37.143188, 25.763264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292095, 37.498825, 26.055349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177738, 37.170017, 25.858355>,  <38.109123, 36.972733, 25.740158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177738, 37.170017, 25.858355>,  <38.292095, 37.498825, 26.055349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177738, 37.170017, 25.858355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610917, -0.239601, 0.754567,
		-0.738272, 0.516594, -0.433688,
		-0.285893, -0.822023, -0.492487,
		38.091969, 36.923409, 25.710609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534546, 37.559254, 26.053356>,  <38.292095, 37.498825, 26.055349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534546, 37.559254, 26.053356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638561, 37.183392, 25.964422>,  <37.700970, 36.957874, 25.911062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638561, 37.183392, 25.964422>,  <37.534546, 37.559254, 26.053356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638561, 37.183392, 25.964422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590879, -0.336959, 0.733022,
		-0.763704, -0.059241, -0.642843,
		0.260037, -0.939654, -0.222333,
		37.716572, 36.901497, 25.897722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978531, 37.255550, 26.182610>,  <37.534546, 37.559254, 26.053356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978531, 37.255550, 26.182610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258038, 36.969677, 26.194994>,  <37.425743, 36.798153, 26.202425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258038, 36.969677, 26.194994>,  <36.978531, 37.255550, 26.182610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258038, 36.969677, 26.194994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424145, -0.379069, 0.822440,
		-0.576045, -0.587825, -0.568008,
		0.698765, -0.714681, 0.030962,
		37.467667, 36.755272, 26.204283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560524, 36.602795, 26.174612>,  <36.978531, 37.255550, 26.182610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560524, 36.602795, 26.174612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925152, 36.556957, 26.332552>,  <37.143929, 36.529453, 26.427315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925152, 36.556957, 26.332552>,  <36.560524, 36.602795, 26.174612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925152, 36.556957, 26.332552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401613, -0.453728, 0.795511,
		0.087995, -0.883741, -0.459628,
		0.911572, -0.114592, 0.394848,
		37.198624, 36.522579, 26.451006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543079, 35.978046, 26.413813>,  <36.560524, 36.602795, 26.174612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543079, 35.978046, 26.413813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843204, 36.134361, 26.627094>,  <37.023281, 36.228149, 26.755064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843204, 36.134361, 26.627094>,  <36.543079, 35.978046, 26.413813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843204, 36.134361, 26.627094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308413, -0.506487, 0.805203,
		0.584728, -0.768604, -0.259501,
		0.750317, 0.390791, 0.533205,
		37.068298, 36.251598, 26.787056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547913, 35.548401, 26.990351>,  <36.543079, 35.978046, 26.413813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547913, 35.548401, 26.990351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794182, 35.828041, 27.135792>,  <36.941944, 35.995827, 27.223057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794182, 35.828041, 27.135792>,  <36.547913, 35.548401, 26.990351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794182, 35.828041, 27.135792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130111, -0.364901, 0.921910,
		0.777187, -0.614902, -0.133699,
		0.615672, 0.699100, 0.363602,
		36.978882, 36.037769, 27.244873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020123, 35.154419, 27.434202>,  <36.547913, 35.548401, 26.990351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020123, 35.154419, 27.434202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980667, 35.542938, 27.520779>,  <36.956993, 35.776051, 27.572725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980667, 35.542938, 27.520779>,  <37.020123, 35.154419, 27.434202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980667, 35.542938, 27.520779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092821, -0.225535, 0.969803,
		0.990785, 0.075570, 0.112404,
		-0.098639, 0.971300, 0.216442,
		36.951077, 35.834328, 27.585711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074188, 35.015530, 28.071846>,  <37.020123, 35.154419, 27.434202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074188, 35.015530, 28.071846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966602, 35.400383, 28.054176>,  <36.902050, 35.631294, 28.043575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966602, 35.400383, 28.054176>,  <37.074188, 35.015530, 28.071846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966602, 35.400383, 28.054176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229414, -0.019455, 0.973134,
		0.935427, 0.271878, 0.225960,
		-0.268970, 0.962135, -0.044173,
		36.885910, 35.689022, 28.040924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438431, 35.298004, 28.595350>,  <37.074188, 35.015530, 28.071846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438431, 35.298004, 28.595350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128899, 35.541512, 28.525396>,  <36.943180, 35.687618, 28.483423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128899, 35.541512, 28.525396>,  <37.438431, 35.298004, 28.595350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128899, 35.541512, 28.525396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216838, 0.004809, 0.976196,
		0.595121, 0.793331, 0.128284,
		-0.773829, 0.608772, -0.174886,
		36.896751, 35.724144, 28.472931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560535, 35.919209, 28.965807>,  <37.438431, 35.298004, 28.595350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560535, 35.919209, 28.965807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167042, 35.891666, 28.899445>,  <36.930946, 35.875141, 28.859627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167042, 35.891666, 28.899445>,  <37.560535, 35.919209, 28.965807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167042, 35.891666, 28.899445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172359, 0.101780, 0.979762,
		-0.050571, 0.992422, -0.111991,
		-0.983735, -0.068851, -0.165906,
		36.871922, 35.871010, 28.849672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271873, 36.353050, 29.411085>,  <37.560535, 35.919209, 28.965807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271873, 36.353050, 29.411085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970455, 36.105560, 29.322233>,  <36.789604, 35.957066, 29.268921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.970455, 36.105560, 29.322233>,  <37.271873, 36.353050, 29.411085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970455, 36.105560, 29.322233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291884, 0.012133, 0.956377,
		-0.589041, 0.785512, -0.189739,
		-0.753548, -0.618727, -0.222132,
		36.744392, 35.919941, 29.255594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781700, 36.563160, 29.899010>,  <37.271873, 36.353050, 29.411085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781700, 36.563160, 29.899010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636932, 36.215080, 29.765284>,  <36.550072, 36.006233, 29.685047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636932, 36.215080, 29.765284>,  <36.781700, 36.563160, 29.899010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636932, 36.215080, 29.765284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261252, -0.249576, 0.932448,
		-0.894854, 0.424809, -0.137015,
		-0.361917, -0.870200, -0.334317,
		36.528358, 35.954021, 29.664989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117908, 36.443123, 30.207607>,  <36.781700, 36.563160, 29.899010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117908, 36.443123, 30.207607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.226269, 36.087307, 30.060457>,  <36.291286, 35.873817, 29.972168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.226269, 36.087307, 30.060457>,  <36.117908, 36.443123, 30.207607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226269, 36.087307, 30.060457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289055, -0.439700, 0.850359,
		-0.918183, -0.124028, -0.376242,
		0.270902, -0.889539, -0.367874,
		36.307541, 35.820446, 29.950094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528954, 36.038143, 30.300871>,  <36.117908, 36.443123, 30.207607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528954, 36.038143, 30.300871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828857, 35.777164, 30.256725>,  <36.008801, 35.620579, 30.230238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828857, 35.777164, 30.256725>,  <35.528954, 36.038143, 30.300871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828857, 35.777164, 30.256725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380306, -0.561357, 0.735014,
		-0.541509, -0.509110, -0.669011,
		0.749756, -0.652445, -0.110363,
		36.053783, 35.581432, 30.223616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243244, 35.310322, 30.318624>,  <35.528954, 36.038143, 30.300871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243244, 35.310322, 30.318624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628788, 35.260441, 30.412796>,  <35.860115, 35.230515, 30.469299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628788, 35.260441, 30.412796>,  <35.243244, 35.310322, 30.318624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628788, 35.260441, 30.412796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265809, -0.509735, 0.818240,
		0.017974, -0.851247, -0.524458,
		0.963858, -0.124698, 0.235431,
		35.917946, 35.223030, 30.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478081, 34.579433, 30.348652>,  <35.243244, 35.310322, 30.318624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478081, 34.579433, 30.348652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716652, 34.789787, 30.591213>,  <35.859795, 34.916000, 30.736750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716652, 34.789787, 30.591213>,  <35.478081, 34.579433, 30.348652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716652, 34.789787, 30.591213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290624, -0.562739, 0.773862,
		0.748205, -0.637788, -0.182799,
		0.596428, 0.525881, 0.606401,
		35.895580, 34.947552, 30.773134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644619, 34.073666, 30.858749>,  <35.478081, 34.579433, 30.348652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644619, 34.073666, 30.858749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766735, 34.421894, 31.013100>,  <35.840004, 34.630833, 31.105711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766735, 34.421894, 31.013100>,  <35.644619, 34.073666, 30.858749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766735, 34.421894, 31.013100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209980, -0.333704, 0.918994,
		0.928819, -0.361589, 0.080925,
		0.305294, 0.870571, 0.385877,
		35.858322, 34.683067, 31.128862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239849, 33.879959, 31.244301>,  <35.644619, 34.073666, 30.858749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239849, 33.879959, 31.244301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175816, 34.234039, 31.419022>,  <36.137398, 34.446487, 31.523853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175816, 34.234039, 31.419022>,  <36.239849, 33.879959, 31.244301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175816, 34.234039, 31.419022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085367, -0.428434, 0.899531,
		0.983406, 0.181286, -0.006983,
		-0.160081, 0.885201, 0.436800,
		36.127792, 34.499599, 31.550062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804394, 33.996056, 31.626413>,  <36.239849, 33.879959, 31.244301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804394, 33.996056, 31.626413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519424, 34.228245, 31.784149>,  <36.348442, 34.367558, 31.878790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519424, 34.228245, 31.784149>,  <36.804394, 33.996056, 31.626413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519424, 34.228245, 31.784149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181645, -0.390250, 0.902613,
		0.677830, 0.714675, 0.172585,
		-0.712426, 0.580469, 0.394340,
		36.305698, 34.402386, 31.902451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121105, 34.550144, 32.130905>,  <36.804394, 33.996056, 31.626413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121105, 34.550144, 32.130905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744678, 34.468685, 32.238918>,  <36.518822, 34.419811, 32.303726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744678, 34.468685, 32.238918>,  <37.121105, 34.550144, 32.130905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744678, 34.468685, 32.238918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334311, -0.439176, 0.833883,
		-0.051229, 0.875015, 0.481377,
		-0.941069, -0.203649, 0.270029,
		36.462357, 34.407589, 32.319927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183498, 34.499229, 32.827129>,  <37.121105, 34.550144, 32.130905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183498, 34.499229, 32.827129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832108, 34.311531, 32.791183>,  <36.621273, 34.198910, 32.769615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832108, 34.311531, 32.791183>,  <37.183498, 34.499229, 32.827129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832108, 34.311531, 32.791183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181977, -0.502538, 0.845186,
		-0.441765, 0.726126, 0.526862,
		-0.878481, -0.469251, -0.089866,
		36.568562, 34.170757, 32.764225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271999, 35.213886, 33.248989>,  <37.183498, 34.499229, 32.827129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271999, 35.213886, 33.248989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601967, 35.177059, 33.472069>,  <37.799946, 35.154964, 33.605919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601967, 35.177059, 33.472069>,  <37.271999, 35.213886, 33.248989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601967, 35.177059, 33.472069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469936, 0.659992, -0.586149,
		-0.314113, 0.745610, 0.587706,
		0.824920, -0.092067, 0.557701,
		37.849442, 35.149441, 33.639378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485161, 35.842304, 33.314896>,  <37.271999, 35.213886, 33.248989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485161, 35.842304, 33.314896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813534, 35.621346, 33.372753>,  <38.010559, 35.488770, 33.407467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813534, 35.621346, 33.372753>,  <37.485161, 35.842304, 33.314896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813534, 35.621346, 33.372753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535486, 0.656766, -0.530954,
		0.198299, 0.513335, 0.834964,
		0.820934, -0.552400, 0.144647,
		38.059814, 35.455627, 33.416149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070705, 36.300690, 33.310749>,  <37.485161, 35.842304, 33.314896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070705, 36.300690, 33.310749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251583, 35.953972, 33.226662>,  <38.360107, 35.745941, 33.176208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251583, 35.953972, 33.226662>,  <38.070705, 36.300690, 33.310749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251583, 35.953972, 33.226662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607291, 0.471833, -0.639196,
		0.653237, 0.161377, 0.739756,
		0.452193, -0.866794, -0.210216,
		38.387241, 35.693935, 33.163597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759968, 36.455887, 33.291466>,  <38.070705, 36.300690, 33.310749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759968, 36.455887, 33.291466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685757, 36.131771, 33.069111>,  <38.641232, 35.937302, 32.935699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685757, 36.131771, 33.069111>,  <38.759968, 36.455887, 33.291466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685757, 36.131771, 33.069111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496155, 0.411052, -0.764766,
		0.848180, -0.417692, 0.325767,
		-0.185529, -0.810290, -0.555886,
		38.630096, 35.888683, 32.902344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353001, 36.387474, 32.898201>,  <38.759968, 36.455887, 33.291466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353001, 36.387474, 32.898201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111156, 36.148895, 32.687035>,  <38.966049, 36.005749, 32.560333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.111156, 36.148895, 32.687035>,  <39.353001, 36.387474, 32.898201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111156, 36.148895, 32.687035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377224, 0.369322, -0.849296,
		0.701534, -0.712634, 0.001699,
		-0.604610, -0.596451, -0.527915,
		38.929775, 35.969959, 32.528660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755974, 36.196808, 32.324055>,  <39.353001, 36.387474, 32.898201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755974, 36.196808, 32.324055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385311, 36.111927, 32.199936>,  <39.162914, 36.061001, 32.125465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385311, 36.111927, 32.199936>,  <39.755974, 36.196808, 32.324055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385311, 36.111927, 32.199936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280535, 0.159079, -0.946570,
		0.250225, -0.964191, -0.087881,
		-0.926654, -0.212202, -0.310295,
		39.107315, 36.048267, 32.106846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738178, 35.629902, 31.808886>,  <39.755974, 36.196808, 32.324055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738178, 35.629902, 31.808886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409569, 35.852882, 31.760965>,  <39.212402, 35.986671, 31.732212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409569, 35.852882, 31.760965>,  <39.738178, 35.629902, 31.808886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409569, 35.852882, 31.760965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278096, 0.208315, -0.937693,
		-0.497758, -0.803652, -0.326159,
		-0.821523, 0.557448, -0.119802,
		39.163113, 36.020115, 31.725025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555248, 35.428223, 31.148205>,  <39.738178, 35.629902, 31.808886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555248, 35.428223, 31.148205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341290, 35.760841, 31.208094>,  <39.212914, 35.960411, 31.244028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341290, 35.760841, 31.208094>,  <39.555248, 35.428223, 31.148205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341290, 35.760841, 31.208094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190324, 0.291234, -0.937529,
		-0.823202, -0.472986, -0.314043,
		-0.534897, 0.831545, 0.149723,
		39.180820, 36.010303, 31.253010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112392, 35.474213, 30.568810>,  <39.555248, 35.428223, 31.148205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112392, 35.474213, 30.568810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129662, 35.838982, 30.732040>,  <39.140022, 36.057842, 30.829979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129662, 35.838982, 30.732040>,  <39.112392, 35.474213, 30.568810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129662, 35.838982, 30.732040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225291, 0.389051, -0.893243,
		-0.973334, 0.130501, -0.188652,
		0.043174, 0.911926, 0.408077,
		39.142612, 36.112560, 30.854464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917915, 35.917065, 29.975407>,  <39.112392, 35.474213, 30.568810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917915, 35.917065, 29.975407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075977, 36.164547, 30.247013>,  <39.170815, 36.313034, 30.409977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075977, 36.164547, 30.247013>,  <38.917915, 35.917065, 29.975407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075977, 36.164547, 30.247013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307592, 0.607387, -0.732440,
		-0.865587, 0.498287, 0.049704,
		0.395154, 0.618701, 0.679016,
		39.194523, 36.350159, 30.450718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749020, 36.588718, 29.789885>,  <38.917915, 35.917065, 29.975407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749020, 36.588718, 29.789885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.074154, 36.670830, 30.007931>,  <39.269234, 36.720097, 30.138758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.074154, 36.670830, 30.007931>,  <38.749020, 36.588718, 29.789885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074154, 36.670830, 30.007931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362159, 0.554862, -0.748979,
		-0.456216, 0.806218, 0.376669,
		0.812839, 0.205282, 0.545116,
		39.318005, 36.732414, 30.171465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865173, 37.316902, 29.827744>,  <38.749020, 36.588718, 29.789885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865173, 37.316902, 29.827744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223690, 37.143501, 29.865118>,  <39.438801, 37.039459, 29.887543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223690, 37.143501, 29.865118>,  <38.865173, 37.316902, 29.827744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223690, 37.143501, 29.865118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337246, 0.529506, -0.778388,
		0.287958, 0.729177, 0.620791,
		0.896296, -0.433502, 0.093436,
		39.492580, 37.013451, 29.893148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398495, 37.880474, 29.707438>,  <38.865173, 37.316902, 29.827744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398495, 37.880474, 29.707438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537918, 37.509392, 29.653975>,  <39.621571, 37.286743, 29.621897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.537918, 37.509392, 29.653975>,  <39.398495, 37.880474, 29.707438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537918, 37.509392, 29.653975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469460, 0.296223, -0.831781,
		0.811242, 0.227177, 0.538773,
		0.348558, -0.927708, -0.133658,
		39.642487, 37.231079, 29.613876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034733, 38.009373, 29.501577>,  <39.398495, 37.880474, 29.707438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034733, 38.009373, 29.501577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001747, 37.618778, 29.421911>,  <39.981956, 37.384422, 29.374111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.001747, 37.618778, 29.421911>,  <40.034733, 38.009373, 29.501577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001747, 37.618778, 29.421911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503907, 0.131562, -0.853680,
		0.859812, -0.170759, 0.481211,
		-0.082464, -0.976490, -0.199165,
		39.977009, 37.325832, 29.362162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723576, 37.761948, 29.221712>,  <40.034733, 38.009373, 29.501577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723576, 37.761948, 29.221712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.455994, 37.488628, 29.104677>,  <40.295444, 37.324638, 29.034456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.455994, 37.488628, 29.104677>,  <40.723576, 37.761948, 29.221712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455994, 37.488628, 29.104677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313328, 0.097728, -0.944603,
		0.674038, -0.723571, 0.148720,
		-0.668953, -0.683296, -0.292587,
		40.255306, 37.283638, 29.016901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053375, 37.485043, 28.787382>,  <40.723576, 37.761948, 29.221712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053375, 37.485043, 28.787382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.673218, 37.395855, 28.700638>,  <40.445122, 37.342342, 28.648592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.673218, 37.395855, 28.700638>,  <41.053375, 37.485043, 28.787382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673218, 37.395855, 28.700638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185055, 0.155042, -0.970421,
		0.250000, -0.962416, -0.106089,
		-0.950397, -0.222973, -0.216861,
		40.388100, 37.328964, 28.635580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126839, 36.855751, 28.320930>,  <41.053375, 37.485043, 28.787382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126839, 36.855751, 28.320930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758869, 37.008251, 28.284286>,  <40.538086, 37.099751, 28.262300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758869, 37.008251, 28.284286>,  <41.126839, 36.855751, 28.320930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758869, 37.008251, 28.284286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095518, -0.008703, -0.995390,
		-0.380287, -0.924432, -0.028410,
		-0.919923, 0.381248, -0.091610,
		40.482891, 37.122623, 28.256804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835114, 36.470509, 27.710943>,  <41.126839, 36.855751, 28.320930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835114, 36.470509, 27.710943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624874, 36.806484, 27.764982>,  <40.498730, 37.008068, 27.797405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624874, 36.806484, 27.764982>,  <40.835114, 36.470509, 27.710943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624874, 36.806484, 27.764982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053485, 0.191110, -0.980110,
		-0.849049, -0.507920, -0.145371,
		-0.525600, 0.839937, 0.135096,
		40.467194, 37.058464, 27.805511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.282471, 36.429333, 27.148790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314617, 36.809566, 27.268744>,  <40.333904, 37.037708, 27.340715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314617, 36.809566, 27.268744>,  <40.282471, 36.429333, 27.148790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314617, 36.809566, 27.268744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201268, 0.310135, -0.929143,
		-0.976234, 0.014313, 0.216246,
		0.080364, 0.950585, 0.299884,
		40.338726, 37.094742, 27.358709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787136, 36.684940, 26.752060>,  <40.282471, 36.429333, 27.148790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787136, 36.684940, 26.752060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.001461, 37.011833, 26.836954>,  <40.130054, 37.207970, 26.887890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.001461, 37.011833, 26.836954>,  <39.787136, 36.684940, 26.752060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001461, 37.011833, 26.836954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184265, 0.358481, -0.915171,
		-0.823986, 0.451252, 0.342665,
		0.535811, 0.817229, 0.212233,
		40.162205, 37.257004, 26.900623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484695, 37.203190, 26.333158>,  <39.787136, 36.684940, 26.752060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484695, 37.203190, 26.333158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845219, 37.343781, 26.434443>,  <40.061531, 37.428135, 26.495213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845219, 37.343781, 26.434443>,  <39.484695, 37.203190, 26.333158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845219, 37.343781, 26.434443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043091, 0.508881, -0.859758,
		-0.431039, 0.785814, 0.443511,
		0.901304, 0.351478, 0.253209,
		40.115608, 37.449223, 26.510405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403053, 37.870834, 26.150114>,  <39.484695, 37.203190, 26.333158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403053, 37.870834, 26.150114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.791641, 37.776077, 26.154627>,  <40.024796, 37.719223, 26.157335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.791641, 37.776077, 26.154627>,  <39.403053, 37.870834, 26.150114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791641, 37.776077, 26.154627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112254, 0.417393, -0.901766,
		0.208911, 0.877306, 0.432077,
		0.971471, -0.236891, 0.011283,
		40.083084, 37.705009, 26.158012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803566, 38.472458, 26.025673>,  <39.403053, 37.870834, 26.150114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803566, 38.472458, 26.025673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039768, 38.172779, 25.905672>,  <40.181488, 37.992970, 25.833672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039768, 38.172779, 25.905672>,  <39.803566, 38.472458, 26.025673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039768, 38.172779, 25.905672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103765, 0.439134, -0.892409,
		0.800335, 0.495843, 0.337052,
		0.590506, -0.749200, -0.300003,
		40.216919, 37.948017, 25.815672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274132, 38.892174, 25.670177>,  <39.803566, 38.472458, 26.025673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274132, 38.892174, 25.670177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302505, 38.501328, 25.589956>,  <40.319530, 38.266819, 25.541822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302505, 38.501328, 25.589956>,  <40.274132, 38.892174, 25.670177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302505, 38.501328, 25.589956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435812, 0.211213, -0.874904,
		0.897238, -0.025346, 0.440819,
		0.070931, -0.977112, -0.200554,
		40.323784, 38.208195, 25.529791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845554, 38.899464, 25.407749>,  <40.274132, 38.892174, 25.670177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845554, 38.899464, 25.407749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665962, 38.560738, 25.293684>,  <40.558208, 38.357502, 25.225245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.665962, 38.560738, 25.293684>,  <40.845554, 38.899464, 25.407749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665962, 38.560738, 25.293684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560877, -0.018655, -0.827689,
		0.695583, -0.531555, 0.483337,
		-0.448978, -0.846818, -0.285161,
		40.531269, 38.306690, 25.208136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415607, 38.504890, 25.170940>,  <40.845554, 38.899464, 25.407749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415607, 38.504890, 25.170940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.073025, 38.389400, 24.999771>,  <40.867474, 38.320107, 24.897070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.073025, 38.389400, 24.999771>,  <41.415607, 38.504890, 25.170940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073025, 38.389400, 24.999771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414918, 0.108157, -0.903407,
		0.307117, -0.951284, 0.027164,
		-0.856459, -0.288723, -0.427922,
		40.816086, 38.302784, 24.871395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654221, 38.095383, 24.689848>,  <41.415607, 38.504890, 25.170940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654221, 38.095383, 24.689848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282803, 38.191933, 24.577038>,  <41.059952, 38.249863, 24.509352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282803, 38.191933, 24.577038>,  <41.654221, 38.095383, 24.689848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282803, 38.191933, 24.577038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338707, 0.239988, -0.909771,
		-0.151911, -0.940290, -0.304595,
		-0.928548, 0.241372, -0.282026,
		41.004238, 38.264343, 24.492430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578526, 37.820271, 24.004902>,  <41.654221, 38.095383, 24.689848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578526, 37.820271, 24.004902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.277809, 38.083515, 24.021360>,  <41.097378, 38.241463, 24.031237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.277809, 38.083515, 24.021360>,  <41.578526, 37.820271, 24.004902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277809, 38.083515, 24.021360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221155, 0.310441, -0.924509,
		-0.621205, -0.685941, -0.378933,
		-0.751795, 0.658112, 0.041148,
		41.052269, 38.280949, 24.033705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073303, 37.715504, 23.511732>,  <41.578526, 37.820271, 24.004902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073303, 37.715504, 23.511732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990620, 38.092957, 23.615133>,  <40.941010, 38.319427, 23.677174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990620, 38.092957, 23.615133>,  <41.073303, 37.715504, 23.511732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990620, 38.092957, 23.615133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156150, 0.292642, -0.943387,
		-0.965861, -0.154643, -0.207840,
		-0.206711, 0.943635, 0.258504,
		40.928608, 38.376045, 23.692684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707821, 37.912262, 22.964798>,  <41.073303, 37.715504, 23.511732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707821, 37.912262, 22.964798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.823341, 38.250137, 23.145060>,  <40.892654, 38.452862, 23.253216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.823341, 38.250137, 23.145060>,  <40.707821, 37.912262, 22.964798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823341, 38.250137, 23.145060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095339, 0.493746, -0.864364,
		-0.952631, 0.206662, 0.223126,
		0.288799, 0.844693, 0.450655,
		40.909981, 38.503544, 23.280256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611732, 38.370354, 22.418972>,  <40.707821, 37.912262, 22.964798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611732, 38.370354, 22.418972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.812531, 38.594051, 22.682865>,  <40.933010, 38.728271, 22.841200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.812531, 38.594051, 22.682865>,  <40.611732, 38.370354, 22.418972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812531, 38.594051, 22.682865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250337, 0.636199, -0.729782,
		-0.827849, 0.531500, 0.179367,
		0.501993, 0.559248, 0.659731,
		40.963127, 38.761826, 22.880785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254986, 39.092735, 22.451124>,  <40.611732, 38.370354, 22.418972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254986, 39.092735, 22.451124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641903, 39.116131, 22.549858>,  <40.874054, 39.130169, 22.609098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641903, 39.116131, 22.549858>,  <40.254986, 39.092735, 22.451124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641903, 39.116131, 22.549858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146225, 0.666571, -0.730959,
		-0.207287, 0.743144, 0.636215,
		0.967290, 0.058488, 0.246837,
		40.932091, 39.133678, 22.623909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502907, 39.769203, 22.359436>,  <40.254986, 39.092735, 22.451124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502907, 39.769203, 22.359436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849232, 39.569897, 22.377804>,  <41.057026, 39.450314, 22.388824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849232, 39.569897, 22.377804>,  <40.502907, 39.769203, 22.359436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849232, 39.569897, 22.377804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377549, 0.590303, -0.713442,
		0.328375, 0.635042, 0.699208,
		0.865810, -0.498261, 0.045919,
		41.108974, 39.420418, 22.391579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018982, 40.329575, 22.426188>,  <40.502907, 39.769203, 22.359436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018982, 40.329575, 22.426188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.215199, 40.008934, 22.289480>,  <41.332928, 39.816551, 22.207455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.215199, 40.008934, 22.289480>,  <41.018982, 40.329575, 22.426188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215199, 40.008934, 22.289480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616539, 0.596426, -0.513960,
		0.615831, 0.041405, 0.786790,
		0.490542, -0.801599, -0.341770,
		41.362362, 39.768456, 22.186949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848446, 40.489254, 22.390112>,  <41.018982, 40.329575, 22.426188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848446, 40.489254, 22.390112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786369, 40.164471, 22.165028>,  <41.749123, 39.969601, 22.029978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.786369, 40.164471, 22.165028>,  <41.848446, 40.489254, 22.390112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786369, 40.164471, 22.165028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649728, 0.345189, -0.677272,
		0.744157, -0.470714, 0.473982,
		-0.155188, -0.811956, -0.562711,
		41.739811, 39.920883, 21.996214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462425, 40.385426, 22.034245>,  <41.848446, 40.489254, 22.390112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462425, 40.385426, 22.034245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.188007, 40.203964, 21.806721>,  <42.023357, 40.095089, 21.670206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.188007, 40.203964, 21.806721>,  <42.462425, 40.385426, 22.034245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188007, 40.203964, 21.806721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383380, 0.439053, -0.812559,
		0.618356, -0.775521, -0.127289,
		-0.686044, -0.453650, -0.568810,
		41.982193, 40.067867, 21.636078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895676, 39.903866, 21.501795>,  <42.462425, 40.385426, 22.034245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895676, 39.903866, 21.501795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.528942, 39.920700, 21.342976>,  <42.308903, 39.930801, 21.247684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.528942, 39.920700, 21.342976>,  <42.895676, 39.903866, 21.501795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528942, 39.920700, 21.342976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377365, 0.416204, -0.827267,
		0.130439, -0.908297, -0.397470,
		-0.916832, 0.042083, -0.397048,
		42.253891, 39.933327, 21.223862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908661, 39.570236, 20.924822>,  <42.895676, 39.903866, 21.501795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908661, 39.570236, 20.924822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.593502, 39.801044, 20.838785>,  <42.404408, 39.939529, 20.787163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.593502, 39.801044, 20.838785>,  <42.908661, 39.570236, 20.924822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593502, 39.801044, 20.838785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484918, 0.366072, -0.794258,
		-0.379562, -0.730097, -0.568235,
		-0.787900, 0.577017, -0.215090,
		42.357132, 39.974152, 20.774258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738327, 39.531101, 20.126829>,  <42.908661, 39.570236, 20.924822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738327, 39.531101, 20.126829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553898, 39.855766, 20.270281>,  <42.443241, 40.050564, 20.356352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553898, 39.855766, 20.270281>,  <42.738327, 39.531101, 20.126829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553898, 39.855766, 20.270281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272153, 0.514021, -0.813459,
		-0.844597, -0.277461, -0.457898,
		-0.461073, 0.811663, 0.358629,
		42.415577, 40.099266, 20.377869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302219, 39.809017, 19.575844>,  <42.738327, 39.531101, 20.126829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302219, 39.809017, 19.575844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421993, 40.099651, 19.823204>,  <42.493858, 40.274033, 19.971621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421993, 40.099651, 19.823204>,  <42.302219, 39.809017, 19.575844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421993, 40.099651, 19.823204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359385, 0.514515, -0.778535,
		-0.883846, 0.455362, -0.107061,
		0.299431, 0.726581, 0.618402,
		42.511822, 40.317627, 20.008724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905006, 40.475155, 19.439873>,  <42.302219, 39.809017, 19.575844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905006, 40.475155, 19.439873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269024, 40.550987, 19.587317>,  <42.487434, 40.596489, 19.675783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269024, 40.550987, 19.587317>,  <41.905006, 40.475155, 19.439873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269024, 40.550987, 19.587317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111791, 0.744063, -0.658690,
		-0.399146, 0.640646, 0.655938,
		0.910047, 0.189585, 0.368609,
		42.542038, 40.607864, 19.697899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744835, 40.152882, 18.731577>,  <41.905006, 40.475155, 19.439873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744835, 40.152882, 18.731577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.451897, 40.042015, 18.482786>,  <41.276134, 39.975494, 18.333511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.451897, 40.042015, 18.482786>,  <41.744835, 40.152882, 18.731577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451897, 40.042015, 18.482786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497730, -0.405455, 0.766728,
		-0.464692, 0.871084, 0.158980,
		-0.732343, -0.277163, -0.621976,
		41.232193, 39.958866, 18.296194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022564, 40.343201, 19.028011>,  <41.744835, 40.152882, 18.731577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022564, 40.343201, 19.028011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.952015, 40.041668, 18.774832>,  <40.909683, 39.860748, 18.622925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.952015, 40.041668, 18.774832>,  <41.022564, 40.343201, 19.028011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952015, 40.041668, 18.774832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643392, -0.398358, 0.653726,
		-0.744942, 0.522536, -0.414751,
		-0.176375, -0.753835, -0.632949,
		40.899101, 39.815517, 18.584948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291374, 40.297878, 18.962076>,  <41.022564, 40.343201, 19.028011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291374, 40.297878, 18.962076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425285, 39.948639, 18.820303>,  <40.505634, 39.739094, 18.735239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425285, 39.948639, 18.820303>,  <40.291374, 40.297878, 18.962076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425285, 39.948639, 18.820303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569228, -0.487137, 0.662327,
		-0.750933, -0.019983, -0.660076,
		0.334782, -0.873097, -0.354432,
		40.525719, 39.686710, 18.713974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736065, 39.901760, 18.710716>,  <40.291374, 40.297878, 18.962076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736065, 39.901760, 18.710716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.997578, 39.614491, 18.806051>,  <40.154484, 39.442131, 18.863253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.997578, 39.614491, 18.806051>,  <39.736065, 39.901760, 18.710716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997578, 39.614491, 18.806051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673907, -0.409381, 0.615025,
		-0.344120, -0.562710, -0.751624,
		0.653781, -0.718168, 0.238338,
		40.193710, 39.399040, 18.877552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315319, 39.402607, 18.880816>,  <39.736065, 39.901760, 18.710716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315319, 39.402607, 18.880816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658295, 39.254494, 19.023745>,  <39.864082, 39.165627, 19.109503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658295, 39.254494, 19.023745>,  <39.315319, 39.402607, 18.880816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658295, 39.254494, 19.023745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514066, -0.585357, 0.626972,
		-0.022998, -0.721280, -0.692262,
		0.857442, -0.370287, 0.357323,
		39.915527, 39.143406, 19.130941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292202, 38.600159, 18.829967>,  <39.315319, 39.402607, 18.880816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292202, 38.600159, 18.829967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529198, 38.741699, 19.119448>,  <39.671394, 38.826622, 19.293137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529198, 38.741699, 19.119448>,  <39.292202, 38.600159, 18.829967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529198, 38.741699, 19.119448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490736, -0.553897, 0.672590,
		0.638852, -0.753650, -0.154532,
		0.592492, 0.353851, 0.723701,
		39.706944, 38.847855, 19.336557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017460, 38.198814, 19.391100>,  <39.292202, 38.600159, 18.829967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017460, 38.198814, 19.391100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300434, 38.405231, 19.584278>,  <39.470219, 38.529083, 19.700186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300434, 38.405231, 19.584278>,  <39.017460, 38.198814, 19.391100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300434, 38.405231, 19.584278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488383, -0.137019, 0.861805,
		0.510903, -0.845532, 0.155095,
		0.707432, 0.516045, 0.482947,
		39.512665, 38.560043, 19.729162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330879, 37.722946, 19.957726>,  <39.017460, 38.198814, 19.391100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330879, 37.722946, 19.957726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409000, 38.103630, 20.052473>,  <39.455872, 38.332039, 20.109322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409000, 38.103630, 20.052473>,  <39.330879, 37.722946, 19.957726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409000, 38.103630, 20.052473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183217, -0.201861, 0.962125,
		0.963478, -0.231301, 0.134946,
		0.195300, 0.951710, 0.236867,
		39.467590, 38.389145, 20.123533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884926, 37.640335, 20.496227>,  <39.330879, 37.722946, 19.957726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884926, 37.640335, 20.496227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698574, 37.991619, 20.539501>,  <39.586765, 38.202389, 20.565466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698574, 37.991619, 20.539501>,  <39.884926, 37.640335, 20.496227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698574, 37.991619, 20.539501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217830, -0.232327, 0.947932,
		0.857619, 0.418052, 0.299536,
		-0.465875, 0.878212, 0.108184,
		39.558811, 38.255081, 20.571957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043900, 37.877022, 21.163729>,  <39.884926, 37.640335, 20.496227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043900, 37.877022, 21.163729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712738, 38.087124, 21.085060>,  <39.514042, 38.213184, 21.037859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712738, 38.087124, 21.085060>,  <40.043900, 37.877022, 21.163729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712738, 38.087124, 21.085060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246974, -0.026585, 0.968658,
		0.503563, 0.850530, 0.151733,
		-0.827906, 0.525254, -0.196671,
		39.464367, 38.244701, 21.026058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995312, 38.399437, 21.569002>,  <40.043900, 37.877022, 21.163729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995312, 38.399437, 21.569002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606419, 38.376335, 21.478289>,  <39.373085, 38.362473, 21.423861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606419, 38.376335, 21.478289>,  <39.995312, 38.399437, 21.569002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606419, 38.376335, 21.478289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226911, -0.004471, 0.973905,
		-0.057262, 0.998321, -0.008758,
		-0.972231, -0.057755, -0.226786,
		39.314751, 38.359009, 21.410254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650963, 38.866913, 21.945034>,  <39.995312, 38.399437, 21.569002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650963, 38.866913, 21.945034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384319, 38.582375, 21.855934>,  <39.224335, 38.411652, 21.802473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.384319, 38.582375, 21.855934>,  <39.650963, 38.866913, 21.945034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384319, 38.582375, 21.855934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312743, -0.004356, 0.949828,
		-0.676629, 0.702825, -0.219566,
		-0.666607, -0.711349, -0.222751,
		39.184338, 38.368969, 21.789108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128025, 38.948967, 22.363255>,  <39.650963, 38.866913, 21.945034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128025, 38.948967, 22.363255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.094410, 38.569195, 22.242243>,  <39.074242, 38.341331, 22.169636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.094410, 38.569195, 22.242243>,  <39.128025, 38.948967, 22.363255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094410, 38.569195, 22.242243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251021, -0.273640, 0.928499,
		-0.964327, 0.153966, -0.215332,
		-0.084034, -0.949429, -0.302527,
		39.069199, 38.284367, 22.151485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596180, 38.791771, 22.825047>,  <39.128025, 38.948967, 22.363255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596180, 38.791771, 22.825047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686203, 38.445091, 22.646975>,  <38.740219, 38.237083, 22.540133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686203, 38.445091, 22.646975>,  <38.596180, 38.791771, 22.825047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686203, 38.445091, 22.646975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396455, -0.498826, 0.770711,
		-0.890040, 0.003037, -0.455872,
		0.225060, -0.866697, -0.445179,
		38.753723, 38.185081, 22.513420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980267, 38.357311, 23.047512>,  <38.596180, 38.791771, 22.825047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980267, 38.357311, 23.047512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298100, 38.138527, 22.942076>,  <38.488800, 38.007256, 22.878815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298100, 38.138527, 22.942076>,  <37.980267, 38.357311, 23.047512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298100, 38.138527, 22.942076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099658, -0.545734, 0.832011,
		-0.598928, -0.634829, -0.488137,
		0.794577, -0.546962, -0.263590,
		38.536472, 37.974438, 22.862999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729294, 37.675026, 23.119448>,  <37.980267, 38.357311, 23.047512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729294, 37.675026, 23.119448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128300, 37.658371, 23.142170>,  <38.367702, 37.648376, 23.155804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128300, 37.658371, 23.142170>,  <37.729294, 37.675026, 23.119448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128300, 37.658371, 23.142170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070422, -0.604457, 0.793519,
		0.001293, -0.795549, -0.605888,
		0.997516, -0.041642, 0.056806,
		38.427555, 37.645878, 23.159212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918182, 36.992752, 23.298922>,  <37.729294, 37.675026, 23.119448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918182, 36.992752, 23.298922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257786, 37.193226, 23.365856>,  <38.461548, 37.313511, 23.406017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257786, 37.193226, 23.365856>,  <37.918182, 36.992752, 23.298922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257786, 37.193226, 23.365856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220122, -0.623392, 0.750286,
		0.480350, -0.600162, -0.639586,
		0.849006, 0.501186, 0.167338,
		38.512489, 37.343582, 23.416058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507336, 36.534775, 23.427614>,  <37.918182, 36.992752, 23.298922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507336, 36.534775, 23.427614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584064, 36.875320, 23.622915>,  <38.630100, 37.079647, 23.740095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584064, 36.875320, 23.622915>,  <38.507336, 36.534775, 23.427614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584064, 36.875320, 23.622915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193762, -0.520550, 0.831555,
		0.962112, -0.064906, -0.264815,
		0.191822, 0.851360, 0.488251,
		38.641613, 37.130730, 23.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914497, 36.292500, 23.958942>,  <38.507336, 36.534775, 23.427614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914497, 36.292500, 23.958942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.772087, 36.646732, 24.078264>,  <38.686642, 36.859272, 24.149858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.772087, 36.646732, 24.078264>,  <38.914497, 36.292500, 23.958942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772087, 36.646732, 24.078264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079436, -0.346748, 0.934588,
		0.931093, 0.309044, 0.193799,
		-0.356029, 0.885583, 0.298306,
		38.665279, 36.912407, 24.167755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235268, 36.444424, 24.620996>,  <38.914497, 36.292500, 23.958942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235268, 36.444424, 24.620996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927704, 36.699074, 24.597389>,  <38.743164, 36.851864, 24.583225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927704, 36.699074, 24.597389>,  <39.235268, 36.444424, 24.620996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927704, 36.699074, 24.597389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262906, -0.230690, 0.936837,
		0.582796, 0.735863, 0.344752,
		-0.768914, 0.636622, -0.059018,
		38.697029, 36.890060, 24.579683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267300, 36.856655, 25.199030>,  <39.235268, 36.444424, 24.620996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267300, 36.856655, 25.199030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886402, 36.880383, 25.079218>,  <38.657864, 36.894619, 25.007330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886402, 36.880383, 25.079218>,  <39.267300, 36.856655, 25.199030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886402, 36.880383, 25.079218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305014, -0.138875, 0.942168,
		0.014295, 0.988531, 0.150336,
		-0.952241, 0.059323, -0.299530,
		38.600731, 36.898178, 24.989359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.689228, 36.632393, 30.259939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.325127, 36.756611, 30.150396>,  <40.106667, 36.831142, 30.084671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.325127, 36.756611, 30.150396>,  <40.689228, 36.632393, 30.259939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325127, 36.756611, 30.150396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332297, -0.153339, 0.930627,
		0.247007, 0.938110, 0.242770,
		-0.910256, 0.310543, -0.273855,
		40.052052, 36.849773, 30.068239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404076, 36.889439, 30.817295>,  <40.689228, 36.632393, 30.259939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404076, 36.889439, 30.817295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065025, 36.863300, 30.606670>,  <39.861595, 36.847618, 30.480295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065025, 36.863300, 30.606670>,  <40.404076, 36.889439, 30.817295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065025, 36.863300, 30.606670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521317, -0.082252, 0.849390,
		-0.098814, 0.994467, 0.035653,
		-0.847623, -0.065345, -0.526560,
		39.810738, 36.843697, 30.448702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844349, 37.246960, 31.232597>,  <40.404076, 36.889439, 30.817295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844349, 37.246960, 31.232597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647686, 36.978199, 31.011030>,  <39.529690, 36.816944, 30.878090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647686, 36.978199, 31.011030>,  <39.844349, 37.246960, 31.232597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647686, 36.978199, 31.011030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617687, -0.179275, 0.765718,
		-0.613789, 0.718618, -0.326881,
		-0.491657, -0.671899, -0.553918,
		39.500191, 36.776630, 30.844854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142376, 37.323360, 31.338972>,  <39.844349, 37.246960, 31.232597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142376, 37.323360, 31.338972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143280, 36.950874, 31.193188>,  <39.143822, 36.727383, 31.105717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143280, 36.950874, 31.193188>,  <39.142376, 37.323360, 31.338972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143280, 36.950874, 31.193188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638660, -0.281791, 0.716035,
		-0.769485, 0.231148, -0.595368,
		0.002259, -0.931217, -0.364460,
		39.143959, 36.671509, 31.083849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521011, 37.124588, 31.407047>,  <39.142376, 37.323360, 31.338972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521011, 37.124588, 31.407047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723377, 36.780602, 31.380203>,  <38.844799, 36.574211, 31.364096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723377, 36.780602, 31.380203>,  <38.521011, 37.124588, 31.407047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723377, 36.780602, 31.380203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549168, -0.381116, 0.743751,
		-0.665178, -0.339421, -0.665080,
		0.505918, -0.859967, -0.067111,
		38.875153, 36.522610, 31.360069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048473, 36.629066, 31.561001>,  <38.521011, 37.124588, 31.407047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048473, 36.629066, 31.561001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410843, 36.466171, 31.607405>,  <38.628265, 36.368435, 31.635248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410843, 36.466171, 31.607405>,  <38.048473, 36.629066, 31.561001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410843, 36.466171, 31.607405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346968, -0.556864, 0.754663,
		-0.242726, -0.723919, -0.645775,
		0.905923, -0.407240, 0.116012,
		38.682621, 36.343998, 31.642208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936234, 35.895603, 31.571371>,  <38.048473, 36.629066, 31.561001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936234, 35.895603, 31.571371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294018, 35.928261, 31.747221>,  <38.508690, 35.947857, 31.852732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294018, 35.928261, 31.747221>,  <37.936234, 35.895603, 31.571371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294018, 35.928261, 31.747221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265096, -0.694929, 0.668429,
		0.360085, -0.714427, -0.599943,
		0.894462, 0.081648, 0.439626,
		38.562355, 35.952755, 31.879108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172222, 35.224644, 31.760427>,  <37.936234, 35.895603, 31.571371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172222, 35.224644, 31.760427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390873, 35.470448, 31.987963>,  <38.522064, 35.617928, 32.124485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390873, 35.470448, 31.987963>,  <38.172222, 35.224644, 31.760427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390873, 35.470448, 31.987963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141273, -0.601900, 0.785976,
		0.825371, -0.510000, -0.242204,
		0.546630, 0.614505, 0.568840,
		38.554863, 35.654800, 32.158615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425491, 34.743500, 32.259117>,  <38.172222, 35.224644, 31.760427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425491, 34.743500, 32.259117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478622, 35.088718, 32.454052>,  <38.510502, 35.295849, 32.571014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478622, 35.088718, 32.454052>,  <38.425491, 34.743500, 32.259117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478622, 35.088718, 32.454052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007519, -0.490805, 0.871237,
		0.991110, -0.119392, -0.058705,
		0.132831, 0.863051, 0.487339,
		38.518471, 35.347633, 32.600254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944946, 34.617641, 32.759140>,  <38.425491, 34.743500, 32.259117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944946, 34.617641, 32.759140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748360, 34.939220, 32.893082>,  <38.630405, 35.132168, 32.973446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748360, 34.939220, 32.893082>,  <38.944946, 34.617641, 32.759140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748360, 34.939220, 32.893082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174741, -0.467705, 0.866440,
		0.853183, 0.367318, 0.370346,
		-0.491471, 0.803946, 0.334853,
		38.600918, 35.180405, 32.993538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072697, 34.677177, 33.480968>,  <38.944946, 34.617641, 32.759140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072697, 34.677177, 33.480968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768780, 34.936031, 33.455914>,  <38.586430, 35.091343, 33.440880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768780, 34.936031, 33.455914>,  <39.072697, 34.677177, 33.480968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768780, 34.936031, 33.455914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366912, -0.347255, 0.863012,
		0.536736, 0.678695, 0.501285,
		-0.759796, 0.647137, -0.062638,
		38.540840, 35.130173, 33.437122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054157, 35.001694, 34.153450>,  <39.072697, 34.677177, 33.480968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054157, 35.001694, 34.153450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680027, 35.046494, 34.019215>,  <38.455547, 35.073372, 33.938675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680027, 35.046494, 34.019215>,  <39.054157, 35.001694, 34.153450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680027, 35.046494, 34.019215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341674, -0.039941, 0.938970,
		0.091761, 0.992905, 0.075626,
		-0.935328, 0.112000, -0.335584,
		38.399429, 35.080093, 33.918541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706757, 35.660755, 34.297001>,  <39.054157, 35.001694, 34.153450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706757, 35.660755, 34.297001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478432, 35.332500, 34.286179>,  <38.341438, 35.135548, 34.279686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478432, 35.332500, 34.286179>,  <38.706757, 35.660755, 34.297001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478432, 35.332500, 34.286179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173375, 0.088250, 0.980894,
		-0.802570, 0.564595, -0.192652,
		-0.570809, -0.820637, -0.027060,
		38.307190, 35.086308, 34.278061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113491, 35.748386, 34.785023>,  <38.706757, 35.660755, 34.297001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113491, 35.748386, 34.785023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108696, 35.353939, 34.718788>,  <38.105820, 35.117271, 34.679047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108696, 35.353939, 34.718788>,  <38.113491, 35.748386, 34.785023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108696, 35.353939, 34.718788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027632, -0.165213, 0.985871,
		-0.999546, 0.016395, -0.025268,
		-0.011988, -0.986122, -0.165591,
		38.105099, 35.058102, 34.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030590, 36.269501, 35.339031>,  <38.113491, 35.748386, 34.785023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030590, 36.269501, 35.339031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852520, 36.601437, 35.473598>,  <37.745678, 36.800598, 35.554340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852520, 36.601437, 35.473598>,  <38.030590, 36.269501, 35.339031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852520, 36.601437, 35.473598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407165, 0.522209, -0.749343,
		-0.797518, -0.196613, -0.570359,
		-0.445177, 0.829844, 0.336417,
		37.718967, 36.850391, 35.574524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574856, 36.425003, 34.817211>,  <38.030590, 36.269501, 35.339031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574856, 36.425003, 34.817211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.562740, 36.776588, 35.007584>,  <37.555470, 36.987541, 35.121807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.562740, 36.776588, 35.007584>,  <37.574856, 36.425003, 34.817211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562740, 36.776588, 35.007584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158915, 0.474325, -0.865888,
		-0.986828, 0.049405, -0.154047,
		-0.030289, 0.878962, 0.475928,
		37.553654, 37.040276, 35.150364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189167, 36.897591, 34.390881>,  <37.574856, 36.425003, 34.817211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189167, 36.897591, 34.390881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362526, 37.162075, 34.635818>,  <37.466541, 37.320766, 34.782780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362526, 37.162075, 34.635818>,  <37.189167, 36.897591, 34.390881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362526, 37.162075, 34.635818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049636, 0.660930, -0.748804,
		-0.899834, 0.354926, 0.253627,
		0.433399, 0.661210, 0.612345,
		37.492546, 37.360439, 34.819523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927029, 37.557930, 34.129894>,  <37.189167, 36.897591, 34.390881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927029, 37.557930, 34.129894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.245651, 37.645184, 34.355431>,  <37.436825, 37.697536, 34.490753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.245651, 37.645184, 34.355431>,  <36.927029, 37.557930, 34.129894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245651, 37.645184, 34.355431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272776, 0.702635, -0.657189,
		-0.539531, 0.677289, 0.500185,
		0.796555, 0.218135, 0.563842,
		37.484619, 37.710625, 34.524582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913719, 38.314007, 34.081810>,  <36.927029, 37.557930, 34.129894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913719, 38.314007, 34.081810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271053, 38.181278, 34.203037>,  <37.485455, 38.101643, 34.275776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.271053, 38.181278, 34.203037>,  <36.913719, 38.314007, 34.081810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271053, 38.181278, 34.203037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445683, 0.567654, -0.692196,
		0.057644, 0.753435, 0.654990,
		0.893333, -0.331819, 0.303072,
		37.539055, 38.081734, 34.293961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360344, 38.862812, 34.262882>,  <36.913719, 38.314007, 34.081810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360344, 38.862812, 34.262882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600849, 38.560257, 34.159840>,  <37.745152, 38.378723, 34.098015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600849, 38.560257, 34.159840>,  <37.360344, 38.862812, 34.262882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600849, 38.560257, 34.159840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505291, 0.609669, -0.610725,
		0.618999, 0.237041, 0.748767,
		0.601267, -0.756383, -0.257610,
		37.781231, 38.333344, 34.082558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991528, 39.146877, 34.276199>,  <37.360344, 38.862812, 34.262882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991528, 39.146877, 34.276199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.994095, 38.823200, 34.041195>,  <37.995636, 38.628994, 33.900192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.994095, 38.823200, 34.041195>,  <37.991528, 39.146877, 34.276199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994095, 38.823200, 34.041195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452946, 0.526146, -0.719729,
		0.891515, -0.261488, 0.369900,
		0.006421, -0.809194, -0.587507,
		37.996021, 38.580441, 33.864944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698555, 39.158180, 33.910332>,  <37.991528, 39.146877, 34.276199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698555, 39.158180, 33.910332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485653, 38.895332, 33.696831>,  <38.357910, 38.737621, 33.568729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485653, 38.895332, 33.696831>,  <38.698555, 39.158180, 33.910332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485653, 38.895332, 33.696831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455606, 0.309049, -0.834812,
		0.713530, -0.687515, 0.134896,
		-0.532257, -0.657124, -0.533752,
		38.325977, 38.698196, 33.536705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119370, 39.071709, 33.361706>,  <38.698555, 39.158180, 33.910332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119370, 39.071709, 33.361706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765667, 38.928398, 33.241890>,  <38.553444, 38.842411, 33.170002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765667, 38.928398, 33.241890>,  <39.119370, 39.071709, 33.361706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765667, 38.928398, 33.241890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180133, 0.330097, -0.926600,
		0.430860, -0.873310, -0.227353,
		-0.884258, -0.358281, -0.299538,
		38.500389, 38.820915, 33.152027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206207, 38.607582, 32.756180>,  <39.119370, 39.071709, 33.361706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206207, 38.607582, 32.756180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850651, 38.790810, 32.759045>,  <38.637318, 38.900745, 32.760765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850651, 38.790810, 32.759045>,  <39.206207, 38.607582, 32.756180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850651, 38.790810, 32.759045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183387, 0.370115, -0.910705,
		-0.419815, -0.808202, -0.412995,
		-0.888889, 0.458065, 0.007166,
		38.583984, 38.928230, 32.761196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840023, 38.356873, 32.111156>,  <39.206207, 38.607582, 32.756180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840023, 38.356873, 32.111156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651974, 38.692699, 32.220051>,  <38.539146, 38.894196, 32.285385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.651974, 38.692699, 32.220051>,  <38.840023, 38.356873, 32.111156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651974, 38.692699, 32.220051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013719, 0.315356, -0.948874,
		-0.882495, -0.442351, -0.159773,
		-0.470122, 0.839569, 0.272232,
		38.510937, 38.944569, 32.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270447, 38.420082, 31.661283>,  <38.840023, 38.356873, 32.111156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270447, 38.420082, 31.661283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291561, 38.795406, 31.797981>,  <38.304230, 39.020599, 31.879999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291561, 38.795406, 31.797981>,  <38.270447, 38.420082, 31.661283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291561, 38.795406, 31.797981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104902, 0.345537, -0.932523,
		-0.993081, 0.013374, 0.116670,
		0.052785, 0.938310, 0.341744,
		38.307396, 39.076900, 31.900505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675533, 38.910744, 31.321884>,  <38.270447, 38.420082, 31.661283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675533, 38.910744, 31.321884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956890, 39.165379, 31.448374>,  <38.125706, 39.318157, 31.524267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956890, 39.165379, 31.448374>,  <37.675533, 38.910744, 31.321884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956890, 39.165379, 31.448374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104609, 0.532751, -0.839782,
		-0.703060, 0.557618, 0.441326,
		0.703394, 0.636584, 0.316224,
		38.167908, 39.356354, 31.543242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496235, 39.698952, 31.186611>,  <37.675533, 38.910744, 31.321884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496235, 39.698952, 31.186611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892632, 39.645634, 31.191898>,  <38.130470, 39.613644, 31.195070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892632, 39.645634, 31.191898>,  <37.496235, 39.698952, 31.186611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892632, 39.645634, 31.191898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066066, 0.400529, -0.913899,
		0.116526, 0.906536, 0.405726,
		0.990988, -0.133297, 0.013220,
		38.189926, 39.605644, 31.195864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171318, 40.389488, 31.112179>,  <37.496235, 39.698952, 31.186611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171318, 40.389488, 31.112179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.853718, 40.614548, 31.020107>,  <36.663158, 40.749584, 30.964865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.853718, 40.614548, 31.020107>,  <37.171318, 40.389488, 31.112179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853718, 40.614548, 31.020107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495705, -0.380059, 0.780917,
		0.351905, 0.734150, 0.580678,
		-0.794002, 0.562654, -0.230178,
		36.615517, 40.783344, 30.951054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982365, 40.805542, 31.721563>,  <37.171318, 40.389488, 31.112179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982365, 40.805542, 31.721563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653961, 40.717968, 31.510656>,  <36.456921, 40.665424, 31.384111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653961, 40.717968, 31.510656>,  <36.982365, 40.805542, 31.721563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653961, 40.717968, 31.510656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380245, -0.479204, 0.791061,
		-0.425862, 0.849959, 0.310180,
		-0.821009, -0.218938, -0.527268,
		36.407658, 40.652287, 31.352476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455048, 41.127197, 32.152767>,  <36.982365, 40.805542, 31.721563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455048, 41.127197, 32.152767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270782, 40.858616, 31.920580>,  <36.160225, 40.697468, 31.781267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270782, 40.858616, 31.920580>,  <36.455048, 41.127197, 32.152767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270782, 40.858616, 31.920580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460522, -0.378258, 0.803019,
		-0.758756, 0.637238, -0.134969,
		-0.460662, -0.671452, -0.580468,
		36.132584, 40.657181, 31.746439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856388, 41.198009, 32.417885>,  <36.455048, 41.127197, 32.152767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856388, 41.198009, 32.417885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820290, 40.858707, 32.209152>,  <35.798630, 40.655125, 32.083912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820290, 40.858707, 32.209152>,  <35.856388, 41.198009, 32.417885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820290, 40.858707, 32.209152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643999, -0.349982, 0.680278,
		-0.759685, 0.397454, -0.514693,
		-0.090245, -0.848259, -0.521836,
		35.793217, 40.604229, 32.052601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171593, 41.054390, 32.238434>,  <35.856388, 41.198009, 32.417885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171593, 41.054390, 32.238434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326107, 40.685577, 32.228359>,  <35.418816, 40.464287, 32.222317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326107, 40.685577, 32.228359>,  <35.171593, 41.054390, 32.238434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326107, 40.685577, 32.228359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774776, -0.339162, 0.533565,
		-0.500508, -0.186596, -0.845384,
		0.386283, -0.922036, -0.025183,
		35.441994, 40.408966, 32.220806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585789, 40.563164, 31.943151>,  <35.171593, 41.054390, 32.238434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585789, 40.563164, 31.943151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.860596, 40.370205, 32.160519>,  <35.025478, 40.254429, 32.290939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.860596, 40.370205, 32.160519>,  <34.585789, 40.563164, 31.943151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860596, 40.370205, 32.160519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723899, -0.389448, 0.569474,
		-0.063080, -0.784617, -0.616764,
		0.687016, -0.482397, 0.543417,
		35.066700, 40.225487, 32.323544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274162, 39.944881, 32.021122>,  <34.585789, 40.563164, 31.943151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274162, 39.944881, 32.021122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.562450, 39.965324, 32.297657>,  <34.735424, 39.977589, 32.463577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.562450, 39.965324, 32.297657>,  <34.274162, 39.944881, 32.021122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562450, 39.965324, 32.297657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652156, -0.288188, 0.701171,
		0.235071, -0.956209, -0.174372,
		0.720717, 0.051107, 0.691342,
		34.778667, 39.980656, 32.505058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177589, 39.346024, 32.287933>,  <34.274162, 39.944881, 32.021122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177589, 39.346024, 32.287933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.351070, 39.594467, 32.549046>,  <34.455158, 39.743534, 32.705711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.351070, 39.594467, 32.549046>,  <34.177589, 39.346024, 32.287933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351070, 39.594467, 32.549046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690017, -0.236957, 0.683906,
		0.579461, -0.747044, 0.325806,
		0.433706, 0.621109, 0.652781,
		34.481182, 39.780800, 32.744881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089283, 39.013134, 32.963730>,  <34.177589, 39.346024, 32.287933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089283, 39.013134, 32.963730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.215706, 39.373829, 33.081696>,  <34.291561, 39.590248, 33.152473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.215706, 39.373829, 33.081696>,  <34.089283, 39.013134, 32.963730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215706, 39.373829, 33.081696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656651, -0.016442, 0.754015,
		0.684775, -0.431966, 0.586932,
		0.316058, 0.901740, 0.294910,
		34.310524, 39.644352, 33.170170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327854, 38.998352, 33.624706>,  <34.089283, 39.013134, 32.963730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327854, 38.998352, 33.624706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.172417, 39.357677, 33.542694>,  <34.079155, 39.573273, 33.493488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.172417, 39.357677, 33.542694>,  <34.327854, 38.998352, 33.624706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172417, 39.357677, 33.542694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513820, -0.026557, 0.857487,
		0.764843, 0.438561, 0.471889,
		-0.388592, 0.898309, -0.205030,
		34.055840, 39.627171, 33.481186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025196, 39.205452, 34.287304>,  <34.327854, 38.998352, 33.624706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025196, 39.205452, 34.287304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877232, 39.479515, 34.036316>,  <33.788452, 39.643955, 33.885723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.877232, 39.479515, 34.036316>,  <34.025196, 39.205452, 34.287304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877232, 39.479515, 34.036316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723353, 0.211435, 0.657310,
		0.583032, 0.697029, 0.417401,
		-0.369911, 0.685161, -0.627471,
		33.766258, 39.685062, 33.848076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781307, 39.900524, 34.687218>,  <34.025196, 39.205452, 34.287304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781307, 39.900524, 34.687218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.583637, 39.846127, 34.343754>,  <33.465034, 39.813488, 34.137676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.583637, 39.846127, 34.343754>,  <33.781307, 39.900524, 34.687218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583637, 39.846127, 34.343754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864399, 0.182244, 0.468617,
		0.092759, 0.973804, -0.207610,
		-0.494177, -0.135989, -0.858660,
		33.435383, 39.805328, 34.086155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.326466, 42.864513, 28.100706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017975, 42.634518, 27.991451>,  <37.832882, 42.496521, 27.925900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017975, 42.634518, 27.991451>,  <38.326466, 42.864513, 28.100706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017975, 42.634518, 27.991451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319036, -0.022162, 0.947484,
		-0.550843, 0.817863, -0.166349,
		-0.771225, -0.574986, -0.273135,
		37.786606, 42.462021, 27.909512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756748, 43.105648, 28.535686>,  <38.326466, 42.864513, 28.100706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756748, 43.105648, 28.535686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604298, 42.765129, 28.391449>,  <37.512825, 42.560818, 28.304907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604298, 42.765129, 28.391449>,  <37.756748, 43.105648, 28.535686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604298, 42.765129, 28.391449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121588, -0.340492, 0.932353,
		-0.916492, 0.399191, 0.026264,
		-0.381129, -0.851300, -0.360595,
		37.489960, 42.509739, 28.283270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272411, 43.013645, 28.986137>,  <37.756748, 43.105648, 28.535686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272411, 43.013645, 28.986137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332924, 42.657009, 28.815409>,  <37.369232, 42.443027, 28.712973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332924, 42.657009, 28.815409>,  <37.272411, 43.013645, 28.986137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332924, 42.657009, 28.815409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305334, -0.452825, 0.837688,
		-0.940151, 0.003594, -0.340739,
		0.151285, -0.891593, -0.426821,
		37.378311, 42.389530, 28.687363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603291, 42.790901, 28.863274>,  <37.272411, 43.013645, 28.986137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603291, 42.790901, 28.863274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879620, 42.505730, 28.911427>,  <37.045418, 42.334625, 28.940317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879620, 42.505730, 28.911427>,  <36.603291, 42.790901, 28.863274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879620, 42.505730, 28.911427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565874, -0.429485, 0.703796,
		-0.450051, -0.554325, -0.700127,
		0.690827, -0.712928, 0.120388,
		37.086868, 42.291851, 28.947540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155025, 42.315876, 28.930614>,  <36.603291, 42.790901, 28.863274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155025, 42.315876, 28.930614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498344, 42.160461, 29.064701>,  <36.704334, 42.067215, 29.145153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498344, 42.160461, 29.064701>,  <36.155025, 42.315876, 28.930614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498344, 42.160461, 29.064701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511835, -0.601335, 0.613531,
		-0.036801, -0.698167, -0.714989,
		0.858295, -0.388535, 0.335217,
		36.755833, 42.043900, 29.165266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993515, 41.605507, 29.044966>,  <36.155025, 42.315876, 28.930614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993515, 41.605507, 29.044966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333347, 41.660091, 29.248764>,  <36.537247, 41.692841, 29.371042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333347, 41.660091, 29.248764>,  <35.993515, 41.605507, 29.044966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333347, 41.660091, 29.248764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291240, -0.683985, 0.668838,
		0.439756, -0.716619, -0.541361,
		0.849585, 0.136459, 0.509495,
		36.588223, 41.701031, 29.401613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032749, 40.981697, 29.342306>,  <35.993515, 41.605507, 29.044966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032749, 40.981697, 29.342306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266148, 41.210720, 29.572685>,  <36.406185, 41.348133, 29.710913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266148, 41.210720, 29.572685>,  <36.032749, 40.981697, 29.342306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266148, 41.210720, 29.572685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037630, -0.689368, 0.723434,
		0.811247, -0.443790, -0.380695,
		0.583492, 0.572558, 0.575947,
		36.441196, 41.382488, 29.745470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544014, 40.490158, 29.667339>,  <36.032749, 40.981697, 29.342306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544014, 40.490158, 29.667339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548683, 40.805965, 29.912785>,  <36.551483, 40.995449, 30.060051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548683, 40.805965, 29.912785>,  <36.544014, 40.490158, 29.667339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548683, 40.805965, 29.912785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102633, -0.609468, 0.786139,
		0.994651, -0.072153, 0.073918,
		0.011672, 0.789521, 0.613613,
		36.552185, 41.042820, 30.096869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107647, 40.395966, 30.303091>,  <36.544014, 40.490158, 29.667339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107647, 40.395966, 30.303091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803707, 40.637394, 30.399698>,  <36.621342, 40.782249, 30.457663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803707, 40.637394, 30.399698>,  <37.107647, 40.395966, 30.303091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803707, 40.637394, 30.399698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169677, -0.542759, 0.822571,
		0.627566, 0.584050, 0.514827,
		-0.759849, 0.603572, 0.241518,
		36.575752, 40.818466, 30.472153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723576, 40.141949, 30.589449>,  <37.107647, 40.395966, 30.303091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723576, 40.141949, 30.589449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072655, 39.992554, 30.715244>,  <38.282101, 39.902916, 30.790722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072655, 39.992554, 30.715244>,  <37.723576, 40.141949, 30.589449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072655, 39.992554, 30.715244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402465, 0.185579, -0.896428,
		0.276445, 0.908881, 0.312271,
		0.872697, -0.373491, 0.314490,
		38.334465, 39.880505, 30.809591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293224, 40.649609, 30.494774>,  <37.723576, 40.141949, 30.589449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293224, 40.649609, 30.494774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484104, 40.298187, 30.502956>,  <38.598633, 40.087334, 30.507866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484104, 40.298187, 30.502956>,  <38.293224, 40.649609, 30.494774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484104, 40.298187, 30.502956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635801, 0.329089, -0.698182,
		0.606659, 0.346181, 0.715628,
		0.477203, -0.878555, 0.020458,
		38.627266, 40.034622, 30.509094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097446, 40.868423, 30.617420>,  <38.293224, 40.649609, 30.494774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097446, 40.868423, 30.617420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054253, 40.497452, 30.474190>,  <39.028336, 40.274868, 30.388252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054253, 40.497452, 30.474190>,  <39.097446, 40.868423, 30.617420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054253, 40.497452, 30.474190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661421, 0.201876, -0.722336,
		0.742201, -0.314840, 0.591620,
		-0.107987, -0.927427, -0.358074,
		39.021858, 40.219223, 30.366768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744720, 40.542633, 30.619204>,  <39.097446, 40.868423, 30.617420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744720, 40.542633, 30.619204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541355, 40.362797, 30.325432>,  <39.419334, 40.254894, 30.149170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541355, 40.362797, 30.325432>,  <39.744720, 40.542633, 30.619204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541355, 40.362797, 30.325432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669100, 0.330616, -0.665581,
		0.542051, -0.829797, 0.132730,
		-0.508415, -0.449589, -0.734428,
		39.388832, 40.227921, 30.105103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291313, 40.385620, 30.211723>,  <39.744720, 40.542633, 30.619204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291313, 40.385620, 30.211723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969360, 40.345600, 29.977747>,  <39.776188, 40.321587, 29.837360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969360, 40.345600, 29.977747>,  <40.291313, 40.385620, 30.211723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969360, 40.345600, 29.977747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531789, 0.315865, -0.785767,
		0.263378, -0.943514, -0.201028,
		-0.804880, -0.100049, -0.584943,
		39.727898, 40.315586, 29.802263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546047, 40.092636, 29.655575>,  <40.291313, 40.385620, 30.211723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546047, 40.092636, 29.655575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202774, 40.237625, 29.510172>,  <39.996811, 40.324619, 29.422930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202774, 40.237625, 29.510172>,  <40.546047, 40.092636, 29.655575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202774, 40.237625, 29.510172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456645, 0.215530, -0.863147,
		-0.234525, -0.906729, -0.350487,
		-0.858180, 0.362477, -0.363506,
		39.945320, 40.346367, 29.401119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304256, 39.619694, 29.063646>,  <40.546047, 40.092636, 29.655575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304256, 39.619694, 29.063646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128967, 39.977047, 29.024000>,  <40.023792, 40.191460, 29.000214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128967, 39.977047, 29.024000>,  <40.304256, 39.619694, 29.063646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128967, 39.977047, 29.024000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319184, 0.051584, -0.946288,
		-0.840286, -0.446323, -0.307759,
		-0.438226, 0.893384, -0.099114,
		39.997501, 40.245064, 28.994267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909229, 39.711452, 28.425661>,  <40.304256, 39.619694, 29.063646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909229, 39.711452, 28.425661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983608, 40.087425, 28.540174>,  <40.028236, 40.313007, 28.608883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983608, 40.087425, 28.540174>,  <39.909229, 39.711452, 28.425661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983608, 40.087425, 28.540174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407821, 0.191254, -0.892807,
		-0.893928, 0.282764, -0.347761,
		0.185943, 0.939929, 0.286284,
		40.039391, 40.369404, 28.626060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810474, 40.109249, 27.866285>,  <39.909229, 39.711452, 28.425661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810474, 40.109249, 27.866285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027191, 40.373646, 28.073957>,  <40.157223, 40.532284, 28.198561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027191, 40.373646, 28.073957>,  <39.810474, 40.109249, 27.866285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027191, 40.373646, 28.073957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523398, 0.217995, -0.823731,
		-0.657657, 0.718032, -0.227852,
		0.541795, 0.660990, 0.519182,
		40.189728, 40.571941, 28.229712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932053, 40.619724, 27.451416>,  <39.810474, 40.109249, 27.866285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932053, 40.619724, 27.451416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192669, 40.735462, 27.731922>,  <40.349041, 40.804905, 27.900225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192669, 40.735462, 27.731922>,  <39.932053, 40.619724, 27.451416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192669, 40.735462, 27.731922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615524, 0.338693, -0.711630,
		-0.443420, 0.895302, 0.042574,
		0.651543, 0.289345, 0.701263,
		40.388130, 40.822266, 27.942301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078636, 41.318394, 27.370768>,  <39.932053, 40.619724, 27.451416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078636, 41.318394, 27.370768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390495, 41.147999, 27.554367>,  <40.577610, 41.045761, 27.664528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390495, 41.147999, 27.554367>,  <40.078636, 41.318394, 27.370768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390495, 41.147999, 27.554367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602894, 0.312442, -0.734097,
		0.169304, 0.849068, 0.500420,
		0.779651, -0.425986, 0.459000,
		40.624390, 41.020203, 27.692066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472664, 41.866844, 27.524265>,  <40.078636, 41.318394, 27.370768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472664, 41.866844, 27.524265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709396, 41.544643, 27.536329>,  <40.851437, 41.351322, 27.543568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709396, 41.544643, 27.536329>,  <40.472664, 41.866844, 27.524265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709396, 41.544643, 27.536329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604023, 0.418398, -0.678306,
		0.533757, 0.419657, 0.734161,
		0.591827, -0.805501, 0.030160,
		40.886944, 41.302994, 27.545378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111660, 42.147076, 27.501379>,  <40.472664, 41.866844, 27.524265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111660, 42.147076, 27.501379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179756, 41.770481, 27.385017>,  <41.220612, 41.544525, 27.315201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179756, 41.770481, 27.385017>,  <41.111660, 42.147076, 27.501379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179756, 41.770481, 27.385017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771840, 0.310926, -0.554607,
		0.612604, -0.130116, 0.779607,
		0.170237, -0.941486, -0.290903,
		41.230827, 41.488037, 27.297747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859261, 42.034069, 27.553268>,  <41.111660, 42.147076, 27.501379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859261, 42.034069, 27.553268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710777, 41.762993, 27.299356>,  <41.621689, 41.600346, 27.147009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710777, 41.762993, 27.299356>,  <41.859261, 42.034069, 27.553268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710777, 41.762993, 27.299356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660652, 0.287625, -0.693405,
		0.652492, -0.676762, 0.340950,
		-0.371204, -0.677691, -0.634778,
		41.599415, 41.559685, 27.108923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.524036, 37.221710, 22.379307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657879, 37.502491, 22.630800>,  <35.738182, 37.670959, 22.781696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657879, 37.502491, 22.630800>,  <35.524036, 37.221710, 22.379307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657879, 37.502491, 22.630800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256021, -0.574383, 0.777520,
		0.906915, -0.421128, -0.012475,
		0.334602, 0.701951, 0.628734,
		35.758259, 37.713078, 22.819420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835308, 36.791317, 23.054647>,  <35.524036, 37.221710, 22.379307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835308, 36.791317, 23.054647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.817562, 37.169430, 23.183939>,  <35.806915, 37.396297, 23.261513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.817562, 37.169430, 23.183939>,  <35.835308, 36.791317, 23.054647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817562, 37.169430, 23.183939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361600, -0.316803, 0.876858,
		0.931277, -0.077975, 0.355870,
		-0.044367, 0.945281, 0.323227,
		35.804253, 37.453014, 23.280907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075027, 36.737312, 23.725758>,  <35.835308, 36.791317, 23.054647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075027, 36.737312, 23.725758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.894764, 37.094337, 23.731918>,  <35.786606, 37.308552, 23.735615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.894764, 37.094337, 23.731918>,  <36.075027, 36.737312, 23.725758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894764, 37.094337, 23.731918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385936, -0.210358, 0.898222,
		0.804960, 0.398849, 0.439272,
		-0.450659, 0.892563, 0.015400,
		35.759567, 37.362106, 23.736538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253990, 37.109486, 24.375759>,  <36.075027, 36.737312, 23.725758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253990, 37.109486, 24.375759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914043, 37.259556, 24.227720>,  <35.710075, 37.349598, 24.138897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914043, 37.259556, 24.227720>,  <36.253990, 37.109486, 24.375759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914043, 37.259556, 24.227720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455562, -0.169958, 0.873829,
		0.264939, 0.911239, 0.315358,
		-0.849865, 0.375177, -0.370097,
		35.659084, 37.372108, 24.116692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072159, 37.501003, 24.825012>,  <36.253990, 37.109486, 24.375759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072159, 37.501003, 24.825012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727955, 37.431633, 24.633413>,  <35.521431, 37.390011, 24.518454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727955, 37.431633, 24.633413>,  <36.072159, 37.501003, 24.825012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727955, 37.431633, 24.633413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452502, -0.171685, 0.875080,
		-0.234000, 0.969766, 0.069261,
		-0.860515, -0.173429, -0.478996,
		35.469799, 37.379604, 24.489714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645340, 38.004787, 25.125652>,  <36.072159, 37.501003, 24.825012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645340, 38.004787, 25.125652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403168, 37.734737, 24.957048>,  <35.257866, 37.572708, 24.855886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403168, 37.734737, 24.957048>,  <35.645340, 38.004787, 25.125652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403168, 37.734737, 24.957048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440077, -0.157322, 0.884071,
		-0.663167, 0.720737, -0.201858,
		-0.605427, -0.675120, -0.421510,
		35.221539, 37.532200, 24.830595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951008, 38.228619, 25.391741>,  <35.645340, 38.004787, 25.125652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951008, 38.228619, 25.391741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955433, 37.841965, 25.289379>,  <34.958088, 37.609970, 25.227962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955433, 37.841965, 25.289379>,  <34.951008, 38.228619, 25.391741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955433, 37.841965, 25.289379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427933, -0.235877, 0.872488,
		-0.903743, 0.099859, -0.416266,
		0.011062, -0.966638, -0.255905,
		34.958752, 37.551971, 25.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295547, 37.995358, 25.534441>,  <34.951008, 38.228619, 25.391741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295547, 37.995358, 25.534441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.511803, 37.659748, 25.509977>,  <34.641556, 37.458382, 25.495298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.511803, 37.659748, 25.509977>,  <34.295547, 37.995358, 25.534441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511803, 37.659748, 25.509977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352839, -0.292151, 0.888905,
		-0.763684, -0.458998, -0.453990,
		0.540639, -0.839028, -0.061159,
		34.673996, 37.408039, 25.491631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872162, 37.337303, 25.562952>,  <34.295547, 37.995358, 25.534441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872162, 37.337303, 25.562952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244965, 37.258072, 25.684364>,  <34.468647, 37.210533, 25.757212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244965, 37.258072, 25.684364>,  <33.872162, 37.337303, 25.562952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244965, 37.258072, 25.684364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362317, -0.486881, 0.794778,
		-0.009645, -0.850712, -0.525543,
		0.932005, -0.198079, 0.303532,
		34.524567, 37.198647, 25.775423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763020, 36.707443, 26.052788>,  <33.872162, 37.337303, 25.562952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763020, 36.707443, 26.052788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145775, 36.789829, 26.134708>,  <34.375427, 36.839260, 26.183861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145775, 36.789829, 26.134708>,  <33.763020, 36.707443, 26.052788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145775, 36.789829, 26.134708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113200, -0.384903, 0.915989,
		0.267492, -0.899682, -0.344994,
		0.956888, 0.205966, 0.204803,
		34.432842, 36.851620, 26.196150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024281, 36.063503, 26.449135>,  <33.763020, 36.707443, 26.052788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024281, 36.063503, 26.449135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272072, 36.368908, 26.522127>,  <34.420746, 36.552151, 26.565924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.272072, 36.368908, 26.522127>,  <34.024281, 36.063503, 26.449135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272072, 36.368908, 26.522127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099305, -0.306808, 0.946577,
		0.778708, -0.568261, -0.265881,
		0.619477, 0.763510, 0.182483,
		34.457916, 36.597961, 26.576872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473206, 35.853207, 26.869228>,  <34.024281, 36.063503, 26.449135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473206, 35.853207, 26.869228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532093, 36.243176, 26.935989>,  <34.567425, 36.477158, 26.976046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532093, 36.243176, 26.935989>,  <34.473206, 35.853207, 26.869228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532093, 36.243176, 26.935989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091471, -0.181438, 0.979139,
		0.984866, -0.128876, -0.115887,
		0.147214, 0.974921, 0.166904,
		34.576256, 36.535652, 26.986061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050896, 35.912579, 27.434561>,  <34.473206, 35.853207, 26.869228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050896, 35.912579, 27.434561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.830986, 36.246391, 27.420126>,  <34.699039, 36.446678, 27.411465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.830986, 36.246391, 27.420126>,  <35.050896, 35.912579, 27.434561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830986, 36.246391, 27.420126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108833, -0.028731, 0.993645,
		0.828193, 0.550208, 0.106621,
		-0.549775, 0.834533, -0.036086,
		34.666054, 36.496750, 27.409300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228558, 36.229485, 28.005737>,  <35.050896, 35.912579, 27.434561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228558, 36.229485, 28.005737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.882778, 36.406204, 27.909788>,  <34.675308, 36.512238, 27.852219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.882778, 36.406204, 27.909788>,  <35.228558, 36.229485, 28.005737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882778, 36.406204, 27.909788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325516, -0.128300, 0.936791,
		0.383099, 0.887892, 0.254723,
		-0.864450, 0.441800, -0.239871,
		34.623444, 36.538746, 27.837826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835003, 36.569160, 28.249363>,  <35.228558, 36.229485, 28.005737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835003, 36.569160, 28.249363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136196, 36.313572, 28.312271>,  <36.316910, 36.160217, 28.350016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136196, 36.313572, 28.312271>,  <35.835003, 36.569160, 28.249363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136196, 36.313572, 28.312271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405085, 0.261749, -0.876010,
		0.518584, 0.723324, 0.455931,
		0.752979, -0.638976, 0.157268,
		36.362091, 36.121880, 28.359451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428829, 36.923923, 28.101711>,  <35.835003, 36.569160, 28.249363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428829, 36.923923, 28.101711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567566, 36.549400, 28.079716>,  <36.650806, 36.324684, 28.066519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.567566, 36.549400, 28.079716>,  <36.428829, 36.923923, 28.101711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567566, 36.549400, 28.079716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518625, 0.240308, -0.820537,
		0.781491, 0.256078, 0.568942,
		0.346843, -0.936310, -0.054990,
		36.671619, 36.268509, 28.063219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973171, 37.151611, 27.865040>,  <36.428829, 36.923923, 28.101711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973171, 37.151611, 27.865040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.018734, 36.755726, 27.830425>,  <37.046070, 36.518192, 27.809656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.018734, 36.755726, 27.830425>,  <36.973171, 37.151611, 27.865040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018734, 36.755726, 27.830425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654508, 0.140285, -0.742927,
		0.747426, 0.027987, 0.663756,
		0.113907, -0.989716, -0.086534,
		37.052906, 36.458813, 27.804464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655117, 36.913250, 27.825758>,  <36.973171, 37.151611, 27.865040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655117, 36.913250, 27.825758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466862, 36.604366, 27.655022>,  <37.353909, 36.419037, 27.552580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466862, 36.604366, 27.655022>,  <37.655117, 36.913250, 27.825758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466862, 36.604366, 27.655022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530033, 0.139314, -0.836455,
		0.705385, -0.619904, 0.343732,
		-0.470635, -0.772212, -0.426840,
		37.325672, 36.372704, 27.526970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198029, 36.595009, 27.375364>,  <37.655117, 36.913250, 27.825758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198029, 36.595009, 27.375364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846451, 36.491005, 27.215435>,  <37.635506, 36.428600, 27.119478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846451, 36.491005, 27.215435>,  <38.198029, 36.595009, 27.375364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846451, 36.491005, 27.215435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368110, 0.163185, -0.915350,
		0.303249, -0.951716, -0.047715,
		-0.878940, -0.260015, -0.399821,
		37.582767, 36.413002, 27.095490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398098, 36.193455, 26.870432>,  <38.198029, 36.595009, 27.375364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398098, 36.193455, 26.870432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034393, 36.316681, 26.758478>,  <37.816170, 36.390617, 26.691305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034393, 36.316681, 26.758478>,  <38.398098, 36.193455, 26.870432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034393, 36.316681, 26.758478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365058, 0.267259, -0.891799,
		-0.199927, -0.913056, -0.355470,
		-0.909264, 0.308061, -0.279886,
		37.761616, 36.409100, 26.674513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333546, 35.845009, 26.308041>,  <38.398098, 36.193455, 26.870432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333546, 35.845009, 26.308041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059029, 36.132740, 26.265024>,  <37.894318, 36.305378, 26.239214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059029, 36.132740, 26.265024>,  <38.333546, 35.845009, 26.308041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059029, 36.132740, 26.265024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248444, 0.092887, -0.964182,
		-0.683578, -0.688429, -0.242461,
		-0.686292, 0.719332, -0.107540,
		37.853142, 36.348541, 26.232761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114422, 35.700386, 25.619484>,  <38.333546, 35.845009, 26.308041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114422, 35.700386, 25.619484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999847, 36.068504, 25.726074>,  <37.931103, 36.289375, 25.790030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999847, 36.068504, 25.726074>,  <38.114422, 35.700386, 25.619484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999847, 36.068504, 25.726074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119926, 0.310381, -0.943017,
		-0.950565, -0.238154, -0.199271,
		-0.286433, 0.920297, 0.266477,
		37.913918, 36.344593, 25.806017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681892, 35.853798, 25.109163>,  <38.114422, 35.700386, 25.619484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681892, 35.853798, 25.109163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814865, 36.189320, 25.281630>,  <37.894650, 36.390633, 25.385109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814865, 36.189320, 25.281630>,  <37.681892, 35.853798, 25.109163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814865, 36.189320, 25.281630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355508, 0.311999, -0.881062,
		-0.873559, 0.446174, -0.194483,
		0.332428, 0.838800, 0.431168,
		37.914593, 36.440960, 25.410980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406597, 36.339081, 24.718714>,  <37.681892, 35.853798, 25.109163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406597, 36.339081, 24.718714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675312, 36.552505, 24.924242>,  <37.836540, 36.680561, 25.047558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.675312, 36.552505, 24.924242>,  <37.406597, 36.339081, 24.718714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675312, 36.552505, 24.924242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312002, 0.425304, -0.849571,
		-0.671829, 0.731046, 0.119242,
		0.671789, 0.533562, 0.513819,
		37.876850, 36.712574, 25.078388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355263, 37.075188, 24.649210>,  <37.406597, 36.339081, 24.718714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355263, 37.075188, 24.649210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741741, 37.026573, 24.740152>,  <37.973629, 36.997402, 24.794718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741741, 37.026573, 24.740152>,  <37.355263, 37.075188, 24.649210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741741, 37.026573, 24.740152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255687, 0.564531, -0.784811,
		-0.032964, 0.816415, 0.576524,
		0.966198, -0.121539, 0.227355,
		38.031601, 36.990112, 24.808359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671879, 37.747646, 24.446577>,  <37.355263, 37.075188, 24.649210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671879, 37.747646, 24.446577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976852, 37.493526, 24.495703>,  <38.159836, 37.341053, 24.525177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976852, 37.493526, 24.495703>,  <37.671879, 37.747646, 24.446577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976852, 37.493526, 24.495703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496628, 0.452877, -0.740448,
		0.414786, 0.625539, 0.660798,
		0.762439, -0.635298, 0.122813,
		38.205585, 37.302937, 24.532547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291584, 38.167561, 24.493761>,  <37.671879, 37.747646, 24.446577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291584, 38.167561, 24.493761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405766, 37.798962, 24.388420>,  <38.474274, 37.577801, 24.325214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405766, 37.798962, 24.388420>,  <38.291584, 38.167561, 24.493761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405766, 37.798962, 24.388420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518018, 0.379543, -0.766554,
		0.806332, 0.082396, 0.585696,
		0.285458, -0.921498, -0.263354,
		38.491402, 37.522511, 24.309414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987198, 38.185074, 24.354727>,  <38.291584, 38.167561, 24.493761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987198, 38.185074, 24.354727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859932, 37.859642, 24.160055>,  <38.783573, 37.664383, 24.043251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859932, 37.859642, 24.160055>,  <38.987198, 38.185074, 24.354727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859932, 37.859642, 24.160055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365430, 0.368440, -0.854817,
		0.874774, -0.449824, 0.180080,
		-0.318168, -0.813579, -0.486681,
		38.764481, 37.615570, 24.014051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643192, 37.819756, 24.454575>,  <38.987198, 38.185074, 24.354727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643192, 37.819756, 24.454575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005928, 37.956856, 24.552691>,  <40.223568, 38.039116, 24.611559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005928, 37.956856, 24.552691>,  <39.643192, 37.819756, 24.454575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005928, 37.956856, 24.552691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014694, -0.555908, 0.831114,
		0.421222, -0.757290, -0.499083,
		0.906839, 0.342750, 0.245288,
		40.277981, 38.059681, 24.626278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904198, 37.247414, 24.826948>,  <39.643192, 37.819756, 24.454575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904198, 37.247414, 24.826948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127686, 37.557884, 24.943829>,  <40.261780, 37.744167, 25.013956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127686, 37.557884, 24.943829>,  <39.904198, 37.247414, 24.826948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127686, 37.557884, 24.943829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038695, -0.327544, 0.944043,
		0.828451, -0.538766, -0.152972,
		0.558724, 0.776174, 0.292201,
		40.295303, 37.790737, 25.031488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457455, 36.856655, 25.099186>,  <39.904198, 37.247414, 24.826948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457455, 36.856655, 25.099186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.476448, 37.239922, 25.212084>,  <40.487843, 37.469883, 25.279823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.476448, 37.239922, 25.212084>,  <40.457455, 36.856655, 25.099186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476448, 37.239922, 25.212084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001455, -0.282629, 0.959228,
		0.998871, -0.045135, -0.014814,
		0.047482, 0.958167, 0.282244,
		40.490692, 37.527370, 25.296757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103020, 37.057343, 25.540054>,  <40.457455, 36.856655, 25.099186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103020, 37.057343, 25.540054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810799, 37.321472, 25.609650>,  <40.635468, 37.479950, 25.651407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810799, 37.321472, 25.609650>,  <41.103020, 37.057343, 25.540054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810799, 37.321472, 25.609650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011915, -0.267084, 0.963600,
		0.682757, 0.701883, 0.202985,
		-0.730548, 0.660324, 0.173990,
		40.591633, 37.519569, 25.661846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367378, 37.485352, 26.158178>,  <41.103020, 37.057343, 25.540054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367378, 37.485352, 26.158178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.975056, 37.562431, 26.146235>,  <40.739662, 37.608681, 26.139069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.975056, 37.562431, 26.146235>,  <41.367378, 37.485352, 26.158178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975056, 37.562431, 26.146235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053134, -0.116780, 0.991735,
		0.187621, 0.974284, 0.124777,
		-0.980803, 0.192700, -0.029857,
		40.680813, 37.620243, 26.137278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263779, 37.915028, 26.734917>,  <41.367378, 37.485352, 26.158178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263779, 37.915028, 26.734917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892879, 37.775726, 26.679874>,  <40.670341, 37.692146, 26.646849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892879, 37.775726, 26.679874>,  <41.263779, 37.915028, 26.734917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892879, 37.775726, 26.679874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117403, -0.078574, 0.989971,
		-0.355573, 0.934102, 0.031971,
		-0.927246, -0.348253, -0.137605,
		40.614704, 37.671249, 26.638594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857021, 38.278255, 27.231592>,  <41.263779, 37.915028, 26.734917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857021, 38.278255, 27.231592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637680, 37.960495, 27.127100>,  <40.506077, 37.769840, 27.064405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637680, 37.960495, 27.127100>,  <40.857021, 38.278255, 27.231592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637680, 37.960495, 27.127100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280225, -0.119765, 0.952434,
		-0.787898, 0.595473, -0.156936,
		-0.548353, -0.794398, -0.261229,
		40.473175, 37.722176, 27.048731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396214, 38.395332, 27.626503>,  <40.857021, 38.278255, 27.231592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396214, 38.395332, 27.626503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.373062, 38.004185, 27.546076>,  <40.359173, 37.769497, 27.497820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.373062, 38.004185, 27.546076>,  <40.396214, 38.395332, 27.626503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373062, 38.004185, 27.546076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288500, -0.176428, 0.941085,
		-0.955729, 0.112475, -0.271903,
		-0.057877, -0.977866, -0.201067,
		40.355698, 37.710823, 27.485756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738178, 38.123253, 27.837597>,  <40.396214, 38.395332, 27.626503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738178, 38.123253, 27.837597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961704, 37.791710, 27.826906>,  <40.095821, 37.592785, 27.820492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961704, 37.791710, 27.826906>,  <39.738178, 38.123253, 27.837597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961704, 37.791710, 27.826906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313497, -0.240978, 0.918504,
		-0.767753, -0.504896, -0.394508,
		0.558816, -0.828861, -0.026728,
		40.129349, 37.543053, 27.818888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271416, 37.686855, 28.086027>,  <39.738178, 38.123253, 27.837597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271416, 37.686855, 28.086027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641247, 37.542500, 28.134886>,  <39.863144, 37.455887, 28.164202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641247, 37.542500, 28.134886>,  <39.271416, 37.686855, 28.086027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641247, 37.542500, 28.134886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252688, -0.340884, 0.905509,
		-0.285148, -0.868077, -0.406366,
		0.924575, -0.360888, 0.122150,
		39.918617, 37.434231, 28.171530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110115, 37.097553, 28.362957>,  <39.271416, 37.686855, 28.086027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110115, 37.097553, 28.362957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.500244, 37.144943, 28.437473>,  <39.734322, 37.173378, 28.482183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.500244, 37.144943, 28.437473>,  <39.110115, 37.097553, 28.362957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500244, 37.144943, 28.437473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106321, -0.487444, 0.866657,
		0.193487, -0.865079, -0.462819,
		0.975325, 0.118480, 0.186290,
		39.792843, 37.180489, 28.493361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336807, 36.477371, 28.613180>,  <39.110115, 37.097553, 28.362957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336807, 36.477371, 28.613180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616463, 36.737080, 28.732954>,  <39.784256, 36.892902, 28.804819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616463, 36.737080, 28.732954>,  <39.336807, 36.477371, 28.613180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616463, 36.737080, 28.732954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005458, -0.423632, 0.905818,
		0.714970, -0.631654, -0.299719,
		0.699134, 0.649268, 0.299437,
		39.826202, 36.931862, 28.822784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941250, 36.124866, 28.964689>,  <39.336807, 36.477371, 28.613180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941250, 36.124866, 28.964689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.921967, 36.505108, 29.087341>,  <39.910397, 36.733253, 29.160933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.921967, 36.505108, 29.087341>,  <39.941250, 36.124866, 28.964689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921967, 36.505108, 29.087341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032041, -0.308301, 0.950749,
		0.998323, 0.036006, 0.045320,
		-0.048205, 0.950607, 0.306631,
		39.907505, 36.790291, 29.179331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425251, 36.135338, 29.502764>,  <39.941250, 36.124866, 28.964689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425251, 36.135338, 29.502764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190922, 36.457993, 29.534126>,  <40.050323, 36.651585, 29.552944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190922, 36.457993, 29.534126>,  <40.425251, 36.135338, 29.502764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190922, 36.457993, 29.534126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052228, -0.058968, 0.996893,
		0.808755, 0.588097, -0.007585,
		-0.585823, 0.806638, 0.078406,
		40.015175, 36.699986, 29.557648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.544998, 41.831554, 26.820545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.194492, 41.665771, 26.722254>,  <41.984188, 41.566303, 26.663279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.194492, 41.665771, 26.722254>,  <42.544998, 41.831554, 26.820545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194492, 41.665771, 26.722254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160544, 0.229705, -0.959928,
		0.454296, -0.880602, -0.134743,
		-0.876265, -0.414459, -0.245729,
		41.931614, 41.541435, 26.648535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652744, 41.287300, 26.250652>,  <42.544998, 41.831554, 26.820545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652744, 41.287300, 26.250652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.266636, 41.388031, 26.222834>,  <42.034969, 41.448471, 26.206142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.266636, 41.388031, 26.222834>,  <42.652744, 41.287300, 26.250652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266636, 41.388031, 26.222834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118062, 0.183006, -0.975997,
		-0.233057, -0.950311, -0.206382,
		-0.965270, 0.251829, -0.069545,
		41.977055, 41.463581, 26.201969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400814, 40.792843, 25.717497>,  <42.652744, 41.287300, 26.250652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400814, 40.792843, 25.717497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159008, 41.111141, 25.732214>,  <42.013924, 41.302120, 25.741045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159008, 41.111141, 25.732214>,  <42.400814, 40.792843, 25.717497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159008, 41.111141, 25.732214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187247, 0.186840, -0.964380,
		-0.774273, -0.576094, -0.261949,
		-0.604516, 0.795743, 0.036794,
		41.977654, 41.349865, 25.743252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977757, 40.765270, 25.196959>,  <42.400814, 40.792843, 25.717497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977757, 40.765270, 25.196959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.951855, 41.157616, 25.270411>,  <41.936314, 41.393021, 25.314482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.951855, 41.157616, 25.270411>,  <41.977757, 40.765270, 25.196959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951855, 41.157616, 25.270411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071653, 0.188110, -0.979531,
		-0.995325, -0.050276, -0.082463,
		-0.064759, 0.980860, 0.183629,
		41.932426, 41.451874, 25.325499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511375, 41.052761, 24.816608>,  <41.977757, 40.765270, 25.196959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511375, 41.052761, 24.816608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731339, 41.380260, 24.882641>,  <41.863316, 41.576759, 24.922260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731339, 41.380260, 24.882641>,  <41.511375, 41.052761, 24.816608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731339, 41.380260, 24.882641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050056, 0.229598, -0.971997,
		-0.833722, 0.526249, 0.167241,
		0.549911, 0.818747, 0.165079,
		41.896313, 41.625885, 24.932165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166309, 41.599941, 24.377792>,  <41.511375, 41.052761, 24.816608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166309, 41.599941, 24.377792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.526409, 41.750713, 24.464954>,  <41.742470, 41.841175, 24.517252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.526409, 41.750713, 24.464954>,  <41.166309, 41.599941, 24.377792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526409, 41.750713, 24.464954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023402, 0.457869, -0.888712,
		-0.434754, 0.805157, 0.403373,
		0.900245, 0.376932, 0.217903,
		41.796482, 41.863792, 24.530325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057602, 42.317265, 24.276123>,  <41.166309, 41.599941, 24.377792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057602, 42.317265, 24.276123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453472, 42.260094, 24.271723>,  <41.690994, 42.225792, 24.269083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453472, 42.260094, 24.271723>,  <41.057602, 42.317265, 24.276123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453472, 42.260094, 24.271723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058392, 0.472034, -0.879644,
		0.130917, 0.869917, 0.475505,
		0.989672, -0.142926, -0.011001,
		41.750374, 42.217216, 24.268423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382057, 42.971306, 24.166283>,  <41.057602, 42.317265, 24.276123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382057, 42.971306, 24.166283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.649670, 42.695911, 24.054293>,  <41.810238, 42.530674, 23.987099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.649670, 42.695911, 24.054293>,  <41.382057, 42.971306, 24.166283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649670, 42.695911, 24.054293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158487, 0.500192, -0.851287,
		0.726137, 0.525167, 0.443761,
		0.669034, -0.688482, -0.279976,
		41.850380, 42.489368, 23.970301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947384, 43.359486, 23.856943>,  <41.382057, 42.971306, 24.166283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947384, 43.359486, 23.856943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.947403, 42.979572, 23.731781>,  <41.947414, 42.751625, 23.656685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.947403, 42.979572, 23.731781>,  <41.947384, 43.359486, 23.856943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947403, 42.979572, 23.731781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167161, 0.308509, -0.936418,
		0.985930, -0.052261, 0.158782,
		0.000048, -0.949785, -0.312904,
		41.947418, 42.694637, 23.637911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480564, 43.254284, 23.445261>,  <41.947384, 43.359486, 23.856943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480564, 43.254284, 23.445261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.271893, 42.932255, 23.332327>,  <42.146690, 42.739037, 23.264566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.271893, 42.932255, 23.332327>,  <42.480564, 43.254284, 23.445261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271893, 42.932255, 23.332327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138609, 0.246557, -0.959165,
		0.841808, -0.539509, -0.017033,
		-0.521678, -0.805071, -0.282334,
		42.115391, 42.690735, 23.247627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818356, 42.985336, 22.832603>,  <42.480564, 43.254284, 23.445261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818356, 42.985336, 22.832603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.470051, 42.793491, 22.789268>,  <42.261066, 42.678383, 22.763268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.470051, 42.793491, 22.789268>,  <42.818356, 42.985336, 22.832603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470051, 42.793491, 22.789268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007468, 0.233209, -0.972398,
		0.491642, -0.845921, -0.206652,
		-0.870765, -0.479615, -0.108338,
		42.208820, 42.649609, 22.756767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944008, 42.477680, 22.348375>,  <42.818356, 42.985336, 22.832603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944008, 42.477680, 22.348375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.549656, 42.543892, 22.338228>,  <42.313046, 42.583618, 22.332140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.549656, 42.543892, 22.338228>,  <42.944008, 42.477680, 22.348375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549656, 42.543892, 22.338228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043988, 0.109808, -0.992979,
		-0.161579, -0.980073, -0.115539,
		-0.985879, 0.165527, -0.025369,
		42.253891, 42.593552, 22.330618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626881, 42.176243, 21.723246>,  <42.944008, 42.477680, 22.348375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626881, 42.176243, 21.723246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.383930, 42.465252, 21.855343>,  <42.238159, 42.638657, 21.934601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.383930, 42.465252, 21.855343>,  <42.626881, 42.176243, 21.723246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383930, 42.465252, 21.855343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041632, 0.444082, -0.895018,
		-0.793322, -0.529865, -0.299805,
		-0.607377, 0.722519, 0.330241,
		42.201717, 42.682007, 21.954414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767311, 41.459408, 21.563213>,  <42.626881, 42.176243, 21.723246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767311, 41.459408, 21.563213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.861141, 41.202042, 21.854689>,  <42.917439, 41.047623, 22.029573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.861141, 41.202042, 21.854689>,  <42.767311, 41.459408, 21.563213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861141, 41.202042, 21.854689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965167, 0.243510, -0.095680,
		-0.115881, 0.725751, 0.678127,
		0.234571, -0.643419, 0.728690,
		42.931511, 41.009014, 22.073296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734947, 41.314537, 20.851217>,  <42.767311, 41.459408, 21.563213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734947, 41.314537, 20.851217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.669373, 41.028530, 20.579372>,  <42.630028, 40.856926, 20.416265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.669373, 41.028530, 20.579372>,  <42.734947, 41.314537, 20.851217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669373, 41.028530, 20.579372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637038, -0.449284, 0.626360,
		-0.753198, 0.535621, -0.381840,
		-0.163937, -0.715020, -0.679611,
		42.620190, 40.814026, 20.375488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024094, 41.276489, 20.806934>,  <42.734947, 41.314537, 20.851217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024094, 41.276489, 20.806934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133385, 40.915459, 20.673849>,  <42.198959, 40.698841, 20.593998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133385, 40.915459, 20.673849>,  <42.024094, 41.276489, 20.806934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133385, 40.915459, 20.673849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669623, -0.426774, 0.607840,
		-0.690617, 0.056714, -0.720994,
		0.273228, -0.902578, -0.332714,
		42.215355, 40.644684, 20.574036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422184, 40.856335, 20.839266>,  <42.024094, 41.276489, 20.806934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422184, 40.856335, 20.839266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704918, 40.578857, 20.783878>,  <41.874557, 40.412373, 20.750647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704918, 40.578857, 20.783878>,  <41.422184, 40.856335, 20.839266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704918, 40.578857, 20.783878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565516, -0.671741, 0.478493,
		-0.424941, -0.259911, -0.867105,
		0.706835, -0.693694, -0.138466,
		41.916969, 40.370750, 20.742338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078178, 40.220123, 20.688274>,  <41.422184, 40.856335, 20.839266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078178, 40.220123, 20.688274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429443, 40.106720, 20.842390>,  <41.640202, 40.038677, 20.934858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429443, 40.106720, 20.842390>,  <41.078178, 40.220123, 20.688274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429443, 40.106720, 20.842390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478050, -0.548921, 0.685678,
		0.017096, -0.786326, -0.617576,
		0.878166, -0.283509, 0.385287,
		41.692894, 40.021667, 20.957975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154175, 39.429089, 20.866318>,  <41.078178, 40.220123, 20.688274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154175, 39.429089, 20.866318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.405258, 39.640656, 21.094784>,  <41.555908, 39.767593, 21.231863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.405258, 39.640656, 21.094784>,  <41.154175, 39.429089, 20.866318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405258, 39.640656, 21.094784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235642, -0.570194, 0.786989,
		0.741925, -0.628591, -0.233282,
		0.627711, 0.528915, 0.571164,
		41.593571, 39.799332, 21.266132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527485, 38.855099, 21.161476>,  <41.154175, 39.429089, 20.866318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527485, 38.855099, 21.161476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613251, 39.165134, 21.399220>,  <41.664711, 39.351154, 21.541866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613251, 39.165134, 21.399220>,  <41.527485, 38.855099, 21.161476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613251, 39.165134, 21.399220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256165, -0.542588, 0.799986,
		0.942553, -0.323782, 0.082213,
		0.214413, 0.775090, 0.594359,
		41.677574, 39.397663, 21.577528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970051, 38.673428, 21.844751>,  <41.527485, 38.855099, 21.161476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970051, 38.673428, 21.844751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799805, 39.016354, 21.960590>,  <41.697659, 39.222111, 22.030094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799805, 39.016354, 21.960590>,  <41.970051, 38.673428, 21.844751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799805, 39.016354, 21.960590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231661, -0.412594, 0.880965,
		0.874750, 0.307861, 0.374211,
		-0.425612, 0.857315, 0.289597,
		41.672123, 39.273548, 22.047470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225098, 38.858978, 22.542511>,  <41.970051, 38.673428, 21.844751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225098, 38.858978, 22.542511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.868690, 39.036827, 22.505867>,  <41.654846, 39.143536, 22.483881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.868690, 39.036827, 22.505867>,  <42.225098, 38.858978, 22.542511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868690, 39.036827, 22.505867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212509, -0.230204, 0.949656,
		0.401148, 0.865632, 0.299603,
		-0.891022, 0.444621, -0.091608,
		41.601383, 39.170212, 22.478384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132690, 39.163963, 23.155426>,  <42.225098, 38.858978, 22.542511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132690, 39.163963, 23.155426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.769558, 39.173676, 22.987968>,  <41.551678, 39.179501, 22.887495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.769558, 39.173676, 22.987968>,  <42.132690, 39.163963, 23.155426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769558, 39.173676, 22.987968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412446, -0.232031, 0.880937,
		-0.075752, 0.972406, 0.220656,
		-0.907827, 0.024276, -0.418642,
		41.497211, 39.180958, 22.862375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777546, 39.546875, 23.575237>,  <42.132690, 39.163963, 23.155426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777546, 39.546875, 23.575237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.529778, 39.305054, 23.374905>,  <41.381115, 39.159962, 23.254705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.529778, 39.305054, 23.374905>,  <41.777546, 39.546875, 23.575237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529778, 39.305054, 23.374905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417176, -0.286951, 0.862336,
		-0.665040, 0.743087, -0.074460,
		-0.619424, -0.604551, -0.500832,
		41.343952, 39.123688, 23.224655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085117, 39.750832, 23.632814>,  <41.777546, 39.546875, 23.575237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085117, 39.750832, 23.632814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.065498, 39.357635, 23.562027>,  <41.053726, 39.121716, 23.519554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.065498, 39.357635, 23.562027>,  <41.085117, 39.750832, 23.632814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065498, 39.357635, 23.562027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380254, -0.145461, 0.913372,
		-0.923580, 0.112091, -0.366653,
		-0.049047, -0.982994, -0.176968,
		41.050785, 39.062737, 23.508936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415672, 39.567875, 23.877529>,  <41.085117, 39.750832, 23.632814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415672, 39.567875, 23.877529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558323, 39.196465, 23.836243>,  <40.643913, 38.973618, 23.811470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558323, 39.196465, 23.836243>,  <40.415672, 39.567875, 23.877529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558323, 39.196465, 23.836243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492002, -0.280577, 0.824143,
		-0.794201, -0.243124, -0.556898,
		0.356622, -0.928530, -0.103217,
		40.665310, 38.917904, 23.805277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945240, 39.091976, 24.010464>,  <40.415672, 39.567875, 23.877529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945240, 39.091976, 24.010464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.264484, 38.853165, 24.042917>,  <40.456032, 38.709877, 24.062389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.264484, 38.853165, 24.042917>,  <39.945240, 39.091976, 24.010464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264484, 38.853165, 24.042917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416368, -0.449180, 0.790490,
		-0.435499, -0.664679, -0.607077,
		0.798109, -0.597026, 0.081134,
		40.503918, 38.674057, 24.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714447, 38.558041, 24.244371>,  <39.945240, 39.091976, 24.010464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714447, 38.558041, 24.244371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.104500, 38.500557, 24.311857>,  <40.338531, 38.466068, 24.352348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.104500, 38.500557, 24.311857>,  <39.714447, 38.558041, 24.244371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104500, 38.500557, 24.311857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221542, -0.611649, 0.759476,
		-0.005949, -0.777967, -0.628276,
		0.975132, -0.143708, 0.168714,
		40.397041, 38.457443, 24.362471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564442, 38.103832, 23.758656>,  <39.714447, 38.558041, 24.244371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564442, 38.103832, 23.758656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.258694, 37.872513, 23.644590>,  <39.075245, 37.733723, 23.576151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.258694, 37.872513, 23.644590>,  <39.564442, 38.103832, 23.758656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258694, 37.872513, 23.644590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103040, 0.327024, -0.939382,
		0.636496, -0.747415, -0.190379,
		-0.764366, -0.578296, -0.285163,
		39.029385, 37.699024, 23.559042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759171, 37.759354, 23.131474>,  <39.564442, 38.103832, 23.758656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759171, 37.759354, 23.131474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.363297, 37.702656, 23.139860>,  <39.125774, 37.668636, 23.144892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.363297, 37.702656, 23.139860>,  <39.759171, 37.759354, 23.131474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363297, 37.702656, 23.139860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045819, 0.174418, -0.983605,
		0.135760, -0.974416, -0.179113,
		-0.989681, -0.141741, 0.020968,
		39.066391, 37.660133, 23.146151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603882, 37.229393, 22.576405>,  <39.759171, 37.759354, 23.131474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603882, 37.229393, 22.576405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280941, 37.446747, 22.668413>,  <39.087177, 37.577160, 22.723619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280941, 37.446747, 22.668413>,  <39.603882, 37.229393, 22.576405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280941, 37.446747, 22.668413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045690, 0.331086, -0.942494,
		-0.588296, -0.771436, -0.242476,
		-0.807354, 0.543387, 0.230024,
		39.038734, 37.609764, 22.737421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139030, 36.979321, 22.173800>,  <39.603882, 37.229393, 22.576405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139030, 36.979321, 22.173800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037205, 37.355896, 22.262251>,  <38.976109, 37.581841, 22.315321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037205, 37.355896, 22.262251>,  <39.139030, 36.979321, 22.173800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037205, 37.355896, 22.262251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057970, 0.243104, -0.968266,
		-0.965317, -0.233666, -0.116461,
		-0.254563, 0.941435, 0.221127,
		38.960835, 37.638325, 22.328588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693466, 37.119034, 21.729761>,  <39.139030, 36.979321, 22.173800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693466, 37.119034, 21.729761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.824368, 37.475307, 21.855993>,  <38.902908, 37.689072, 21.931732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.824368, 37.475307, 21.855993>,  <38.693466, 37.119034, 21.729761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824368, 37.475307, 21.855993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074040, 0.308773, -0.948250,
		-0.942033, 0.333680, 0.035100,
		0.327250, 0.890683, 0.315580,
		38.922543, 37.742512, 21.950668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251472, 37.612904, 21.362728>,  <38.693466, 37.119034, 21.729761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251472, 37.612904, 21.362728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571171, 37.823238, 21.479145>,  <38.762989, 37.949440, 21.548996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571171, 37.823238, 21.479145>,  <38.251472, 37.612904, 21.362728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571171, 37.823238, 21.479145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031086, 0.447443, -0.893772,
		-0.600203, 0.723389, 0.341270,
		0.799243, 0.525836, 0.291044,
		38.810944, 37.980988, 21.566458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060921, 38.203571, 21.037006>,  <38.251472, 37.612904, 21.362728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060921, 38.203571, 21.037006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.440620, 38.285011, 21.132904>,  <38.668438, 38.333878, 21.190443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.440620, 38.285011, 21.132904>,  <38.060921, 38.203571, 21.037006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440620, 38.285011, 21.132904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067478, 0.612647, -0.787471,
		-0.307209, 0.763681, 0.567815,
		0.949247, 0.203603, 0.239742,
		38.725395, 38.346092, 21.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837185, 38.886635, 21.122252>,  <38.060921, 38.203571, 21.037006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837185, 38.886635, 21.122252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499496, 39.090843, 21.056942>,  <37.296883, 39.213367, 21.017757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499496, 39.090843, 21.056942>,  <37.837185, 38.886635, 21.122252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499496, 39.090843, 21.056942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381651, -0.358671, 0.851879,
		0.376343, 0.781487, 0.497639,
		-0.844221, 0.510523, -0.163272,
		37.246231, 39.243999, 21.007961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751587, 39.314655, 21.714466>,  <37.837185, 38.886635, 21.122252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751587, 39.314655, 21.714466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392128, 39.281242, 21.542206>,  <37.176453, 39.261192, 21.438850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392128, 39.281242, 21.542206>,  <37.751587, 39.314655, 21.714466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392128, 39.281242, 21.542206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369024, -0.386838, 0.845090,
		-0.237186, 0.918356, 0.316804,
		-0.898646, -0.083535, -0.430648,
		37.122536, 39.256184, 21.413012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217426, 39.611206, 22.241684>,  <37.751587, 39.314655, 21.714466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217426, 39.611206, 22.241684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.023869, 39.380955, 21.978018>,  <36.907734, 39.242805, 21.819818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.023869, 39.380955, 21.978018>,  <37.217426, 39.611206, 22.241684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023869, 39.380955, 21.978018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508934, -0.427649, 0.747062,
		-0.711922, 0.696970, -0.086020,
		-0.483894, -0.575629, -0.659165,
		36.878700, 39.208267, 21.780268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526630, 39.661732, 22.401119>,  <37.217426, 39.611206, 22.241684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526630, 39.661732, 22.401119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522514, 39.330414, 22.177038>,  <36.520046, 39.131622, 22.042589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522514, 39.330414, 22.177038>,  <36.526630, 39.661732, 22.401119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522514, 39.330414, 22.177038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493839, -0.482934, 0.723116,
		-0.869492, 0.284091, -0.404073,
		-0.010290, -0.828291, -0.560203,
		36.519428, 39.081928, 22.008978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801964, 39.384022, 22.425150>,  <36.526630, 39.661732, 22.401119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801964, 39.384022, 22.425150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029377, 39.072933, 22.317879>,  <36.165825, 38.886280, 22.253515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029377, 39.072933, 22.317879>,  <35.801964, 39.384022, 22.425150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029377, 39.072933, 22.317879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473824, -0.576058, 0.666070,
		-0.672503, -0.251613, -0.696011,
		0.568534, -0.777720, -0.268181,
		36.199936, 38.839619, 22.237425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336769, 38.851475, 22.323498>,  <35.801964, 39.384022, 22.425150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336769, 38.851475, 22.323498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691475, 38.679062, 22.390249>,  <35.904301, 38.575615, 22.430300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691475, 38.679062, 22.390249>,  <35.336769, 38.851475, 22.323498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691475, 38.679062, 22.390249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434992, -0.656179, 0.616612,
		-0.156278, -0.619385, -0.769377,
		0.886769, -0.431035, 0.166881,
		35.957504, 38.549751, 22.440313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290382, 38.054970, 22.054548>,  <35.336769, 38.851475, 22.323498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290382, 38.054970, 22.054548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575722, 38.118374, 22.327606>,  <35.746925, 38.156418, 22.491442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575722, 38.118374, 22.327606>,  <35.290382, 38.054970, 22.054548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575722, 38.118374, 22.327606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337130, -0.776352, 0.532561,
		0.614389, -0.610043, -0.500373,
		0.713351, 0.158510, 0.682646,
		35.789726, 38.165928, 22.532400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.268654, 43.867458, 21.342354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.591904, 43.655495, 21.445223>,  <39.785854, 43.528316, 21.506945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.591904, 43.655495, 21.445223>,  <39.268654, 43.867458, 21.342354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591904, 43.655495, 21.445223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320372, -0.029055, 0.946846,
		-0.494271, -0.847556, -0.193248,
		0.808120, -0.529910, 0.257173,
		39.834339, 43.496521, 21.522375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143639, 43.280361, 21.731634>,  <39.268654, 43.867458, 21.342354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143639, 43.280361, 21.731634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516842, 43.382885, 21.832663>,  <39.740765, 43.444401, 21.893280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516842, 43.382885, 21.832663>,  <39.143639, 43.280361, 21.731634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516842, 43.382885, 21.832663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166157, -0.315719, 0.934191,
		0.319185, -0.913579, -0.251982,
		0.933013, 0.256311, 0.252570,
		39.796745, 43.459778, 21.908434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311073, 42.755074, 22.150038>,  <39.143639, 43.280361, 21.731634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311073, 42.755074, 22.150038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557339, 43.058640, 22.234896>,  <39.705097, 43.240780, 22.285810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557339, 43.058640, 22.234896>,  <39.311073, 42.755074, 22.150038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557339, 43.058640, 22.234896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215387, -0.096894, 0.971710,
		0.758001, -0.643940, 0.103807,
		0.615664, 0.758916, 0.212143,
		39.742039, 43.286316, 22.298538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797741, 42.491955, 22.554396>,  <39.311073, 42.755074, 22.150038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797741, 42.491955, 22.554396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817978, 42.881138, 22.644550>,  <39.830120, 43.114647, 22.698643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.817978, 42.881138, 22.644550>,  <39.797741, 42.491955, 22.554396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817978, 42.881138, 22.644550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141794, -0.216392, 0.965955,
		0.988603, -0.080826, 0.127012,
		0.050590, 0.972955, 0.225386,
		39.833157, 43.173023, 22.712166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058125, 42.394356, 23.172079>,  <39.797741, 42.491955, 22.554396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058125, 42.394356, 23.172079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920826, 42.769817, 23.158754>,  <39.838448, 42.995094, 23.150759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920826, 42.769817, 23.158754>,  <40.058125, 42.394356, 23.172079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920826, 42.769817, 23.158754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148620, -0.019260, 0.988707,
		0.927412, 0.344323, 0.146114,
		-0.343248, 0.938654, -0.033312,
		39.817852, 43.051414, 23.148762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348732, 42.732285, 23.710724>,  <40.058125, 42.394356, 23.172079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348732, 42.732285, 23.710724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036648, 42.964603, 23.617811>,  <39.849396, 43.103992, 23.562063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036648, 42.964603, 23.617811>,  <40.348732, 42.732285, 23.710724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036648, 42.964603, 23.617811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329784, -0.066389, 0.941719,
		0.531523, 0.811340, 0.243333,
		-0.780209, 0.580792, -0.232280,
		39.802586, 43.138840, 23.548128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255371, 43.122967, 24.260185>,  <40.348732, 42.732285, 23.710724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255371, 43.122967, 24.260185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.901680, 43.133144, 24.073641>,  <39.689465, 43.139252, 23.961714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.901680, 43.133144, 24.073641>,  <40.255371, 43.122967, 24.260185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901680, 43.133144, 24.073641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466709, -0.009707, 0.884358,
		0.017971, 0.999629, 0.020456,
		-0.884228, 0.025439, -0.466361,
		39.636410, 43.140778, 23.933733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841366, 43.676006, 24.561232>,  <40.255371, 43.122967, 24.260185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841366, 43.676006, 24.561232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585163, 43.410496, 24.406750>,  <39.431442, 43.251190, 24.314060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585163, 43.410496, 24.406750>,  <39.841366, 43.676006, 24.561232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585163, 43.410496, 24.406750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451872, -0.080875, 0.888409,
		-0.620936, 0.743549, -0.248139,
		-0.640508, -0.663772, -0.386207,
		39.393009, 43.211365, 24.290888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233341, 43.870075, 24.819393>,  <39.841366, 43.676006, 24.561232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233341, 43.870075, 24.819393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.135178, 43.507561, 24.681744>,  <39.076279, 43.290051, 24.599154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.135178, 43.507561, 24.681744>,  <39.233341, 43.870075, 24.819393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135178, 43.507561, 24.681744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703875, -0.077509, 0.706083,
		-0.666586, 0.415496, -0.618892,
		-0.245405, -0.906287, -0.344123,
		39.061558, 43.235676, 24.578506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524799, 43.925671, 24.714279>,  <39.233341, 43.870075, 24.819393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524799, 43.925671, 24.714279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634052, 43.543903, 24.762426>,  <38.699604, 43.314842, 24.791315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634052, 43.543903, 24.762426>,  <38.524799, 43.925671, 24.714279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634052, 43.543903, 24.762426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678286, -0.102343, 0.727636,
		-0.682149, -0.280382, -0.675321,
		0.273131, -0.954417, 0.120366,
		38.715992, 43.257580, 24.798536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012695, 43.689163, 24.963411>,  <38.524799, 43.925671, 24.714279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012695, 43.689163, 24.963411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243282, 43.378345, 25.064507>,  <38.381634, 43.191853, 25.125164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243282, 43.378345, 25.064507>,  <38.012695, 43.689163, 24.963411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243282, 43.378345, 25.064507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590869, -0.182769, 0.785792,
		-0.564406, -0.602321, -0.564496,
		0.576471, -0.777049, 0.252737,
		38.416225, 43.145229, 25.140327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533039, 43.163445, 25.037195>,  <38.012695, 43.689163, 24.963411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533039, 43.163445, 25.037195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859745, 43.052128, 25.239361>,  <38.055771, 42.985340, 25.360661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.859745, 43.052128, 25.239361>,  <37.533039, 43.163445, 25.037195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859745, 43.052128, 25.239361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576951, -0.387636, 0.718934,
		-0.004153, -0.878803, -0.477167,
		0.816768, -0.278288, 0.505416,
		38.104774, 42.968643, 25.390985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078785, 42.627346, 24.662329>,  <37.533039, 43.163445, 25.037195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078785, 42.627346, 24.662329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720364, 42.638973, 24.485130>,  <36.505310, 42.645950, 24.378811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720364, 42.638973, 24.485130>,  <37.078785, 42.627346, 24.662329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720364, 42.638973, 24.485130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443651, 0.022168, -0.895926,
		-0.016217, -0.999332, -0.032756,
		-0.896053, 0.029062, -0.442995,
		36.451550, 42.647694, 24.352232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045811, 42.039780, 24.213989>,  <37.078785, 42.627346, 24.662329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045811, 42.039780, 24.213989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768669, 42.301323, 24.092377>,  <36.602386, 42.458248, 24.019409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768669, 42.301323, 24.092377>,  <37.045811, 42.039780, 24.213989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768669, 42.301323, 24.092377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414353, 0.015945, -0.909976,
		-0.590144, -0.756453, -0.281974,
		-0.692850, 0.653854, -0.304029,
		36.560814, 42.497478, 24.001167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945786, 41.820061, 23.569326>,  <37.045811, 42.039780, 24.213989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945786, 41.820061, 23.569326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756035, 42.171898, 23.554951>,  <36.642185, 42.382999, 23.546326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756035, 42.171898, 23.554951>,  <36.945786, 41.820061, 23.569326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756035, 42.171898, 23.554951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324220, 0.136607, -0.936066,
		-0.818443, -0.455700, -0.349983,
		-0.474376, 0.879589, -0.035942,
		36.613724, 42.435776, 23.544168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429787, 41.819252, 22.953762>,  <36.945786, 41.820061, 23.569326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429787, 41.819252, 22.953762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.515152, 42.198978, 23.046074>,  <36.566372, 42.426815, 23.101461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.515152, 42.198978, 23.046074>,  <36.429787, 41.819252, 22.953762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515152, 42.198978, 23.046074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225778, 0.181903, -0.957045,
		-0.950515, 0.256353, -0.175514,
		0.213415, 0.949313, 0.230780,
		36.579178, 42.483772, 23.115309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022823, 42.269779, 22.488085>,  <36.429787, 41.819252, 22.953762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022823, 42.269779, 22.488085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.344002, 42.465855, 22.623730>,  <36.536709, 42.583500, 22.705116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.344002, 42.465855, 22.623730>,  <36.022823, 42.269779, 22.488085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344002, 42.465855, 22.623730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263191, 0.218891, -0.939584,
		-0.534801, 0.843684, 0.046744,
		0.802944, 0.490187, 0.339113,
		36.584885, 42.612911, 22.725464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042000, 42.943527, 22.183317>,  <36.022823, 42.269779, 22.488085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042000, 42.943527, 22.183317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416286, 42.878887, 22.308743>,  <36.640858, 42.840103, 22.383999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.416286, 42.878887, 22.308743>,  <36.042000, 42.943527, 22.183317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416286, 42.878887, 22.308743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351194, 0.343196, -0.871137,
		0.033159, 0.925258, 0.377886,
		0.935715, -0.161597, 0.313565,
		36.697002, 42.830406, 22.402813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399670, 43.374264, 21.889627>,  <36.042000, 42.943527, 22.183317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399670, 43.374264, 21.889627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702744, 43.141510, 22.007832>,  <36.884586, 43.001858, 22.078754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702744, 43.141510, 22.007832>,  <36.399670, 43.374264, 21.889627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702744, 43.141510, 22.007832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417028, 0.083388, -0.905060,
		0.502001, 0.808983, 0.305845,
		0.757682, -0.581887, 0.295508,
		36.930050, 42.966946, 22.096483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964024, 43.777939, 21.840281>,  <36.399670, 43.374264, 21.889627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964024, 43.777939, 21.840281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107216, 43.405006, 21.819836>,  <37.193130, 43.181248, 21.807568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107216, 43.405006, 21.819836>,  <36.964024, 43.777939, 21.840281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107216, 43.405006, 21.819836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382985, 0.196536, -0.902605,
		0.851570, 0.303539, 0.427424,
		0.357980, -0.932329, -0.051113,
		37.214611, 43.125309, 21.804502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576763, 43.910107, 21.495129>,  <36.964024, 43.777939, 21.840281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576763, 43.910107, 21.495129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.494129, 43.522530, 21.440767>,  <37.444550, 43.289982, 21.408152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.494129, 43.522530, 21.440767>,  <37.576763, 43.910107, 21.495129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494129, 43.522530, 21.440767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531858, 0.005375, -0.846817,
		0.821248, -0.247224, 0.514230,
		-0.206589, -0.968944, -0.135902,
		37.432152, 43.231846, 21.399996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143673, 43.699654, 21.332188>,  <37.576763, 43.910107, 21.495129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143673, 43.699654, 21.332188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893181, 43.422611, 21.189005>,  <37.742886, 43.256386, 21.103096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893181, 43.422611, 21.189005>,  <38.143673, 43.699654, 21.332188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893181, 43.422611, 21.189005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496128, 0.000149, -0.868249,
		0.601409, -0.721315, 0.343528,
		-0.626230, -0.692607, -0.357955,
		37.705311, 43.214828, 21.081619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556458, 43.158672, 20.918726>,  <38.143673, 43.699654, 21.332188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556458, 43.158672, 20.918726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179993, 43.143703, 20.784378>,  <37.954113, 43.134724, 20.703770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.179993, 43.143703, 20.784378>,  <38.556458, 43.158672, 20.918726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179993, 43.143703, 20.784378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329891, 0.113983, -0.937113,
		0.073350, -0.992778, -0.094933,
		-0.941165, -0.037420, -0.335869,
		37.897644, 43.132477, 20.683617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653988, 42.898399, 20.214027>,  <38.556458, 43.158672, 20.918726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653988, 42.898399, 20.214027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.289879, 43.063927, 20.219036>,  <38.071411, 43.163242, 20.222040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.289879, 43.063927, 20.219036>,  <38.653988, 42.898399, 20.214027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289879, 43.063927, 20.219036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124290, 0.301998, -0.945172,
		-0.394909, -0.858809, -0.326334,
		-0.910274, 0.413816, 0.012520,
		38.016796, 43.188072, 20.222792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186001, 42.583065, 19.632202>,  <38.653988, 42.898399, 20.214027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186001, 42.583065, 19.632202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068981, 42.954578, 19.723219>,  <37.998768, 43.177486, 19.777830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068981, 42.954578, 19.723219>,  <38.186001, 42.583065, 19.632202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068981, 42.954578, 19.723219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183870, 0.288152, -0.939766,
		-0.938405, -0.233093, -0.255075,
		-0.292554, 0.928782, 0.227544,
		37.981216, 43.233212, 19.791483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592464, 42.060268, 19.585756>,  <38.186001, 42.583065, 19.632202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592464, 42.060268, 19.585756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.464291, 41.798973, 19.311354>,  <38.387386, 41.642197, 19.146711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.464291, 41.798973, 19.311354>,  <38.592464, 42.060268, 19.585756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464291, 41.798973, 19.311354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519026, -0.484736, 0.704019,
		-0.792422, 0.581649, -0.183719,
		-0.320437, -0.653235, -0.686006,
		38.368160, 41.603004, 19.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961235, 41.745529, 19.920511>,  <38.592464, 42.060268, 19.585756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961235, 41.745529, 19.920511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013481, 41.513386, 19.598984>,  <38.044827, 41.374100, 19.406067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013481, 41.513386, 19.598984>,  <37.961235, 41.745529, 19.920511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013481, 41.513386, 19.598984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547900, -0.717965, 0.429339,
		-0.826284, 0.384336, -0.411752,
		0.130613, -0.580355, -0.803821,
		38.052666, 41.339279, 19.357838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307518, 41.476074, 19.729525>,  <37.961235, 41.745529, 19.920511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307518, 41.476074, 19.729525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560993, 41.209015, 19.573219>,  <37.713078, 41.048779, 19.479437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560993, 41.209015, 19.573219>,  <37.307518, 41.476074, 19.729525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560993, 41.209015, 19.573219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408333, -0.717700, 0.564067,
		-0.657045, -0.197880, -0.727417,
		0.633684, -0.667646, -0.390761,
		37.751099, 41.008720, 19.455992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927055, 40.867714, 19.422962>,  <37.307518, 41.476074, 19.729525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927055, 40.867714, 19.422962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.299671, 40.757812, 19.518246>,  <37.523239, 40.691872, 19.575417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.299671, 40.757812, 19.518246>,  <36.927055, 40.867714, 19.422962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299671, 40.757812, 19.518246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363641, -0.704595, 0.609353,
		0.000417, -0.654258, -0.756271,
		0.931539, -0.274757, 0.238209,
		37.579132, 40.675385, 19.589708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804756, 40.215801, 19.467787>,  <36.927055, 40.867714, 19.422962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804756, 40.215801, 19.467787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177666, 40.247967, 19.608864>,  <37.401413, 40.267265, 19.693510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177666, 40.247967, 19.608864>,  <36.804756, 40.215801, 19.467787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177666, 40.247967, 19.608864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165687, -0.771777, 0.613928,
		0.321569, -0.630788, -0.706187,
		0.932278, 0.080415, 0.352693,
		37.457348, 40.272091, 19.714672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253201, 39.565483, 19.346224>,  <36.804756, 40.215801, 19.467787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253201, 39.565483, 19.346224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367916, 39.782673, 19.661928>,  <37.436745, 39.912987, 19.851351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367916, 39.782673, 19.661928>,  <37.253201, 39.565483, 19.346224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367916, 39.782673, 19.661928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317876, -0.723259, 0.613067,
		0.903719, -0.426708, -0.034825,
		0.286788, 0.542970, 0.789263,
		37.453953, 39.945564, 19.898706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550938, 39.070858, 19.773273>,  <37.253201, 39.565483, 19.346224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550938, 39.070858, 19.773273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.489548, 39.370010, 20.031614>,  <37.452713, 39.549500, 20.186619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.489548, 39.370010, 20.031614>,  <37.550938, 39.070858, 19.773273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489548, 39.370010, 20.031614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211858, -0.663302, 0.717738,
		0.965174, -0.026673, 0.260245,
		-0.153476, 0.747877, 0.645853,
		37.443504, 39.594372, 20.225370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733330, 38.775177, 20.396299>,  <37.550938, 39.070858, 19.773273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733330, 38.775177, 20.396299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.515545, 39.097935, 20.487934>,  <37.384876, 39.291592, 20.542915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.515545, 39.097935, 20.487934>,  <37.733330, 38.775177, 20.396299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515545, 39.097935, 20.487934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380557, -0.481017, 0.789809,
		0.747489, 0.342839, 0.568965,
		-0.544459, 0.806898, 0.229085,
		37.352207, 39.340004, 20.556660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423351, 38.905502, 20.696476>,  <37.733330, 38.775177, 20.396299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423351, 38.905502, 20.696476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.752720, 38.696869, 20.785858>,  <38.950340, 38.571690, 20.839487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.752720, 38.696869, 20.785858>,  <38.423351, 38.905502, 20.696476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752720, 38.696869, 20.785858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401189, 0.256643, -0.879308,
		0.401287, 0.813685, 0.420578,
		0.823418, -0.521586, 0.223454,
		38.999744, 38.540394, 20.852894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922935, 39.407085, 20.664341>,  <38.423351, 38.905502, 20.696476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922935, 39.407085, 20.664341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.081776, 39.043015, 20.617203>,  <39.177078, 38.824570, 20.588919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.081776, 39.043015, 20.617203>,  <38.922935, 39.407085, 20.664341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081776, 39.043015, 20.617203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441983, 0.302185, -0.844592,
		0.804342, 0.283298, 0.522280,
		0.397096, -0.910180, -0.117847,
		39.200905, 38.769962, 20.581848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625271, 39.546589, 20.617369>,  <38.922935, 39.407085, 20.664341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625271, 39.546589, 20.617369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564030, 39.192272, 20.442125>,  <39.527287, 38.979683, 20.336979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564030, 39.192272, 20.442125>,  <39.625271, 39.546589, 20.617369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564030, 39.192272, 20.442125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582195, 0.277381, -0.764270,
		0.798505, -0.372074, 0.473234,
		-0.153099, -0.885788, -0.438109,
		39.518101, 38.926537, 20.310692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200020, 39.482937, 20.288519>,  <39.625271, 39.546589, 20.617369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200020, 39.482937, 20.288519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.012779, 39.173092, 20.118414>,  <39.900436, 38.987183, 20.016350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.012779, 39.173092, 20.118414>,  <40.200020, 39.482937, 20.288519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012779, 39.173092, 20.118414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626265, 0.048717, -0.778087,
		0.623437, -0.630552, 0.462311,
		-0.468102, -0.774617, -0.425264,
		39.872349, 38.940708, 19.990835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599674, 38.954742, 20.270081>,  <40.200020, 39.482937, 20.288519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599674, 38.954742, 20.270081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.336918, 38.944828, 19.968651>,  <40.179264, 38.938881, 19.787792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.336918, 38.944828, 19.968651>,  <40.599674, 38.954742, 20.270081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336918, 38.944828, 19.968651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712704, 0.305752, -0.631323,
		0.246054, -0.951788, -0.183183,
		-0.656895, -0.024784, -0.753575,
		40.139851, 38.937393, 19.742579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947018, 38.686657, 19.729841>,  <40.599674, 38.954742, 20.270081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947018, 38.686657, 19.729841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.631454, 38.836971, 19.535353>,  <40.442116, 38.927162, 19.418659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.631454, 38.836971, 19.535353>,  <40.947018, 38.686657, 19.729841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631454, 38.836971, 19.535353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577781, 0.184130, -0.795151,
		-0.209281, -0.908228, -0.362385,
		-0.788905, 0.375789, -0.486222,
		40.394783, 38.949707, 19.389486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131588, 38.540703, 19.053402>,  <40.947018, 38.686657, 19.729841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131588, 38.540703, 19.053402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.833431, 38.800972, 18.995422>,  <40.654537, 38.957134, 18.960634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.833431, 38.800972, 18.995422>,  <41.131588, 38.540703, 19.053402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833431, 38.800972, 18.995422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427611, 0.299887, -0.852770,
		-0.511408, -0.697631, -0.501769,
		-0.745393, 0.650675, -0.144950,
		40.609814, 38.996174, 18.951937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034973, 38.497894, 18.331137>,  <41.131588, 38.540703, 19.053402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034973, 38.497894, 18.331137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873161, 38.850407, 18.428864>,  <40.776073, 39.061916, 18.487499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873161, 38.850407, 18.428864>,  <41.034973, 38.497894, 18.331137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873161, 38.850407, 18.428864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214283, 0.351058, -0.911505,
		-0.889065, -0.316380, -0.330858,
		-0.404532, 0.881285, 0.244318,
		40.751801, 39.114792, 18.502159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595730, 38.840427, 17.791834>,  <41.034973, 38.497894, 18.331137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595730, 38.840427, 17.791834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.703617, 39.144421, 18.028370>,  <40.768349, 39.326817, 18.170292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.703617, 39.144421, 18.028370>,  <40.595730, 38.840427, 17.791834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703617, 39.144421, 18.028370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417944, 0.460849, -0.782905,
		-0.867510, 0.458312, -0.193329,
		0.269719, 0.759979, 0.591340,
		40.784534, 39.372414, 18.205772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.613113, 33.763943, 32.682674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865944, 34.043163, 32.817253>,  <36.017643, 34.210697, 32.897999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865944, 34.043163, 32.817253>,  <35.613113, 33.763943, 32.682674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865944, 34.043163, 32.817253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198699, 0.565662, -0.800341,
		-0.748996, 0.439028, 0.496246,
		0.632079, 0.698055, 0.336444,
		36.055569, 34.252579, 32.918186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284824, 34.481411, 32.835205>,  <35.613113, 33.763943, 32.682674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284824, 34.481411, 32.835205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654301, 34.467339, 32.682594>,  <35.875984, 34.458893, 32.591026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654301, 34.467339, 32.682594>,  <35.284824, 34.481411, 32.835205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654301, 34.467339, 32.682594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338069, 0.393766, -0.854785,
		0.180309, 0.918537, 0.351822,
		0.923687, -0.035185, -0.381528,
		35.931408, 34.456783, 32.568134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263237, 35.107353, 32.360615>,  <35.284824, 34.481411, 32.835205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263237, 35.107353, 32.360615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576553, 34.892765, 32.234978>,  <35.764542, 34.764011, 32.159595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576553, 34.892765, 32.234978>,  <35.263237, 35.107353, 32.360615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576553, 34.892765, 32.234978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000797, 0.504393, -0.863474,
		0.621654, 0.676602, 0.394659,
		0.783292, -0.536467, -0.314097,
		35.811543, 34.731823, 32.140747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732677, 35.630375, 32.052525>,  <35.263237, 35.107353, 32.360615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732677, 35.630375, 32.052525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859791, 35.278572, 31.910837>,  <35.936058, 35.067490, 31.825825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859791, 35.278572, 31.910837>,  <35.732677, 35.630375, 32.052525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859791, 35.278572, 31.910837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079498, 0.347555, -0.934284,
		0.944824, 0.325062, 0.040528,
		0.317785, -0.879512, -0.354220,
		35.955128, 35.014717, 31.804571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371307, 35.694695, 31.683865>,  <35.732677, 35.630375, 32.052525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371307, 35.694695, 31.683865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186611, 35.383293, 31.513819>,  <36.075794, 35.196453, 31.411791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186611, 35.383293, 31.513819>,  <36.371307, 35.694695, 31.683865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186611, 35.383293, 31.513819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173545, 0.390712, -0.904006,
		0.869873, -0.491192, -0.045301,
		-0.461740, -0.778508, -0.425113,
		36.048088, 35.149742, 31.386284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875370, 35.534176, 31.347132>,  <36.371307, 35.694695, 31.683865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875370, 35.534176, 31.347132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559380, 35.352951, 31.181877>,  <36.369785, 35.244217, 31.082726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.559380, 35.352951, 31.181877>,  <36.875370, 35.534176, 31.347132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559380, 35.352951, 31.181877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357280, 0.207451, -0.910668,
		0.498291, -0.867007, -0.002012,
		-0.789973, -0.453059, -0.413135,
		36.322388, 35.217033, 31.057936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098259, 34.901913, 30.899212>,  <36.875370, 35.534176, 31.347132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098259, 34.901913, 30.899212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.751011, 35.056789, 30.774984>,  <36.542664, 35.149715, 30.700447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.751011, 35.056789, 30.774984>,  <37.098259, 34.901913, 30.899212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751011, 35.056789, 30.774984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373602, 0.097762, -0.922423,
		-0.326797, -0.916800, -0.229526,
		-0.868116, 0.387197, -0.310570,
		36.490578, 35.172947, 30.681814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133575, 34.825424, 30.212326>,  <37.098259, 34.901913, 30.899212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133575, 34.825424, 30.212326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808151, 35.057976, 30.208103>,  <36.612896, 35.197506, 30.205570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808151, 35.057976, 30.208103>,  <37.133575, 34.825424, 30.212326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808151, 35.057976, 30.208103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123435, 0.154934, -0.980183,
		-0.568226, -0.798743, -0.197812,
		-0.813563, 0.581382, -0.010555,
		36.564083, 35.232391, 30.204937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762295, 34.628551, 29.645721>,  <37.133575, 34.825424, 30.212326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762295, 34.628551, 29.645721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628059, 34.994419, 29.735844>,  <36.547520, 35.213940, 29.789917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628059, 34.994419, 29.735844>,  <36.762295, 34.628551, 29.645721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628059, 34.994419, 29.735844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096514, 0.271303, -0.957643,
		-0.937052, -0.299627, -0.179324,
		-0.335587, 0.914669, 0.225307,
		36.527382, 35.268818, 29.803436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175705, 34.752361, 29.133471>,  <36.762295, 34.628551, 29.645721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175705, 34.752361, 29.133471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263573, 35.110249, 29.289017>,  <36.316296, 35.324982, 29.382345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263573, 35.110249, 29.289017>,  <36.175705, 34.752361, 29.133471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263573, 35.110249, 29.289017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057256, 0.386092, -0.920682,
		-0.973892, 0.224513, 0.033586,
		0.219672, 0.894722, 0.388867,
		36.329475, 35.378666, 29.405676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725357, 35.310474, 28.785830>,  <36.175705, 34.752361, 29.133471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725357, 35.310474, 28.785830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033466, 35.505707, 28.950008>,  <36.218330, 35.622845, 29.048515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033466, 35.505707, 28.950008>,  <35.725357, 35.310474, 28.785830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033466, 35.505707, 28.950008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195846, 0.431471, -0.880612,
		-0.606902, 0.758692, 0.236761,
		0.770269, 0.488077, 0.410447,
		36.264545, 35.652130, 29.073143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553669, 36.008202, 28.753250>,  <35.725357, 35.310474, 28.785830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553669, 36.008202, 28.753250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949009, 35.950005, 28.771141>,  <36.186211, 35.915089, 28.781876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949009, 35.950005, 28.771141>,  <35.553669, 36.008202, 28.753250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949009, 35.950005, 28.771141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098810, 0.389749, -0.915605,
		0.115777, 0.909356, 0.399583,
		0.988348, -0.145489, 0.044729,
		36.245514, 35.906357, 28.784559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997841, 36.540150, 28.707804>,  <35.553669, 36.008202, 28.753250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997841, 36.540150, 28.707804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681103, 36.556618, 28.464069>,  <34.491062, 36.566498, 28.317829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681103, 36.556618, 28.464069>,  <34.997841, 36.540150, 28.707804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681103, 36.556618, 28.464069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609098, 0.019547, 0.792854,
		0.044554, 0.998961, 0.009600,
		-0.791842, 0.041172, -0.609336,
		34.443550, 36.568970, 28.281269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577488, 37.158409, 28.808701>,  <34.997841, 36.540150, 28.707804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577488, 37.158409, 28.808701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359436, 36.855957, 28.663872>,  <34.228607, 36.674484, 28.576975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.359436, 36.855957, 28.663872>,  <34.577488, 37.158409, 28.808701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359436, 36.855957, 28.663872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632900, 0.087942, 0.769223,
		-0.549795, 0.648480, -0.526497,
		-0.545127, -0.756135, -0.362073,
		34.195896, 36.629116, 28.555250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955608, 37.360706, 29.027767>,  <34.577488, 37.158409, 28.808701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955608, 37.360706, 29.027767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884678, 36.978188, 28.934765>,  <33.842121, 36.748676, 28.878963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884678, 36.978188, 28.934765>,  <33.955608, 37.360706, 29.027767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884678, 36.978188, 28.934765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641997, -0.066660, 0.763804,
		-0.745919, 0.284710, -0.602116,
		-0.177326, -0.956293, -0.232506,
		33.831482, 36.691299, 28.865013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154900, 37.263126, 29.052530>,  <33.955608, 37.360706, 29.027767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154900, 37.263126, 29.052530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304489, 36.892231, 29.060322>,  <33.394245, 36.669693, 29.064997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304489, 36.892231, 29.060322>,  <33.154900, 37.263126, 29.052530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304489, 36.892231, 29.060322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464081, -0.168907, 0.869539,
		-0.802976, -0.334227, -0.493479,
		0.373976, -0.927234, 0.019480,
		33.416683, 36.614059, 29.066166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584457, 36.724957, 29.018208>,  <33.154900, 37.263126, 29.052530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584457, 36.724957, 29.018208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891338, 36.556252, 29.211498>,  <33.075466, 36.455029, 29.327473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.891338, 36.556252, 29.211498>,  <32.584457, 36.724957, 29.018208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891338, 36.556252, 29.211498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548912, -0.042014, 0.834823,
		-0.331798, -0.905731, -0.263746,
		0.767206, -0.421766, 0.483226,
		33.121502, 36.429722, 29.356466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267788, 36.273460, 29.465660>,  <32.584457, 36.724957, 29.018208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267788, 36.273460, 29.465660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631058, 36.301929, 29.630661>,  <32.849018, 36.319012, 29.729662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631058, 36.301929, 29.630661>,  <32.267788, 36.273460, 29.465660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631058, 36.301929, 29.630661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404922, -0.100445, 0.908818,
		0.106115, -0.992394, -0.062403,
		0.908172, 0.071171, 0.412500,
		32.903511, 36.323280, 29.754412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268257, 35.828587, 29.948496>,  <32.267788, 36.273460, 29.465660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268257, 35.828587, 29.948496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559593, 36.078930, 30.060083>,  <32.734394, 36.229137, 30.127035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.559593, 36.078930, 30.060083>,  <32.268257, 35.828587, 29.948496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559593, 36.078930, 30.060083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317039, -0.053129, 0.946923,
		0.607464, -0.778123, 0.159727,
		0.728336, 0.625861, 0.278969,
		32.778095, 36.266689, 30.143774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475712, 35.591873, 30.578903>,  <32.268257, 35.828587, 29.948496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475712, 35.591873, 30.578903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.608742, 35.968880, 30.565954>,  <32.688560, 36.195084, 30.558186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.608742, 35.968880, 30.565954>,  <32.475712, 35.591873, 30.578903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608742, 35.968880, 30.565954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080426, 0.062547, 0.994796,
		0.939640, -0.328243, 0.096605,
		0.332577, 0.942520, -0.032372,
		32.708515, 36.251637, 30.556242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988419, 35.603188, 30.984612>,  <32.475712, 35.591873, 30.578903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988419, 35.603188, 30.984612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848969, 35.977127, 30.957747>,  <32.765301, 36.201492, 30.941628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848969, 35.977127, 30.957747>,  <32.988419, 35.603188, 30.984612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848969, 35.977127, 30.957747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093994, 0.036427, 0.994906,
		0.932538, 0.353160, 0.075171,
		-0.348623, 0.934854, -0.067164,
		32.744381, 36.257584, 30.937597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178371, 35.844036, 31.574678>,  <32.988419, 35.603188, 30.984612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178371, 35.844036, 31.574678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924664, 36.127228, 31.450443>,  <32.772438, 36.297142, 31.375902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924664, 36.127228, 31.450443>,  <33.178371, 35.844036, 31.574678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924664, 36.127228, 31.450443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258907, 0.184022, 0.948210,
		0.728472, 0.681833, 0.066583,
		-0.634268, 0.707983, -0.310586,
		32.734383, 36.339622, 31.357267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282013, 36.442711, 32.002319>,  <33.178371, 35.844036, 31.574678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282013, 36.442711, 32.002319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916298, 36.499435, 31.850546>,  <32.696869, 36.533470, 31.759481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916298, 36.499435, 31.850546>,  <33.282013, 36.442711, 32.002319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916298, 36.499435, 31.850546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355282, 0.169182, 0.919322,
		0.194567, 0.975329, -0.104296,
		-0.914286, 0.141815, -0.379434,
		32.642014, 36.541981, 31.736715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079475, 36.891727, 32.511677>,  <33.282013, 36.442711, 32.002319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079475, 36.891727, 32.511677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750484, 36.784214, 32.311165>,  <32.553089, 36.719704, 32.190857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750484, 36.784214, 32.311165>,  <33.079475, 36.891727, 32.511677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750484, 36.784214, 32.311165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531657, 0.050047, 0.845480,
		-0.202166, 0.961899, -0.184065,
		-0.822478, -0.268787, -0.501282,
		32.503742, 36.703579, 32.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711601, 37.428043, 32.560986>,  <33.079475, 36.891727, 32.511677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711601, 37.428043, 32.560986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470142, 37.111500, 32.522270>,  <32.325268, 36.921574, 32.499039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470142, 37.111500, 32.522270>,  <32.711601, 37.428043, 32.560986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470142, 37.111500, 32.522270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481339, 0.264971, 0.835526,
		-0.635550, 0.550951, -0.540859,
		-0.603646, -0.791355, -0.096793,
		32.289047, 36.874092, 32.493233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040501, 37.633801, 32.749271>,  <32.711601, 37.428043, 32.560986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040501, 37.633801, 32.749271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043232, 37.236176, 32.792721>,  <32.044872, 36.997601, 32.818790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043232, 37.236176, 32.792721>,  <32.040501, 37.633801, 32.749271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043232, 37.236176, 32.792721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526423, 0.088783, 0.845575,
		-0.850195, -0.062956, -0.522690,
		0.006829, -0.994060, 0.108624,
		32.045280, 36.937958, 32.825310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332090, 37.435009, 32.874481>,  <32.040501, 37.633801, 32.749271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332090, 37.435009, 32.874481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575720, 37.162460, 33.036850>,  <31.721897, 36.998932, 33.134270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575720, 37.162460, 33.036850>,  <31.332090, 37.435009, 32.874481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575720, 37.162460, 33.036850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547335, 0.009291, 0.836862,
		-0.573983, -0.731882, -0.367277,
		0.609072, -0.681368, 0.405917,
		31.758442, 36.958050, 33.158627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226984, 38.038250, 32.543808>,  <31.332090, 37.435009, 32.874481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226984, 38.038250, 32.543808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306114, 38.385490, 32.725914>,  <31.353592, 38.593834, 32.835178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306114, 38.385490, 32.725914>,  <31.226984, 38.038250, 32.543808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306114, 38.385490, 32.725914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323697, 0.380539, -0.866262,
		-0.925249, 0.318736, -0.205721,
		0.197824, 0.868100, 0.455268,
		31.365461, 38.645920, 32.862495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908976, 38.708050, 32.230423>,  <31.226984, 38.038250, 32.543808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908976, 38.708050, 32.230423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240801, 38.812469, 32.427879>,  <31.439896, 38.875122, 32.546352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.240801, 38.812469, 32.427879>,  <30.908976, 38.708050, 32.230423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240801, 38.812469, 32.427879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294927, 0.545831, -0.784275,
		-0.474180, 0.796192, 0.375809,
		0.829561, 0.261051, 0.493640,
		31.489670, 38.890785, 32.575970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082054, 39.420303, 31.975527>,  <30.908976, 38.708050, 32.230423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082054, 39.420303, 31.975527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419514, 39.278553, 32.136860>,  <31.621990, 39.193504, 32.233662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.419514, 39.278553, 32.136860>,  <31.082054, 39.420303, 31.975527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419514, 39.278553, 32.136860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530500, 0.434593, -0.727804,
		0.082627, 0.827979, 0.554638,
		0.843648, -0.354371, 0.403334,
		31.672607, 39.172241, 32.257858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524904, 39.917568, 31.920786>,  <31.082054, 39.420303, 31.975527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524904, 39.917568, 31.920786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738045, 39.579659, 31.940481>,  <31.865929, 39.376911, 31.952299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738045, 39.579659, 31.940481>,  <31.524904, 39.917568, 31.920786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738045, 39.579659, 31.940481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434998, 0.223542, -0.872242,
		0.725840, 0.486196, 0.486590,
		0.532853, -0.844774, 0.049239,
		31.897902, 39.326225, 31.955254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231617, 40.135609, 31.727264>,  <31.524904, 39.917568, 31.920786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231617, 40.135609, 31.727264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225887, 39.736191, 31.706453>,  <32.222450, 39.496540, 31.693968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225887, 39.736191, 31.706453>,  <32.231617, 40.135609, 31.727264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225887, 39.736191, 31.706453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444993, 0.040230, -0.894630,
		0.895420, -0.035963, 0.443768,
		-0.014321, -0.998543, -0.052026,
		32.221592, 39.436626, 31.690845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972099, 39.919380, 31.576723>,  <32.231617, 40.135609, 31.727264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972099, 39.919380, 31.576723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715504, 39.631832, 31.469608>,  <32.561546, 39.459301, 31.405340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715504, 39.631832, 31.469608>,  <32.972099, 39.919380, 31.576723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715504, 39.631832, 31.469608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495049, -0.121266, -0.860361,
		0.586019, -0.684480, 0.433669,
		-0.641490, -0.718875, -0.267787,
		32.523056, 39.416168, 31.389273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367355, 39.260456, 31.412966>,  <32.972099, 39.919380, 31.576723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367355, 39.260456, 31.412966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012329, 39.299416, 31.232857>,  <32.799313, 39.322792, 31.124792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012329, 39.299416, 31.232857>,  <33.367355, 39.260456, 31.412966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012329, 39.299416, 31.232857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453780, 0.016243, -0.890966,
		-0.079469, -0.995112, -0.058616,
		-0.887563, 0.097403, -0.450271,
		32.746059, 39.328636, 31.097775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359447, 38.834045, 30.831717>,  <33.367355, 39.260456, 31.412966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359447, 38.834045, 30.831717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048878, 39.068771, 30.739786>,  <32.862537, 39.209606, 30.684628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048878, 39.068771, 30.739786>,  <33.359447, 38.834045, 30.831717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048878, 39.068771, 30.739786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382317, 0.148668, -0.911993,
		-0.501000, -0.795960, -0.339777,
		-0.776424, 0.586810, -0.229826,
		32.815952, 39.244816, 30.670837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102055, 38.623180, 30.136084>,  <33.359447, 38.834045, 30.831717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102055, 38.623180, 30.136084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.961548, 38.993572, 30.191462>,  <32.877243, 39.215809, 30.224688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.961548, 38.993572, 30.191462>,  <33.102055, 38.623180, 30.136084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961548, 38.993572, 30.191462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251769, 0.235838, -0.938612,
		-0.901790, -0.294846, -0.315976,
		-0.351265, 0.925984, 0.138443,
		32.856167, 39.271366, 30.232994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796520, 38.824867, 29.536007>,  <33.102055, 38.623180, 30.136084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796520, 38.824867, 29.536007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801067, 39.186287, 29.707344>,  <32.803795, 39.403137, 29.810146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801067, 39.186287, 29.707344>,  <32.796520, 38.824867, 29.536007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801067, 39.186287, 29.707344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336446, 0.399936, -0.852558,
		-0.941634, 0.153809, -0.299446,
		0.011372, 0.903545, 0.428342,
		32.804478, 39.457352, 29.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471703, 39.271591, 29.057476>,  <32.796520, 38.824867, 29.536007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471703, 39.271591, 29.057476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653309, 39.527420, 29.305611>,  <32.762272, 39.680920, 29.454491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653309, 39.527420, 29.305611>,  <32.471703, 39.271591, 29.057476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653309, 39.527420, 29.305611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230637, 0.588138, -0.775178,
		-0.860627, 0.495013, 0.119512,
		0.454013, 0.639575, 0.620336,
		32.789513, 39.719292, 29.491711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214924, 39.903553, 28.885786>,  <32.471703, 39.271591, 29.057476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214924, 39.903553, 28.885786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572601, 39.955460, 29.057169>,  <32.787209, 39.986603, 29.159998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572601, 39.955460, 29.057169>,  <32.214924, 39.903553, 28.885786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572601, 39.955460, 29.057169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314487, 0.499059, -0.807489,
		-0.318611, 0.856797, 0.405445,
		0.894195, 0.129768, 0.428457,
		32.840858, 39.994389, 29.185707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393143, 40.534626, 28.534624>,  <32.214924, 39.903553, 28.885786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393143, 40.534626, 28.534624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718548, 40.376759, 28.705473>,  <32.913792, 40.282036, 28.807981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718548, 40.376759, 28.705473>,  <32.393143, 40.534626, 28.534624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718548, 40.376759, 28.705473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574045, 0.427364, -0.698450,
		0.093122, 0.813385, 0.574225,
		0.813511, -0.394672, 0.427122,
		32.962601, 40.258358, 28.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851898, 41.121349, 28.513159>,  <32.393143, 40.534626, 28.534624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851898, 41.121349, 28.513159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069828, 40.787006, 28.540022>,  <33.200584, 40.586399, 28.556139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069828, 40.787006, 28.540022>,  <32.851898, 41.121349, 28.513159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069828, 40.787006, 28.540022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610499, 0.340474, -0.715100,
		0.574857, 0.430601, 0.695789,
		0.544821, -0.835859, 0.067158,
		33.233273, 40.536247, 28.560169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511768, 41.389812, 28.669146>,  <32.851898, 41.121349, 28.513159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511768, 41.389812, 28.669146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575836, 41.018093, 28.536030>,  <33.614277, 40.795063, 28.456160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575836, 41.018093, 28.536030>,  <33.511768, 41.389812, 28.669146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575836, 41.018093, 28.536030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707613, 0.343156, -0.617680,
		0.688209, -0.136554, 0.712546,
		0.160168, -0.929299, -0.332790,
		33.623886, 40.739304, 28.436193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224289, 41.340725, 28.618046>,  <33.511768, 41.389812, 28.669146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224289, 41.340725, 28.618046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063282, 41.058823, 28.384363>,  <33.966679, 40.889683, 28.244154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063282, 41.058823, 28.384363>,  <34.224289, 41.340725, 28.618046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063282, 41.058823, 28.384363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573669, 0.303126, -0.760932,
		0.713359, -0.641432, 0.282281,
		-0.402520, -0.704754, -0.584208,
		33.942528, 40.847397, 28.209101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787651, 41.118507, 28.189718>,  <34.224289, 41.340725, 28.618046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787651, 41.118507, 28.189718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478821, 40.956409, 27.993893>,  <34.293522, 40.859150, 27.876396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478821, 40.956409, 27.993893>,  <34.787651, 41.118507, 28.189718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478821, 40.956409, 27.993893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431696, 0.230919, -0.871961,
		0.466408, -0.884563, -0.003345,
		-0.772077, -0.405246, -0.489565,
		34.247196, 40.834835, 27.847023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062019, 40.685909, 27.695309>,  <34.787651, 41.118507, 28.189718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062019, 40.685909, 27.695309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704727, 40.788345, 27.547493>,  <34.490353, 40.849808, 27.458803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704727, 40.788345, 27.547493>,  <35.062019, 40.685909, 27.695309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704727, 40.788345, 27.547493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416028, 0.159138, -0.895319,
		-0.170474, -0.953464, -0.248687,
		-0.893229, 0.256090, -0.369539,
		34.436760, 40.865173, 27.436632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090958, 40.388390, 27.097723>,  <35.062019, 40.685909, 27.695309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090958, 40.388390, 27.097723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794788, 40.653671, 27.054026>,  <34.617088, 40.812840, 27.027807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794788, 40.653671, 27.054026>,  <35.090958, 40.388390, 27.097723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794788, 40.653671, 27.054026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355573, 0.248566, -0.900990,
		-0.570385, -0.705958, -0.419861,
		-0.740425, 0.663203, -0.109241,
		34.572662, 40.852631, 27.021254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967361, 40.399826, 26.428339>,  <35.090958, 40.388390, 27.097723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967361, 40.399826, 26.428339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799999, 40.741852, 26.550846>,  <34.699581, 40.947067, 26.624350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799999, 40.741852, 26.550846>,  <34.967361, 40.399826, 26.428339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799999, 40.741852, 26.550846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326796, 0.456347, -0.827618,
		-0.847432, -0.246192, -0.470370,
		-0.418405, 0.855065, 0.306268,
		34.674477, 40.998371, 26.642727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591568, 40.666473, 25.868771>,  <34.967361, 40.399826, 26.428339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591568, 40.666473, 25.868771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666744, 40.977539, 26.108742>,  <34.711849, 41.164181, 26.252724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666744, 40.977539, 26.108742>,  <34.591568, 40.666473, 25.868771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666744, 40.977539, 26.108742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458461, 0.470725, -0.753811,
		-0.868615, 0.416713, -0.268063,
		0.187939, 0.777668, 0.599926,
		34.723125, 41.210838, 26.288719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352123, 41.332016, 25.452030>,  <34.591568, 40.666473, 25.868771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352123, 41.332016, 25.452030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613964, 41.441288, 25.733986>,  <34.771069, 41.506851, 25.903160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613964, 41.441288, 25.733986>,  <34.352123, 41.332016, 25.452030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613964, 41.441288, 25.733986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446064, 0.613231, -0.651900,
		-0.610350, 0.741159, 0.279563,
		0.654599, 0.273185, 0.704891,
		34.810345, 41.523243, 25.945454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262817, 42.103031, 25.465029>,  <34.352123, 41.332016, 25.452030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262817, 42.103031, 25.465029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622215, 41.997044, 25.605028>,  <34.837852, 41.933453, 25.689028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622215, 41.997044, 25.605028>,  <34.262817, 42.103031, 25.465029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622215, 41.997044, 25.605028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435834, 0.633804, -0.639016,
		-0.052513, 0.726694, 0.684952,
		0.898494, -0.264968, 0.350001,
		34.891762, 41.917553, 25.710028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690235, 42.760799, 25.424192>,  <34.262817, 42.103031, 25.465029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690235, 42.760799, 25.424192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972858, 42.479694, 25.457415>,  <35.142433, 42.311031, 25.477348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.972858, 42.479694, 25.457415>,  <34.690235, 42.760799, 25.424192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972858, 42.479694, 25.457415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636376, 0.579663, -0.508937,
		0.309519, 0.412447, 0.856788,
		0.706558, -0.702765, 0.083054,
		35.184826, 42.268864, 25.482330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231140, 43.166351, 25.353279>,  <34.690235, 42.760799, 25.424192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231140, 43.166351, 25.353279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404709, 42.807201, 25.323542>,  <35.508850, 42.591709, 25.305700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404709, 42.807201, 25.323542>,  <35.231140, 43.166351, 25.353279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404709, 42.807201, 25.323542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599794, 0.349463, -0.719808,
		0.672279, 0.267750, 0.690181,
		0.433921, -0.897878, -0.074342,
		35.534885, 42.537838, 25.301239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988186, 43.201862, 25.445051>,  <35.231140, 43.166351, 25.353279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988186, 43.201862, 25.445051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891220, 42.885666, 25.220068>,  <35.833038, 42.695950, 25.085077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891220, 42.885666, 25.220068>,  <35.988186, 43.201862, 25.445051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891220, 42.885666, 25.220068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462651, 0.415393, -0.783201,
		0.852753, -0.450084, 0.265022,
		-0.242418, -0.790489, -0.562459,
		35.818493, 42.648518, 25.051331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712349, 43.059238, 25.106749>,  <35.988186, 43.201862, 25.445051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712349, 43.059238, 25.106749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419991, 42.867973, 24.911955>,  <36.244576, 42.753216, 24.795078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419991, 42.867973, 24.911955>,  <36.712349, 43.059238, 25.106749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419991, 42.867973, 24.911955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456761, 0.187473, -0.869611,
		0.507113, -0.858029, 0.081384,
		-0.730894, -0.478163, -0.486984,
		36.200722, 42.724525, 24.765860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263718, 42.687008, 25.550699>,  <36.712349, 43.059238, 25.106749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263718, 42.687008, 25.550699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633389, 42.715633, 25.700777>,  <37.855190, 42.732807, 25.790825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633389, 42.715633, 25.700777>,  <37.263718, 42.687008, 25.550699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633389, 42.715633, 25.700777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334850, -0.320797, 0.885982,
		0.183762, -0.944441, -0.272512,
		0.924179, 0.071560, 0.375197,
		37.910641, 42.737103, 25.813335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539364, 42.089691, 25.883917>,  <37.263718, 42.687008, 25.550699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539364, 42.089691, 25.883917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768700, 42.366871, 26.058779>,  <37.906300, 42.533180, 26.163696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768700, 42.366871, 26.058779>,  <37.539364, 42.089691, 25.883917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768700, 42.366871, 26.058779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222645, -0.381709, 0.897066,
		0.788489, -0.611651, -0.064566,
		0.573337, 0.692951, 0.437154,
		37.940701, 42.574757, 26.189924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077332, 41.753315, 26.405666>,  <37.539364, 42.089691, 25.883917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077332, 41.753315, 26.405666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997379, 42.116745, 26.552383>,  <37.949409, 42.334805, 26.640413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997379, 42.116745, 26.552383>,  <38.077332, 41.753315, 26.405666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997379, 42.116745, 26.552383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088641, -0.389578, 0.916718,
		0.975803, 0.150721, 0.158406,
		-0.199880, 0.908577, 0.366791,
		37.937416, 42.389317, 26.662420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620129, 41.984539, 27.058752>,  <38.077332, 41.753315, 26.405666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620129, 41.984539, 27.058752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282322, 42.197353, 27.083181>,  <38.079639, 42.325043, 27.097839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282322, 42.197353, 27.083181>,  <38.620129, 41.984539, 27.058752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282322, 42.197353, 27.083181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093419, -0.258656, 0.961442,
		0.527318, 0.806248, 0.268141,
		-0.844516, 0.532035, 0.061075,
		38.028969, 42.356964, 27.101503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613430, 42.221077, 27.754385>,  <38.620129, 41.984539, 27.058752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613430, 42.221077, 27.754385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235184, 42.267548, 27.632851>,  <38.008236, 42.295429, 27.559931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235184, 42.267548, 27.632851>,  <38.613430, 42.221077, 27.754385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235184, 42.267548, 27.632851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323242, -0.230977, 0.917695,
		0.036438, 0.965998, 0.255969,
		-0.945614, 0.116179, -0.303835,
		37.951500, 42.302402, 27.541700>
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
