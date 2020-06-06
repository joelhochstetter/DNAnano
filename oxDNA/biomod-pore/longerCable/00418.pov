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
	<23.816242, 35.066307, 34.811756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.148901, 35.287010, 34.836838>,  <24.348495, 35.419430, 34.851887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.148901, 35.287010, 34.836838>,  <23.816242, 35.066307, 34.811756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.148901, 35.287010, 34.836838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428562, -0.565923, -0.704320,
		-0.353129, 0.612615, -0.707109,
		0.831646, 0.551756, 0.062699,
		24.398396, 35.452538, 34.855648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.894625, 35.229511, 34.086086>,  <23.816242, 35.066307, 34.811756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.894625, 35.229511, 34.086086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222033, 35.204765, 34.314541>,  <24.418478, 35.189919, 34.451614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222033, 35.204765, 34.314541>,  <23.894625, 35.229511, 34.086086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222033, 35.204765, 34.314541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337244, -0.753100, -0.564896,
		0.465069, 0.654991, -0.595565,
		0.818522, -0.061865, 0.571135,
		24.467588, 35.186207, 34.485882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556406, 35.296066, 33.623142>,  <23.894625, 35.229511, 34.086086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556406, 35.296066, 33.623142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644754, 35.095272, 33.957623>,  <24.697763, 34.974796, 34.158310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644754, 35.095272, 33.957623>,  <24.556406, 35.296066, 33.623142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644754, 35.095272, 33.957623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290766, -0.784490, -0.547750,
		0.930952, 0.364120, -0.027311,
		0.220872, -0.501988, 0.836196,
		24.711016, 34.944675, 34.208481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200039, 34.979794, 33.497738>,  <24.556406, 35.296066, 33.623142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200039, 34.979794, 33.497738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057442, 34.758377, 33.798805>,  <24.971884, 34.625526, 33.979446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057442, 34.758377, 33.798805>,  <25.200039, 34.979794, 33.497738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057442, 34.758377, 33.798805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288205, -0.831461, -0.474984,
		0.888735, 0.047593, 0.455944,
		-0.356493, -0.553541, 0.752665,
		24.950493, 34.592316, 34.024605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689129, 34.445812, 33.604752>,  <25.200039, 34.979794, 33.497738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689129, 34.445812, 33.604752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333710, 34.306072, 33.723705>,  <25.120459, 34.222229, 33.795078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333710, 34.306072, 33.723705>,  <25.689129, 34.445812, 33.604752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333710, 34.306072, 33.723705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267928, -0.921311, -0.281782,
		0.372424, -0.170700, 0.912229,
		-0.888547, -0.349354, 0.297383,
		25.067146, 34.201267, 33.812920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650925, 33.901104, 34.189682>,  <25.689129, 34.445812, 33.604752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650925, 33.901104, 34.189682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394911, 33.846127, 33.887302>,  <25.241302, 33.813141, 33.705875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394911, 33.846127, 33.887302>,  <25.650925, 33.901104, 34.189682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394911, 33.846127, 33.887302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344685, -0.930675, -0.122624,
		-0.686692, -0.339050, 0.643039,
		-0.640036, -0.137441, -0.755953,
		25.202900, 33.804893, 33.660515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248913, 33.296173, 34.397980>,  <25.650925, 33.901104, 34.189682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248913, 33.296173, 34.397980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245630, 33.348175, 34.001389>,  <25.243660, 33.379375, 33.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245630, 33.348175, 34.001389>,  <25.248913, 33.296173, 34.397980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245630, 33.348175, 34.001389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192990, -0.972665, -0.129139,
		-0.981166, -0.192406, -0.017107,
		-0.008208, 0.130008, -0.991479,
		25.243168, 33.387177, 33.703945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810129, 32.858089, 34.121971>,  <25.248913, 33.296173, 34.397980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810129, 32.858089, 34.121971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088810, 32.931633, 33.844612>,  <25.256020, 32.975758, 33.678196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088810, 32.931633, 33.844612>,  <24.810129, 32.858089, 34.121971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088810, 32.931633, 33.844612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129180, -0.982952, -0.130838,
		-0.705633, 0.001582, -0.708576,
		0.696703, 0.183857, -0.693399,
		25.297821, 32.986790, 33.636593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640451, 32.332611, 33.710037>,  <24.810129, 32.858089, 34.121971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640451, 32.332611, 33.710037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007259, 32.455063, 33.607780>,  <25.227345, 32.528534, 33.546425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007259, 32.455063, 33.607780>,  <24.640451, 32.332611, 33.710037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007259, 32.455063, 33.607780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284704, -0.951331, -0.117953,
		-0.279313, 0.035382, -0.959548,
		0.917021, 0.306133, -0.255646,
		25.282366, 32.546902, 33.531086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884640, 31.844261, 33.125774>,  <24.640451, 32.332611, 33.710037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884640, 31.844261, 33.125774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214291, 32.010338, 33.279881>,  <25.412081, 32.109985, 33.372345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214291, 32.010338, 33.279881>,  <24.884640, 31.844261, 33.125774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214291, 32.010338, 33.279881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470554, -0.880483, -0.057690,
		0.315267, 0.228832, -0.921001,
		0.824127, 0.415193, 0.385265,
		25.461529, 32.134895, 33.395458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450645, 31.733612, 32.626892>,  <24.884640, 31.844261, 33.125774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450645, 31.733612, 32.626892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569626, 31.732162, 33.008785>,  <25.641014, 31.731293, 33.237919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569626, 31.732162, 33.008785>,  <25.450645, 31.733612, 32.626892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569626, 31.732162, 33.008785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472401, -0.868444, -0.150476,
		0.829674, 0.495775, -0.256609,
		0.297452, -0.003624, 0.954730,
		25.658861, 31.731075, 33.295204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155903, 31.699781, 32.928593>,  <25.450645, 31.733612, 32.626892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155903, 31.699781, 32.928593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939281, 31.515415, 33.209812>,  <25.809309, 31.404795, 33.378544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.939281, 31.515415, 33.209812>,  <26.155903, 31.699781, 32.928593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939281, 31.515415, 33.209812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515475, -0.842695, -0.155403,
		0.664083, 0.278244, 0.693955,
		-0.541553, -0.460917, 0.703048,
		25.776815, 31.377140, 33.420727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549559, 31.514723, 33.513145>,  <26.155903, 31.699781, 32.928593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549559, 31.514723, 33.513145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226845, 31.283113, 33.466103>,  <26.033216, 31.144148, 33.437878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226845, 31.283113, 33.466103>,  <26.549559, 31.514723, 33.513145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226845, 31.283113, 33.466103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586993, -0.808179, -0.047800,
		-0.067367, -0.107597, 0.991910,
		-0.806784, -0.579024, -0.117603,
		25.984810, 31.109406, 33.430820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626038, 30.983936, 34.034409>,  <26.549559, 31.514723, 33.513145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626038, 30.983936, 34.034409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577000, 30.872702, 33.653328>,  <26.547577, 30.805962, 33.424679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577000, 30.872702, 33.653328>,  <26.626038, 30.983936, 34.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577000, 30.872702, 33.653328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882934, -0.468920, 0.023255,
		-0.453207, -0.838321, 0.303020,
		-0.122597, -0.278086, -0.952700,
		26.540220, 30.789276, 33.367519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192034, 30.647968, 34.546860>,  <26.626038, 30.983936, 34.034409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192034, 30.647968, 34.546860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896215, 30.847181, 34.365734>,  <25.718725, 30.966709, 34.257061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896215, 30.847181, 34.365734>,  <26.192034, 30.647968, 34.546860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896215, 30.847181, 34.365734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353110, 0.285663, 0.890904,
		0.573052, 0.818754, -0.035400,
		-0.739544, 0.498034, -0.452811,
		25.674353, 30.996592, 34.229893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158606, 31.362284, 34.800243>,  <26.192034, 30.647968, 34.546860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158606, 31.362284, 34.800243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795393, 31.239437, 34.686291>,  <25.577465, 31.165730, 34.617920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795393, 31.239437, 34.686291>,  <26.158606, 31.362284, 34.800243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795393, 31.239437, 34.686291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409332, 0.506015, 0.759208,
		-0.089010, 0.805996, -0.585190,
		-0.908033, -0.307114, -0.284880,
		25.522984, 31.147303, 34.600826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187304, 32.136444, 34.502487>,  <26.158606, 31.362284, 34.800243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187304, 32.136444, 34.502487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092186, 32.059639, 34.121628>,  <26.035116, 32.013557, 33.893112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092186, 32.059639, 34.121628>,  <26.187304, 32.136444, 34.502487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092186, 32.059639, 34.121628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167404, 0.973699, -0.154550,
		0.956781, 0.122643, -0.263682,
		-0.237793, -0.192012, -0.952148,
		26.020847, 32.002037, 33.835983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449797, 32.719334, 34.060467>,  <26.187304, 32.136444, 34.502487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449797, 32.719334, 34.060467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169176, 32.545727, 33.834385>,  <26.000805, 32.441563, 33.698738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169176, 32.545727, 33.834385>,  <26.449797, 32.719334, 34.060467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169176, 32.545727, 33.834385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248427, 0.892332, -0.376864,
		0.667915, -0.123978, -0.733839,
		-0.701551, -0.434019, -0.565203,
		25.958712, 32.415520, 33.664825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516874, 33.009956, 33.401001>,  <26.449797, 32.719334, 34.060467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516874, 33.009956, 33.401001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140261, 32.877426, 33.425446>,  <25.914293, 32.797909, 33.440113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140261, 32.877426, 33.425446>,  <26.516874, 33.009956, 33.401001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140261, 32.877426, 33.425446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325585, 0.848125, -0.417947,
		0.086643, -0.413409, -0.906414,
		-0.941535, -0.331327, 0.061115,
		25.857800, 32.778027, 33.443779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220823, 33.299706, 32.841724>,  <26.516874, 33.009956, 33.401001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220823, 33.299706, 32.841724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930279, 33.187531, 33.092724>,  <25.755953, 33.120224, 33.243324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930279, 33.187531, 33.092724>,  <26.220823, 33.299706, 32.841724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930279, 33.187531, 33.092724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525844, 0.814649, -0.244611,
		-0.442595, -0.507643, -0.739194,
		-0.726359, -0.280438, 0.627500,
		25.712372, 33.103397, 33.280975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809057, 33.740952, 32.756439>,  <26.220823, 33.299706, 32.841724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809057, 33.740952, 32.756439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606407, 33.448650, 32.939453>,  <25.484818, 33.273270, 33.049263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606407, 33.448650, 32.939453>,  <25.809057, 33.740952, 32.756439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606407, 33.448650, 32.939453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586544, 0.681074, 0.438297,
		-0.631900, -0.046312, -0.773665,
		-0.506625, -0.730749, 0.457534,
		25.454420, 33.229427, 33.076714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182102, 33.607185, 32.447357>,  <25.809057, 33.740952, 32.756439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182102, 33.607185, 32.447357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189192, 33.532211, 32.840206>,  <25.193445, 33.487228, 33.075916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189192, 33.532211, 32.840206>,  <25.182102, 33.607185, 32.447357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189192, 33.532211, 32.840206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538346, 0.825942, 0.167341,
		-0.842538, -0.531685, -0.086265,
		0.017723, -0.187432, 0.982118,
		25.194510, 33.475983, 33.134842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448511, 33.675903, 32.651665>,  <25.182102, 33.607185, 32.447357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448511, 33.675903, 32.651665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693989, 33.723473, 32.963879>,  <24.841276, 33.752014, 33.151207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693989, 33.723473, 32.963879>,  <24.448511, 33.675903, 32.651665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693989, 33.723473, 32.963879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480282, 0.840879, 0.249504,
		-0.626665, -0.527997, 0.573158,
		0.613694, 0.118922, 0.780537,
		24.878098, 33.759148, 33.198040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.019119, 33.647915, 33.221397>,  <24.448511, 33.675903, 32.651665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.019119, 33.647915, 33.221397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350977, 33.862034, 33.284828>,  <24.550091, 33.990505, 33.322887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350977, 33.862034, 33.284828>,  <24.019119, 33.647915, 33.221397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350977, 33.862034, 33.284828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554692, 0.758142, 0.342838,
		0.063297, -0.372394, 0.925914,
		0.829645, 0.535298, 0.158576,
		24.599871, 34.022625, 33.332401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911779, 33.988728, 33.912075>,  <24.019119, 33.647915, 33.221397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911779, 33.988728, 33.912075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188726, 34.199825, 33.715260>,  <24.354895, 34.326485, 33.597168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188726, 34.199825, 33.715260>,  <23.911779, 33.988728, 33.912075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188726, 34.199825, 33.715260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459605, 0.848261, 0.263090,
		0.556225, 0.043990, 0.829866,
		0.692370, 0.527748, -0.492043,
		24.396437, 34.358150, 33.567646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137913, 33.871552, 34.538715>,  <23.911779, 33.988728, 33.912075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137913, 33.871552, 34.538715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518785, 33.921532, 34.427185>,  <24.747309, 33.951519, 34.360268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518785, 33.921532, 34.427185>,  <24.137913, 33.871552, 34.538715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518785, 33.921532, 34.427185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043733, 0.847423, 0.529114,
		0.302393, -0.516006, 0.801434,
		0.952179, 0.124951, -0.278821,
		24.804440, 33.959019, 34.343540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678720, 33.876648, 35.023483>,  <24.137913, 33.871552, 34.538715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678720, 33.876648, 35.023483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752153, 34.111977, 34.708481>,  <24.796213, 34.253174, 34.519478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752153, 34.111977, 34.708481>,  <24.678720, 33.876648, 35.023483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752153, 34.111977, 34.708481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133220, 0.808625, 0.573043,
		0.973935, -0.000288, 0.226825,
		0.183581, 0.588325, -0.787510,
		24.807228, 34.288475, 34.472229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094374, 34.300968, 35.306591>,  <24.678720, 33.876648, 35.023483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094374, 34.300968, 35.306591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980919, 34.484493, 34.969772>,  <24.912846, 34.594608, 34.767681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980919, 34.484493, 34.969772>,  <25.094374, 34.300968, 35.306591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980919, 34.484493, 34.969772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193896, 0.832532, 0.518937,
		0.939124, 0.310460, -0.147177,
		-0.283639, 0.458809, -0.842047,
		24.895828, 34.622135, 34.717159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551886, 34.852051, 35.234989>,  <25.094374, 34.300968, 35.306591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551886, 34.852051, 35.234989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199621, 34.915485, 35.056423>,  <24.988262, 34.953545, 34.949284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199621, 34.915485, 35.056423>,  <25.551886, 34.852051, 35.234989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199621, 34.915485, 35.056423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224196, 0.690604, 0.687606,
		0.417340, 0.705633, -0.572634,
		-0.880661, 0.158583, -0.446417,
		24.935423, 34.963058, 34.922497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057032, 34.283958, 35.468719>,  <25.551886, 34.852051, 35.234989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057032, 34.283958, 35.468719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299160, 33.985619, 35.357513>,  <26.444437, 33.806614, 35.290791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299160, 33.985619, 35.357513>,  <26.057032, 34.283958, 35.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299160, 33.985619, 35.357513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785928, 0.615372, 0.060296,
		0.126111, -0.254998, 0.958683,
		0.605322, -0.745851, -0.278015,
		26.480757, 33.761864, 35.274109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603319, 34.179031, 35.943596>,  <26.057032, 34.283958, 35.468719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603319, 34.179031, 35.943596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756123, 34.019787, 35.609993>,  <26.847805, 33.924240, 35.409832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756123, 34.019787, 35.609993>,  <26.603319, 34.179031, 35.943596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756123, 34.019787, 35.609993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898781, 0.370077, 0.235021,
		0.215084, -0.839374, 0.499189,
		0.382009, -0.398113, -0.834012,
		26.870726, 33.900352, 35.359791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406693, 34.189590, 35.996281>,  <26.603319, 34.179031, 35.943596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406693, 34.189590, 35.996281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340576, 34.166172, 35.602478>,  <27.300905, 34.152119, 35.366196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340576, 34.166172, 35.602478>,  <27.406693, 34.189590, 35.996281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340576, 34.166172, 35.602478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903878, 0.390372, -0.174971,
		0.394568, -0.918793, -0.011605,
		-0.165293, -0.058549, -0.984505,
		27.290989, 34.148609, 35.307125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821663, 33.708912, 35.773594>,  <27.406693, 34.189590, 35.996281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821663, 33.708912, 35.773594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742186, 33.907719, 35.435719>,  <27.694500, 34.027004, 35.232994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742186, 33.907719, 35.435719>,  <27.821663, 33.708912, 35.773594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742186, 33.907719, 35.435719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974259, 0.193812, -0.115131,
		0.106487, -0.845817, -0.522736,
		-0.198692, 0.497021, -0.844684,
		27.682577, 34.056824, 35.182312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382168, 33.530537, 35.345154>,  <27.821663, 33.708912, 35.773594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382168, 33.530537, 35.345154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219252, 33.843864, 35.157314>,  <28.121502, 34.031860, 35.044613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219252, 33.843864, 35.157314>,  <28.382168, 33.530537, 35.345154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219252, 33.843864, 35.157314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903348, 0.421216, -0.080871,
		0.134452, -0.457146, -0.879170,
		-0.407290, 0.783323, -0.469595,
		28.097065, 34.078861, 35.016438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848543, 33.654373, 34.910110>,  <28.382168, 33.530537, 35.345154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848543, 33.654373, 34.910110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646332, 33.998337, 34.938404>,  <28.525005, 34.204716, 34.955379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646332, 33.998337, 34.938404>,  <28.848543, 33.654373, 34.910110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646332, 33.998337, 34.938404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840282, 0.509283, -0.185896,
		-0.195875, -0.034542, -0.980020,
		-0.505529, 0.859906, 0.070731,
		28.494673, 34.256310, 34.959621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280956, 33.482819, 34.390053>,  <28.848543, 33.654373, 34.910110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280956, 33.482819, 34.390053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124271, 33.844658, 34.322803>,  <28.030260, 34.061760, 34.282452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124271, 33.844658, 34.322803>,  <28.280956, 33.482819, 34.390053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124271, 33.844658, 34.322803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917504, 0.397721, 0.002267,
		0.068918, -0.153369, -0.985763,
		-0.391711, 0.904597, -0.168127,
		28.006758, 34.116035, 34.272366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661554, 33.737633, 33.945084>,  <28.280956, 33.482819, 34.390053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661554, 33.737633, 33.945084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496693, 34.052235, 34.129059>,  <28.397776, 34.240993, 34.239445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496693, 34.052235, 34.129059>,  <28.661554, 33.737633, 33.945084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496693, 34.052235, 34.129059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814431, 0.544336, -0.200999,
		-0.408448, 0.291746, -0.864902,
		-0.412156, 0.786500, 0.459939,
		28.373045, 34.288185, 34.267040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668594, 34.376965, 33.441685>,  <28.661554, 33.737633, 33.945084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668594, 34.376965, 33.441685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667677, 34.471092, 33.830452>,  <28.667126, 34.527569, 34.063713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667677, 34.471092, 33.830452>,  <28.668594, 34.376965, 33.441685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667677, 34.471092, 33.830452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885606, 0.451868, -0.107317,
		-0.464432, 0.860487, -0.209442,
		-0.002296, 0.235324, 0.971914,
		28.666988, 34.541691, 34.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043737, 35.002815, 33.362694>,  <28.668594, 34.376965, 33.441685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043737, 35.002815, 33.362694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037504, 34.929970, 33.755955>,  <29.033764, 34.886265, 33.991913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037504, 34.929970, 33.755955>,  <29.043737, 35.002815, 33.362694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037504, 34.929970, 33.755955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885076, 0.454948, 0.098299,
		-0.465185, 0.871699, 0.154091,
		-0.015584, -0.182109, 0.983155,
		29.032829, 34.875336, 34.050900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501165, 34.975567, 33.805550>,  <29.043737, 35.002815, 33.362694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501165, 34.975567, 33.805550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700760, 35.242344, 33.584209>,  <29.820517, 35.402412, 33.451405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700760, 35.242344, 33.584209>,  <29.501165, 34.975567, 33.805550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700760, 35.242344, 33.584209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665538, -0.114035, -0.737601,
		-0.555041, 0.736329, 0.386975,
		0.498988, 0.666945, -0.553349,
		29.850456, 35.442429, 33.418205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225246, 34.657059, 33.799732>,  <29.501165, 34.975567, 33.805550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225246, 34.657059, 33.799732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277857, 34.720814, 34.191097>,  <30.309423, 34.759068, 34.425919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277857, 34.720814, 34.191097>,  <30.225246, 34.657059, 33.799732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277857, 34.720814, 34.191097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946033, 0.315070, 0.075844,
		-0.296180, -0.935588, 0.192229,
		0.131524, 0.159391, 0.978415,
		30.317314, 34.768631, 34.484623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852324, 34.178097, 34.235714>,  <30.225246, 34.657059, 33.799732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852324, 34.178097, 34.235714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877539, 34.535294, 34.413971>,  <29.892668, 34.749611, 34.520924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877539, 34.535294, 34.413971>,  <29.852324, 34.178097, 34.235714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877539, 34.535294, 34.413971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979236, -0.030861, 0.200358,
		0.192671, -0.449019, 0.872502,
		0.063039, 0.892989, 0.445641,
		29.896450, 34.803192, 34.547665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479975, 34.052380, 34.756672>,  <29.852324, 34.178097, 34.235714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479975, 34.052380, 34.756672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467958, 34.438984, 34.654732>,  <29.460749, 34.670948, 34.593567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467958, 34.438984, 34.654732>,  <29.479975, 34.052380, 34.756672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467958, 34.438984, 34.654732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995669, -0.006490, 0.092745,
		0.087985, 0.256532, 0.962523,
		-0.030039, 0.966514, -0.254849,
		29.458946, 34.728939, 34.578278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152033, 34.409184, 35.319756>,  <29.479975, 34.052380, 34.756672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152033, 34.409184, 35.319756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098593, 34.585537, 34.964729>,  <29.066528, 34.691349, 34.751713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098593, 34.585537, 34.964729>,  <29.152033, 34.409184, 35.319756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098593, 34.585537, 34.964729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986370, -0.145954, 0.075970,
		-0.096049, 0.885617, 0.454376,
		-0.133599, 0.440886, -0.887565,
		29.058514, 34.717804, 34.698460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610285, 34.913136, 35.382038>,  <29.152033, 34.409184, 35.319756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610285, 34.913136, 35.382038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631187, 34.794872, 35.000492>,  <28.643730, 34.723915, 34.771564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631187, 34.794872, 35.000492>,  <28.610285, 34.913136, 35.382038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631187, 34.794872, 35.000492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989455, -0.144533, -0.009409,
		-0.135083, 0.944298, -0.300090,
		0.052257, -0.295654, -0.953864,
		28.646864, 34.706177, 34.714333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125578, 35.330017, 34.933010>,  <28.610285, 34.913136, 35.382038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125578, 35.330017, 34.933010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219086, 34.961761, 34.807934>,  <28.275190, 34.740807, 34.732887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219086, 34.961761, 34.807934>,  <28.125578, 35.330017, 34.933010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219086, 34.961761, 34.807934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966390, -0.255387, 0.029444,
		-0.106964, 0.295296, -0.949399,
		0.233770, -0.920640, -0.312689,
		28.289217, 34.685570, 34.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630537, 35.076900, 34.429245>,  <28.125578, 35.330017, 34.933010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630537, 35.076900, 34.429245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781601, 34.739864, 34.582825>,  <27.872240, 34.537643, 34.674973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781601, 34.739864, 34.582825>,  <27.630537, 35.076900, 34.429245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781601, 34.739864, 34.582825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919919, -0.388652, 0.051944,
		0.105454, -0.372817, -0.921893,
		0.377661, -0.842589, 0.383947,
		27.894899, 34.487087, 34.698009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471365, 34.494263, 34.002419>,  <27.630537, 35.076900, 34.429245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471365, 34.494263, 34.002419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532177, 34.382690, 34.381699>,  <27.568665, 34.315746, 34.609268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532177, 34.382690, 34.381699>,  <27.471365, 34.494263, 34.002419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532177, 34.382690, 34.381699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921172, -0.387699, 0.033647,
		0.358232, -0.878572, -0.315881,
		0.152028, -0.278927, 0.948202,
		27.577785, 34.299011, 34.666161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084654, 33.831615, 34.082466>,  <27.471365, 34.494263, 34.002419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084654, 33.831615, 34.082466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154242, 33.936581, 34.462124>,  <27.195993, 33.999557, 34.689919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154242, 33.936581, 34.462124>,  <27.084654, 33.831615, 34.082466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154242, 33.936581, 34.462124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886134, -0.378702, 0.267118,
		0.429537, -0.887539, 0.166648,
		0.173968, 0.262410, 0.949145,
		27.206432, 34.015305, 34.746868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004122, 33.289677, 34.607304>,  <27.084654, 33.831615, 34.082466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004122, 33.289677, 34.607304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913038, 33.645500, 34.765717>,  <26.858389, 33.858994, 34.860764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913038, 33.645500, 34.765717>,  <27.004122, 33.289677, 34.607304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913038, 33.645500, 34.765717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831805, -0.389141, 0.395814,
		0.506210, -0.239288, 0.828549,
		-0.227709, 0.889556, 0.396028,
		26.844725, 33.912369, 34.884525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183744, 32.619286, 34.430294>,  <27.004122, 33.289677, 34.607304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183744, 32.619286, 34.430294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389931, 32.613010, 34.087585>,  <27.513641, 32.609245, 33.881962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389931, 32.613010, 34.087585>,  <27.183744, 32.619286, 34.430294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389931, 32.613010, 34.087585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782971, 0.397668, -0.478348,
		0.348214, 0.917395, 0.192699,
		0.515464, -0.015690, -0.856767,
		27.544571, 32.608303, 33.830555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258739, 32.533554, 35.132809>,  <27.183744, 32.619286, 34.430294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258739, 32.533554, 35.132809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992670, 32.429462, 34.852859>,  <26.833029, 32.367008, 34.684891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992670, 32.429462, 34.852859>,  <27.258739, 32.533554, 35.132809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992670, 32.429462, 34.852859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280608, -0.955718, 0.088665,
		-0.691955, -0.137412, 0.708743,
		-0.665175, -0.260231, -0.699873,
		26.793118, 32.351395, 34.642899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841480, 32.079685, 35.515892>,  <27.258739, 32.533554, 35.132809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841480, 32.079685, 35.515892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221415, 31.969898, 35.575874>,  <27.449375, 31.904026, 35.611862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221415, 31.969898, 35.575874>,  <26.841480, 32.079685, 35.515892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221415, 31.969898, 35.575874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014905, 0.439185, 0.898273,
		-0.312401, -0.855445, 0.413062,
		0.949833, -0.274465, 0.149952,
		27.506365, 31.887558, 35.620861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895357, 31.800419, 36.242317>,  <26.841480, 32.079685, 35.515892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895357, 31.800419, 36.242317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256741, 31.915878, 36.115543>,  <27.473570, 31.985153, 36.039478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256741, 31.915878, 36.115543>,  <26.895357, 31.800419, 36.242317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256741, 31.915878, 36.115543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192438, 0.387555, 0.901537,
		0.383036, -0.875497, 0.294600,
		0.903466, 0.288629, -0.316926,
		27.527779, 32.002472, 36.020462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401421, 31.455328, 36.680119>,  <26.895357, 31.800419, 36.242317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401421, 31.455328, 36.680119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496748, 31.799406, 36.499779>,  <27.553944, 32.005852, 36.391575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496748, 31.799406, 36.499779>,  <27.401421, 31.455328, 36.680119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496748, 31.799406, 36.499779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090808, 0.442456, 0.892181,
		0.966933, -0.253563, 0.027333,
		0.238317, 0.860197, -0.450851,
		27.568243, 32.057465, 36.364525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021294, 31.775646, 37.017899>,  <27.401421, 31.455328, 36.680119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021294, 31.775646, 37.017899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782986, 32.050079, 36.850876>,  <27.640001, 32.214741, 36.750664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782986, 32.050079, 36.850876>,  <28.021294, 31.775646, 37.017899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782986, 32.050079, 36.850876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090290, 0.459381, 0.883638,
		0.798065, 0.564145, -0.211738,
		-0.595769, 0.686083, -0.417552,
		27.604256, 32.255905, 36.725609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734350, 31.565115, 36.956955>,  <28.021294, 31.775646, 37.017899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734350, 31.565115, 36.956955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693708, 31.878176, 37.202602>,  <28.669323, 32.066013, 37.349991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693708, 31.878176, 37.202602>,  <28.734350, 31.565115, 36.956955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693708, 31.878176, 37.202602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832196, -0.271374, 0.483534,
		0.545092, 0.560192, -0.623746,
		-0.101603, 0.782650, 0.614114,
		28.663227, 32.112972, 37.386837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099966, 32.195553, 36.919426>,  <28.734350, 31.565115, 36.956955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099966, 32.195553, 36.919426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814840, 32.310097, 36.663334>,  <28.643764, 32.378822, 36.509678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814840, 32.310097, 36.663334>,  <29.099966, 32.195553, 36.919426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814840, 32.310097, 36.663334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135456, 0.951873, 0.274935,
		0.688150, 0.109254, -0.717296,
		-0.712812, 0.286359, -0.640232,
		28.600996, 32.396004, 36.471264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299719, 32.654388, 36.270191>,  <29.099966, 32.195553, 36.919426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299719, 32.654388, 36.270191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947119, 32.730225, 36.443169>,  <28.735559, 32.775726, 36.546955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947119, 32.730225, 36.443169>,  <29.299719, 32.654388, 36.270191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947119, 32.730225, 36.443169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353468, 0.872201, 0.338121,
		-0.313076, 0.450910, -0.835861,
		-0.881501, 0.189592, 0.432448,
		28.682669, 32.787102, 36.572903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879923, 33.050301, 36.133175>,  <29.299719, 32.654388, 36.270191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879923, 33.050301, 36.133175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082174, 33.390171, 36.073330>,  <30.203526, 33.594093, 36.037422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082174, 33.390171, 36.073330>,  <29.879923, 33.050301, 36.133175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082174, 33.390171, 36.073330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434358, -0.400541, -0.806784,
		-0.745435, 0.342946, -0.571590,
		0.505628, 0.849679, -0.149615,
		30.233862, 33.645077, 36.028446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778379, 33.318546, 35.418827>,  <29.879923, 33.050301, 36.133175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778379, 33.318546, 35.418827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139717, 33.412064, 35.562668>,  <30.356520, 33.468174, 35.648972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139717, 33.412064, 35.562668>,  <29.778379, 33.318546, 35.418827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139717, 33.412064, 35.562668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416661, -0.279300, -0.865092,
		-0.101815, 0.931307, -0.349716,
		0.903342, 0.233792, 0.359603,
		30.410719, 33.482201, 35.670547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070835, 33.509529, 34.856361>,  <29.778379, 33.318546, 35.418827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070835, 33.509529, 34.856361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372431, 33.411533, 35.100159>,  <30.553389, 33.352737, 35.246437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372431, 33.411533, 35.100159>,  <30.070835, 33.509529, 34.856361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372431, 33.411533, 35.100159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404260, -0.558276, -0.724501,
		0.517758, 0.792660, -0.321896,
		0.753990, -0.244987, 0.609492,
		30.598627, 33.338036, 35.283005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631601, 33.703529, 34.529972>,  <30.070835, 33.509529, 34.856361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631601, 33.703529, 34.529972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699848, 33.399208, 34.780434>,  <30.740797, 33.216614, 34.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699848, 33.399208, 34.780434>,  <30.631601, 33.703529, 34.529972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699848, 33.399208, 34.780434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401967, -0.526444, -0.749185,
		0.899618, 0.379517, 0.215997,
		0.170618, -0.760804, 0.626152,
		30.751034, 33.170967, 34.968281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345182, 33.381088, 34.553127>,  <30.631601, 33.703529, 34.529972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345182, 33.381088, 34.553127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079834, 33.086918, 34.608379>,  <30.920626, 32.910416, 34.641533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079834, 33.086918, 34.608379>,  <31.345182, 33.381088, 34.553127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079834, 33.086918, 34.608379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418697, -0.517798, -0.746042,
		0.620187, -0.437067, 0.651415,
		-0.663372, -0.735430, 0.138133,
		30.880823, 32.866287, 34.649818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647635, 32.757656, 34.768642>,  <31.345182, 33.381088, 34.553127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647635, 32.757656, 34.768642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316492, 32.742096, 34.544807>,  <31.117805, 32.732761, 34.410507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316492, 32.742096, 34.544807>,  <31.647635, 32.757656, 34.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316492, 32.742096, 34.544807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498888, -0.507126, -0.702805,
		-0.256443, -0.860994, 0.439235,
		-0.827857, -0.038900, -0.559588,
		31.068134, 32.730427, 34.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674351, 32.102760, 34.479053>,  <31.647635, 32.757656, 34.768642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674351, 32.102760, 34.479053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472208, 32.336578, 34.225151>,  <31.350922, 32.476871, 34.072811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472208, 32.336578, 34.225151>,  <31.674351, 32.102760, 34.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472208, 32.336578, 34.225151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499344, -0.401823, -0.767589,
		-0.703753, -0.704870, -0.088825,
		-0.505359, 0.584547, -0.634757,
		31.320601, 32.511944, 34.034725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517336, 31.686602, 33.980606>,  <31.674351, 32.102760, 34.479053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517336, 31.686602, 33.980606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462286, 32.038338, 33.798256>,  <31.429256, 32.249378, 33.688847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462286, 32.038338, 33.798256>,  <31.517336, 31.686602, 33.980606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462286, 32.038338, 33.798256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192702, -0.427688, -0.883147,
		-0.971558, -0.209390, -0.110591,
		-0.137623, 0.879340, -0.455874,
		31.421000, 32.302139, 33.661495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070570, 31.638067, 33.448795>,  <31.517336, 31.686602, 33.980606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070570, 31.638067, 33.448795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287508, 31.961529, 33.357632>,  <31.417671, 32.155605, 33.302933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287508, 31.961529, 33.357632>,  <31.070570, 31.638067, 33.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287508, 31.961529, 33.357632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320592, -0.449933, -0.833535,
		-0.776583, 0.379001, -0.503267,
		0.542347, 0.808653, -0.227905,
		31.450212, 32.204124, 33.289261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972721, 31.825466, 32.738380>,  <31.070570, 31.638067, 33.448795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972721, 31.825466, 32.738380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315210, 32.005913, 32.839081>,  <31.520704, 32.114182, 32.899502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315210, 32.005913, 32.839081>,  <30.972721, 31.825466, 32.738380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315210, 32.005913, 32.839081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399034, -0.268006, -0.876895,
		-0.328111, 0.851274, -0.409483,
		0.856222, 0.451116, 0.251751,
		31.572077, 32.141247, 32.914608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146229, 32.355133, 32.193233>,  <30.972721, 31.825466, 32.738380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146229, 32.355133, 32.193233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476337, 32.236462, 32.385448>,  <31.674402, 32.165260, 32.500778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476337, 32.236462, 32.385448>,  <31.146229, 32.355133, 32.193233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476337, 32.236462, 32.385448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496087, -0.025771, -0.867890,
		0.269867, 0.954630, 0.125909,
		0.825270, -0.296677, 0.480534,
		31.723919, 32.147457, 32.529610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585527, 32.617367, 31.709986>,  <31.146229, 32.355133, 32.193233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585527, 32.617367, 31.709986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809618, 32.393272, 31.954044>,  <31.944073, 32.258816, 32.100479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809618, 32.393272, 31.954044>,  <31.585527, 32.617367, 31.709986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809618, 32.393272, 31.954044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613779, -0.213888, -0.759952,
		0.556256, 0.800242, 0.224036,
		0.560227, -0.560236, 0.610149,
		31.977686, 32.225201, 32.137089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233585, 32.816933, 31.656466>,  <31.585527, 32.617367, 31.709986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233585, 32.816933, 31.656466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257740, 32.441216, 31.791573>,  <32.272232, 32.215786, 31.872637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257740, 32.441216, 31.791573>,  <32.233585, 32.816933, 31.656466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257740, 32.441216, 31.791573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734840, -0.187179, -0.651900,
		0.675546, 0.287571, 0.678925,
		0.060387, -0.939291, 0.337767,
		32.275856, 32.159428, 31.892902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871071, 32.733616, 31.745363>,  <32.233585, 32.816933, 31.656466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871071, 32.733616, 31.745363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757690, 32.350368, 31.729052>,  <32.689663, 32.120419, 31.719265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757690, 32.350368, 31.729052>,  <32.871071, 32.733616, 31.745363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757690, 32.350368, 31.729052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637145, -0.156370, -0.754715,
		0.716732, -0.239902, 0.654785,
		-0.283446, -0.958121, -0.040777,
		32.672657, 32.062931, 31.716818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439007, 32.404842, 31.633478>,  <32.871071, 32.733616, 31.745363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439007, 32.404842, 31.633478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153851, 32.149654, 31.517008>,  <32.982758, 31.996540, 31.447126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153851, 32.149654, 31.517008>,  <33.439007, 32.404842, 31.633478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153851, 32.149654, 31.517008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459693, -0.111562, -0.881042,
		0.529597, -0.761935, 0.372803,
		-0.712888, -0.637972, -0.291174,
		32.939983, 31.958263, 31.429655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868587, 32.048664, 31.195921>,  <33.439007, 32.404842, 31.633478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868587, 32.048664, 31.195921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499317, 31.907234, 31.135620>,  <33.277756, 31.822376, 31.099440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499317, 31.907234, 31.135620>,  <33.868587, 32.048664, 31.195921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499317, 31.907234, 31.135620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260674, -0.287698, -0.921563,
		0.282473, -0.890064, 0.357765,
		-0.923178, -0.353577, -0.150750,
		33.222363, 31.801161, 31.090395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973022, 31.410168, 30.805841>,  <33.868587, 32.048664, 31.195921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973022, 31.410168, 30.805841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594631, 31.517647, 30.733265>,  <33.367596, 31.582134, 30.689718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594631, 31.517647, 30.733265>,  <33.973022, 31.410168, 30.805841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594631, 31.517647, 30.733265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109618, -0.261611, -0.958928,
		-0.305134, -0.927016, 0.218024,
		-0.945980, 0.268703, -0.181444,
		33.310837, 31.598255, 30.678831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625687, 30.837622, 30.566889>,  <33.973022, 31.410168, 30.805841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625687, 30.837622, 30.566889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406250, 31.147316, 30.440647>,  <33.274590, 31.333134, 30.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406250, 31.147316, 30.440647>,  <33.625687, 30.837622, 30.566889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406250, 31.147316, 30.440647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119931, -0.300700, -0.946148,
		-0.827445, -0.556898, 0.072106,
		-0.548590, 0.774238, -0.315602,
		33.241673, 31.379587, 30.345966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211948, 30.574202, 30.019075>,  <33.625687, 30.837622, 30.566889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211948, 30.574202, 30.019075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247383, 30.968056, 29.958883>,  <33.268646, 31.204369, 29.922768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247383, 30.968056, 29.958883>,  <33.211948, 30.574202, 30.019075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247383, 30.968056, 29.958883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238575, -0.167654, -0.956543,
		-0.967075, 0.048839, -0.249762,
		0.088591, 0.984635, -0.150482,
		33.273960, 31.263447, 29.913738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948486, 30.623091, 29.444143>,  <33.211948, 30.574202, 30.019075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948486, 30.623091, 29.444143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133961, 30.977461, 29.439648>,  <33.245247, 31.190083, 29.436951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133961, 30.977461, 29.439648>,  <32.948486, 30.623091, 29.444143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133961, 30.977461, 29.439648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363543, -0.201816, -0.909454,
		-0.807977, 0.417619, -0.415653,
		0.463691, 0.885926, -0.011240,
		33.273067, 31.243238, 29.436275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790363, 30.776203, 28.854515>,  <32.948486, 30.623091, 29.444143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790363, 30.776203, 28.854515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096333, 31.018854, 28.941137>,  <33.279915, 31.164446, 28.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096333, 31.018854, 28.941137>,  <32.790363, 30.776203, 28.854515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096333, 31.018854, 28.941137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431311, -0.232681, -0.871683,
		-0.478399, 0.760172, -0.439628,
		0.764922, 0.606628, 0.216556,
		33.325809, 31.200842, 29.006104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939896, 31.233351, 28.217428>,  <32.790363, 30.776203, 28.854515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939896, 31.233351, 28.217428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281593, 31.220926, 28.425007>,  <33.486610, 31.213472, 28.549555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281593, 31.220926, 28.425007>,  <32.939896, 31.233351, 28.217428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281593, 31.220926, 28.425007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511713, -0.125971, -0.849871,
		0.091769, 0.991548, -0.091716,
		0.854241, -0.031060, 0.518948,
		33.537865, 31.211609, 28.580690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394569, 31.466011, 27.694759>,  <32.939896, 31.233351, 28.217428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394569, 31.466011, 27.694759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641582, 31.337698, 27.982023>,  <33.789791, 31.260710, 28.154381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641582, 31.337698, 27.982023>,  <33.394569, 31.466011, 27.694759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641582, 31.337698, 27.982023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687264, -0.223983, -0.691014,
		0.382520, 0.920288, 0.082144,
		0.617533, -0.320781, 0.718159,
		33.826843, 31.241463, 28.197472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020313, 31.871500, 27.664307>,  <33.394569, 31.466011, 27.694759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020313, 31.871500, 27.664307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108772, 31.512634, 27.817244>,  <34.161850, 31.297314, 27.909006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108772, 31.512634, 27.817244>,  <34.020313, 31.871500, 27.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108772, 31.512634, 27.817244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771939, -0.078554, -0.630824,
		0.595989, 0.434651, 0.675186,
		0.221149, -0.897166, 0.382342,
		34.175117, 31.243484, 27.931946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783653, 31.844999, 27.616081>,  <34.020313, 31.871500, 27.664307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783653, 31.844999, 27.616081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663319, 31.468592, 27.678019>,  <34.591118, 31.242746, 27.715181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663319, 31.468592, 27.678019>,  <34.783653, 31.844999, 27.616081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663319, 31.468592, 27.678019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694168, -0.327404, -0.641044,
		0.653931, -0.085366, 0.751722,
		-0.300840, -0.941020, 0.154841,
		34.573067, 31.186285, 27.724470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358509, 31.396553, 27.796024>,  <34.783653, 31.844999, 27.616081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358509, 31.396553, 27.796024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075378, 31.139961, 27.677711>,  <34.905499, 30.986006, 27.606724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075378, 31.139961, 27.677711>,  <35.358509, 31.396553, 27.796024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075378, 31.139961, 27.677711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584552, -0.296837, -0.755108,
		0.396586, -0.707386, 0.585086,
		-0.707827, -0.641478, -0.295782,
		34.863029, 30.947517, 27.588976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794868, 30.765816, 27.507368>,  <35.358509, 31.396553, 27.796024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794868, 30.765816, 27.507368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426758, 30.718100, 27.358309>,  <35.205891, 30.689470, 27.268873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426758, 30.718100, 27.358309>,  <35.794868, 30.765816, 27.507368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426758, 30.718100, 27.358309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387516, -0.409580, -0.825879,
		-0.054108, -0.904441, 0.423153,
		-0.920274, -0.119292, -0.372647,
		35.150677, 30.682312, 27.246515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653210, 30.059889, 27.452232>,  <35.794868, 30.765816, 27.507368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653210, 30.059889, 27.452232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447098, 30.279408, 27.188927>,  <35.323429, 30.411118, 27.030943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447098, 30.279408, 27.188927>,  <35.653210, 30.059889, 27.452232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447098, 30.279408, 27.188927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432314, -0.496756, -0.752554,
		-0.739994, -0.672353, 0.018717,
		-0.515280, 0.548794, -0.658264,
		35.292515, 30.444046, 26.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607712, 29.638481, 26.976971>,  <35.653210, 30.059889, 27.452232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607712, 29.638481, 26.976971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480103, 29.965328, 26.784910>,  <35.403538, 30.161436, 26.669674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480103, 29.965328, 26.784910>,  <35.607712, 29.638481, 26.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480103, 29.965328, 26.784910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377406, -0.355192, -0.855221,
		-0.869362, -0.454045, -0.195072,
		-0.319021, 0.817118, -0.480150,
		35.384396, 30.210464, 26.640865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405743, 29.435900, 26.262007>,  <35.607712, 29.638481, 26.976971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405743, 29.435900, 26.262007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468552, 29.830860, 26.254221>,  <35.506237, 30.067837, 26.249550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468552, 29.830860, 26.254221>,  <35.405743, 29.435900, 26.262007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468552, 29.830860, 26.254221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492411, -0.095362, -0.865123,
		-0.856081, 0.126262, -0.501182,
		0.157026, 0.987403, -0.019465,
		35.515659, 30.127081, 26.248381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243286, 29.541916, 25.639442>,  <35.405743, 29.435900, 26.262007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243286, 29.541916, 25.639442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489429, 29.838079, 25.747618>,  <35.637115, 30.015778, 25.812523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489429, 29.838079, 25.747618>,  <35.243286, 29.541916, 25.639442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489429, 29.838079, 25.747618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490305, -0.090890, -0.866799,
		-0.617204, 0.665985, -0.418954,
		0.615354, 0.740408, 0.270438,
		35.674034, 30.060202, 25.828749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270397, 29.990192, 25.160734>,  <35.243286, 29.541916, 25.639442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270397, 29.990192, 25.160734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619259, 30.050045, 25.347048>,  <35.828575, 30.085957, 25.458836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619259, 30.050045, 25.347048>,  <35.270397, 29.990192, 25.160734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619259, 30.050045, 25.347048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478090, -0.058656, -0.876350,
		-0.103808, 0.987000, -0.122694,
		0.872155, 0.149631, 0.465786,
		35.880905, 30.094934, 25.486784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669353, 30.189690, 24.592487>,  <35.270397, 29.990192, 25.160734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669353, 30.189690, 24.592487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922180, 30.140100, 24.898458>,  <36.073875, 30.110348, 25.082041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922180, 30.140100, 24.898458>,  <35.669353, 30.189690, 24.592487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922180, 30.140100, 24.898458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772928, 0.030294, -0.633770,
		0.055396, 0.991823, 0.114969,
		0.632071, -0.123971, 0.764930,
		36.111801, 30.102909, 25.127937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171150, 30.664080, 24.518438>,  <35.669353, 30.189690, 24.592487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171150, 30.664080, 24.518438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325607, 30.369051, 24.740026>,  <36.418282, 30.192034, 24.872980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325607, 30.369051, 24.740026>,  <36.171150, 30.664080, 24.518438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325607, 30.369051, 24.740026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760267, -0.085629, -0.643943,
		0.522389, 0.669819, 0.527686,
		0.386140, -0.737571, 0.553973,
		36.441448, 30.147779, 24.906218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870144, 30.803814, 24.460297>,  <36.171150, 30.664080, 24.518438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870144, 30.803814, 24.460297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830364, 30.421619, 24.571405>,  <36.806496, 30.192303, 24.638071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830364, 30.421619, 24.571405>,  <36.870144, 30.803814, 24.460297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830364, 30.421619, 24.571405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704185, -0.264811, -0.658786,
		0.703018, 0.130089, 0.699173,
		-0.099448, -0.955485, 0.277773,
		36.800529, 30.134974, 24.654737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560089, 30.546457, 24.702866>,  <36.870144, 30.803814, 24.460297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560089, 30.546457, 24.702866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351059, 30.219130, 24.607141>,  <37.225639, 30.022734, 24.549707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351059, 30.219130, 24.607141>,  <37.560089, 30.546457, 24.702866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351059, 30.219130, 24.607141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775390, -0.339440, -0.532495,
		0.354518, -0.463830, 0.811899,
		-0.522577, -0.818317, -0.239312,
		37.194286, 29.973635, 24.535349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955051, 29.978649, 24.886154>,  <37.560089, 30.546457, 24.702866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955051, 29.978649, 24.886154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713692, 29.865458, 24.587938>,  <37.568874, 29.797543, 24.409008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713692, 29.865458, 24.587938>,  <37.955051, 29.978649, 24.886154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713692, 29.865458, 24.587938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797400, -0.223454, -0.560555,
		-0.007969, -0.932733, 0.360480,
		-0.603399, -0.282979, -0.745542,
		37.532673, 29.780563, 24.364275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240143, 29.356754, 24.500790>,  <37.955051, 29.978649, 24.886154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240143, 29.356754, 24.500790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971779, 29.510090, 24.246881>,  <37.810760, 29.602091, 24.094536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971779, 29.510090, 24.246881>,  <38.240143, 29.356754, 24.500790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971779, 29.510090, 24.246881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614408, -0.191928, -0.765289,
		-0.415195, -0.903446, -0.106760,
		-0.670907, 0.383338, -0.634772,
		37.770508, 29.625092, 24.056450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195591, 28.946648, 23.946676>,  <38.240143, 29.356754, 24.500790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195591, 28.946648, 23.946676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060394, 29.297562, 23.810366>,  <37.979275, 29.508110, 23.728579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060394, 29.297562, 23.810366>,  <38.195591, 28.946648, 23.946676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060394, 29.297562, 23.810366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631616, -0.056997, -0.773184,
		-0.697727, -0.476569, -0.534844,
		-0.337991, 0.877287, -0.340777,
		37.958996, 29.560747, 23.708132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922127, 28.791285, 23.268719>,  <38.195591, 28.946648, 23.946676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922127, 28.791285, 23.268719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008339, 29.181871, 23.265629>,  <38.060066, 29.416224, 23.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008339, 29.181871, 23.265629>,  <37.922127, 28.791285, 23.268719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008339, 29.181871, 23.265629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407778, -0.097191, -0.907894,
		-0.887278, 0.192530, -0.419129,
		0.215533, 0.976466, -0.007726,
		38.072998, 29.474812, 23.263311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844585, 28.991161, 22.583773>,  <37.922127, 28.791285, 23.268719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844585, 28.991161, 22.583773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076283, 29.288242, 22.718157>,  <38.215302, 29.466492, 22.798786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076283, 29.288242, 22.718157>,  <37.844585, 28.991161, 22.583773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076283, 29.288242, 22.718157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547131, -0.048722, -0.835628,
		-0.604254, 0.667847, -0.434578,
		0.579245, 0.742702, 0.335959,
		38.250057, 29.511053, 22.818945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207249, 29.060186, 22.038853>,  <37.844585, 28.991161, 22.583773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207249, 29.060186, 22.038853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376980, 29.332457, 22.277725>,  <38.478817, 29.495819, 22.421049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376980, 29.332457, 22.277725>,  <38.207249, 29.060186, 22.038853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376980, 29.332457, 22.277725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577528, 0.304517, -0.757450,
		-0.697431, 0.666294, -0.263897,
		0.424324, 0.680677, 0.597183,
		38.504276, 29.536659, 22.456881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207783, 29.776258, 21.806997>,  <38.207249, 29.060186, 22.038853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207783, 29.776258, 21.806997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519966, 29.788837, 22.056767>,  <38.707275, 29.796385, 22.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519966, 29.788837, 22.056767>,  <38.207783, 29.776258, 21.806997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519966, 29.788837, 22.056767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561920, 0.402589, -0.722612,
		-0.274110, 0.914840, 0.296532,
		0.780455, 0.031448, 0.624421,
		38.754101, 29.798271, 22.244093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555851, 30.362062, 21.638170>,  <38.207783, 29.776258, 21.806997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555851, 30.362062, 21.638170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834362, 30.173832, 21.854965>,  <39.001469, 30.060894, 21.985043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834362, 30.173832, 21.854965>,  <38.555851, 30.362062, 21.638170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834362, 30.173832, 21.854965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715814, 0.399540, -0.572694,
		0.052951, 0.786717, 0.615038,
		0.696281, -0.470578, 0.541987,
		39.043247, 30.032658, 22.017561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012321, 30.881411, 21.791096>,  <38.555851, 30.362062, 21.638170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012321, 30.881411, 21.791096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214252, 30.537699, 21.824045>,  <39.335411, 30.331472, 21.843815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214252, 30.537699, 21.824045>,  <39.012321, 30.881411, 21.791096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214252, 30.537699, 21.824045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760600, 0.397662, -0.513178,
		0.408205, 0.321724, 0.854320,
		0.504832, -0.859278, 0.082375,
		39.365704, 30.279915, 21.848759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703514, 31.060596, 22.096285>,  <39.012321, 30.881411, 21.791096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703514, 31.060596, 22.096285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735443, 30.718618, 21.891270>,  <39.754601, 30.513432, 21.768261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735443, 30.718618, 21.891270>,  <39.703514, 31.060596, 22.096285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735443, 30.718618, 21.891270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816535, 0.351005, -0.458331,
		0.571751, -0.381922, 0.726110,
		0.079821, -0.854945, -0.512540,
		39.759388, 30.462135, 21.737507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367836, 30.967970, 22.077429>,  <39.703514, 31.060596, 22.096285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367836, 30.967970, 22.077429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244110, 30.715254, 21.793131>,  <40.169872, 30.563623, 21.622551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244110, 30.715254, 21.793131>,  <40.367836, 30.967970, 22.077429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244110, 30.715254, 21.793131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706075, 0.348070, -0.616689,
		0.637008, -0.692595, 0.338427,
		-0.309319, -0.631791, -0.710747,
		40.151314, 30.525717, 21.579906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989735, 30.671671, 21.838217>,  <40.367836, 30.967970, 22.077429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989735, 30.671671, 21.838217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727081, 30.603939, 21.544235>,  <40.569489, 30.563299, 21.367846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727081, 30.603939, 21.544235>,  <40.989735, 30.671671, 21.838217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727081, 30.603939, 21.544235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694041, 0.245741, -0.676697,
		0.295195, -0.954431, -0.043838,
		-0.656633, -0.169333, -0.734955,
		40.530090, 30.553139, 21.323750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362354, 30.445894, 21.343868>,  <40.989735, 30.671671, 21.838217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362354, 30.445894, 21.343868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038128, 30.498295, 21.115545>,  <40.843594, 30.529736, 20.978552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038128, 30.498295, 21.115545>,  <41.362354, 30.445894, 21.343868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038128, 30.498295, 21.115545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585483, 0.204395, -0.784495,
		0.013898, -0.970083, -0.242377,
		-0.810566, 0.131004, -0.570808,
		40.794960, 30.537596, 20.944304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437428, 30.030781, 20.731348>,  <41.362354, 30.445894, 21.343868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437428, 30.030781, 20.731348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178032, 30.319464, 20.634518>,  <41.022396, 30.492674, 20.576420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178032, 30.319464, 20.634518>,  <41.437428, 30.030781, 20.731348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178032, 30.319464, 20.634518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488919, 0.151147, -0.859135,
		-0.583456, -0.675493, -0.450874,
		-0.648488, 0.721709, -0.242073,
		40.983486, 30.535976, 20.561895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248817, 29.937624, 20.034023>,  <41.437428, 30.030781, 20.731348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248817, 29.937624, 20.034023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202946, 30.325394, 20.120804>,  <41.175423, 30.558056, 20.172873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202946, 30.325394, 20.120804>,  <41.248817, 29.937624, 20.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202946, 30.325394, 20.120804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480645, 0.245275, -0.841915,
		-0.869384, 0.007725, -0.494076,
		-0.114681, 0.969423, 0.216951,
		41.168541, 30.616220, 20.185888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193752, 29.893059, 19.239639>,  <41.248817, 29.937624, 20.034023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193752, 29.893059, 19.239639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023125, 30.217016, 19.078585>,  <40.920750, 30.411390, 18.981953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023125, 30.217016, 19.078585>,  <41.193752, 29.893059, 19.239639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023125, 30.217016, 19.078585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787208, 0.113252, -0.606198,
		-0.445356, -0.575543, -0.685863,
		-0.426569, 0.809891, -0.402635,
		40.895153, 30.459984, 18.957794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012939, 29.700863, 18.581818>,  <41.193752, 29.893059, 19.239639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012939, 29.700863, 18.581818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021809, 30.100159, 18.559824>,  <41.027130, 30.339737, 18.546627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021809, 30.100159, 18.559824>,  <41.012939, 29.700863, 18.581818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021809, 30.100159, 18.559824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700762, -0.054744, -0.711291,
		-0.713050, -0.022762, -0.700743,
		0.022171, 0.998241, -0.054986,
		41.028461, 30.399632, 18.543327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218796, 29.858810, 17.932096>,  <41.012939, 29.700863, 18.581818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218796, 29.858810, 17.932096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297447, 30.206024, 18.114458>,  <41.344639, 30.414352, 18.223875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297447, 30.206024, 18.114458>,  <41.218796, 29.858810, 17.932096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297447, 30.206024, 18.114458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853229, 0.077591, -0.515733,
		-0.483049, 0.490400, -0.725377,
		0.196633, 0.868036, 0.455904,
		41.356438, 30.466434, 18.251228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257236, 30.506905, 17.456860>,  <41.218796, 29.858810, 17.932096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257236, 30.506905, 17.456860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492069, 30.587269, 17.770540>,  <41.632969, 30.635489, 17.958748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492069, 30.587269, 17.770540>,  <41.257236, 30.506905, 17.456860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492069, 30.587269, 17.770540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771258, 0.155515, -0.617232,
		-0.245964, 0.967187, -0.063655,
		0.587080, 0.200911, 0.784202,
		41.668194, 30.647543, 18.005800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492134, 31.264296, 17.610218>,  <41.257236, 30.506905, 17.456860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492134, 31.264296, 17.610218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777416, 31.006752, 17.721058>,  <41.948586, 30.852226, 17.787561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777416, 31.006752, 17.721058>,  <41.492134, 31.264296, 17.610218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777416, 31.006752, 17.721058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672489, 0.516989, -0.529604,
		0.197733, 0.564063, 0.801708,
		0.713204, -0.643860, 0.277100,
		41.991379, 30.813595, 17.804188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476349, 32.026840, 17.816063>,  <41.492134, 31.264296, 17.610218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476349, 32.026840, 17.816063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697929, 32.350071, 17.896217>,  <41.830879, 32.544010, 17.944309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697929, 32.350071, 17.896217>,  <41.476349, 32.026840, 17.816063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697929, 32.350071, 17.896217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433858, 0.074764, 0.897874,
		0.710567, -0.584317, 0.392005,
		0.553951, 0.808074, 0.200385,
		41.864113, 32.592495, 17.956333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843956, 32.030815, 18.392500>,  <41.476349, 32.026840, 17.816063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843956, 32.030815, 18.392500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689232, 32.390797, 18.312033>,  <41.596397, 32.606785, 18.263752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689232, 32.390797, 18.312033>,  <41.843956, 32.030815, 18.392500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689232, 32.390797, 18.312033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564245, -0.058429, 0.823537,
		0.729388, 0.432060, 0.530393,
		-0.386808, 0.899951, -0.201170,
		41.573189, 32.660782, 18.251682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953358, 32.474712, 18.989445>,  <41.843956, 32.030815, 18.392500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953358, 32.474712, 18.989445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622711, 32.608913, 18.808720>,  <41.424324, 32.689434, 18.700285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622711, 32.608913, 18.808720>,  <41.953358, 32.474712, 18.989445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622711, 32.608913, 18.808720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416986, 0.173996, 0.892103,
		0.377921, 0.925830, -0.003927,
		-0.826619, 0.335507, -0.451815,
		41.374725, 32.709564, 18.673176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724056, 32.921543, 19.419136>,  <41.953358, 32.474712, 18.989445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724056, 32.921543, 19.419136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398094, 32.894291, 19.188904>,  <41.202518, 32.877937, 19.050764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398094, 32.894291, 19.188904>,  <41.724056, 32.921543, 19.419136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398094, 32.894291, 19.188904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563677, 0.324322, 0.759660,
		0.134915, 0.943490, -0.302696,
		-0.814902, -0.068133, -0.575580,
		41.153622, 32.873852, 19.016230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297295, 33.485954, 19.499863>,  <41.724056, 32.921543, 19.419136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297295, 33.485954, 19.499863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039291, 33.207043, 19.374794>,  <40.884491, 33.039696, 19.299753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039291, 33.207043, 19.374794>,  <41.297295, 33.485954, 19.499863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039291, 33.207043, 19.374794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680934, 0.338723, 0.649304,
		-0.346839, 0.631714, -0.693282,
		-0.645005, -0.697284, -0.312673,
		40.845791, 32.997856, 19.280993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657864, 33.741146, 19.111387>,  <41.297295, 33.485954, 19.499863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657864, 33.741146, 19.111387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628674, 33.402206, 19.321785>,  <40.611160, 33.198841, 19.448023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628674, 33.402206, 19.321785>,  <40.657864, 33.741146, 19.111387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628674, 33.402206, 19.321785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760307, 0.388589, 0.520512,
		-0.645452, -0.361930, -0.672606,
		-0.072978, -0.847352, 0.525994,
		40.606781, 33.148003, 19.479584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955086, 33.591496, 19.300900>,  <40.657864, 33.741146, 19.111387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955086, 33.591496, 19.300900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101501, 33.346928, 19.581522>,  <40.189350, 33.200188, 19.749895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101501, 33.346928, 19.581522>,  <39.955086, 33.591496, 19.300900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101501, 33.346928, 19.581522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804344, 0.171283, 0.568941,
		-0.468027, -0.772546, -0.429097,
		0.366035, -0.611421, 0.701557,
		40.211311, 33.163502, 19.791988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403976, 33.134357, 19.530952>,  <39.955086, 33.591496, 19.300900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403976, 33.134357, 19.530952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678848, 33.137005, 19.821535>,  <39.843773, 33.138592, 19.995886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678848, 33.137005, 19.821535>,  <39.403976, 33.134357, 19.530952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678848, 33.137005, 19.821535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690438, 0.317041, 0.650216,
		-0.226014, -0.948389, 0.222433,
		0.687178, 0.006618, 0.726459,
		39.885002, 33.138992, 20.039473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035141, 32.955536, 20.130554>,  <39.403976, 33.134357, 19.530952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035141, 32.955536, 20.130554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364548, 33.104111, 20.302067>,  <39.562191, 33.193256, 20.404974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364548, 33.104111, 20.302067>,  <39.035141, 32.955536, 20.130554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364548, 33.104111, 20.302067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530923, 0.238360, 0.813207,
		0.199849, -0.897341, 0.393497,
		0.823518, 0.371435, 0.428783,
		39.611603, 33.215542, 20.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969818, 32.760876, 20.882227>,  <39.035141, 32.955536, 20.130554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969818, 32.760876, 20.882227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260506, 33.032784, 20.921808>,  <39.434917, 33.195927, 20.945557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260506, 33.032784, 20.921808>,  <38.969818, 32.760876, 20.882227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260506, 33.032784, 20.921808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338727, 0.229291, 0.912519,
		0.597610, -0.696666, 0.396886,
		0.726723, 0.679766, 0.098953,
		39.478523, 33.236713, 20.951494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347816, 32.553902, 21.517189>,  <38.969818, 32.760876, 20.882227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347816, 32.553902, 21.517189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353439, 32.937489, 21.403921>,  <39.356815, 33.167641, 21.335960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353439, 32.937489, 21.403921>,  <39.347816, 32.553902, 21.517189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353439, 32.937489, 21.403921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410436, 0.263774, 0.872906,
		0.911781, 0.103950, 0.397303,
		0.014060, 0.958967, -0.283169,
		39.357658, 33.225178, 21.318970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703510, 32.838013, 22.008286>,  <39.347816, 32.553902, 21.517189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703510, 32.838013, 22.008286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479504, 33.123402, 21.839834>,  <39.345100, 33.294636, 21.738764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479504, 33.123402, 21.839834>,  <39.703510, 32.838013, 22.008286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479504, 33.123402, 21.839834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382891, 0.227884, 0.895245,
		0.734697, 0.662596, 0.145562,
		-0.560014, 0.713468, -0.421127,
		39.311501, 33.337440, 21.713495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736362, 33.390301, 22.402506>,  <39.703510, 32.838013, 22.008286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736362, 33.390301, 22.402506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406097, 33.478535, 22.194803>,  <39.207939, 33.531475, 22.070183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406097, 33.478535, 22.194803>,  <39.736362, 33.390301, 22.402506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406097, 33.478535, 22.194803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460878, 0.267113, 0.846310,
		0.325387, 0.938078, -0.118880,
		-0.825660, 0.220589, -0.519255,
		39.158398, 33.544712, 22.039026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519417, 34.049290, 22.602985>,  <39.736362, 33.390301, 22.402506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519417, 34.049290, 22.602985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213791, 33.840340, 22.451551>,  <39.030415, 33.714970, 22.360691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213791, 33.840340, 22.451551>,  <39.519417, 34.049290, 22.602985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213791, 33.840340, 22.451551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590820, 0.330907, 0.735821,
		-0.259096, 0.785894, -0.561463,
		-0.764069, -0.522371, -0.378585,
		38.984570, 33.683628, 22.337976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056347, 34.529316, 22.704182>,  <39.519417, 34.049290, 22.602985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056347, 34.529316, 22.704182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875809, 34.172619, 22.691011>,  <38.767487, 33.958599, 22.683109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875809, 34.172619, 22.691011>,  <39.056347, 34.529316, 22.704182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875809, 34.172619, 22.691011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616607, 0.284990, 0.733878,
		-0.645046, 0.351535, -0.678483,
		-0.451345, -0.891742, -0.032927,
		38.740406, 33.905098, 22.681133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505234, 34.671906, 22.965847>,  <39.056347, 34.529316, 22.704182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505234, 34.671906, 22.965847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482998, 34.273148, 22.988152>,  <38.469654, 34.033894, 23.001535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482998, 34.273148, 22.988152>,  <38.505234, 34.671906, 22.965847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482998, 34.273148, 22.988152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649638, 0.078526, 0.756178,
		-0.758209, 0.005812, -0.651986,
		-0.055593, -0.996895, 0.055764,
		38.466320, 33.974079, 23.004881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787800, 34.524685, 23.015589>,  <38.505234, 34.671906, 22.965847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787800, 34.524685, 23.015589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000660, 34.228210, 23.179274>,  <38.128376, 34.050327, 23.277485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000660, 34.228210, 23.179274>,  <37.787800, 34.524685, 23.015589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000660, 34.228210, 23.179274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593682, 0.017918, 0.804501,
		-0.603618, -0.671059, -0.430494,
		0.532154, -0.741188, 0.409211,
		38.160305, 34.005856, 23.302036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328739, 34.150871, 23.300610>,  <37.787800, 34.524685, 23.015589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328739, 34.150871, 23.300610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644852, 33.970966, 23.467064>,  <37.834518, 33.863026, 23.566936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644852, 33.970966, 23.467064>,  <37.328739, 34.150871, 23.300610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644852, 33.970966, 23.467064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493277, -0.064091, 0.867508,
		-0.363499, -0.890848, -0.272506,
		0.790283, -0.449759, 0.416138,
		37.881935, 33.836040, 23.591906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094948, 33.605637, 23.650515>,  <37.328739, 34.150871, 23.300610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094948, 33.605637, 23.650515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455639, 33.669044, 23.811390>,  <37.672054, 33.707088, 23.907915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455639, 33.669044, 23.811390>,  <37.094948, 33.605637, 23.650515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455639, 33.669044, 23.811390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386076, -0.123288, 0.914191,
		0.194501, -0.979629, -0.049972,
		0.901729, 0.158518, 0.402190,
		37.726158, 33.716599, 23.932047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158085, 33.038265, 24.121225>,  <37.094948, 33.605637, 23.650515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158085, 33.038265, 24.121225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385262, 33.349033, 24.229921>,  <37.521568, 33.535492, 24.295139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385262, 33.349033, 24.229921>,  <37.158085, 33.038265, 24.121225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385262, 33.349033, 24.229921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341065, -0.078325, 0.936771,
		0.749076, -0.624713, 0.220495,
		0.567943, 0.776916, 0.271739,
		37.555645, 33.582108, 24.311443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544132, 32.830914, 24.660749>,  <37.158085, 33.038265, 24.121225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544132, 32.830914, 24.660749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525528, 33.228462, 24.700878>,  <37.514366, 33.466991, 24.724955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525528, 33.228462, 24.700878>,  <37.544132, 32.830914, 24.660749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525528, 33.228462, 24.700878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227343, -0.108328, 0.967771,
		0.972704, 0.022206, 0.230987,
		-0.046512, 0.993867, 0.100322,
		37.511574, 33.526623, 24.730974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959843, 33.006866, 25.188059>,  <37.544132, 32.830914, 24.660749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959843, 33.006866, 25.188059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760540, 33.353630, 25.182261>,  <37.640961, 33.561687, 25.178782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760540, 33.353630, 25.182261>,  <37.959843, 33.006866, 25.188059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760540, 33.353630, 25.182261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249629, -0.127422, 0.959922,
		0.830318, 0.481903, 0.279894,
		-0.498254, 0.866910, -0.014496,
		37.611065, 33.613705, 25.177912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225506, 33.390778, 25.750126>,  <37.959843, 33.006866, 25.188059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225506, 33.390778, 25.750126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876968, 33.560146, 25.650953>,  <37.667847, 33.661766, 25.591450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876968, 33.560146, 25.650953>,  <38.225506, 33.390778, 25.750126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876968, 33.560146, 25.650953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232224, 0.089251, 0.968559,
		0.432234, 0.901527, 0.020559,
		-0.871347, 0.423418, -0.247933,
		37.615562, 33.687172, 25.576572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218864, 34.027184, 26.121864>,  <38.225506, 33.390778, 25.750126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218864, 34.027184, 26.121864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848076, 33.915939, 26.021160>,  <37.625603, 33.849194, 25.960737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848076, 33.915939, 26.021160>,  <38.218864, 34.027184, 26.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848076, 33.915939, 26.021160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291192, 0.110323, 0.950282,
		-0.236505, 0.954193, -0.183249,
		-0.926969, -0.278107, -0.251762,
		37.569984, 33.832508, 25.945631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765602, 34.482010, 26.456532>,  <38.218864, 34.027184, 26.121864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765602, 34.482010, 26.456532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523788, 34.176044, 26.367588>,  <37.378700, 33.992466, 26.314222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523788, 34.176044, 26.367588>,  <37.765602, 34.482010, 26.456532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523788, 34.176044, 26.367588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463886, 0.111129, 0.878897,
		-0.647573, 0.634470, -0.422015,
		-0.604532, -0.764917, -0.222358,
		37.342430, 33.946568, 26.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149498, 34.718948, 26.570036>,  <37.765602, 34.482010, 26.456532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149498, 34.718948, 26.570036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061855, 34.329060, 26.587559>,  <37.009270, 34.095127, 26.598072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061855, 34.329060, 26.587559>,  <37.149498, 34.718948, 26.570036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061855, 34.329060, 26.587559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569446, 0.164206, 0.805461,
		-0.792291, 0.151534, -0.591027,
		-0.219105, -0.974717, 0.043809,
		36.996124, 34.036644, 26.600702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451885, 34.687748, 26.704531>,  <37.149498, 34.718948, 26.570036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451885, 34.687748, 26.704531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571510, 34.315819, 26.790318>,  <36.643288, 34.092663, 26.841789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571510, 34.315819, 26.790318>,  <36.451885, 34.687748, 26.704531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571510, 34.315819, 26.790318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602904, -0.009911, 0.797753,
		-0.739640, -0.367883, -0.563555,
		0.299065, -0.929819, 0.214468,
		36.661228, 34.036873, 26.854658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817192, 34.349377, 26.742990>,  <36.451885, 34.687748, 26.704531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817192, 34.349377, 26.742990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082317, 34.118069, 26.933268>,  <36.241394, 33.979282, 27.047434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082317, 34.118069, 26.933268>,  <35.817192, 34.349377, 26.742990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082317, 34.118069, 26.933268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539677, 0.071455, 0.838834,
		-0.519065, -0.812708, -0.264719,
		0.662812, -0.578273, 0.475690,
		36.281162, 33.944588, 27.075975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418324, 33.818485, 27.086533>,  <35.817192, 34.349377, 26.742990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418324, 33.818485, 27.086533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776470, 33.837261, 27.263676>,  <35.991356, 33.848526, 27.369961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776470, 33.837261, 27.263676>,  <35.418324, 33.818485, 27.086533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776470, 33.837261, 27.263676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438839, -0.076271, 0.895323,
		0.075807, -0.995982, -0.047690,
		0.895362, 0.046944, 0.442857,
		36.045078, 33.851345, 27.396532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416294, 33.272144, 27.586475>,  <35.418324, 33.818485, 27.086533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416294, 33.272144, 27.586475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704998, 33.513435, 27.722225>,  <35.878220, 33.658211, 27.803675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704998, 33.513435, 27.722225>,  <35.416294, 33.272144, 27.586475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704998, 33.513435, 27.722225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434553, 0.013295, 0.900548,
		0.538722, -0.797460, 0.271729,
		0.721763, 0.603226, 0.339377,
		35.921528, 33.694405, 27.824038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699867, 32.897816, 28.169189>,  <35.416294, 33.272144, 27.586475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699867, 32.897816, 28.169189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745918, 33.292152, 28.217962>,  <35.773548, 33.528755, 28.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745918, 33.292152, 28.217962>,  <35.699867, 32.897816, 28.169189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745918, 33.292152, 28.217962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433750, -0.060538, 0.898997,
		0.893648, -0.156392, 0.420637,
		0.115131, 0.985838, 0.121934,
		35.780457, 33.587902, 28.254543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795570, 33.043095, 28.925251>,  <35.699867, 32.897816, 28.169189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795570, 33.043095, 28.925251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680809, 33.410122, 28.815157>,  <35.611950, 33.630337, 28.749100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680809, 33.410122, 28.815157>,  <35.795570, 33.043095, 28.925251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680809, 33.410122, 28.815157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166927, 0.235032, 0.957547,
		0.943303, 0.320670, 0.085735,
		-0.286906, 0.917568, -0.275235,
		35.594738, 33.685390, 28.732586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149155, 33.411034, 29.364515>,  <35.795570, 33.043095, 28.925251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149155, 33.411034, 29.364515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850285, 33.640957, 29.231056>,  <35.670963, 33.778912, 29.150982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850285, 33.640957, 29.231056>,  <36.149155, 33.411034, 29.364515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850285, 33.640957, 29.231056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215925, 0.264834, 0.939808,
		0.628571, 0.774246, -0.073763,
		-0.747178, 0.574809, -0.333646,
		35.626133, 33.813400, 29.130962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224751, 33.967609, 29.734028>,  <36.149155, 33.411034, 29.364515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224751, 33.967609, 29.734028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868942, 34.048622, 29.570208>,  <35.655457, 34.097229, 29.471916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868942, 34.048622, 29.570208>,  <36.224751, 33.967609, 29.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868942, 34.048622, 29.570208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284726, 0.455321, 0.843572,
		0.357324, 0.866986, -0.347354,
		-0.889523, 0.202528, -0.409551,
		35.602085, 34.109379, 29.447342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982185, 34.641087, 29.948816>,  <36.224751, 33.967609, 29.734028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982185, 34.641087, 29.948816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638134, 34.462749, 29.849699>,  <35.431702, 34.355747, 29.790228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638134, 34.462749, 29.849699>,  <35.982185, 34.641087, 29.948816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638134, 34.462749, 29.849699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430923, 0.375224, 0.820678,
		-0.272917, 0.812668, -0.514865,
		-0.860129, -0.445844, -0.247793,
		35.380096, 34.328995, 29.775362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578838, 35.167633, 30.047073>,  <35.982185, 34.641087, 29.948816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578838, 35.167633, 30.047073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378227, 34.823750, 30.085798>,  <35.257862, 34.617420, 30.109034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378227, 34.823750, 30.085798>,  <35.578838, 35.167633, 30.047073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378227, 34.823750, 30.085798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608620, 0.430132, 0.666760,
		-0.614862, 0.275474, -0.738958,
		-0.501525, -0.859710, 0.096812,
		35.227768, 34.565838, 30.114841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930225, 35.358818, 30.224192>,  <35.578838, 35.167633, 30.047073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930225, 35.358818, 30.224192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915668, 34.968880, 30.312153>,  <34.906933, 34.734917, 30.364929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915668, 34.968880, 30.312153>,  <34.930225, 35.358818, 30.224192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915668, 34.968880, 30.312153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719033, 0.178362, 0.671698,
		-0.694022, -0.133671, -0.707436,
		-0.036393, -0.974843, 0.219901,
		34.904751, 34.676426, 30.378122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251644, 35.178993, 30.168350>,  <34.930225, 35.358818, 30.224192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251644, 35.178993, 30.168350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413815, 34.883045, 30.383097>,  <34.511116, 34.705475, 30.511944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413815, 34.883045, 30.383097>,  <34.251644, 35.178993, 30.168350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413815, 34.883045, 30.383097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799703, -0.002559, 0.600391,
		-0.442837, -0.672746, -0.592713,
		0.405427, -0.739869, 0.536863,
		34.535442, 34.661083, 30.544155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749008, 34.581448, 30.242975>,  <34.251644, 35.178993, 30.168350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749008, 34.581448, 30.242975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016602, 34.582561, 30.540285>,  <34.177158, 34.583229, 30.718672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016602, 34.582561, 30.540285>,  <33.749008, 34.581448, 30.242975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016602, 34.582561, 30.540285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718476, 0.258606, 0.645690,
		-0.190416, -0.965979, 0.175004,
		0.668980, 0.002787, 0.743275,
		34.217297, 34.583397, 30.763268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226379, 34.433571, 30.740841>,  <33.749008, 34.581448, 30.242975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226379, 34.433571, 30.740841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568680, 34.482784, 30.941860>,  <33.774059, 34.512314, 31.062471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568680, 34.482784, 30.941860>,  <33.226379, 34.433571, 30.740841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568680, 34.482784, 30.941860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507046, 0.006161, 0.861897,
		0.102951, -0.992383, 0.067659,
		0.855748, 0.123040, 0.502549,
		33.825405, 34.519695, 31.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392784, 33.790340, 31.107000>,  <33.226379, 34.433571, 30.740841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392784, 33.790340, 31.107000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544380, 34.096092, 31.315653>,  <33.635338, 34.279541, 31.440844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544380, 34.096092, 31.315653>,  <33.392784, 33.790340, 31.107000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544380, 34.096092, 31.315653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721718, -0.108671, 0.683604,
		0.579216, -0.635548, 0.510478,
		0.378989, 0.764375, 0.521630,
		33.658077, 34.325405, 31.472141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540962, 33.621674, 31.853590>,  <33.392784, 33.790340, 31.107000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540962, 33.621674, 31.853590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536415, 34.021633, 31.856867>,  <33.533688, 34.261608, 31.858833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536415, 34.021633, 31.856867>,  <33.540962, 33.621674, 31.853590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536415, 34.021633, 31.856867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449454, -0.012426, 0.893217,
		0.893231, 0.006471, 0.449551,
		-0.011366, 0.999902, 0.008191,
		33.533005, 34.321602, 31.859324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748608, 33.813351, 32.515087>,  <33.540962, 33.621674, 31.853590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748608, 33.813351, 32.515087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578430, 34.152199, 32.387722>,  <33.476322, 34.355507, 32.311302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578430, 34.152199, 32.387722>,  <33.748608, 33.813351, 32.515087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578430, 34.152199, 32.387722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405300, 0.136236, 0.903975,
		0.809152, 0.513648, 0.285375,
		-0.425447, 0.847116, -0.318417,
		33.450798, 34.406334, 32.292198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934666, 34.423065, 32.933254>,  <33.748608, 33.813351, 32.515087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934666, 34.423065, 32.933254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579693, 34.507984, 32.769604>,  <33.366707, 34.558937, 32.671413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579693, 34.507984, 32.769604>,  <33.934666, 34.423065, 32.933254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579693, 34.507984, 32.769604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344748, 0.283449, 0.894877,
		0.305951, 0.935192, -0.178353,
		-0.887436, 0.212302, -0.409127,
		33.313461, 34.571674, 32.646866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450287, 34.779472, 32.446556>,  <33.934666, 34.423065, 32.933254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450287, 34.779472, 32.446556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719070, 34.887383, 32.722439>,  <34.880341, 34.952129, 32.887970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719070, 34.887383, 32.722439>,  <34.450287, 34.779472, 32.446556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719070, 34.887383, 32.722439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676888, 0.154153, -0.719764,
		-0.300495, 0.950504, -0.079024,
		0.671957, 0.269776, 0.689707,
		34.920658, 34.968315, 32.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697212, 35.491653, 32.350227>,  <34.450287, 34.779472, 32.446556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697212, 35.491653, 32.350227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985954, 35.315762, 32.563976>,  <35.159199, 35.210228, 32.692226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985954, 35.315762, 32.563976>,  <34.697212, 35.491653, 32.350227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985954, 35.315762, 32.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691579, 0.430195, -0.580216,
		0.025251, 0.788398, 0.614647,
		0.721859, -0.439728, 0.534377,
		35.202511, 35.183842, 32.724289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195827, 35.945469, 32.426189>,  <34.697212, 35.491653, 32.350227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195827, 35.945469, 32.426189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393127, 35.605148, 32.498676>,  <35.511509, 35.400955, 32.542168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393127, 35.605148, 32.498676>,  <35.195827, 35.945469, 32.426189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393127, 35.605148, 32.498676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725760, 0.287656, -0.624921,
		0.479554, 0.439766, 0.759364,
		0.493255, -0.850800, 0.181218,
		35.541103, 35.349907, 32.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870960, 36.012959, 32.529263>,  <35.195827, 35.945469, 32.426189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870960, 36.012959, 32.529263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885384, 35.624096, 32.436649>,  <35.894039, 35.390778, 32.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885384, 35.624096, 32.436649>,  <35.870960, 36.012959, 32.529263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885384, 35.624096, 32.436649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799854, 0.166970, -0.576502,
		0.599110, -0.164403, 0.783606,
		0.036060, -0.972159, -0.231532,
		35.896202, 35.332447, 32.367191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541248, 35.887573, 32.390240>,  <35.870960, 36.012959, 32.529263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541248, 35.887573, 32.390240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395386, 35.556366, 32.219872>,  <36.307869, 35.357639, 32.117653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395386, 35.556366, 32.219872>,  <36.541248, 35.887573, 32.390240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395386, 35.556366, 32.219872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766854, -0.007600, -0.641777,
		0.528168, -0.560645, 0.637743,
		-0.364656, -0.828022, -0.425918,
		36.285988, 35.307961, 32.092094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157795, 35.336525, 32.342930>,  <36.541248, 35.887573, 32.390240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157795, 35.336525, 32.342930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862659, 35.316486, 32.073681>,  <36.685577, 35.304462, 31.912132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862659, 35.316486, 32.073681>,  <37.157795, 35.336525, 32.342930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862659, 35.316486, 32.073681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663488, 0.129415, -0.736909,
		0.124027, -0.990324, -0.062250,
		-0.737835, -0.050094, -0.673119,
		36.641308, 35.301456, 31.871744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505531, 35.073414, 31.735722>,  <37.157795, 35.336525, 32.342930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505531, 35.073414, 31.735722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145744, 35.158028, 31.582771>,  <36.929871, 35.208794, 31.491001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145744, 35.158028, 31.582771>,  <37.505531, 35.073414, 31.735722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145744, 35.158028, 31.582771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402258, 0.058939, -0.913628,
		-0.170726, -0.975592, -0.138105,
		-0.899467, 0.211534, -0.382377,
		36.875904, 35.221489, 31.468058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436012, 34.638409, 31.133337>,  <37.505531, 35.073414, 31.735722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436012, 34.638409, 31.133337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161198, 34.923470, 31.076607>,  <36.996307, 35.094505, 31.042568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161198, 34.923470, 31.076607>,  <37.436012, 34.638409, 31.133337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161198, 34.923470, 31.076607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229571, 0.027705, -0.972897,
		-0.689404, -0.700974, -0.182638,
		-0.687036, 0.712648, -0.141823,
		36.955086, 35.137264, 31.034060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271004, 34.477489, 30.536366>,  <37.436012, 34.638409, 31.133337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271004, 34.477489, 30.536366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134949, 34.852531, 30.565208>,  <37.053318, 35.077557, 30.582514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134949, 34.852531, 30.565208>,  <37.271004, 34.477489, 30.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134949, 34.852531, 30.565208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260400, 0.167591, -0.950844,
		-0.903604, -0.304638, -0.301157,
		-0.340134, 0.937608, 0.072108,
		37.032909, 35.133816, 30.586842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800900, 34.596561, 29.938438>,  <37.271004, 34.477489, 30.536366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800900, 34.596561, 29.938438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977669, 34.929546, 30.072128>,  <37.083729, 35.129337, 30.152342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977669, 34.929546, 30.072128>,  <36.800900, 34.596561, 29.938438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977669, 34.929546, 30.072128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507146, 0.075472, -0.858549,
		-0.739938, 0.548911, -0.388830,
		0.441921, 0.832467, 0.334223,
		37.110245, 35.179287, 30.172396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006565, 34.780842, 29.303104>,  <36.800900, 34.596561, 29.938438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006565, 34.780842, 29.303104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179420, 35.041088, 29.552891>,  <37.283134, 35.197235, 29.702763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179420, 35.041088, 29.552891>,  <37.006565, 34.780842, 29.303104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179420, 35.041088, 29.552891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545170, 0.363127, -0.755598,
		-0.718363, 0.666963, -0.197773,
		0.432139, 0.650614, 0.624465,
		37.309063, 35.236271, 29.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832279, 35.488728, 29.047089>,  <37.006565, 34.780842, 29.303104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832279, 35.488728, 29.047089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163582, 35.510326, 29.270185>,  <37.362362, 35.523285, 29.404043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163582, 35.510326, 29.270185>,  <36.832279, 35.488728, 29.047089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163582, 35.510326, 29.270185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466322, 0.485478, -0.739496,
		-0.310701, 0.872580, 0.376921,
		0.828256, 0.053995, 0.557742,
		37.412060, 35.526524, 29.437508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043102, 36.119617, 28.950737>,  <36.832279, 35.488728, 29.047089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043102, 36.119617, 28.950737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352921, 35.889114, 29.055050>,  <37.538811, 35.750813, 29.117638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352921, 35.889114, 29.055050>,  <37.043102, 36.119617, 28.950737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352921, 35.889114, 29.055050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504723, 0.314582, -0.803924,
		0.381229, 0.754298, 0.534508,
		0.774545, -0.576258, 0.260783,
		37.585285, 35.716236, 29.133286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684563, 36.562252, 28.764490>,  <37.043102, 36.119617, 28.950737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684563, 36.562252, 28.764490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827168, 36.189640, 28.793209>,  <37.912731, 35.966072, 28.810440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827168, 36.189640, 28.793209>,  <37.684563, 36.562252, 28.764490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827168, 36.189640, 28.793209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586184, 0.163178, -0.793575,
		0.727520, 0.325008, 0.604222,
		0.356514, -0.931527, 0.071799,
		37.934120, 35.910183, 28.814749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399799, 36.627693, 28.692545>,  <37.684563, 36.562252, 28.764490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399799, 36.627693, 28.692545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328568, 36.235725, 28.656689>,  <38.285828, 36.000542, 28.635176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328568, 36.235725, 28.656689>,  <38.399799, 36.627693, 28.692545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328568, 36.235725, 28.656689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552436, -0.024176, -0.833205,
		0.814310, -0.197899, 0.545651,
		-0.178082, -0.979924, -0.089640,
		38.275143, 35.941750, 28.629797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007450, 36.378307, 28.540668>,  <38.399799, 36.627693, 28.692545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007450, 36.378307, 28.540668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761562, 36.098370, 28.395159>,  <38.614029, 35.930408, 28.307854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761562, 36.098370, 28.395159>,  <39.007450, 36.378307, 28.540668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761562, 36.098370, 28.395159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568570, -0.073527, -0.819342,
		0.546666, -0.710500, 0.443110,
		-0.614723, -0.699845, -0.363774,
		38.577145, 35.888416, 28.286026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415554, 35.847157, 28.225794>,  <39.007450, 36.378307, 28.540668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415554, 35.847157, 28.225794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055836, 35.806641, 28.055616>,  <38.840004, 35.782330, 27.953510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055836, 35.806641, 28.055616>,  <39.415554, 35.847157, 28.225794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055836, 35.806641, 28.055616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437303, -0.220033, -0.871981,
		-0.005285, -0.970219, 0.242172,
		-0.899299, -0.101294, -0.425443,
		38.786045, 35.776253, 27.927984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486786, 35.213875, 27.896090>,  <39.415554, 35.847157, 28.225794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486786, 35.213875, 27.896090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175060, 35.401028, 27.729357>,  <38.988026, 35.513321, 27.629318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175060, 35.401028, 27.729357>,  <39.486786, 35.213875, 27.896090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175060, 35.401028, 27.729357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357887, -0.213695, -0.908984,
		-0.514375, -0.857565, -0.000914,
		-0.779317, 0.467885, -0.416830,
		38.941265, 35.541393, 27.604307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153439, 34.667950, 27.514399>,  <39.486786, 35.213875, 27.896090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153439, 34.667950, 27.514399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064728, 35.008701, 27.324614>,  <39.011501, 35.213154, 27.210743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064728, 35.008701, 27.324614>,  <39.153439, 34.667950, 27.514399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064728, 35.008701, 27.324614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321365, -0.395539, -0.860392,
		-0.920618, -0.343293, -0.186042,
		-0.221780, 0.851880, -0.474462,
		38.998196, 35.264267, 27.182274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859066, 34.473621, 26.858183>,  <39.153439, 34.667950, 27.514399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859066, 34.473621, 26.858183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957676, 34.857410, 26.803564>,  <39.016842, 35.087685, 26.770792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957676, 34.857410, 26.803564>,  <38.859066, 34.473621, 26.858183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957676, 34.857410, 26.803564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361621, -0.221790, -0.905560,
		-0.899142, 0.173863, -0.401641,
		0.246523, 0.959469, -0.136548,
		39.031631, 35.145252, 26.762600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632645, 34.671967, 26.121956>,  <38.859066, 34.473621, 26.858183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632645, 34.671967, 26.121956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920174, 34.927956, 26.230570>,  <39.092690, 35.081547, 26.295738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920174, 34.927956, 26.230570>,  <38.632645, 34.671967, 26.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920174, 34.927956, 26.230570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430018, -0.102415, -0.896993,
		-0.546240, 0.761543, -0.348817,
		0.718823, 0.639971, 0.271534,
		39.135822, 35.119946, 26.312031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719070, 35.076847, 25.566669>,  <38.632645, 34.671967, 26.121956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719070, 35.076847, 25.566669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056683, 35.125893, 25.775507>,  <39.259251, 35.155319, 25.900810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056683, 35.125893, 25.775507>,  <38.719070, 35.076847, 25.566669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056683, 35.125893, 25.775507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533483, -0.092311, -0.840758,
		-0.054894, 0.988152, -0.143326,
		0.844028, 0.122615, 0.522095,
		39.309891, 35.162678, 25.932135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156898, 35.615623, 25.245375>,  <38.719070, 35.076847, 25.566669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156898, 35.615623, 25.245375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401936, 35.384449, 25.461048>,  <39.548958, 35.245743, 25.590452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401936, 35.384449, 25.461048>,  <39.156898, 35.615623, 25.245375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401936, 35.384449, 25.461048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581501, -0.132491, -0.802685,
		0.535337, 0.805256, 0.254907,
		0.612594, -0.577935, 0.539184,
		39.585712, 35.211067, 25.622803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717266, 35.705662, 24.977146>,  <39.156898, 35.615623, 25.245375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717266, 35.705662, 24.977146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810314, 35.369038, 25.172148>,  <39.866142, 35.167061, 25.289148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810314, 35.369038, 25.172148>,  <39.717266, 35.705662, 24.977146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810314, 35.369038, 25.172148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597359, -0.271934, -0.754463,
		0.767497, 0.466717, 0.439458,
		0.232618, -0.841562, 0.487506,
		39.880100, 35.116570, 25.318399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283325, 35.582165, 24.652718>,  <39.717266, 35.705662, 24.977146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283325, 35.582165, 24.652718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236534, 35.227451, 24.831575>,  <40.208462, 35.014626, 24.938890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236534, 35.227451, 24.831575>,  <40.283325, 35.582165, 24.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236534, 35.227451, 24.831575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517475, -0.438710, -0.734679,
		0.847665, 0.145447, 0.510204,
		-0.116974, -0.886780, 0.447144,
		40.201443, 34.961418, 24.965719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914982, 35.181870, 24.680843>,  <40.283325, 35.582165, 24.652718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914982, 35.181870, 24.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658913, 34.879837, 24.737446>,  <40.505272, 34.698616, 24.771408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658913, 34.879837, 24.737446>,  <40.914982, 35.181870, 24.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658913, 34.879837, 24.737446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548043, -0.577959, -0.604659,
		0.538353, -0.309536, 0.783813,
		-0.640176, -0.755083, 0.141507,
		40.466862, 34.653313, 24.779898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335735, 34.582130, 25.030169>,  <40.914982, 35.181870, 24.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335735, 34.582130, 25.030169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991837, 34.450481, 24.873957>,  <40.785496, 34.371494, 24.780230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991837, 34.450481, 24.873957>,  <41.335735, 34.582130, 25.030169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991837, 34.450481, 24.873957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496768, -0.716405, -0.489883,
		-0.118546, -0.615178, 0.779425,
		-0.859749, -0.329120, -0.390528,
		40.733913, 34.351746, 24.756798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393787, 33.848408, 25.160967>,  <41.335735, 34.582130, 25.030169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393787, 33.848408, 25.160967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109035, 33.919861, 24.889284>,  <40.938187, 33.962730, 24.726274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109035, 33.919861, 24.889284>,  <41.393787, 33.848408, 25.160967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109035, 33.919861, 24.889284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306078, -0.791521, -0.528971,
		-0.632097, -0.584453, 0.508791,
		-0.711878, 0.178631, -0.679206,
		40.895473, 33.973450, 24.685522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059772, 33.284317, 25.135517>,  <41.393787, 33.848408, 25.160967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059772, 33.284317, 25.135517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976475, 33.442928, 24.777882>,  <40.926495, 33.538094, 24.563299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976475, 33.442928, 24.777882>,  <41.059772, 33.284317, 25.135517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976475, 33.442928, 24.777882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477791, -0.756396, -0.446745,
		-0.853435, -0.520220, -0.031943,
		-0.208244, 0.396530, -0.894091,
		40.914001, 33.561886, 24.509655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994934, 32.735367, 24.765661>,  <41.059772, 33.284317, 25.135517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994934, 32.735367, 24.765661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062840, 33.025574, 24.498888>,  <41.103584, 33.199699, 24.338825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062840, 33.025574, 24.498888>,  <40.994934, 32.735367, 24.765661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062840, 33.025574, 24.498888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680647, -0.575731, -0.453050,
		-0.712671, -0.377032, -0.591563,
		0.169767, 0.725521, -0.666932,
		41.113770, 33.243229, 24.298809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972771, 32.384079, 24.013481>,  <40.994934, 32.735367, 24.765661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972771, 32.384079, 24.013481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185123, 32.722752, 23.999031>,  <41.312534, 32.925953, 23.990360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185123, 32.722752, 23.999031>,  <40.972771, 32.384079, 24.013481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185123, 32.722752, 23.999031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599953, -0.405603, -0.689596,
		-0.598518, 0.344419, -0.723293,
		0.530880, 0.846677, -0.036126,
		41.344387, 32.976753, 23.988194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940315, 32.384789, 23.332827>,  <40.972771, 32.384079, 24.013481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940315, 32.384789, 23.332827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217831, 32.646828, 23.452499>,  <41.384338, 32.804050, 23.524303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217831, 32.646828, 23.452499>,  <40.940315, 32.384789, 23.332827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217831, 32.646828, 23.452499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631806, -0.354262, -0.689434,
		-0.345657, 0.667345, -0.659675,
		0.693788, 0.655095, 0.299180,
		41.425968, 32.843357, 23.542253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104012, 32.656284, 22.719288>,  <40.940315, 32.384789, 23.332827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104012, 32.656284, 22.719288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410416, 32.721142, 22.968105>,  <41.594257, 32.760056, 23.117395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410416, 32.721142, 22.968105>,  <41.104012, 32.656284, 22.719288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410416, 32.721142, 22.968105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625158, -0.413238, -0.662126,
		0.149693, 0.896071, -0.417910,
		0.766009, 0.162145, 0.622045,
		41.640217, 32.769787, 23.154718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680302, 33.062775, 22.306976>,  <41.104012, 32.656284, 22.719288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680302, 33.062775, 22.306976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815578, 32.841206, 22.611290>,  <41.896744, 32.708263, 22.793879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815578, 32.841206, 22.611290>,  <41.680302, 33.062775, 22.306976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815578, 32.841206, 22.611290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638517, -0.458805, -0.617895,
		0.691318, 0.694743, 0.198523,
		0.338194, -0.553923, 0.760785,
		41.917038, 32.675030, 22.839525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253128, 32.756294, 21.946913>,  <41.680302, 33.062775, 22.306976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253128, 32.756294, 21.946913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269878, 32.569603, 22.300276>,  <42.279930, 32.457588, 22.512293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269878, 32.569603, 22.300276>,  <42.253128, 32.756294, 21.946913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269878, 32.569603, 22.300276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588622, -0.702922, -0.399281,
		0.807323, 0.536713, 0.245292,
		0.041878, -0.466733, 0.883406,
		42.282440, 32.429585, 22.565298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039833, 32.645638, 22.050303>,  <42.253128, 32.756294, 21.946913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039833, 32.645638, 22.050303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827103, 32.387737, 22.269924>,  <42.699463, 32.232998, 22.401697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827103, 32.387737, 22.269924>,  <43.039833, 32.645638, 22.050303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827103, 32.387737, 22.269924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599982, -0.744425, -0.293008,
		0.597644, 0.173592, 0.782743,
		-0.531830, -0.644746, 0.549053,
		42.667553, 32.194313, 22.434641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556034, 32.170258, 22.194111>,  <43.039833, 32.645638, 22.050303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556034, 32.170258, 22.194111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219189, 31.985409, 22.305305>,  <43.017082, 31.874498, 22.372023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219189, 31.985409, 22.305305>,  <43.556034, 32.170258, 22.194111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219189, 31.985409, 22.305305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413549, -0.884212, -0.217133,
		0.346143, -0.067890, 0.935722,
		-0.842118, -0.462126, 0.277988,
		42.966553, 31.846771, 22.388702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703876, 31.746592, 22.752720>,  <43.556034, 32.170258, 22.194111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703876, 31.746592, 22.752720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404446, 31.596836, 22.533827>,  <43.224785, 31.506983, 22.402491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404446, 31.596836, 22.533827>,  <43.703876, 31.746592, 22.752720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404446, 31.596836, 22.533827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512865, -0.850039, -0.120011,
		-0.420237, -0.370494, 0.828333,
		-0.748579, -0.374390, -0.547231,
		43.179871, 31.484520, 22.369658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054031, 31.106836, 22.417423>,  <43.703876, 31.746592, 22.752720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054031, 31.106836, 22.417423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409718, 31.034214, 22.585396>,  <44.623127, 30.990641, 22.686178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409718, 31.034214, 22.585396>,  <44.054031, 31.106836, 22.417423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409718, 31.034214, 22.585396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357127, 0.298234, 0.885165,
		-0.285945, -0.937067, 0.200354,
		0.889211, -0.181556, 0.419930,
		44.676479, 30.979748, 22.711374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878479, 30.848106, 23.045321>,  <44.054031, 31.106836, 22.417423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878479, 30.848106, 23.045321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258335, 30.942730, 23.127520>,  <44.486248, 30.999504, 23.176840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258335, 30.942730, 23.127520>,  <43.878479, 30.848106, 23.045321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258335, 30.942730, 23.127520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256578, 0.210558, 0.943310,
		0.179864, -0.948532, 0.260646,
		0.949640, 0.236544, 0.205501,
		44.543228, 31.013697, 23.189169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109077, 30.394205, 23.638954>,  <43.878479, 30.848106, 23.045321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109077, 30.394205, 23.638954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349369, 30.712385, 23.607010>,  <44.493546, 30.903294, 23.587843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349369, 30.712385, 23.607010>,  <44.109077, 30.394205, 23.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349369, 30.712385, 23.607010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298444, 0.315808, 0.900665,
		0.741656, -0.517224, 0.427114,
		0.600731, 0.795452, -0.079859,
		44.529587, 30.951021, 23.583052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491631, 30.243689, 24.260565>,  <44.109077, 30.394205, 23.638954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491631, 30.243689, 24.260565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480515, 30.617001, 24.117338>,  <44.473846, 30.840988, 24.031403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480515, 30.617001, 24.117338>,  <44.491631, 30.243689, 24.260565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480515, 30.617001, 24.117338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220436, 0.343665, 0.912854,
		0.975005, 0.104300, 0.196178,
		-0.027791, 0.933282, -0.358067,
		44.472176, 30.896986, 24.009918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837860, 30.687983, 24.748020>,  <44.491631, 30.243689, 24.260565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837860, 30.687983, 24.748020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636326, 30.958912, 24.533588>,  <44.515404, 31.121469, 24.404930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636326, 30.958912, 24.533588>,  <44.837860, 30.687983, 24.748020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636326, 30.958912, 24.533588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224370, 0.496686, 0.838428,
		0.834149, 0.542713, -0.098279,
		-0.503839, 0.677323, -0.536078,
		44.485172, 31.162109, 24.372765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888645, 31.316591, 25.200514>,  <44.837860, 30.687983, 24.748020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888645, 31.316591, 25.200514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580139, 31.354876, 24.948805>,  <44.395035, 31.377846, 24.797779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580139, 31.354876, 24.948805>,  <44.888645, 31.316591, 25.200514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580139, 31.354876, 24.948805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483068, 0.555751, 0.676599,
		0.414476, 0.825821, -0.382399,
		-0.771268, 0.095709, -0.629273,
		44.348759, 31.383589, 24.760023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755047, 31.995359, 25.113058>,  <44.888645, 31.316591, 25.200514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755047, 31.995359, 25.113058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407082, 31.834791, 24.998444>,  <44.198303, 31.738449, 24.929674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407082, 31.834791, 24.998444>,  <44.755047, 31.995359, 25.113058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407082, 31.834791, 24.998444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491109, 0.651627, 0.578095,
		-0.045344, 0.643616, -0.764004,
		-0.869917, -0.401423, -0.286538,
		44.146107, 31.714365, 24.912481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380650, 32.475990, 25.294069>,  <44.755047, 31.995359, 25.113058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380650, 32.475990, 25.294069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106087, 32.193340, 25.225334>,  <43.941349, 32.023750, 25.184093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106087, 32.193340, 25.225334>,  <44.380650, 32.475990, 25.294069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106087, 32.193340, 25.225334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626805, 0.455064, 0.632481,
		-0.368728, 0.541849, -0.755274,
		-0.686408, -0.706623, -0.171839,
		43.900166, 31.981354, 25.173782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768276, 32.865707, 25.083941>,  <44.380650, 32.475990, 25.294069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768276, 32.865707, 25.083941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669685, 32.508526, 25.234608>,  <43.610531, 32.294216, 25.325008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669685, 32.508526, 25.234608>,  <43.768276, 32.865707, 25.083941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669685, 32.508526, 25.234608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630598, 0.442899, 0.637328,
		-0.735931, -0.080438, -0.672262,
		-0.246478, -0.892956, 0.376667,
		43.595741, 32.240639, 25.347609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129314, 32.858891, 25.234442>,  <43.768276, 32.865707, 25.083941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129314, 32.858891, 25.234442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198967, 32.532970, 25.455627>,  <43.240761, 32.337418, 25.588339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198967, 32.532970, 25.455627>,  <43.129314, 32.858891, 25.234442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198967, 32.532970, 25.455627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573735, 0.372435, 0.729465,
		-0.800315, -0.444282, -0.402627,
		0.174136, -0.814804, 0.552966,
		43.251209, 32.288528, 25.621517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480694, 32.754833, 25.505611>,  <43.129314, 32.858891, 25.234442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480694, 32.754833, 25.505611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743973, 32.562233, 25.737104>,  <42.901939, 32.446671, 25.876001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743973, 32.562233, 25.737104>,  <42.480694, 32.754833, 25.505611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743973, 32.562233, 25.737104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650817, 0.022505, 0.758901,
		-0.378438, -0.876155, -0.298558,
		0.658196, -0.481503, 0.578733,
		42.941433, 32.417782, 25.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168411, 32.144287, 25.826687>,  <42.480694, 32.754833, 25.505611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168411, 32.144287, 25.826687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465446, 32.245262, 26.074831>,  <42.643665, 32.305847, 26.223717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465446, 32.245262, 26.074831>,  <42.168411, 32.144287, 25.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465446, 32.245262, 26.074831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659686, 0.115686, 0.742584,
		0.115686, -0.960674, 0.252434,
		-0.742584, -0.252434, -0.620360,
		42.688221, 32.320992, 26.260939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998207, 31.699923, 26.397541>,  <42.168411, 32.144287, 25.826687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998207, 31.699923, 26.397541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230225, 32.004711, 26.512741>,  <42.369434, 32.187584, 26.581861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230225, 32.004711, 26.512741>,  <41.998207, 31.699923, 26.397541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230225, 32.004711, 26.512741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600630, 0.161241, 0.783100,
		0.550262, -0.627216, 0.551190,
		0.580048, 0.761971, 0.288000,
		42.404240, 32.233303, 26.599142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113533, 31.548756, 27.081264>,  <41.998207, 31.699923, 26.397541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113533, 31.548756, 27.081264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164223, 31.939068, 27.009945>,  <42.194637, 32.173256, 26.967154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164223, 31.939068, 27.009945>,  <42.113533, 31.548756, 27.081264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164223, 31.939068, 27.009945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596135, 0.218586, 0.772556,
		0.792819, 0.008386, 0.609399,
		0.126727, 0.975781, -0.178298,
		42.202240, 32.231804, 26.956455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205349, 31.871925, 27.745964>,  <42.113533, 31.548756, 27.081264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205349, 31.871925, 27.745964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073906, 32.138695, 27.478462>,  <41.995041, 32.298756, 27.317961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073906, 32.138695, 27.478462>,  <42.205349, 31.871925, 27.745964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073906, 32.138695, 27.478462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554351, 0.437082, 0.708275,
		0.764665, 0.603470, 0.226080,
		-0.328607, 0.666921, -0.668755,
		41.975323, 32.338772, 27.277836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086250, 32.398232, 28.223862>,  <42.205349, 31.871925, 27.745964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086250, 32.398232, 28.223862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935211, 32.550770, 27.886343>,  <41.844589, 32.642292, 27.683832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935211, 32.550770, 27.886343>,  <42.086250, 32.398232, 28.223862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935211, 32.550770, 27.886343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682315, 0.501457, 0.531965,
		0.625993, 0.776603, 0.070853,
		-0.377596, 0.381350, -0.843797,
		41.821934, 32.665176, 27.633204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148144, 33.054928, 28.245659>,  <42.086250, 32.398232, 28.223862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148144, 33.054928, 28.245659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847599, 32.979259, 27.992779>,  <41.667274, 32.933857, 27.841051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847599, 32.979259, 27.992779>,  <42.148144, 33.054928, 28.245659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847599, 32.979259, 27.992779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585970, 0.631852, 0.507349,
		0.303481, 0.751650, -0.585595,
		-0.751358, -0.189170, -0.632199,
		41.622192, 32.922508, 27.803120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848270, 33.722889, 28.120880>,  <42.148144, 33.054928, 28.245659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848270, 33.722889, 28.120880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559273, 33.470871, 28.007004>,  <41.385876, 33.319660, 27.938679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559273, 33.470871, 28.007004>,  <41.848270, 33.722889, 28.120880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559273, 33.470871, 28.007004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674722, 0.552706, 0.489148,
		-0.150833, 0.545494, -0.824430,
		-0.722495, -0.630041, -0.284691,
		41.342525, 33.281860, 27.921597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255260, 34.177662, 28.134558>,  <41.848270, 33.722889, 28.120880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255260, 34.177662, 28.134558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073120, 33.821545, 28.137041>,  <40.963837, 33.607876, 28.138531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073120, 33.821545, 28.137041>,  <41.255260, 34.177662, 28.134558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073120, 33.821545, 28.137041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757998, 0.391324, 0.521828,
		-0.467008, 0.232910, -0.853028,
		-0.455350, -0.890291, 0.006206,
		40.936516, 33.554459, 28.138903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551014, 34.325382, 27.980606>,  <41.255260, 34.177662, 28.134558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551014, 34.325382, 27.980606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550323, 33.966942, 28.158148>,  <40.549908, 33.751877, 28.264673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550323, 33.966942, 28.158148>,  <40.551014, 34.325382, 27.980606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550323, 33.966942, 28.158148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706321, 0.315295, 0.633797,
		-0.707889, -0.312406, -0.633479,
		-0.001730, -0.896098, 0.443853,
		40.549805, 33.698112, 28.291304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903290, 34.249313, 28.212545>,  <40.551014, 34.325382, 27.980606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903290, 34.249313, 28.212545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059410, 33.961853, 28.442745>,  <40.153084, 33.789375, 28.580866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059410, 33.961853, 28.442745>,  <39.903290, 34.249313, 28.212545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059410, 33.961853, 28.442745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548921, 0.320192, 0.772116,
		-0.739155, -0.617262, -0.269512,
		0.390302, -0.718654, 0.575500,
		40.176502, 33.746258, 28.615395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329697, 33.868923, 28.606216>,  <39.903290, 34.249313, 28.212545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329697, 33.868923, 28.606216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675484, 33.837978, 28.804897>,  <39.882957, 33.819412, 28.924107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675484, 33.837978, 28.804897>,  <39.329697, 33.868923, 28.606216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675484, 33.837978, 28.804897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428783, 0.402252, 0.808912,
		-0.262381, -0.912255, 0.314560,
		0.864466, -0.077366, 0.496702,
		39.934822, 33.814770, 28.953907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138519, 33.765194, 29.273750>,  <39.329697, 33.868923, 28.606216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138519, 33.765194, 29.273750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521904, 33.872791, 29.311684>,  <39.751934, 33.937351, 29.334444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521904, 33.872791, 29.311684>,  <39.138519, 33.765194, 29.273750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521904, 33.872791, 29.311684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197248, 0.384967, 0.901606,
		0.206018, -0.882861, 0.422035,
		0.958462, 0.268992, 0.094832,
		39.809444, 33.953487, 29.340134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350677, 33.434788, 29.954271>,  <39.138519, 33.765194, 29.273750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350677, 33.434788, 29.954271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599190, 33.736626, 29.869801>,  <39.748299, 33.917728, 29.819118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599190, 33.736626, 29.869801>,  <39.350677, 33.434788, 29.954271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599190, 33.736626, 29.869801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202265, 0.414801, 0.887147,
		0.757033, -0.508454, 0.410336,
		0.621281, 0.754596, -0.211176,
		39.785576, 33.963005, 29.806448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766155, 33.527531, 30.558649>,  <39.350677, 33.434788, 29.954271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766155, 33.527531, 30.558649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790260, 33.864956, 30.345196>,  <39.804722, 34.067413, 30.217123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790260, 33.864956, 30.345196>,  <39.766155, 33.527531, 30.558649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790260, 33.864956, 30.345196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126198, 0.536755, 0.834247,
		0.990173, 0.017073, 0.138801,
		0.060259, 0.843566, -0.533635,
		39.808338, 34.118027, 30.185106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091507, 33.897388, 31.000435>,  <39.766155, 33.527531, 30.558649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091507, 33.897388, 31.000435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974754, 34.179401, 30.741905>,  <39.904705, 34.348610, 30.586788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974754, 34.179401, 30.741905>,  <40.091507, 33.897388, 31.000435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974754, 34.179401, 30.741905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205486, 0.613746, 0.762293,
		0.934121, 0.355309, -0.034266,
		-0.291880, 0.705033, -0.646324,
		39.887192, 34.390911, 30.548008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449081, 34.490757, 31.219795>,  <40.091507, 33.897388, 31.000435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449081, 34.490757, 31.219795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117489, 34.603619, 31.026638>,  <39.918533, 34.671337, 30.910744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117489, 34.603619, 31.026638>,  <40.449081, 34.490757, 31.219795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117489, 34.603619, 31.026638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225287, 0.621806, 0.750069,
		0.511900, 0.730580, -0.451898,
		-0.828978, 0.282153, -0.482893,
		39.868797, 34.688263, 30.881771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329033, 35.216969, 31.266588>,  <40.449081, 34.490757, 31.219795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329033, 35.216969, 31.266588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960297, 35.092892, 31.173637>,  <39.739056, 35.018448, 31.117867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960297, 35.092892, 31.173637>,  <40.329033, 35.216969, 31.266588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960297, 35.092892, 31.173637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378916, 0.595244, 0.708595,
		-0.081479, 0.741261, -0.666254,
		-0.921837, -0.310190, -0.232376,
		39.683746, 34.999836, 31.103924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947815, 35.770767, 31.432142>,  <40.329033, 35.216969, 31.266588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947815, 35.770767, 31.432142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690796, 35.466156, 31.398161>,  <39.536587, 35.283390, 31.377773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690796, 35.466156, 31.398161>,  <39.947815, 35.770767, 31.432142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690796, 35.466156, 31.398161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438902, 0.274898, 0.855451,
		-0.628094, 0.586951, -0.510868,
		-0.642545, -0.761525, -0.084952,
		39.498032, 35.237698, 31.372675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541042, 35.964050, 31.890896>,  <39.947815, 35.770767, 31.432142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541042, 35.964050, 31.890896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390350, 35.599625, 31.823912>,  <39.299934, 35.380970, 31.783722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390350, 35.599625, 31.823912>,  <39.541042, 35.964050, 31.890896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390350, 35.599625, 31.823912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439064, 0.016441, 0.898306,
		-0.815657, 0.411946, -0.406207,
		-0.376732, -0.911060, -0.167460,
		39.277332, 35.326305, 31.773674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743420, 35.933033, 32.015064>,  <39.541042, 35.964050, 31.890896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743420, 35.933033, 32.015064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926155, 35.579594, 32.056156>,  <39.035797, 35.367531, 32.080811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926155, 35.579594, 32.056156>,  <38.743420, 35.933033, 32.015064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926155, 35.579594, 32.056156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358796, -0.077361, 0.930204,
		-0.813978, -0.461815, -0.352373,
		0.456842, -0.883596, 0.102727,
		39.063210, 35.314514, 32.086975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229111, 35.490482, 32.185997>,  <38.743420, 35.933033, 32.015064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229111, 35.490482, 32.185997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541878, 35.278828, 32.317825>,  <38.729538, 35.151833, 32.396923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541878, 35.278828, 32.317825>,  <38.229111, 35.490482, 32.185997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541878, 35.278828, 32.317825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459325, -0.131607, 0.878465,
		-0.421458, -0.838265, -0.345954,
		0.781917, -0.529141, 0.329569,
		38.776451, 35.120087, 32.416695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039745, 34.768398, 32.371407>,  <38.229111, 35.490482, 32.185997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039745, 34.768398, 32.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369614, 34.871807, 32.572636>,  <38.567535, 34.933853, 32.693375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369614, 34.871807, 32.572636>,  <38.039745, 34.768398, 32.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369614, 34.871807, 32.572636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455975, -0.222413, 0.861754,
		0.334673, -0.940052, -0.065538,
		0.824670, 0.258522, 0.503076,
		38.617016, 34.949364, 32.723557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975464, 34.429661, 32.976795>,  <38.039745, 34.768398, 32.371407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975464, 34.429661, 32.976795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256496, 34.702255, 33.058727>,  <38.425117, 34.865810, 33.107887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256496, 34.702255, 33.058727>,  <37.975464, 34.429661, 32.976795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256496, 34.702255, 33.058727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301338, 0.024167, 0.953211,
		0.644647, -0.731435, 0.222336,
		0.702585, 0.681483, 0.204830,
		38.467274, 34.906700, 33.120178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305355, 34.228954, 33.643192>,  <37.975464, 34.429661, 32.976795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305355, 34.228954, 33.643192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366913, 34.623573, 33.621166>,  <38.403847, 34.860344, 33.607948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366913, 34.623573, 33.621166>,  <38.305355, 34.228954, 33.643192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366913, 34.623573, 33.621166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241272, 0.091564, 0.966128,
		0.958178, -0.135395, 0.252119,
		0.153894, 0.986552, -0.055067,
		38.413082, 34.919540, 33.604645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588005, 34.465214, 34.257515>,  <38.305355, 34.228954, 33.643192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588005, 34.465214, 34.257515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430386, 34.807743, 34.123985>,  <38.335812, 35.013260, 34.043865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430386, 34.807743, 34.123985>,  <38.588005, 34.465214, 34.257515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430386, 34.807743, 34.123985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277373, 0.235482, 0.931457,
		0.876235, 0.459637, 0.144728,
		-0.394052, 0.856319, -0.333828,
		38.312172, 35.064640, 34.023838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725971, 34.932034, 34.755745>,  <38.588005, 34.465214, 34.257515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725971, 34.932034, 34.755745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426479, 35.101910, 34.552162>,  <38.246784, 35.203835, 34.430012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426479, 35.101910, 34.552162>,  <38.725971, 34.932034, 34.755745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426479, 35.101910, 34.552162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288458, 0.482547, 0.827007,
		0.596822, 0.766018, -0.238790,
		-0.748729, 0.424695, -0.508958,
		38.201862, 35.229317, 34.399475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685925, 35.547520, 34.996006>,  <38.725971, 34.932034, 34.755745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685925, 35.547520, 34.996006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324196, 35.524193, 34.826866>,  <38.107159, 35.510197, 34.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324196, 35.524193, 34.826866>,  <38.685925, 35.547520, 34.996006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324196, 35.524193, 34.826866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411640, 0.381300, 0.827746,
		0.112959, 0.922610, -0.368824,
		-0.904319, -0.058321, -0.422854,
		38.052898, 35.506695, 34.700008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379677, 36.140221, 35.074951>,  <38.685925, 35.547520, 34.996006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379677, 36.140221, 35.074951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061623, 35.910152, 34.998081>,  <37.870789, 35.772110, 34.951962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061623, 35.910152, 34.998081>,  <38.379677, 36.140221, 35.074951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061623, 35.910152, 34.998081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473955, 0.391725, 0.788618,
		-0.378313, 0.718142, -0.584082,
		-0.795139, -0.575173, -0.192172,
		37.823082, 35.737602, 34.940430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862507, 36.575485, 35.091099>,  <38.379677, 36.140221, 35.074951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862507, 36.575485, 35.091099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736225, 36.205036, 35.173679>,  <37.660458, 35.982765, 35.223228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736225, 36.205036, 35.173679>,  <37.862507, 36.575485, 35.091099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736225, 36.205036, 35.173679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430528, 0.333708, 0.838621,
		-0.845564, 0.175871, -0.504075,
		-0.315703, -0.926126, 0.206454,
		37.641514, 35.927200, 35.235615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149189, 36.563297, 35.210022>,  <37.862507, 36.575485, 35.091099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149189, 36.563297, 35.210022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333065, 36.279358, 35.423492>,  <37.443390, 36.108994, 35.551575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333065, 36.279358, 35.423492>,  <37.149189, 36.563297, 35.210022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333065, 36.279358, 35.423492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291332, 0.447139, 0.845691,
		-0.838934, -0.544232, -0.001255,
		0.459691, -0.709844, 0.533672,
		37.470974, 36.066406, 35.583595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628609, 36.358845, 35.663143>,  <37.149189, 36.563297, 35.210022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628609, 36.358845, 35.663143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983311, 36.265705, 35.822868>,  <37.196133, 36.209820, 35.918701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983311, 36.265705, 35.822868>,  <36.628609, 36.358845, 35.663143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983311, 36.265705, 35.822868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302142, 0.361784, 0.881943,
		-0.349827, -0.902714, 0.250458,
		0.886753, -0.232854, 0.399310,
		37.249336, 36.195850, 35.942661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432846, 36.031803, 36.307957>,  <36.628609, 36.358845, 35.663143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432846, 36.031803, 36.307957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806137, 36.175465, 36.311932>,  <37.030109, 36.261662, 36.314316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806137, 36.175465, 36.311932>,  <36.432846, 36.031803, 36.307957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806137, 36.175465, 36.311932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213586, 0.532306, 0.819165,
		0.288917, -0.766588, 0.573472,
		0.933224, 0.359156, 0.009941,
		37.086105, 36.283211, 36.314915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532253, 35.990410, 37.034554>,  <36.432846, 36.031803, 36.307957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532253, 35.990410, 37.034554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809288, 36.223354, 36.864288>,  <36.975510, 36.363121, 36.762131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809288, 36.223354, 36.864288>,  <36.532253, 35.990410, 37.034554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809288, 36.223354, 36.864288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077230, 0.646572, 0.758933,
		0.717194, -0.492749, 0.492779,
		0.692581, 0.582359, -0.425662,
		37.017063, 36.398064, 36.736591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020660, 36.165554, 37.585636>,  <36.532253, 35.990410, 37.034554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020660, 36.165554, 37.585636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033569, 36.444756, 37.299488>,  <37.041313, 36.612274, 37.127800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033569, 36.444756, 37.299488>,  <37.020660, 36.165554, 37.585636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033569, 36.444756, 37.299488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175450, 0.708584, 0.683466,
		0.983959, 0.103457, 0.145329,
		0.032268, 0.698001, -0.715370,
		37.043251, 36.654156, 37.084877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585369, 36.633034, 37.727356>,  <37.020660, 36.165554, 37.585636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585369, 36.633034, 37.727356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354774, 36.863716, 37.495811>,  <37.216415, 37.002125, 37.356884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354774, 36.863716, 37.495811>,  <37.585369, 36.633034, 37.727356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354774, 36.863716, 37.495811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023752, 0.719952, 0.693617,
		0.816760, 0.386113, -0.428742,
		-0.576488, 0.576702, -0.578857,
		37.181828, 37.036728, 37.322155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729015, 37.225330, 37.950615>,  <37.585369, 36.633034, 37.727356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729015, 37.225330, 37.950615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411320, 37.315281, 37.724831>,  <37.220703, 37.369251, 37.589359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411320, 37.315281, 37.724831>,  <37.729015, 37.225330, 37.950615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411320, 37.315281, 37.724831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131519, 0.843340, 0.521038,
		0.593199, 0.488066, -0.640239,
		-0.794240, 0.224876, -0.564458,
		37.173046, 37.382744, 37.555492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772823, 37.957699, 37.742233>,  <37.729015, 37.225330, 37.950615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772823, 37.957699, 37.742233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385525, 37.875835, 37.684803>,  <37.153145, 37.826717, 37.650345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385525, 37.875835, 37.684803>,  <37.772823, 37.957699, 37.742233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385525, 37.875835, 37.684803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249189, 0.836214, 0.488520,
		0.020083, 0.508785, -0.860659,
		-0.968247, -0.204655, -0.143577,
		37.095051, 37.814438, 37.641731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500004, 38.515179, 37.289619>,  <37.772823, 37.957699, 37.742233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500004, 38.515179, 37.289619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175137, 38.383350, 37.482185>,  <36.980217, 38.304253, 37.597725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175137, 38.383350, 37.482185>,  <37.500004, 38.515179, 37.289619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175137, 38.383350, 37.482185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201344, 0.932802, 0.298900,
		-0.547573, 0.145829, -0.823953,
		-0.812173, -0.329567, 0.481415,
		36.931484, 38.284481, 37.626610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988297, 38.868458, 37.049995>,  <37.500004, 38.515179, 37.289619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988297, 38.868458, 37.049995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851707, 38.726906, 37.398289>,  <36.769756, 38.641975, 37.607265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851707, 38.726906, 37.398289>,  <36.988297, 38.868458, 37.049995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851707, 38.726906, 37.398289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137573, 0.935253, 0.326153,
		-0.929770, -0.008418, -0.368044,
		-0.341468, -0.353880, 0.870729,
		36.749268, 38.620743, 37.659508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449982, 39.288620, 37.244144>,  <36.988297, 38.868458, 37.049995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449982, 39.288620, 37.244144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535809, 39.101288, 37.586987>,  <36.587303, 38.988888, 37.792690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535809, 39.101288, 37.586987>,  <36.449982, 39.288620, 37.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535809, 39.101288, 37.586987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286974, 0.808582, 0.513654,
		-0.933599, -0.356180, 0.039098,
		0.214567, -0.468327, 0.857106,
		36.600178, 38.960789, 37.844120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000546, 39.608173, 37.620541>,  <36.449982, 39.288620, 37.244144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000546, 39.608173, 37.620541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271488, 39.448902, 37.867973>,  <36.434055, 39.353340, 38.016434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271488, 39.448902, 37.867973>,  <36.000546, 39.608173, 37.620541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271488, 39.448902, 37.867973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133183, 0.760593, 0.635422,
		-0.723500, -0.512791, 0.462162,
		0.677356, -0.398175, 0.618584,
		36.474693, 39.329449, 38.053547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742191, 39.904102, 38.185970>,  <36.000546, 39.608173, 37.620541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742191, 39.904102, 38.185970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114330, 39.777763, 38.260487>,  <36.337612, 39.701962, 38.305195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114330, 39.777763, 38.260487>,  <35.742191, 39.904102, 38.185970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114330, 39.777763, 38.260487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108380, 0.722180, 0.683161,
		-0.350305, -0.615385, 0.706107,
		0.930344, -0.315843, 0.186288,
		36.393433, 39.683010, 38.316372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759277, 39.742596, 38.930614>,  <35.742191, 39.904102, 38.185970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759277, 39.742596, 38.930614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133469, 39.829426, 38.819069>,  <36.357983, 39.881523, 38.752140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133469, 39.829426, 38.819069>,  <35.759277, 39.742596, 38.930614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133469, 39.829426, 38.819069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017647, 0.759426, 0.650355,
		0.352953, -0.613311, 0.706593,
		0.935475, 0.217076, -0.278864,
		36.414112, 39.894550, 38.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247562, 39.752426, 39.528610>,  <35.759277, 39.742596, 38.930614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247562, 39.752426, 39.528610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414631, 39.995712, 39.258610>,  <36.514874, 40.141682, 39.096607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414631, 39.995712, 39.258610>,  <36.247562, 39.752426, 39.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414631, 39.995712, 39.258610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163454, 0.680489, 0.714295,
		0.893775, -0.408673, 0.184807,
		0.417672, 0.608212, -0.675003,
		36.539932, 40.178177, 39.056110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015400, 40.015656, 39.697750>,  <36.247562, 39.752426, 39.528610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015400, 40.015656, 39.697750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823277, 40.296745, 39.487804>,  <36.708004, 40.465401, 39.361835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823277, 40.296745, 39.487804>,  <37.015400, 40.015656, 39.697750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823277, 40.296745, 39.487804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175302, 0.663248, 0.727580,
		0.859403, 0.257452, -0.441752,
		-0.480308, 0.702724, -0.524865,
		36.679184, 40.507561, 39.330345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480270, 40.611309, 39.690437>,  <37.015400, 40.015656, 39.697750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480270, 40.611309, 39.690437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116432, 40.765095, 39.627415>,  <36.898129, 40.857365, 39.589600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116432, 40.765095, 39.627415>,  <37.480270, 40.611309, 39.690437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116432, 40.765095, 39.627415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141840, 0.643748, 0.751977,
		0.390534, 0.661648, -0.640082,
		-0.909596, 0.384462, -0.157557,
		36.843552, 40.880432, 39.580147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540970, 41.338356, 39.522148>,  <37.480270, 40.611309, 39.690437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540970, 41.338356, 39.522148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179623, 41.279587, 39.683311>,  <36.962814, 41.244328, 39.780010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179623, 41.279587, 39.683311>,  <37.540970, 41.338356, 39.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179623, 41.279587, 39.683311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216378, 0.654992, 0.723993,
		-0.370270, 0.741215, -0.559911,
		-0.903372, -0.146921, 0.402907,
		36.908611, 41.235512, 39.804184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325382, 41.915833, 39.582504>,  <37.540970, 41.338356, 39.522148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325382, 41.915833, 39.582504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093113, 41.722042, 39.844223>,  <36.953751, 41.605766, 40.001255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093113, 41.722042, 39.844223>,  <37.325382, 41.915833, 39.582504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093113, 41.722042, 39.844223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205053, 0.690723, 0.693437,
		-0.787892, 0.536824, -0.301739,
		-0.580672, -0.484481, 0.654293,
		36.918911, 41.576698, 40.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792141, 42.372356, 39.996044>,  <37.325382, 41.915833, 39.582504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792141, 42.372356, 39.996044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894115, 42.044304, 40.200943>,  <36.955299, 41.847473, 40.323883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894115, 42.044304, 40.200943>,  <36.792141, 42.372356, 39.996044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894115, 42.044304, 40.200943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338482, 0.571922, 0.747218,
		-0.905779, -0.017109, 0.423404,
		0.254938, -0.820130, 0.512244,
		36.970596, 41.798264, 40.354618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928528, 42.833195, 40.578510>,  <36.792141, 42.372356, 39.996044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928528, 42.833195, 40.578510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966747, 42.445007, 40.667107>,  <36.989681, 42.212093, 40.720264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966747, 42.445007, 40.667107>,  <36.928528, 42.833195, 40.578510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966747, 42.445007, 40.667107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250038, 0.238778, 0.938332,
		-0.963510, -0.034276, 0.265469,
		0.095550, -0.970469, 0.221494,
		36.995411, 42.153866, 40.733555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521008, 42.491695, 41.122803>,  <36.928528, 42.833195, 40.578510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521008, 42.491695, 41.122803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192982, 42.327984, 41.282795>,  <36.996166, 42.229755, 41.378792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192982, 42.327984, 41.282795>,  <37.521008, 42.491695, 41.122803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192982, 42.327984, 41.282795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066451, -0.762310, -0.643792,
		0.568404, -0.501370, 0.652339,
		-0.820062, -0.409282, 0.399983,
		36.946964, 42.205200, 41.402790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640682, 41.862576, 41.316372>,  <37.521008, 42.491695, 41.122803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640682, 41.862576, 41.316372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244572, 41.880066, 41.263535>,  <37.006905, 41.890560, 41.231834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244572, 41.880066, 41.263535>,  <37.640682, 41.862576, 41.316372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244572, 41.880066, 41.263535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068566, -0.672731, -0.736704,
		-0.121072, -0.738595, 0.663189,
		-0.990273, 0.043722, -0.132092,
		36.947491, 41.893181, 41.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424873, 41.214333, 41.387539>,  <37.640682, 41.862576, 41.316372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424873, 41.214333, 41.387539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199970, 41.446209, 41.151630>,  <37.065029, 41.585335, 41.010086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199970, 41.446209, 41.151630>,  <37.424873, 41.214333, 41.387539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199970, 41.446209, 41.151630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065472, -0.742142, -0.667037,
		-0.824366, -0.336433, 0.455228,
		-0.562258, 0.579688, -0.589770,
		37.031292, 41.620117, 40.974701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211853, 40.780228, 41.002289>,  <37.424873, 41.214333, 41.387539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211853, 40.780228, 41.002289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089775, 41.103619, 40.801006>,  <37.016529, 41.297653, 40.680237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089775, 41.103619, 40.801006>,  <37.211853, 40.780228, 41.002289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089775, 41.103619, 40.801006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019004, -0.533484, -0.845597,
		-0.952099, -0.248512, 0.178183,
		-0.305199, 0.808478, -0.503206,
		36.998215, 41.346161, 40.650043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613930, 41.094631, 41.205982>,  <37.211853, 40.780228, 41.002289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613930, 41.094631, 41.205982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641933, 41.364952, 40.912479>,  <36.658737, 41.527145, 40.736378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641933, 41.364952, 40.912479>,  <36.613930, 41.094631, 41.205982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641933, 41.364952, 40.912479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091195, -0.728143, -0.679331,
		-0.993369, 0.114475, 0.010652,
		0.070010, 0.675798, -0.733754,
		36.662937, 41.567692, 40.692352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073826, 40.869556, 40.763115>,  <36.613930, 41.094631, 41.205982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073826, 40.869556, 40.763115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339382, 41.083981, 40.554543>,  <36.498714, 41.212635, 40.429401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339382, 41.083981, 40.554543>,  <36.073826, 40.869556, 40.763115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339382, 41.083981, 40.554543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152140, -0.585855, -0.796007,
		-0.732189, 0.607793, -0.307388,
		0.663892, 0.536061, -0.521426,
		36.538551, 41.244801, 40.398113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693996, 41.143253, 40.286934>,  <36.073826, 40.869556, 40.763115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693996, 41.143253, 40.286934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058998, 41.175476, 40.126514>,  <36.278000, 41.194809, 40.030262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058998, 41.175476, 40.126514>,  <35.693996, 41.143253, 40.286934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058998, 41.175476, 40.126514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363391, -0.290521, -0.885181,
		-0.187819, 0.953472, -0.235829,
		0.912508, 0.080555, -0.401048,
		36.332752, 41.199642, 40.006199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619503, 41.383293, 39.502918>,  <35.693996, 41.143253, 40.286934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619503, 41.383293, 39.502918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975502, 41.202679, 39.528305>,  <36.189102, 41.094311, 39.543537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975502, 41.202679, 39.528305>,  <35.619503, 41.383293, 39.502918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975502, 41.202679, 39.528305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155490, -0.431382, -0.888669,
		0.428639, 0.781043, -0.454137,
		0.889995, -0.451532, 0.063463,
		36.242500, 41.067219, 39.547344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812923, 41.122505, 38.801968>,  <35.619503, 41.383293, 39.502918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812923, 41.122505, 38.801968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555733, 41.099812, 38.496452>,  <35.401421, 41.086193, 38.313145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555733, 41.099812, 38.496452>,  <35.812923, 41.122505, 38.801968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555733, 41.099812, 38.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077351, -0.996964, 0.008945,
		-0.761973, -0.053329, 0.645409,
		-0.642973, -0.056739, -0.763784,
		35.362843, 41.082790, 38.267319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551109, 41.083542, 38.687263>,  <35.812923, 41.122505, 38.801968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551109, 41.083542, 38.687263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744553, 40.822151, 38.920189>,  <36.860619, 40.665318, 39.059944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744553, 40.822151, 38.920189>,  <36.551109, 41.083542, 38.687263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744553, 40.822151, 38.920189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079650, -0.629665, -0.772773,
		0.871651, 0.420104, -0.252464,
		0.483612, -0.653479, 0.582309,
		36.889637, 40.626106, 39.094883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227646, 40.744438, 38.378483>,  <36.551109, 41.083542, 38.687263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227646, 40.744438, 38.378483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076881, 40.500481, 38.657330>,  <36.986423, 40.354107, 38.824638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076881, 40.500481, 38.657330>,  <37.227646, 40.744438, 38.378483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076881, 40.500481, 38.657330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053661, -0.736981, -0.673780,
		0.924695, -0.291361, 0.245046,
		-0.376907, -0.609892, 0.697117,
		36.963810, 40.317513, 38.866467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645386, 40.115547, 38.451710>,  <37.227646, 40.744438, 38.378483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645386, 40.115547, 38.451710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269474, 40.034107, 38.561520>,  <37.043926, 39.985241, 38.627403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269474, 40.034107, 38.561520>,  <37.645386, 40.115547, 38.451710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269474, 40.034107, 38.561520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031298, -0.851094, -0.524080,
		0.340348, -0.483927, 0.806212,
		-0.939779, -0.203603, 0.274522,
		36.987541, 39.973026, 38.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640480, 39.362576, 38.603893>,  <37.645386, 40.115547, 38.451710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640480, 39.362576, 38.603893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260643, 39.464329, 38.530617>,  <37.032742, 39.525379, 38.486652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260643, 39.464329, 38.530617>,  <37.640480, 39.362576, 38.603893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260643, 39.464329, 38.530617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137272, -0.862802, -0.486547,
		-0.281823, -0.436877, 0.854233,
		-0.949596, 0.254383, -0.183186,
		36.975765, 39.540642, 38.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291489, 38.783924, 38.892365>,  <37.640480, 39.362576, 38.603893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291489, 38.783924, 38.892365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054291, 38.990337, 38.645119>,  <36.911972, 39.114185, 38.496769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054291, 38.990337, 38.645119>,  <37.291489, 38.783924, 38.892365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054291, 38.990337, 38.645119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287342, -0.852722, -0.436234,
		-0.752194, -0.081072, 0.653935,
		-0.592991, 0.516035, -0.618117,
		36.876392, 39.145149, 38.459682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716812, 38.353294, 38.963474>,  <37.291489, 38.783924, 38.892365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716812, 38.353294, 38.963474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672493, 38.550438, 38.618263>,  <36.645901, 38.668724, 38.411137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672493, 38.550438, 38.618263>,  <36.716812, 38.353294, 38.963474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672493, 38.550438, 38.618263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158866, -0.865992, -0.474152,
		-0.981063, 0.084571, 0.174247,
		-0.110797, 0.492855, -0.863028,
		36.639256, 38.698296, 38.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061810, 38.320866, 38.495632>,  <36.716812, 38.353294, 38.963474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061810, 38.320866, 38.495632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402130, 38.328564, 38.285580>,  <36.606323, 38.333183, 38.159550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402130, 38.328564, 38.285580>,  <36.061810, 38.320866, 38.495632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402130, 38.328564, 38.285580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279220, -0.830017, -0.482813,
		-0.445160, 0.557406, -0.700807,
		0.850805, 0.019250, -0.525129,
		36.657372, 38.334339, 38.128040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027302, 37.619675, 38.269878>,  <36.061810, 38.320866, 38.495632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027302, 37.619675, 38.269878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311722, 37.817116, 38.069572>,  <36.482372, 37.935581, 37.949390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311722, 37.817116, 38.069572>,  <36.027302, 37.619675, 38.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311722, 37.817116, 38.069572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097883, -0.774730, -0.624669,
		-0.696294, 0.395156, -0.599188,
		0.711051, 0.493604, -0.500761,
		36.525036, 37.965199, 37.919346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816761, 37.567299, 37.606667>,  <36.027302, 37.619675, 38.269878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816761, 37.567299, 37.606667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207607, 37.650829, 37.590466>,  <36.442116, 37.700947, 37.580746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207607, 37.650829, 37.590466>,  <35.816761, 37.567299, 37.606667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207607, 37.650829, 37.590466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132526, -0.746552, -0.651995,
		-0.166387, 0.631707, -0.757141,
		0.977114, 0.208824, -0.040498,
		36.500740, 37.713478, 37.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094078, 37.700905, 36.889210>,  <35.816761, 37.567299, 37.606667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094078, 37.700905, 36.889210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424889, 37.598904, 37.089607>,  <36.623375, 37.537701, 37.209846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424889, 37.598904, 37.089607>,  <36.094078, 37.700905, 36.889210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424889, 37.598904, 37.089607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240843, -0.644538, -0.725648,
		0.507956, 0.720792, -0.471635,
		0.827028, -0.255008, 0.500994,
		36.672997, 37.522400, 37.239906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529873, 37.505981, 36.397987>,  <36.094078, 37.700905, 36.889210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529873, 37.505981, 36.397987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743855, 37.395954, 36.717529>,  <36.872242, 37.329937, 36.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743855, 37.395954, 36.717529>,  <36.529873, 37.505981, 36.397987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743855, 37.395954, 36.717529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488804, -0.670449, -0.558184,
		0.689126, 0.689084, -0.224206,
		0.534954, -0.275066, 0.798851,
		36.904343, 37.313435, 36.957184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266079, 37.509911, 36.100731>,  <36.529873, 37.505981, 36.397987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266079, 37.509911, 36.100731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217342, 37.261494, 36.410431>,  <37.188099, 37.112442, 36.596252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217342, 37.261494, 36.410431>,  <37.266079, 37.509911, 36.100731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217342, 37.261494, 36.410431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434632, -0.734679, -0.520904,
		0.892328, 0.273045, 0.359440,
		-0.121843, -0.621042, 0.774249,
		37.180790, 37.075180, 36.642704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911552, 37.266457, 36.202888>,  <37.266079, 37.509911, 36.100731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911552, 37.266457, 36.202888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628880, 37.025761, 36.351757>,  <37.459278, 36.881344, 36.441078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628880, 37.025761, 36.351757>,  <37.911552, 37.266457, 36.202888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628880, 37.025761, 36.351757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329167, -0.745235, -0.579891,
		0.626301, -0.287290, 0.724715,
		-0.706680, -0.601739, 0.372175,
		37.416874, 36.845238, 36.463409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335945, 36.713192, 36.324917>,  <37.911552, 37.266457, 36.202888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335945, 36.713192, 36.324917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956543, 36.586487, 36.325771>,  <37.728901, 36.510464, 36.326286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956543, 36.586487, 36.325771>,  <38.335945, 36.713192, 36.324917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956543, 36.586487, 36.325771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281650, -0.846403, -0.451968,
		0.144979, -0.428090, 0.892031,
		-0.948501, -0.316767, 0.002139,
		37.671993, 36.491455, 36.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413574, 35.944141, 36.475513>,  <38.335945, 36.713192, 36.324917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413574, 35.944141, 36.475513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044285, 35.990040, 36.328819>,  <37.822712, 36.017578, 36.240803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044285, 35.990040, 36.328819>,  <38.413574, 35.944141, 36.475513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044285, 35.990040, 36.328819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264055, -0.503922, -0.822398,
		-0.279176, -0.856093, 0.434931,
		-0.923220, 0.114748, -0.366739,
		37.767319, 36.024464, 36.218796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137867, 35.242943, 36.390049>,  <38.413574, 35.944141, 36.475513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137867, 35.242943, 36.390049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945538, 35.494907, 36.146076>,  <37.830139, 35.646088, 35.999691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945538, 35.494907, 36.146076>,  <38.137867, 35.242943, 36.390049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945538, 35.494907, 36.146076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262478, -0.560321, -0.785586,
		-0.836611, -0.537821, 0.104075,
		-0.480820, 0.629912, -0.609937,
		37.801292, 35.683880, 35.963097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878727, 35.376785, 36.466274>,  <38.137867, 35.242943, 36.390049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878727, 35.376785, 36.466274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007835, 35.075577, 36.695633>,  <39.085300, 34.894852, 36.833248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007835, 35.075577, 36.695633>,  <38.878727, 35.376785, 36.466274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007835, 35.075577, 36.695633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290590, -0.497719, -0.817210,
		0.900766, 0.430392, 0.058173,
		0.322767, -0.753020, 0.573396,
		39.104664, 34.849670, 36.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562428, 35.445076, 36.426258>,  <38.878727, 35.376785, 36.466274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562428, 35.445076, 36.426258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457340, 35.063629, 36.485023>,  <39.394287, 34.834759, 36.520283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457340, 35.063629, 36.485023>,  <39.562428, 35.445076, 36.426258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457340, 35.063629, 36.485023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411993, -0.248558, -0.876630,
		0.872490, -0.169782, 0.458187,
		-0.262723, -0.953621, 0.146915,
		39.378525, 34.777542, 36.529099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200275, 35.508999, 36.167774>,  <39.562428, 35.445076, 36.426258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200275, 35.508999, 36.167774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024307, 35.759758, 36.424980>,  <39.918728, 35.910213, 36.579304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024307, 35.759758, 36.424980>,  <40.200275, 35.508999, 36.167774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024307, 35.759758, 36.424980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896575, 0.347428, 0.274676,
		-0.051206, 0.697344, -0.714905,
		-0.439921, 0.626901, 0.643012,
		39.892330, 35.947826, 36.617886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277546, 36.305485, 36.009014>,  <40.200275, 35.508999, 36.167774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277546, 36.305485, 36.009014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257107, 36.166245, 36.383442>,  <40.244843, 36.082703, 36.608097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257107, 36.166245, 36.383442>,  <40.277546, 36.305485, 36.009014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257107, 36.166245, 36.383442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869837, 0.445005, 0.212967,
		-0.490686, 0.825105, 0.280050,
		-0.051096, -0.348097, 0.936065,
		40.241779, 36.061817, 36.664261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531124, 36.819492, 36.334122>,  <40.277546, 36.305485, 36.009014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531124, 36.819492, 36.334122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564327, 36.496796, 36.568142>,  <40.584248, 36.303177, 36.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564327, 36.496796, 36.568142>,  <40.531124, 36.819492, 36.334122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564327, 36.496796, 36.568142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993251, 0.114698, 0.017237,
		-0.081010, 0.579669, 0.810815,
		0.083008, -0.806739, 0.585048,
		40.589230, 36.254772, 36.743656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997379, 36.928692, 36.947334>,  <40.531124, 36.819492, 36.334122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997379, 36.928692, 36.947334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028885, 36.550335, 36.821426>,  <41.047791, 36.323322, 36.745880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028885, 36.550335, 36.821426>,  <40.997379, 36.928692, 36.947334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028885, 36.550335, 36.821426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972032, 0.142952, -0.186332,
		0.221247, -0.291292, 0.930698,
		0.078768, -0.945893, -0.314773,
		41.052517, 36.266567, 36.726994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612980, 36.693340, 37.235653>,  <40.997379, 36.928692, 36.947334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612980, 36.693340, 37.235653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531887, 36.437958, 36.938663>,  <41.483231, 36.284729, 36.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531887, 36.437958, 36.938663>,  <41.612980, 36.693340, 37.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531887, 36.437958, 36.938663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948291, 0.061098, -0.311467,
		0.244222, -0.767228, 0.593057,
		-0.202731, -0.638458, -0.742477,
		41.471069, 36.246422, 36.715919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081127, 36.039223, 37.260792>,  <41.612980, 36.693340, 37.235653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081127, 36.039223, 37.260792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962482, 36.140167, 36.892372>,  <41.891296, 36.200733, 36.671318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962482, 36.140167, 36.892372>,  <42.081127, 36.039223, 37.260792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962482, 36.140167, 36.892372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951230, 0.163655, -0.261493,
		0.084745, -0.953694, -0.288594,
		-0.296614, 0.252359, -0.921051,
		41.873497, 36.215874, 36.616058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299679, 35.541969, 36.787598>,  <42.081127, 36.039223, 37.260792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299679, 35.541969, 36.787598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289108, 35.906052, 36.622272>,  <42.282764, 36.124500, 36.523079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289108, 35.906052, 36.622272>,  <42.299679, 35.541969, 36.787598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289108, 35.906052, 36.622272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952247, -0.102886, -0.287472,
		-0.304183, -0.401174, -0.864021,
		-0.026431, 0.910205, -0.413313,
		42.281178, 36.179111, 36.498280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467659, 35.650414, 35.964298>,  <42.299679, 35.541969, 36.787598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467659, 35.650414, 35.964298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578880, 35.928429, 36.229507>,  <42.645615, 36.095238, 36.388634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578880, 35.928429, 36.229507>,  <42.467659, 35.650414, 35.964298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578880, 35.928429, 36.229507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935615, -0.039670, -0.350787,
		-0.217509, 0.717875, -0.661321,
		0.278056, 0.695041, 0.663026,
		42.662296, 36.136940, 36.428413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774590, 36.232910, 35.567905>,  <42.467659, 35.650414, 35.964298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774590, 36.232910, 35.567905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917271, 36.253178, 35.941044>,  <43.002880, 36.265339, 36.164925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917271, 36.253178, 35.941044>,  <42.774590, 36.232910, 35.567905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917271, 36.253178, 35.941044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932903, 0.033660, -0.358552,
		-0.049566, 0.998148, -0.035260,
		0.356701, 0.050666, 0.932844,
		43.024281, 36.268379, 36.220898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289497, 36.753738, 35.559521>,  <42.774590, 36.232910, 35.567905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289497, 36.753738, 35.559521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330303, 36.433792, 35.796101>,  <43.354786, 36.241825, 35.938049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330303, 36.433792, 35.796101>,  <43.289497, 36.753738, 35.559521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330303, 36.433792, 35.796101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898893, -0.180568, -0.399233,
		0.426129, 0.572375, 0.700572,
		0.102011, -0.799864, 0.591449,
		43.360905, 36.193832, 35.973534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847298, 36.782959, 35.996410>,  <43.289497, 36.753738, 35.559521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847298, 36.782959, 35.996410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785397, 36.388954, 35.965958>,  <43.748257, 36.152550, 35.947685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785397, 36.388954, 35.965958>,  <43.847298, 36.782959, 35.996410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785397, 36.388954, 35.965958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923350, -0.116793, -0.365764,
		0.351392, -0.126894, 0.927589,
		-0.154750, -0.985016, -0.076127,
		43.738972, 36.093449, 35.943119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347347, 36.277252, 36.359867>,  <43.847298, 36.782959, 35.996410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347347, 36.277252, 36.359867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185673, 36.092346, 36.044159>,  <44.088669, 35.981403, 35.854733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185673, 36.092346, 36.044159>,  <44.347347, 36.277252, 36.359867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185673, 36.092346, 36.044159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914451, -0.223435, -0.337425,
		-0.020372, -0.858132, 0.513026,
		-0.404183, -0.462263, -0.789271,
		44.064419, 35.953667, 35.807377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576344, 35.606934, 36.273972>,  <44.347347, 36.277252, 36.359867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576344, 35.606934, 36.273972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498531, 35.709347, 35.895214>,  <44.451843, 35.770794, 35.667961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498531, 35.709347, 35.895214>,  <44.576344, 35.606934, 36.273972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498531, 35.709347, 35.895214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942227, -0.219599, -0.252954,
		-0.272700, -0.941395, -0.198521,
		-0.194534, 0.256032, -0.946892,
		44.440170, 35.786156, 35.611145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760136, 35.052494, 35.833252>,  <44.576344, 35.606934, 36.273972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760136, 35.052494, 35.833252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784271, 35.406551, 35.648697>,  <44.798752, 35.618988, 35.537964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784271, 35.406551, 35.648697>,  <44.760136, 35.052494, 35.833252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784271, 35.406551, 35.648697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966617, -0.167130, -0.194218,
		-0.249022, -0.434263, -0.865681,
		0.060340, 0.885146, -0.461384,
		44.802372, 35.672096, 35.510281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970245, 35.089779, 35.122456>,  <44.760136, 35.052494, 35.833252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970245, 35.089779, 35.122456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093002, 35.408207, 35.331104>,  <45.166656, 35.599266, 35.456291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093002, 35.408207, 35.331104>,  <44.970245, 35.089779, 35.122456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093002, 35.408207, 35.331104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944653, -0.321563, -0.065019,
		0.115974, 0.512703, -0.850697,
		0.306888, 0.796073, 0.521619,
		45.185070, 35.647030, 35.487591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131512, 34.464073, 34.795040>,  <44.970245, 35.089779, 35.122456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131512, 34.464073, 34.795040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227608, 34.308510, 35.150803>,  <45.285263, 34.215172, 35.364258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227608, 34.308510, 35.150803>,  <45.131512, 34.464073, 34.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227608, 34.308510, 35.150803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956704, -0.060243, -0.284758,
		0.164324, 0.919307, 0.357593,
		0.240237, -0.388904, 0.889404,
		45.299679, 34.191837, 35.417625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824608, 34.405201, 34.678619>,  <45.131512, 34.464073, 34.795040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824608, 34.405201, 34.678619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822090, 34.281689, 35.059063>,  <45.820580, 34.207581, 35.287331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822090, 34.281689, 35.059063>,  <45.824608, 34.405201, 34.678619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822090, 34.281689, 35.059063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997758, -0.065313, -0.014599,
		0.066628, 0.948888, 0.308501,
		-0.006296, -0.308782, 0.951112,
		45.820202, 34.189053, 35.344395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601418, 34.594894, 34.622269>,  <45.824608, 34.405201, 34.678619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601418, 34.594894, 34.622269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782345, 34.238384, 34.635132>,  <46.890900, 34.024479, 34.642849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782345, 34.238384, 34.635132>,  <46.601418, 34.594894, 34.622269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782345, 34.238384, 34.635132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866079, 0.430350, -0.254372,
		0.212879, 0.142905, 0.966572,
		0.452315, -0.891278, 0.032155,
		46.918037, 33.971001, 34.644779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278187, 34.698582, 34.890652>,  <46.601418, 34.594894, 34.622269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278187, 34.698582, 34.890652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529972, 34.989567, 34.999882>,  <47.681042, 35.164158, 35.065418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529972, 34.989567, 34.999882>,  <47.278187, 34.698582, 34.890652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.529972, 34.989567, 34.999882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772774, 0.549351, 0.317858,
		0.081215, -0.411107, 0.907962,
		0.629463, 0.727465, 0.273077,
		47.718811, 35.207806, 35.081806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.003345, 29.125460, 27.944172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704659, 28.983292, 27.719286>,  <38.525444, 28.897991, 27.584354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704659, 28.983292, 27.719286>,  <39.003345, 29.125460, 27.944172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704659, 28.983292, 27.719286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664800, 0.425780, 0.613802,
		0.021222, 0.832099, -0.554221,
		-0.746720, -0.355420, -0.562215,
		38.480644, 28.876665, 27.550621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588089, 29.719549, 27.757460>,  <39.003345, 29.125460, 27.944172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588089, 29.719549, 27.757460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349689, 29.401485, 27.712723>,  <38.206650, 29.210648, 27.685881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349689, 29.401485, 27.712723>,  <38.588089, 29.719549, 27.757460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349689, 29.401485, 27.712723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737856, 0.487367, 0.466950,
		-0.316792, 0.360824, -0.877182,
		-0.595996, -0.795160, -0.111843,
		38.170891, 29.162937, 27.679171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934032, 29.991217, 27.509859>,  <38.588089, 29.719549, 27.757460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934032, 29.991217, 27.509859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844406, 29.641809, 27.682722>,  <37.790630, 29.432165, 27.786440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844406, 29.641809, 27.682722>,  <37.934032, 29.991217, 27.509859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844406, 29.641809, 27.682722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778007, 0.427387, 0.460484,
		-0.586939, -0.233041, -0.775367,
		-0.224070, -0.873518, 0.432157,
		37.777184, 29.379755, 27.812368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238995, 29.916977, 27.355150>,  <37.934032, 29.991217, 27.509859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238995, 29.916977, 27.355150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315937, 29.685917, 27.672468>,  <37.362103, 29.547281, 27.862860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315937, 29.685917, 27.672468>,  <37.238995, 29.916977, 27.355150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315937, 29.685917, 27.672468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725717, 0.460411, 0.511230,
		-0.660555, -0.674047, -0.330648,
		0.192359, -0.577652, 0.793295,
		37.373646, 29.512621, 27.910456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579842, 29.662868, 27.587072>,  <37.238995, 29.916977, 27.355150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579842, 29.662868, 27.587072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802467, 29.595722, 27.912540>,  <36.936043, 29.555435, 28.107822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802467, 29.595722, 27.912540>,  <36.579842, 29.662868, 27.587072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802467, 29.595722, 27.912540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772917, 0.254566, 0.581202,
		-0.304696, -0.952375, 0.011936,
		0.556560, -0.167864, 0.813672,
		36.969437, 29.545362, 28.156643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127838, 29.300774, 28.138643>,  <36.579842, 29.662868, 27.587072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127838, 29.300774, 28.138643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436142, 29.451876, 28.343868>,  <36.621124, 29.542538, 28.467003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436142, 29.451876, 28.343868>,  <36.127838, 29.300774, 28.138643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436142, 29.451876, 28.343868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622344, 0.273894, 0.733260,
		0.136465, -0.884469, 0.446198,
		0.770756, 0.377753, 0.513066,
		36.667370, 29.565203, 28.497787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046074, 29.081190, 28.844648>,  <36.127838, 29.300774, 28.138643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046074, 29.081190, 28.844648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312199, 29.379717, 28.852274>,  <36.471874, 29.558834, 28.856850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312199, 29.379717, 28.852274>,  <36.046074, 29.081190, 28.844648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312199, 29.379717, 28.852274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467775, 0.396834, 0.789753,
		0.581843, -0.534352, 0.613129,
		0.665316, 0.746318, 0.019061,
		36.511795, 29.603613, 28.857992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179714, 29.142273, 29.535173>,  <36.046074, 29.081190, 28.844648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179714, 29.142273, 29.535173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298561, 29.488989, 29.374975>,  <36.369869, 29.697018, 29.278856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298561, 29.488989, 29.374975>,  <36.179714, 29.142273, 29.535173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298561, 29.488989, 29.374975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384130, 0.492507, 0.780949,
		0.874166, -0.078190, 0.479292,
		0.297117, 0.866789, -0.400498,
		36.387695, 29.749025, 29.254826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379639, 29.592710, 30.134880>,  <36.179714, 29.142273, 29.535173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379639, 29.592710, 30.134880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.331356, 29.856653, 29.838226>,  <36.302387, 30.015018, 29.660234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.331356, 29.856653, 29.838226>,  <36.379639, 29.592710, 30.134880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331356, 29.856653, 29.838226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249210, 0.703028, 0.666068,
		0.960897, 0.265224, 0.079579,
		-0.120711, 0.659854, -0.741634,
		36.295143, 30.054609, 29.615736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833626, 30.077349, 30.266941>,  <36.379639, 29.592710, 30.134880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833626, 30.077349, 30.266941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537426, 30.250103, 30.060976>,  <36.359707, 30.353756, 29.937397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537426, 30.250103, 30.060976>,  <36.833626, 30.077349, 30.266941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537426, 30.250103, 30.060976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219227, 0.569031, 0.792555,
		0.635294, 0.699770, -0.326686,
		-0.740501, 0.431887, -0.514910,
		36.315277, 30.379669, 29.906504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869080, 30.812931, 30.393942>,  <36.833626, 30.077349, 30.266941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869080, 30.812931, 30.393942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496284, 30.755243, 30.260916>,  <36.272606, 30.720631, 30.181101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496284, 30.755243, 30.260916>,  <36.869080, 30.812931, 30.393942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496284, 30.755243, 30.260916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356204, 0.534468, 0.766461,
		0.067206, 0.832793, -0.549490,
		-0.931988, -0.144219, -0.332564,
		36.216686, 30.711977, 30.161146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577499, 31.416965, 30.601564>,  <36.869080, 30.812931, 30.393942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577499, 31.416965, 30.601564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.248440, 31.204788, 30.519699>,  <36.051006, 31.077482, 30.470581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.248440, 31.204788, 30.519699>,  <36.577499, 31.416965, 30.601564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248440, 31.204788, 30.519699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439206, 0.364301, 0.821208,
		-0.361045, 0.765451, -0.532664,
		-0.822645, -0.530442, -0.204662,
		36.001648, 31.045656, 30.458300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046478, 31.867174, 30.635099>,  <36.577499, 31.416965, 30.601564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046478, 31.867174, 30.635099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893837, 31.502428, 30.695601>,  <35.802250, 31.283581, 30.731901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893837, 31.502428, 30.695601>,  <36.046478, 31.867174, 30.635099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893837, 31.502428, 30.695601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504893, 0.342704, 0.792235,
		-0.774248, 0.225954, -0.591173,
		-0.381606, -0.911865, 0.151255,
		35.779354, 31.228868, 30.740976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427967, 32.140167, 30.826502>,  <36.046478, 31.867174, 30.635099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427967, 32.140167, 30.826502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434814, 31.772417, 30.983702>,  <35.438923, 31.551765, 31.078022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434814, 31.772417, 30.983702>,  <35.427967, 32.140167, 30.826502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434814, 31.772417, 30.983702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469380, 0.339664, 0.815052,
		-0.882830, -0.198421, -0.425723,
		0.017121, -0.919378, 0.393001,
		35.439949, 31.496603, 31.101603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773048, 31.938726, 31.085382>,  <35.427967, 32.140167, 30.826502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773048, 31.938726, 31.085382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.016689, 31.690605, 31.283056>,  <35.162872, 31.541733, 31.401661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.016689, 31.690605, 31.283056>,  <34.773048, 31.938726, 31.085382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016689, 31.690605, 31.283056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435934, 0.258679, 0.862001,
		-0.662538, -0.740479, -0.112850,
		0.609102, -0.620304, 0.494185,
		35.199421, 31.504515, 31.431313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353016, 31.565756, 31.479019>,  <34.773048, 31.938726, 31.085382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353016, 31.565756, 31.479019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707359, 31.548452, 31.663795>,  <34.919964, 31.538071, 31.774662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707359, 31.548452, 31.663795>,  <34.353016, 31.565756, 31.479019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707359, 31.548452, 31.663795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416380, 0.365084, 0.832671,
		-0.204669, -0.929969, 0.305398,
		0.885854, -0.043260, 0.461942,
		34.973114, 31.535475, 31.802378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231258, 31.340061, 32.187023>,  <34.353016, 31.565756, 31.479019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231258, 31.340061, 32.187023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586845, 31.521481, 32.212429>,  <34.800198, 31.630333, 32.227673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586845, 31.521481, 32.212429>,  <34.231258, 31.340061, 32.187023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586845, 31.521481, 32.212429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187901, 0.234726, 0.953728,
		0.417655, -0.859765, 0.293886,
		0.888965, 0.453550, 0.063516,
		34.853535, 31.657545, 32.231483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485695, 31.217943, 32.975487>,  <34.231258, 31.340061, 32.187023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485695, 31.217943, 32.975487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.692223, 31.527546, 32.828888>,  <34.816139, 31.713308, 32.740929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.692223, 31.527546, 32.828888>,  <34.485695, 31.217943, 32.975487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692223, 31.527546, 32.828888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022174, 0.439898, 0.897774,
		0.856107, -0.455415, 0.244292,
		0.516324, 0.774007, -0.366501,
		34.847118, 31.759748, 32.718937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818569, 31.306946, 33.519196>,  <34.485695, 31.217943, 32.975487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818569, 31.306946, 33.519196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839558, 31.640594, 33.299564>,  <34.852150, 31.840784, 33.167786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839558, 31.640594, 33.299564>,  <34.818569, 31.306946, 33.519196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839558, 31.640594, 33.299564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217726, 0.546164, 0.808888,
		0.974598, 0.077105, 0.210269,
		0.052472, 0.834122, -0.549078,
		34.855301, 31.890831, 33.134842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176182, 31.644663, 33.852615>,  <34.818569, 31.306946, 33.519196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176182, 31.644663, 33.852615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991322, 31.923637, 33.633526>,  <34.880405, 32.091022, 33.502071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991322, 31.923637, 33.633526>,  <35.176182, 31.644663, 33.852615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991322, 31.923637, 33.633526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091226, 0.576976, 0.811650,
		0.882098, 0.425069, -0.203024,
		-0.462147, 0.697434, -0.547727,
		34.852676, 32.132866, 33.469208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490307, 32.318096, 34.103210>,  <35.176182, 31.644663, 33.852615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490307, 32.318096, 34.103210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144634, 32.409431, 33.923855>,  <34.937229, 32.464233, 33.816242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144634, 32.409431, 33.923855>,  <35.490307, 32.318096, 34.103210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144634, 32.409431, 33.923855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151367, 0.731870, 0.664420,
		0.479873, 0.642051, -0.597906,
		-0.864182, 0.228334, -0.448390,
		34.885380, 32.477932, 33.789337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495720, 33.048580, 34.091717>,  <35.490307, 32.318096, 34.103210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495720, 33.048580, 34.091717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116528, 32.921680, 34.081192>,  <34.889011, 32.845539, 34.074875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116528, 32.921680, 34.081192>,  <35.495720, 33.048580, 34.091717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116528, 32.921680, 34.081192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263169, 0.734500, 0.625502,
		-0.179112, 0.599887, -0.779779,
		-0.947977, -0.317249, -0.026314,
		34.832134, 32.826508, 34.073299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758976, 33.174911, 34.750095>,  <35.495720, 33.048580, 34.091717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758976, 33.174911, 34.750095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060307, 33.240517, 35.004841>,  <36.241104, 33.279881, 35.157688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060307, 33.240517, 35.004841>,  <35.758976, 33.174911, 34.750095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060307, 33.240517, 35.004841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657317, -0.218178, -0.721340,
		0.020643, 0.962029, -0.272167,
		0.753331, 0.164009, 0.636862,
		36.286304, 33.289719, 35.195900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385670, 33.586288, 34.397366>,  <35.758976, 33.174911, 34.750095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385670, 33.586288, 34.397366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532230, 33.419243, 34.729954>,  <36.620167, 33.319016, 34.929508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532230, 33.419243, 34.729954>,  <36.385670, 33.586288, 34.397366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532230, 33.419243, 34.729954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819650, -0.278062, -0.500854,
		0.440367, 0.865030, 0.240418,
		0.366402, -0.417618, 0.831471,
		36.642151, 33.293957, 34.979397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152061, 33.769123, 34.387093>,  <36.385670, 33.586288, 34.397366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152061, 33.769123, 34.387093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096348, 33.445564, 34.615578>,  <37.062920, 33.251427, 34.752666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096348, 33.445564, 34.615578>,  <37.152061, 33.769123, 34.387093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096348, 33.445564, 34.615578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640555, -0.513497, -0.570973,
		0.755174, 0.286362, 0.589668,
		-0.139288, -0.808899, 0.571210,
		37.054562, 33.202896, 34.786942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839680, 33.521633, 34.497963>,  <37.152061, 33.769123, 34.387093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839680, 33.521633, 34.497963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.600880, 33.214718, 34.591652>,  <37.457600, 33.030571, 34.647865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.600880, 33.214718, 34.591652>,  <37.839680, 33.521633, 34.497963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600880, 33.214718, 34.591652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581805, -0.615120, -0.532100,
		0.552350, -0.181390, 0.813638,
		-0.597003, -0.767284, 0.234227,
		37.421780, 32.984531, 34.661919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290348, 33.084919, 34.595512>,  <37.839680, 33.521633, 34.497963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290348, 33.084919, 34.595512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973957, 32.845482, 34.544849>,  <37.784122, 32.701820, 34.514450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973957, 32.845482, 34.544849>,  <38.290348, 33.084919, 34.595512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973957, 32.845482, 34.544849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540272, -0.586147, -0.603770,
		0.287174, -0.545997, 0.787032,
		-0.790973, -0.598598, -0.126661,
		37.736664, 32.665901, 34.506851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581379, 32.388432, 34.592136>,  <38.290348, 33.084919, 34.595512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581379, 32.388432, 34.592136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.226738, 32.382374, 34.407223>,  <38.013954, 32.378738, 34.296276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.226738, 32.382374, 34.407223>,  <38.581379, 32.388432, 34.592136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226738, 32.382374, 34.407223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369108, -0.625470, -0.687420,
		-0.278733, -0.780101, 0.560134,
		-0.886604, -0.015143, -0.462281,
		37.960758, 32.377831, 34.268539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489746, 31.663704, 34.444935>,  <38.581379, 32.388432, 34.592136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489746, 31.663704, 34.444935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215561, 31.831366, 34.206791>,  <38.051048, 31.931963, 34.063904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215561, 31.831366, 34.206791>,  <38.489746, 31.663704, 34.444935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215561, 31.831366, 34.206791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358596, -0.517288, -0.777060,
		-0.633678, -0.746139, 0.204277,
		-0.685465, 0.419153, -0.595356,
		38.009922, 31.957111, 34.028183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282463, 31.103094, 34.014313>,  <38.489746, 31.663704, 34.444935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282463, 31.103094, 34.014313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213634, 31.447041, 33.822052>,  <38.172337, 31.653408, 33.706696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213634, 31.447041, 33.822052>,  <38.282463, 31.103094, 34.014313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213634, 31.447041, 33.822052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474161, -0.355389, -0.805524,
		-0.863460, -0.366512, -0.346562,
		-0.172070, 0.859864, -0.480651,
		38.162014, 31.705000, 33.677856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052456, 30.818275, 33.344044>,  <38.282463, 31.103094, 34.014313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052456, 30.818275, 33.344044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122101, 31.207687, 33.284817>,  <38.163887, 31.441336, 33.249283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122101, 31.207687, 33.284817>,  <38.052456, 30.818275, 33.344044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122101, 31.207687, 33.284817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374373, -0.204510, -0.904445,
		-0.910786, 0.102041, -0.400071,
		0.174109, 0.973531, -0.148064,
		38.174335, 31.499746, 33.240398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794147, 30.947443, 32.723797>,  <38.052456, 30.818275, 33.344044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794147, 30.947443, 32.723797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063427, 31.229944, 32.811432>,  <38.224995, 31.399445, 32.864014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063427, 31.229944, 32.811432>,  <37.794147, 30.947443, 32.723797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063427, 31.229944, 32.811432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303414, 0.006370, -0.952837,
		-0.674342, 0.707929, -0.209999,
		0.673203, 0.706255, 0.219091,
		38.265388, 31.441820, 32.877159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633179, 31.528725, 32.136280>,  <37.794147, 30.947443, 32.723797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633179, 31.528725, 32.136280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986576, 31.540270, 32.323303>,  <38.198612, 31.547197, 32.435516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986576, 31.540270, 32.323303>,  <37.633179, 31.528725, 32.136280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986576, 31.540270, 32.323303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465336, 0.060776, -0.883045,
		-0.053906, 0.997734, 0.040263,
		0.883491, 0.028865, 0.467558,
		38.251625, 31.548929, 32.463570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064621, 32.033924, 31.735325>,  <37.633179, 31.528725, 32.136280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064621, 32.033924, 31.735325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299854, 31.776367, 31.931105>,  <38.440994, 31.621832, 32.048573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299854, 31.776367, 31.931105>,  <38.064621, 32.033924, 31.735325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299854, 31.776367, 31.931105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613983, -0.038515, -0.788379,
		0.526485, 0.764143, 0.372692,
		0.588080, -0.643896, 0.489449,
		38.476276, 31.583199, 32.077938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684635, 32.287056, 31.474625>,  <38.064621, 32.033924, 31.735325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684635, 32.287056, 31.474625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717293, 31.913391, 31.613579>,  <38.736889, 31.689192, 31.696951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717293, 31.913391, 31.613579>,  <38.684635, 32.287056, 31.474625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717293, 31.913391, 31.613579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635297, -0.219780, -0.740335,
		0.767940, 0.281138, 0.575525,
		0.081647, -0.934162, 0.347384,
		38.741787, 31.633142, 31.717794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398106, 32.258026, 31.663822>,  <38.684635, 32.287056, 31.474625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398106, 32.258026, 31.663822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251118, 31.894285, 31.585806>,  <39.162926, 31.676041, 31.538996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.251118, 31.894285, 31.585806>,  <39.398106, 32.258026, 31.663822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251118, 31.894285, 31.585806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692503, -0.127550, -0.710050,
		0.620809, -0.395990, 0.676601,
		-0.367473, -0.909353, -0.195039,
		39.140877, 31.621479, 31.527294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001827, 31.922623, 31.441936>,  <39.398106, 32.258026, 31.663822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001827, 31.922623, 31.441936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713673, 31.661053, 31.349483>,  <39.540779, 31.504110, 31.294012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713673, 31.661053, 31.349483>,  <40.001827, 31.922623, 31.441936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713673, 31.661053, 31.349483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435189, -0.166694, -0.884773,
		0.540047, -0.737967, 0.404665,
		-0.720388, -0.653925, -0.231133,
		39.497555, 31.464874, 31.280144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379932, 31.394615, 31.120701>,  <40.001827, 31.922623, 31.441936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379932, 31.394615, 31.120701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006149, 31.342287, 30.988234>,  <39.781879, 31.310890, 30.908752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006149, 31.342287, 30.988234>,  <40.379932, 31.394615, 31.120701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006149, 31.342287, 30.988234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355292, -0.404085, -0.842901,
		-0.023553, -0.905319, 0.424080,
		-0.934458, -0.130820, -0.331170,
		39.725811, 31.303041, 30.888882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314236, 30.699966, 30.947206>,  <40.379932, 31.394615, 31.120701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314236, 30.699966, 30.947206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065639, 30.937273, 30.742546>,  <39.916481, 31.079657, 30.619751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065639, 30.937273, 30.742546>,  <40.314236, 30.699966, 30.947206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065639, 30.937273, 30.742546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273366, -0.447821, -0.851309,
		-0.734181, -0.668947, 0.116137,
		-0.621490, 0.593267, -0.511650,
		39.879192, 31.115253, 30.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970448, 30.235947, 30.483253>,  <40.314236, 30.699966, 30.947206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970448, 30.235947, 30.483253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900444, 30.595098, 30.321671>,  <39.858440, 30.810591, 30.224722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.900444, 30.595098, 30.321671>,  <39.970448, 30.235947, 30.483253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900444, 30.595098, 30.321671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307577, -0.339894, -0.888745,
		-0.935290, -0.279789, -0.216682,
		-0.175012, 0.897881, -0.403956,
		39.847939, 30.864462, 30.200483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.772259, 30.020535, 29.830595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858627, 30.408079, 29.782124>,  <39.910450, 30.640606, 29.753040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858627, 30.408079, 29.782124>,  <39.772259, 30.020535, 29.830595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858627, 30.408079, 29.782124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289630, -0.182072, -0.939662,
		-0.932465, 0.167799, -0.319925,
		0.215924, 0.968862, -0.121177,
		39.923405, 30.698738, 29.745771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395775, 30.268545, 29.278883>,  <39.772259, 30.020535, 29.830595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395775, 30.268545, 29.278883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.713352, 30.510365, 29.304722>,  <39.903900, 30.655457, 29.320225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.713352, 30.510365, 29.304722>,  <39.395775, 30.268545, 29.278883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713352, 30.510365, 29.304722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238571, -0.212054, -0.947690,
		-0.559225, 0.767826, -0.312587,
		0.793946, 0.604547, 0.064595,
		39.951534, 30.691729, 29.324100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408287, 30.606981, 28.616472>,  <39.395775, 30.268545, 29.278883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408287, 30.606981, 28.616472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772430, 30.695169, 28.756548>,  <39.990917, 30.748083, 28.840593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772430, 30.695169, 28.756548>,  <39.408287, 30.606981, 28.616472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772430, 30.695169, 28.756548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392689, -0.193364, -0.899114,
		-0.130514, 0.956035, -0.262607,
		0.910363, 0.220470, 0.350188,
		40.045540, 30.761311, 28.861605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715168, 30.833729, 28.032614>,  <39.408287, 30.606981, 28.616472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715168, 30.833729, 28.032614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031891, 30.772863, 28.269218>,  <40.221924, 30.736343, 28.411182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031891, 30.772863, 28.269218>,  <39.715168, 30.833729, 28.032614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031891, 30.772863, 28.269218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551751, -0.237141, -0.799584,
		0.261939, 0.959484, -0.103814,
		0.791807, -0.152163, 0.591514,
		40.269432, 30.727215, 28.446672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278584, 31.128658, 27.652393>,  <39.715168, 30.833729, 28.032614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278584, 31.128658, 27.652393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417805, 30.862051, 27.916092>,  <40.501339, 30.702085, 28.074312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417805, 30.862051, 27.916092>,  <40.278584, 31.128658, 27.652393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417805, 30.862051, 27.916092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608246, -0.374556, -0.699817,
		0.713367, 0.644562, 0.275041,
		0.348057, -0.666519, 0.659248,
		40.522221, 30.662096, 28.113867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007004, 31.032087, 27.524553>,  <40.278584, 31.128658, 27.652393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007004, 31.032087, 27.524553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911045, 30.698967, 27.724110>,  <40.853470, 30.499096, 27.843843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911045, 30.698967, 27.724110>,  <41.007004, 31.032087, 27.524553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911045, 30.698967, 27.724110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582596, -0.534576, -0.612218,
		0.776551, 0.143783, 0.613429,
		-0.239898, -0.832800, 0.498892,
		40.839077, 30.449127, 27.873777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635605, 30.686525, 27.545877>,  <41.007004, 31.032087, 27.524553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635605, 30.686525, 27.545877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366901, 30.399048, 27.617670>,  <41.205677, 30.226561, 27.660746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366901, 30.399048, 27.617670>,  <41.635605, 30.686525, 27.545877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366901, 30.399048, 27.617670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465234, -0.597871, -0.652769,
		0.576450, -0.355003, 0.735988,
		-0.671761, -0.718695, 0.179483,
		41.165375, 30.183439, 27.671515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940353, 30.029844, 27.750502>,  <41.635605, 30.686525, 27.545877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940353, 30.029844, 27.750502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.579559, 29.919210, 27.617884>,  <41.363083, 29.852829, 27.538313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.579559, 29.919210, 27.617884>,  <41.940353, 30.029844, 27.750502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579559, 29.919210, 27.617884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430019, -0.644457, -0.632265,
		-0.038790, -0.712864, 0.700228,
		-0.901986, -0.276586, -0.331544,
		41.308964, 29.836235, 27.518421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952511, 29.244648, 27.658545>,  <41.940353, 30.029844, 27.750502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952511, 29.244648, 27.658545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650280, 29.365786, 27.426205>,  <41.468941, 29.438469, 27.286800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650280, 29.365786, 27.426205>,  <41.952511, 29.244648, 27.658545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650280, 29.365786, 27.426205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356229, -0.554176, -0.752323,
		-0.549687, -0.775372, 0.310874,
		-0.755609, 0.302800, -0.580833,
		41.423607, 29.456638, 27.251949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689213, 28.667738, 27.318464>,  <41.952511, 29.244648, 27.658545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689213, 28.667738, 27.318464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.613567, 28.985792, 27.087988>,  <41.568180, 29.176624, 26.949701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.613567, 28.985792, 27.087988>,  <41.689213, 28.667738, 27.318464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613567, 28.985792, 27.087988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508875, -0.422482, -0.750037,
		-0.839810, -0.435053, -0.324726,
		-0.189115, 0.795134, -0.576193,
		41.556831, 29.224333, 26.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607723, 28.400942, 26.527674>,  <41.689213, 28.667738, 27.318464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607723, 28.400942, 26.527674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.697445, 28.790737, 26.530811>,  <41.751278, 29.024614, 26.532694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.697445, 28.790737, 26.530811>,  <41.607723, 28.400942, 26.527674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697445, 28.790737, 26.530811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549429, -0.119809, -0.826906,
		-0.804870, 0.189786, -0.562285,
		0.224302, 0.974488, 0.007844,
		41.764736, 29.083084, 26.533165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661701, 28.451084, 25.839493>,  <41.607723, 28.400942, 26.527674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661701, 28.451084, 25.839493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.838081, 28.781178, 25.980663>,  <41.943909, 28.979233, 26.065365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.838081, 28.781178, 25.980663>,  <41.661701, 28.451084, 25.839493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838081, 28.781178, 25.980663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609794, 0.013075, -0.792452,
		-0.658573, 0.564640, -0.497458,
		0.440946, 0.825234, 0.352925,
		41.970364, 29.028748, 26.086540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653130, 28.930977, 25.338427>,  <41.661701, 28.451084, 25.839493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653130, 28.930977, 25.338427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962994, 29.056208, 25.558201>,  <42.148914, 29.131346, 25.690065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962994, 29.056208, 25.558201>,  <41.653130, 28.930977, 25.338427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962994, 29.056208, 25.558201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542346, 0.117885, -0.831844,
		-0.325202, 0.942383, -0.078476,
		0.774664, 0.313078, 0.549434,
		42.195393, 29.150131, 25.723030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928452, 29.408190, 24.993708>,  <41.653130, 28.930977, 25.338427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928452, 29.408190, 24.993708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.240025, 29.359076, 25.239697>,  <42.426968, 29.329607, 25.387289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.240025, 29.359076, 25.239697>,  <41.928452, 29.408190, 24.993708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240025, 29.359076, 25.239697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619365, -0.003022, -0.785098,
		0.098257, 0.992429, 0.073695,
		0.778931, -0.122785, 0.614972,
		42.473705, 29.322241, 25.424189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391796, 29.899349, 24.741148>,  <41.928452, 29.408190, 24.993708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391796, 29.899349, 24.741148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.566910, 29.615150, 24.961527>,  <42.671978, 29.444632, 25.093754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.566910, 29.615150, 24.961527>,  <42.391796, 29.899349, 24.741148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566910, 29.615150, 24.961527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774343, -0.013440, -0.632623,
		0.456881, 0.703574, 0.544283,
		0.437782, -0.710495, 0.550948,
		42.698246, 29.402002, 25.126812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996609, 30.021784, 24.480038>,  <42.391796, 29.899349, 24.741148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996609, 30.021784, 24.480038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.064941, 29.683702, 24.682600>,  <43.105942, 29.480854, 24.804136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.064941, 29.683702, 24.682600>,  <42.996609, 30.021784, 24.480038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064941, 29.683702, 24.682600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698881, -0.258346, -0.666950,
		0.694537, 0.467852, 0.546564,
		0.170831, -0.845205, 0.506404,
		43.116192, 29.430141, 24.834520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688160, 29.916727, 24.395090>,  <42.996609, 30.021784, 24.480038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688160, 29.916727, 24.395090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.553101, 29.549585, 24.478548>,  <43.472065, 29.329300, 24.528624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.553101, 29.549585, 24.478548>,  <43.688160, 29.916727, 24.395090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553101, 29.549585, 24.478548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472454, -0.356978, -0.805825,
		0.814113, -0.173510, 0.554179,
		-0.337648, -0.917857, 0.208645,
		43.451805, 29.274229, 24.541142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303204, 29.506081, 24.519724>,  <43.688160, 29.916727, 24.395090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303204, 29.506081, 24.519724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.999260, 29.271137, 24.408276>,  <43.816895, 29.130171, 24.341406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.999260, 29.271137, 24.408276>,  <44.303204, 29.506081, 24.519724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999260, 29.271137, 24.408276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508070, -0.269172, -0.818176,
		0.405564, -0.763255, 0.502951,
		-0.759857, -0.587357, -0.278620,
		43.771301, 29.094931, 24.324690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630737, 28.989235, 24.281860>,  <44.303204, 29.506081, 24.519724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630737, 28.989235, 24.281860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.264942, 28.940731, 24.127453>,  <44.045467, 28.911629, 24.034807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.264942, 28.940731, 24.127453>,  <44.630737, 28.989235, 24.281860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264942, 28.940731, 24.127453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404255, -0.233421, -0.884360,
		0.017133, -0.964785, 0.262480,
		-0.914486, -0.121261, -0.386020,
		43.990597, 28.904352, 24.011646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732254, 28.499828, 23.883493>,  <44.630737, 28.989235, 24.281860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732254, 28.499828, 23.883493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.382401, 28.615582, 23.727922>,  <44.172489, 28.685034, 23.634579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.382401, 28.615582, 23.727922>,  <44.732254, 28.499828, 23.883493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382401, 28.615582, 23.727922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366847, -0.129375, -0.921241,
		-0.316910, -0.948430, 0.006997,
		-0.874638, 0.289384, -0.388929,
		44.120010, 28.702396, 23.611244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585575, 28.004662, 23.540478>,  <44.732254, 28.499828, 23.883493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585575, 28.004662, 23.540478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.371708, 28.311174, 23.397959>,  <44.243389, 28.495081, 23.312447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.371708, 28.311174, 23.397959>,  <44.585575, 28.004662, 23.540478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371708, 28.311174, 23.397959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489532, -0.062828, -0.869719,
		-0.688835, -0.639426, -0.341527,
		-0.534664, 0.766281, -0.356298,
		44.211308, 28.541059, 23.291069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337376, 27.859852, 22.822298>,  <44.585575, 28.004662, 23.540478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337376, 27.859852, 22.822298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341393, 28.259289, 22.843128>,  <44.343803, 28.498951, 22.855625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341393, 28.259289, 22.843128>,  <44.337376, 27.859852, 22.822298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341393, 28.259289, 22.843128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497566, 0.040180, -0.866495,
		-0.867368, 0.034614, -0.496462,
		0.010044, 0.998593, 0.052074,
		44.344406, 28.558867, 22.858749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102585, 28.124006, 22.166723>,  <44.337376, 27.859852, 22.822298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102585, 28.124006, 22.166723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.322392, 28.404539, 22.348343>,  <44.454277, 28.572859, 22.457315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.322392, 28.404539, 22.348343>,  <44.102585, 28.124006, 22.166723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322392, 28.404539, 22.348343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505710, 0.153381, -0.848959,
		-0.665044, 0.696139, -0.270384,
		0.549521, 0.701331, 0.454050,
		44.487247, 28.614939, 22.484558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981251, 28.782026, 21.840504>,  <44.102585, 28.124006, 22.166723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981251, 28.782026, 21.840504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.340508, 28.748444, 22.013151>,  <44.556061, 28.728294, 22.116739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.340508, 28.748444, 22.013151>,  <43.981251, 28.782026, 21.840504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340508, 28.748444, 22.013151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435802, 0.039390, -0.899180,
		0.058489, 0.995691, 0.071965,
		0.898140, -0.083954, 0.431620,
		44.609951, 28.723257, 22.142637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471195, 28.300608, 21.626480>,  <43.981251, 28.782026, 21.840504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471195, 28.300608, 21.626480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.167976, 28.257494, 21.369188>,  <42.986046, 28.231625, 21.214813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.167976, 28.257494, 21.369188>,  <43.471195, 28.300608, 21.626480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167976, 28.257494, 21.369188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588141, 0.539219, 0.602772,
		0.281871, 0.835240, -0.472148,
		-0.758050, -0.107785, -0.643228,
		42.940563, 28.225159, 21.176220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084454, 28.967621, 21.673454>,  <43.471195, 28.300608, 21.626480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084454, 28.967621, 21.673454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809666, 28.723730, 21.515316>,  <42.644791, 28.577394, 21.420433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809666, 28.723730, 21.515316>,  <43.084454, 28.967621, 21.673454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809666, 28.723730, 21.515316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669031, 0.318314, 0.671621,
		-0.283662, 0.725884, -0.626600,
		-0.686974, -0.609728, -0.395345,
		42.603573, 28.540812, 21.396713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405434, 29.382202, 21.574303>,  <43.084454, 28.967621, 21.673454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405434, 29.382202, 21.574303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347534, 28.989626, 21.624619>,  <42.312794, 28.754080, 21.654808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347534, 28.989626, 21.624619>,  <42.405434, 29.382202, 21.574303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347534, 28.989626, 21.624619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600976, 0.188197, 0.776795,
		-0.786051, 0.036843, -0.617063,
		-0.144749, -0.981440, 0.125790,
		42.304111, 28.695194, 21.662355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718700, 29.267879, 21.473709>,  <42.405434, 29.382202, 21.574303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718700, 29.267879, 21.473709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.816216, 28.939127, 21.679651>,  <41.874725, 28.741875, 21.803217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.816216, 28.939127, 21.679651>,  <41.718700, 29.267879, 21.473709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816216, 28.939127, 21.679651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773297, 0.155653, 0.614642,
		-0.585302, -0.547978, -0.597613,
		0.243790, -0.821883, 0.514854,
		41.889351, 28.692562, 21.834108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108955, 28.958191, 21.580564>,  <41.718700, 29.267879, 21.473709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108955, 28.958191, 21.580564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353725, 28.806911, 21.858418>,  <41.500587, 28.716143, 22.025129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353725, 28.806911, 21.858418>,  <41.108955, 28.958191, 21.580564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353725, 28.806911, 21.858418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697792, 0.155294, 0.699264,
		-0.372333, -0.912605, -0.168876,
		0.611926, -0.378200, 0.694630,
		41.537304, 28.693451, 22.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815121, 28.301508, 21.851109>,  <41.108955, 28.958191, 21.580564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815121, 28.301508, 21.851109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064392, 28.406809, 22.145685>,  <41.213955, 28.469990, 22.322432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064392, 28.406809, 22.145685>,  <40.815121, 28.301508, 21.851109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064392, 28.406809, 22.145685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735873, -0.121499, 0.666130,
		0.264839, -0.957045, 0.118008,
		0.623178, 0.263256, 0.736442,
		41.251347, 28.485785, 22.366617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504963, 27.961168, 22.419544>,  <40.815121, 28.301508, 21.851109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504963, 27.961168, 22.419544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.752178, 28.212978, 22.607899>,  <40.900505, 28.364063, 22.720911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.752178, 28.212978, 22.607899>,  <40.504963, 27.961168, 22.419544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752178, 28.212978, 22.607899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715667, 0.202646, 0.668398,
		0.325350, -0.750089, 0.575772,
		0.618036, 0.629525, 0.470883,
		40.937588, 28.401834, 22.749165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438534, 27.856810, 23.070576>,  <40.504963, 27.961168, 22.419544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438534, 27.856810, 23.070576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.616798, 28.214544, 23.086349>,  <40.723755, 28.429184, 23.095814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.616798, 28.214544, 23.086349>,  <40.438534, 27.856810, 23.070576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616798, 28.214544, 23.086349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602236, 0.266928, 0.752371,
		0.662345, -0.359048, 0.657559,
		0.445658, 0.894335, 0.039433,
		40.750496, 28.482845, 23.098179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734962, 27.989721, 23.765799>,  <40.438534, 27.856810, 23.070576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734962, 27.989721, 23.765799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.679195, 28.347343, 23.595516>,  <40.645737, 28.561916, 23.493347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.679195, 28.347343, 23.595516>,  <40.734962, 27.989721, 23.765799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679195, 28.347343, 23.595516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483097, 0.313863, 0.817378,
		0.864396, 0.319613, 0.388159,
		-0.139416, 0.894057, -0.425706,
		40.637371, 28.615561, 23.467804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163479, 28.558969, 24.049738>,  <40.734962, 27.989721, 23.765799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163479, 28.558969, 24.049738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799484, 28.666012, 23.923054>,  <40.581085, 28.730238, 23.847042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799484, 28.666012, 23.923054>,  <41.163479, 28.558969, 24.049738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799484, 28.666012, 23.923054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276434, 0.177751, 0.944451,
		0.309036, 0.946991, -0.087777,
		-0.909989, 0.267605, -0.316712,
		40.526489, 28.746294, 23.828039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950027, 29.098101, 24.494764>,  <41.163479, 28.558969, 24.049738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950027, 29.098101, 24.494764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.602825, 28.996988, 24.323807>,  <40.394505, 28.936321, 24.221233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.602825, 28.996988, 24.323807>,  <40.950027, 29.098101, 24.494764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602825, 28.996988, 24.323807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469923, 0.140108, 0.871517,
		-0.160423, 0.957325, -0.240402,
		-0.868007, -0.252782, -0.427393,
		40.342422, 28.921154, 24.195589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470657, 29.679182, 24.589420>,  <40.950027, 29.098101, 24.494764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470657, 29.679182, 24.589420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275494, 29.332941, 24.544388>,  <40.158394, 29.125196, 24.517368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275494, 29.332941, 24.544388>,  <40.470657, 29.679182, 24.589420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275494, 29.332941, 24.544388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482684, 0.160087, 0.861039,
		-0.727296, 0.474450, -0.495921,
		-0.487911, -0.865604, -0.112579,
		40.129120, 29.073259, 24.510614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720501, 29.843370, 24.808681>,  <40.470657, 29.679182, 24.589420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720501, 29.843370, 24.808681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781254, 29.448027, 24.805143>,  <39.817707, 29.210821, 24.803020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781254, 29.448027, 24.805143>,  <39.720501, 29.843370, 24.808681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781254, 29.448027, 24.805143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370705, -0.065260, 0.926455,
		-0.916248, -0.137435, -0.376301,
		0.151884, -0.988359, -0.008846,
		39.826820, 29.151520, 24.802490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040398, 29.516340, 24.958288>,  <39.720501, 29.843370, 24.808681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040398, 29.516340, 24.958288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314377, 29.229990, 25.012497>,  <39.478764, 29.058180, 25.045021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314377, 29.229990, 25.012497>,  <39.040398, 29.516340, 24.958288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314377, 29.229990, 25.012497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372023, -0.183708, 0.909863,
		-0.626452, -0.673628, -0.392152,
		0.684950, -0.715875, 0.135521,
		39.519863, 29.015228, 25.053154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628277, 28.872660, 25.114138>,  <39.040398, 29.516340, 24.958288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628277, 28.872660, 25.114138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998276, 28.880831, 25.265909>,  <39.220276, 28.885733, 25.356972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998276, 28.880831, 25.265909>,  <38.628277, 28.872660, 25.114138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998276, 28.880831, 25.265909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365530, -0.224886, 0.903224,
		0.103779, -0.974171, -0.200552,
		0.924996, 0.020428, 0.379428,
		39.275776, 28.886959, 25.379738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631706, 28.263491, 25.513960>,  <38.628277, 28.872660, 25.114138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631706, 28.263491, 25.513960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944447, 28.465412, 25.660320>,  <39.132092, 28.586565, 25.748137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.944447, 28.465412, 25.660320>,  <38.631706, 28.263491, 25.513960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944447, 28.465412, 25.660320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320157, -0.178521, 0.930392,
		0.534987, -0.844573, 0.022040,
		0.781850, 0.504804, 0.365903,
		39.179001, 28.616854, 25.770092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033089, 27.826008, 25.883194>,  <38.631706, 28.263491, 25.513960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033089, 27.826008, 25.883194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126274, 28.187124, 26.027802>,  <39.182186, 28.403793, 26.114567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126274, 28.187124, 26.027802>,  <39.033089, 27.826008, 25.883194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126274, 28.187124, 26.027802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427138, -0.238981, 0.872033,
		0.873660, -0.357570, 0.329942,
		0.232963, 0.902791, 0.361520,
		39.196163, 28.457962, 26.136257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251621, 27.726168, 26.594463>,  <39.033089, 27.826008, 25.883194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251621, 27.726168, 26.594463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156612, 28.112139, 26.549746>,  <39.099606, 28.343721, 26.522915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.156612, 28.112139, 26.549746>,  <39.251621, 27.726168, 26.594463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156612, 28.112139, 26.549746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577623, -0.047771, 0.814905,
		0.780983, 0.258134, 0.568711,
		-0.237523, 0.964927, -0.111796,
		39.085354, 28.401617, 26.516207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392723, 28.001120, 27.220427>,  <39.251621, 27.726168, 26.594463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392723, 28.001120, 27.220427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137630, 28.259941, 27.053274>,  <38.984577, 28.415234, 26.952982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137630, 28.259941, 27.053274>,  <39.392723, 28.001120, 27.220427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137630, 28.259941, 27.053274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557896, -0.013956, 0.829794,
		0.531090, 0.762316, 0.369889,
		-0.637727, 0.647054, -0.417881,
		38.946312, 28.454058, 26.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296295, 28.418716, 27.730200>,  <39.392723, 28.001120, 27.220427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296295, 28.418716, 27.730200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009251, 28.528809, 27.474297>,  <38.837025, 28.594864, 27.320755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009251, 28.528809, 27.474297>,  <39.296295, 28.418716, 27.730200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009251, 28.528809, 27.474297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628364, 0.140259, 0.765170,
		0.300331, 0.951091, 0.072295,
		-0.717607, 0.275232, -0.639756,
		38.793968, 28.611378, 27.282370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.304749, 30.853796, 32.765503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073559, 31.091749, 32.542053>,  <38.934845, 31.234522, 32.407986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073559, 31.091749, 32.542053>,  <39.304749, 30.853796, 32.765503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073559, 31.091749, 32.542053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317821, 0.466399, 0.825507,
		0.751621, 0.654665, -0.080501,
		-0.577976, 0.594883, -0.558621,
		38.900166, 31.270214, 32.374466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449257, 31.495996, 32.984142>,  <39.304749, 30.853796, 32.765503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449257, 31.495996, 32.984142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.081509, 31.502943, 32.826939>,  <38.860859, 31.507111, 32.732616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.081509, 31.502943, 32.826939>,  <39.449257, 31.495996, 32.984142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081509, 31.502943, 32.826939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345005, 0.444415, 0.826720,
		0.189013, 0.895653, -0.402592,
		-0.919372, 0.017364, -0.393005,
		38.805698, 31.508152, 32.709038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257526, 32.182056, 32.985798>,  <39.449257, 31.495996, 32.984142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257526, 32.182056, 32.985798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918404, 31.974079, 32.944088>,  <38.714928, 31.849293, 32.919064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918404, 31.974079, 32.944088>,  <39.257526, 32.182056, 32.985798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918404, 31.974079, 32.944088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397837, 0.493614, 0.773351,
		-0.350631, 0.697138, -0.625345,
		-0.847811, -0.519946, -0.104271,
		38.664059, 31.818096, 32.912807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582676, 32.733967, 33.022629>,  <39.257526, 32.182056, 32.985798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582676, 32.733967, 33.022629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438286, 32.365837, 33.082905>,  <38.351650, 32.144958, 33.119072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.438286, 32.365837, 33.082905>,  <38.582676, 32.733967, 33.022629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438286, 32.365837, 33.082905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579576, 0.347984, 0.736884,
		-0.730608, 0.178658, -0.659009,
		-0.360975, -0.920320, 0.150694,
		38.329994, 32.089741, 33.128113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893311, 32.777519, 32.981552>,  <38.582676, 32.733967, 33.022629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893311, 32.777519, 32.981552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.972008, 32.451096, 33.198933>,  <38.019226, 32.255241, 33.329361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.972008, 32.451096, 33.198933>,  <37.893311, 32.777519, 32.981552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972008, 32.451096, 33.198933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550946, 0.366483, 0.749765,
		-0.811019, -0.446923, -0.377503,
		0.196739, -0.816057, 0.543455,
		38.031029, 32.206280, 33.361969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202946, 32.498760, 33.220722>,  <37.893311, 32.777519, 32.981552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202946, 32.498760, 33.220722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459457, 32.334763, 33.480156>,  <37.613365, 32.236362, 33.635815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459457, 32.334763, 33.480156>,  <37.202946, 32.498760, 33.220722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459457, 32.334763, 33.480156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630122, 0.200933, 0.750049,
		-0.437838, -0.889679, -0.129492,
		0.641284, -0.409996, 0.648582,
		37.651844, 32.211765, 33.674732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814011, 32.161198, 33.686802>,  <37.202946, 32.498760, 33.220722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814011, 32.161198, 33.686802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.159893, 32.234116, 33.874016>,  <37.367424, 32.277866, 33.986343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.159893, 32.234116, 33.874016>,  <36.814011, 32.161198, 33.686802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159893, 32.234116, 33.874016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500150, 0.226823, 0.835704,
		0.046180, -0.956724, 0.287308,
		0.864706, 0.182290, 0.468031,
		37.419304, 32.288803, 34.014423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751545, 31.904755, 34.298214>,  <36.814011, 32.161198, 33.686802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751545, 31.904755, 34.298214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044987, 32.172237, 34.346626>,  <37.221054, 32.332726, 34.375675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044987, 32.172237, 34.346626>,  <36.751545, 31.904755, 34.298214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044987, 32.172237, 34.346626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446384, 0.339884, 0.827780,
		0.512407, -0.661292, 0.547842,
		0.733608, 0.668709, 0.121031,
		37.265068, 32.372849, 34.382935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761330, 31.914629, 35.011055>,  <36.751545, 31.904755, 34.298214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761330, 31.914629, 35.011055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944363, 32.250778, 34.894855>,  <37.054184, 32.452469, 34.825134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.944363, 32.250778, 34.894855>,  <36.761330, 31.914629, 35.011055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944363, 32.250778, 34.894855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383509, 0.481290, 0.788214,
		0.802210, -0.249262, 0.542520,
		0.457581, 0.840374, -0.290501,
		37.081638, 32.502892, 34.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878662, 32.197842, 35.573994>,  <36.761330, 31.914629, 35.011055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878662, 32.197842, 35.573994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947250, 32.513592, 35.338203>,  <36.988403, 32.703041, 35.196732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947250, 32.513592, 35.338203>,  <36.878662, 32.197842, 35.573994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947250, 32.513592, 35.338203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434953, 0.597521, 0.673635,
		0.883977, 0.140886, 0.445798,
		0.171468, 0.789379, -0.589474,
		36.998692, 32.750404, 35.161362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223362, 32.713814, 36.030212>,  <36.878662, 32.197842, 35.573994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223362, 32.713814, 36.030212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.050995, 32.890205, 35.715290>,  <36.947575, 32.996040, 35.526337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.050995, 32.890205, 35.715290>,  <37.223362, 32.713814, 36.030212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050995, 32.890205, 35.715290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513351, 0.597737, 0.615777,
		0.742147, 0.669511, -0.031196,
		-0.430917, 0.440983, -0.787302,
		36.921719, 33.022499, 35.479099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322617, 33.489960, 35.934616>,  <37.223362, 32.713814, 36.030212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322617, 33.489960, 35.934616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985069, 33.402157, 35.738777>,  <36.782539, 33.349476, 35.621273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985069, 33.402157, 35.738777>,  <37.322617, 33.489960, 35.934616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985069, 33.402157, 35.738777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478390, 0.721004, 0.501295,
		0.242964, 0.657244, -0.713441,
		-0.843867, -0.219507, -0.489597,
		36.731911, 33.336304, 35.591900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159698, 34.036980, 35.535042>,  <37.322617, 33.489960, 35.934616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159698, 34.036980, 35.535042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902111, 33.798077, 35.726284>,  <36.747559, 33.654736, 35.841030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902111, 33.798077, 35.726284>,  <37.159698, 34.036980, 35.535042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902111, 33.798077, 35.726284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246503, 0.753589, 0.609376,
		-0.724250, 0.274566, -0.632515,
		-0.643971, -0.597257, 0.478106,
		36.708920, 33.618900, 35.869717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706150, 34.597359, 35.785080>,  <37.159698, 34.036980, 35.535042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706150, 34.597359, 35.785080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.800823, 34.298866, 36.033955>,  <36.857628, 34.119770, 36.183281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.800823, 34.298866, 36.033955>,  <36.706150, 34.597359, 35.785080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800823, 34.298866, 36.033955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004301, 0.641179, 0.767380,
		-0.971578, -0.178948, 0.154964,
		0.236681, -0.746236, 0.622185,
		36.871826, 34.074997, 36.220612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167702, 34.693188, 35.141041>,  <36.706150, 34.597359, 35.785080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167702, 34.693188, 35.141041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251785, 35.079170, 35.203865>,  <37.302235, 35.310760, 35.241562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251785, 35.079170, 35.203865>,  <37.167702, 34.693188, 35.141041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251785, 35.079170, 35.203865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234061, 0.106306, -0.966392,
		-0.949224, 0.239911, -0.203512,
		0.210213, 0.964957, 0.157062,
		37.314850, 35.368656, 35.250984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820229, 35.037678, 34.560619>,  <37.167702, 34.693188, 35.141041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820229, 35.037678, 34.560619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131298, 35.256569, 34.684402>,  <37.317940, 35.387901, 34.758675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131298, 35.256569, 34.684402>,  <36.820229, 35.037678, 34.560619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131298, 35.256569, 34.684402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319084, 0.080548, -0.944297,
		-0.541668, 0.833102, -0.111970,
		0.777677, 0.547224, 0.309460,
		37.364601, 35.420734, 34.777241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933636, 35.268047, 33.982002>,  <36.820229, 35.037678, 34.560619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933636, 35.268047, 33.982002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251770, 35.365223, 34.204144>,  <37.442650, 35.423527, 34.337429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251770, 35.365223, 34.204144>,  <36.933636, 35.268047, 33.982002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251770, 35.365223, 34.204144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563841, 0.039850, -0.824921,
		-0.222536, 0.969223, -0.105284,
		0.795337, 0.242938, 0.555355,
		37.490372, 35.438103, 34.370750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360359, 35.879505, 33.700600>,  <36.933636, 35.268047, 33.982002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360359, 35.879505, 33.700600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607304, 35.661903, 33.927906>,  <37.755470, 35.531342, 34.064289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607304, 35.661903, 33.927906>,  <37.360359, 35.879505, 33.700600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607304, 35.661903, 33.927906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603933, -0.135161, -0.785491,
		0.504118, 0.828125, 0.245099,
		0.617358, -0.544003, 0.568269,
		37.792511, 35.498703, 34.098389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968327, 36.166271, 33.452480>,  <37.360359, 35.879505, 33.700600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968327, 36.166271, 33.452480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064751, 35.828609, 33.644020>,  <38.122604, 35.626015, 33.758945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.064751, 35.828609, 33.644020>,  <37.968327, 36.166271, 33.452480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064751, 35.828609, 33.644020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699736, -0.190723, -0.688473,
		0.672503, 0.501034, 0.544706,
		0.241060, -0.844150, 0.478854,
		38.137070, 35.575363, 33.787678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692379, 36.196156, 33.416435>,  <37.968327, 36.166271, 33.452480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692379, 36.196156, 33.416435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595020, 35.811642, 33.468113>,  <38.536606, 35.580933, 33.499119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595020, 35.811642, 33.468113>,  <38.692379, 36.196156, 33.416435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595020, 35.811642, 33.468113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635596, -0.258692, -0.727390,
		0.732648, -0.094935, 0.673954,
		-0.243401, -0.961284, 0.129190,
		38.521999, 35.523258, 33.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362118, 35.790585, 33.446247>,  <38.692379, 36.196156, 33.416435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362118, 35.790585, 33.446247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076313, 35.536816, 33.328274>,  <38.904831, 35.384556, 33.257488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076313, 35.536816, 33.328274>,  <39.362118, 35.790585, 33.446247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076313, 35.536816, 33.328274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590451, -0.320677, -0.740631,
		0.375295, -0.703330, 0.603723,
		-0.714507, -0.634424, -0.294933,
		38.861961, 35.346489, 33.239796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769318, 35.139141, 33.323334>,  <39.362118, 35.790585, 33.446247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769318, 35.139141, 33.323334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414730, 35.091911, 33.144341>,  <39.201977, 35.063572, 33.036945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414730, 35.091911, 33.144341>,  <39.769318, 35.139141, 33.323334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414730, 35.091911, 33.144341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461066, -0.308830, -0.831891,
		-0.039968, -0.943759, 0.328209,
		-0.886465, -0.118077, -0.447478,
		39.148792, 35.056488, 33.010098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864849, 34.553371, 32.794094>,  <39.769318, 35.139141, 33.323334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864849, 34.553371, 32.794094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532623, 34.745174, 32.680786>,  <39.333290, 34.860256, 32.612801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532623, 34.745174, 32.680786>,  <39.864849, 34.553371, 32.794094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532623, 34.745174, 32.680786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222700, -0.180240, -0.958081,
		-0.510462, -0.858829, 0.042915,
		-0.830562, 0.479506, -0.283267,
		39.283455, 34.889027, 32.595806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484879, 34.111252, 32.326996>,  <39.864849, 34.553371, 32.794094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484879, 34.111252, 32.326996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369839, 34.482887, 32.233967>,  <39.300816, 34.705868, 32.178150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369839, 34.482887, 32.233967>,  <39.484879, 34.111252, 32.326996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369839, 34.482887, 32.233967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084745, -0.217192, -0.972443,
		-0.953995, -0.299382, -0.016272,
		-0.287598, 0.929085, -0.232571,
		39.283558, 34.761612, 32.164196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179729, 34.040813, 31.729235>,  <39.484879, 34.111252, 32.326996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179729, 34.040813, 31.729235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174488, 34.440720, 31.736122>,  <39.171345, 34.680664, 31.740253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174488, 34.440720, 31.736122>,  <39.179729, 34.040813, 31.729235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174488, 34.440720, 31.736122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065543, 0.018039, -0.997687,
		-0.997764, -0.011940, -0.065764,
		-0.013099, 0.999766, 0.017216,
		39.170559, 34.740650, 31.741287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698296, 34.261578, 31.349264>,  <39.179729, 34.040813, 31.729235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698296, 34.261578, 31.349264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935669, 34.583527, 31.350348>,  <39.078094, 34.776695, 31.350998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935669, 34.583527, 31.350348>,  <38.698296, 34.261578, 31.349264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935669, 34.583527, 31.350348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043678, -0.028844, -0.998629,
		-0.803694, 0.592743, -0.052272,
		0.593438, 0.804875, 0.002708,
		39.113701, 34.824989, 31.351160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565758, 34.553757, 30.728834>,  <38.698296, 34.261578, 31.349264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565758, 34.553757, 30.728834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913769, 34.704880, 30.855528>,  <39.122574, 34.795555, 30.931543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913769, 34.704880, 30.855528>,  <38.565758, 34.553757, 30.728834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913769, 34.704880, 30.855528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413801, -0.210367, -0.885728,
		-0.268003, 0.901670, -0.339361,
		0.870025, 0.377806, 0.316733,
		39.174778, 34.818222, 30.950548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796909, 34.832218, 30.159273>,  <38.565758, 34.553757, 30.728834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796909, 34.832218, 30.159273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138702, 34.810272, 30.365904>,  <39.343777, 34.797104, 30.489883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138702, 34.810272, 30.365904>,  <38.796909, 34.832218, 30.159273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138702, 34.810272, 30.365904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490494, -0.242331, -0.837073,
		0.171107, 0.968641, -0.180157,
		0.854481, -0.054864, 0.516578,
		39.395046, 34.793812, 30.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533882, 35.537582, 30.057020>,  <38.796909, 34.832218, 30.159273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533882, 35.537582, 30.057020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.186787, 35.524212, 29.858665>,  <37.978527, 35.516190, 29.739653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.186787, 35.524212, 29.858665>,  <38.533882, 35.537582, 30.057020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186787, 35.524212, 29.858665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495851, -0.009947, 0.868351,
		-0.033962, 0.999392, -0.007945,
		-0.867743, -0.033430, -0.495887,
		37.926464, 35.514183, 29.709900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133175, 35.887295, 30.558441>,  <38.533882, 35.537582, 30.057020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133175, 35.887295, 30.558441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871902, 35.733727, 30.297379>,  <37.715137, 35.641586, 30.140741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871902, 35.733727, 30.297379>,  <38.133175, 35.887295, 30.558441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871902, 35.733727, 30.297379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719256, 0.045160, 0.693275,
		-0.236686, 0.922262, -0.305633,
		-0.653184, -0.383917, -0.652655,
		37.675945, 35.618553, 30.101582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513145, 36.374134, 30.538412>,  <38.133175, 35.887295, 30.558441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513145, 36.374134, 30.538412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402267, 36.000858, 30.446924>,  <37.335739, 35.776894, 30.392033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.402267, 36.000858, 30.446924>,  <37.513145, 36.374134, 30.538412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402267, 36.000858, 30.446924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726434, 0.047753, 0.685575,
		-0.628852, 0.356189, -0.691140,
		-0.277198, -0.933193, -0.228718,
		37.319107, 35.720901, 30.378309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765945, 36.429855, 30.692545>,  <37.513145, 36.374134, 30.538412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765945, 36.429855, 30.692545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846104, 36.038303, 30.676403>,  <36.894199, 35.803371, 30.666718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846104, 36.038303, 30.676403>,  <36.765945, 36.429855, 30.692545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846104, 36.038303, 30.676403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609804, -0.156865, 0.776874,
		-0.766800, -0.131070, -0.628362,
		0.200393, -0.978884, -0.040357,
		36.906223, 35.744637, 30.664295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185699, 36.117687, 30.701252>,  <36.765945, 36.429855, 30.692545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185699, 36.117687, 30.701252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417576, 35.812489, 30.815649>,  <36.556702, 35.629368, 30.884287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417576, 35.812489, 30.815649>,  <36.185699, 36.117687, 30.701252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417576, 35.812489, 30.815649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733419, -0.335645, 0.591134,
		-0.355046, -0.552423, -0.754169,
		0.579689, -0.763002, 0.285988,
		36.591484, 35.583591, 30.901447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806042, 35.530205, 30.872862>,  <36.185699, 36.117687, 30.701252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806042, 35.530205, 30.872862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136768, 35.382378, 31.042469>,  <36.335205, 35.293682, 31.144234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136768, 35.382378, 31.042469>,  <35.806042, 35.530205, 30.872862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136768, 35.382378, 31.042469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554289, -0.407243, 0.725891,
		-0.095590, -0.835207, -0.541565,
		0.826817, -0.369571, 0.424017,
		36.384815, 35.271507, 31.169674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711655, 34.875347, 31.040014>,  <35.806042, 35.530205, 30.872862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711655, 34.875347, 31.040014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993668, 34.988567, 31.300110>,  <36.162876, 35.056499, 31.456167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993668, 34.988567, 31.300110>,  <35.711655, 34.875347, 31.040014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993668, 34.988567, 31.300110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592626, -0.268456, 0.759425,
		0.389515, -0.920769, -0.021529,
		0.705034, 0.283049, 0.650239,
		36.205177, 35.073483, 31.495182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850616, 34.351463, 31.420275>,  <35.711655, 34.875347, 31.040014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850616, 34.351463, 31.420275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.008511, 34.618450, 31.672836>,  <36.103249, 34.778641, 31.824373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.008511, 34.618450, 31.672836>,  <35.850616, 34.351463, 31.420275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008511, 34.618450, 31.672836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624040, -0.309620, 0.717433,
		0.674358, -0.677218, 0.294308,
		0.394735, 0.667467, 0.631405,
		36.126930, 34.818691, 31.862257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020905, 34.076157, 32.087952>,  <35.850616, 34.351463, 31.420275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020905, 34.076157, 32.087952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.980965, 34.464218, 32.176346>,  <35.957001, 34.697056, 32.229382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.980965, 34.464218, 32.176346>,  <36.020905, 34.076157, 32.087952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980965, 34.464218, 32.176346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589075, -0.236626, 0.772657,
		0.801886, -0.053031, 0.595119,
		-0.099846, 0.970152, 0.220986,
		35.951012, 34.755264, 32.242641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049103, 34.117043, 32.727219>,  <36.020905, 34.076157, 32.087952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049103, 34.117043, 32.727219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.922241, 34.493870, 32.683552>,  <35.846123, 34.719967, 32.657352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.922241, 34.493870, 32.683552>,  <36.049103, 34.117043, 32.727219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922241, 34.493870, 32.683552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446527, -0.046779, 0.893547,
		0.836676, 0.332141, 0.435495,
		-0.317156, 0.942069, -0.109171,
		35.827095, 34.776489, 32.650799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152920, 34.545185, 33.348881>,  <36.049103, 34.117043, 32.727219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152920, 34.545185, 33.348881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.853996, 34.728779, 33.156689>,  <35.674641, 34.838936, 33.041374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.853996, 34.728779, 33.156689>,  <36.152920, 34.545185, 33.348881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853996, 34.728779, 33.156689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503260, 0.081202, 0.860311,
		0.433885, 0.884726, 0.170305,
		-0.747311, 0.458984, -0.480480,
		35.629803, 34.866474, 33.012547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882130, 35.176838, 33.767879>,  <36.152920, 34.545185, 33.348881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882130, 35.176838, 33.767879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581070, 35.102470, 33.515228>,  <35.400433, 35.057850, 33.363636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581070, 35.102470, 33.515228>,  <35.882130, 35.176838, 33.767879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581070, 35.102470, 33.515228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657484, 0.161044, 0.736057,
		-0.035125, 0.969278, -0.243447,
		-0.752650, -0.185917, -0.631628,
		35.355274, 35.046696, 33.325741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.953449, 36.074448, 26.635269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711441, 35.771683, 26.536448>,  <39.566235, 35.590023, 26.477154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711441, 35.771683, 26.536448>,  <39.953449, 36.074448, 26.635269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711441, 35.771683, 26.536448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684320, 0.335717, 0.647303,
		-0.407011, 0.560695, -0.721085,
		-0.605019, -0.756912, -0.247054,
		39.529934, 35.544609, 26.462332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283573, 36.417873, 26.554525>,  <39.953449, 36.074448, 26.635269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283573, 36.417873, 26.554525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219852, 36.027660, 26.615126>,  <39.181622, 35.793533, 26.651485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219852, 36.027660, 26.615126>,  <39.283573, 36.417873, 26.554525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219852, 36.027660, 26.615126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543914, 0.214796, 0.811184,
		-0.823881, 0.046822, -0.564826,
		-0.159303, -0.975536, 0.151499,
		39.172062, 35.735001, 26.660576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544060, 36.344040, 26.714239>,  <39.283573, 36.417873, 26.554525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544060, 36.344040, 26.714239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702293, 36.006306, 26.858805>,  <38.797234, 35.803665, 26.945543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702293, 36.006306, 26.858805>,  <38.544060, 36.344040, 26.714239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702293, 36.006306, 26.858805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342543, 0.229483, 0.911045,
		-0.852162, -0.484191, -0.198441,
		0.395580, -0.844332, 0.361412,
		38.820969, 35.753006, 26.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918774, 36.094444, 27.101198>,  <38.544060, 36.344040, 26.714239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918774, 36.094444, 27.101198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238430, 35.897449, 27.239090>,  <38.430222, 35.779255, 27.321825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238430, 35.897449, 27.239090>,  <37.918774, 36.094444, 27.101198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238430, 35.897449, 27.239090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407065, -0.021346, 0.913150,
		-0.442354, -0.870059, -0.217531,
		0.799138, -0.492485, 0.344728,
		38.478172, 35.749702, 27.342508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622093, 35.533066, 27.403811>,  <37.918774, 36.094444, 27.101198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622093, 35.533066, 27.403811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983860, 35.602303, 27.559795>,  <38.200920, 35.643845, 27.653387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983860, 35.602303, 27.559795>,  <37.622093, 35.533066, 27.403811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983860, 35.602303, 27.559795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354367, -0.204262, 0.912524,
		0.237607, -0.963491, -0.123399,
		0.904415, 0.173094, 0.389964,
		38.255184, 35.654232, 27.676785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784184, 34.956276, 27.827368>,  <37.622093, 35.533066, 27.403811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784184, 34.956276, 27.827368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001686, 35.260895, 27.968431>,  <38.132187, 35.443668, 28.053070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001686, 35.260895, 27.968431>,  <37.784184, 34.956276, 27.827368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001686, 35.260895, 27.968431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430767, -0.107370, 0.896053,
		0.720254, -0.639151, 0.269667,
		0.543759, 0.761549, 0.352659,
		38.164814, 35.489361, 28.074230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164925, 34.678432, 28.322666>,  <37.784184, 34.956276, 27.827368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164925, 34.678432, 28.322666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169773, 35.066269, 28.420433>,  <38.172684, 35.298973, 28.479094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169773, 35.066269, 28.420433>,  <38.164925, 34.678432, 28.322666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169773, 35.066269, 28.420433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366266, -0.223141, 0.903359,
		0.930431, -0.100475, 0.352424,
		0.012125, 0.969594, 0.244418,
		38.173412, 35.357147, 28.493759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279121, 34.650791, 28.950035>,  <38.164925, 34.678432, 28.322666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279121, 34.650791, 28.950035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175529, 35.035210, 28.911430>,  <38.113373, 35.265862, 28.888268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175529, 35.035210, 28.911430>,  <38.279121, 34.650791, 28.950035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175529, 35.035210, 28.911430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256042, 0.028037, 0.966259,
		0.931328, 0.274952, 0.238808,
		-0.258980, 0.961049, -0.096511,
		38.097836, 35.323524, 28.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665710, 35.030754, 29.456770>,  <38.279121, 34.650791, 28.950035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665710, 35.030754, 29.456770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330952, 35.225224, 29.356182>,  <38.130096, 35.341904, 29.295830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330952, 35.225224, 29.356182>,  <38.665710, 35.030754, 29.456770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330952, 35.225224, 29.356182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263556, 0.044738, 0.963606,
		0.479732, 0.872716, 0.090693,
		-0.836897, 0.486175, -0.251472,
		38.079884, 35.371075, 29.280741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342670, 35.200043, 29.634235>,  <38.665710, 35.030754, 29.456770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342670, 35.200043, 29.634235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511208, 34.953632, 29.900465>,  <39.612328, 34.805786, 30.060204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511208, 34.953632, 29.900465>,  <39.342670, 35.200043, 29.634235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511208, 34.953632, 29.900465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552464, -0.407661, -0.727047,
		0.719206, 0.674039, 0.168567,
		0.421340, -0.616023, 0.665574,
		39.637608, 34.768826, 30.100138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041847, 35.214127, 29.541477>,  <39.342670, 35.200043, 29.634235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041847, 35.214127, 29.541477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969059, 34.868248, 29.728748>,  <39.925385, 34.660721, 29.841110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969059, 34.868248, 29.728748>,  <40.041847, 35.214127, 29.541477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969059, 34.868248, 29.728748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624423, -0.469422, -0.624291,
		0.759593, 0.178737, 0.625356,
		-0.181972, -0.864694, 0.468177,
		39.914467, 34.608841, 29.869202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654247, 34.921780, 29.637051>,  <40.041847, 35.214127, 29.541477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654247, 34.921780, 29.637051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377369, 34.634304, 29.663446>,  <40.211243, 34.461819, 29.679285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377369, 34.634304, 29.663446>,  <40.654247, 34.921780, 29.637051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377369, 34.634304, 29.663446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459811, -0.509633, -0.727219,
		0.556277, -0.473031, 0.683226,
		-0.692192, -0.718690, 0.065992,
		40.169712, 34.418697, 29.683245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025291, 34.301491, 29.658140>,  <40.654247, 34.921780, 29.637051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025291, 34.301491, 29.658140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654629, 34.195026, 29.551960>,  <40.432232, 34.131149, 29.488251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654629, 34.195026, 29.551960>,  <41.025291, 34.301491, 29.658140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654629, 34.195026, 29.551960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375679, -0.631152, -0.678611,
		0.013078, -0.728565, 0.684852,
		-0.926657, -0.266159, -0.265452,
		40.376633, 34.115177, 29.472324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059170, 33.580471, 29.602194>,  <41.025291, 34.301491, 29.658140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059170, 33.580471, 29.602194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713600, 33.643776, 29.410950>,  <40.506260, 33.681759, 29.296204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713600, 33.643776, 29.410950>,  <41.059170, 33.580471, 29.602194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713600, 33.643776, 29.410950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267857, -0.659538, -0.702326,
		-0.426486, -0.734821, 0.527397,
		-0.863923, 0.158265, -0.478111,
		40.454422, 33.691254, 29.267517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769905, 32.969093, 29.419567>,  <41.059170, 33.580471, 29.602194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769905, 32.969093, 29.419567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601055, 33.231163, 29.168951>,  <40.499744, 33.388405, 29.018581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601055, 33.231163, 29.168951>,  <40.769905, 32.969093, 29.419567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601055, 33.231163, 29.168951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498255, -0.409706, -0.764122,
		-0.757334, -0.634730, -0.153500,
		-0.422122, 0.655178, -0.626542,
		40.474419, 33.427715, 28.980988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533363, 32.560612, 28.927969>,  <40.769905, 32.969093, 29.419567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533363, 32.560612, 28.927969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555779, 32.905743, 28.727015>,  <40.569225, 33.112820, 28.606441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555779, 32.905743, 28.727015>,  <40.533363, 32.560612, 28.927969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555779, 32.905743, 28.727015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353935, -0.487666, -0.798068,
		-0.933590, -0.133092, -0.332711,
		0.056035, 0.862826, -0.502385,
		40.572590, 33.164589, 28.576300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427265, 32.371647, 28.215412>,  <40.533363, 32.560612, 28.927969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427265, 32.371647, 28.215412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578312, 32.739513, 28.172297>,  <40.668941, 32.960232, 28.146427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578312, 32.739513, 28.172297>,  <40.427265, 32.371647, 28.215412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578312, 32.739513, 28.172297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512043, -0.304389, -0.803218,
		-0.771501, 0.248120, -0.585852,
		0.377621, 0.919665, -0.107788,
		40.691597, 33.015411, 28.139959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306332, 32.623856, 27.511715>,  <40.427265, 32.371647, 28.215412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306332, 32.623856, 27.511715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638214, 32.802727, 27.645357>,  <40.837341, 32.910049, 27.725542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638214, 32.802727, 27.645357>,  <40.306332, 32.623856, 27.511715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638214, 32.802727, 27.645357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512349, -0.372497, -0.773786,
		-0.221565, 0.813191, -0.538172,
		0.829703, 0.447175, 0.334106,
		40.887127, 32.936878, 27.745588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669231, 32.736073, 26.920401>,  <40.306332, 32.623856, 27.511715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669231, 32.736073, 26.920401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956890, 32.796604, 27.191673>,  <41.129486, 32.832924, 27.354437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956890, 32.796604, 27.191673>,  <40.669231, 32.736073, 26.920401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956890, 32.796604, 27.191673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686539, -0.305342, -0.659871,
		0.107220, 0.940141, -0.323479,
		0.719144, 0.151330, 0.678182,
		41.172634, 32.842003, 27.395128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210663, 33.101315, 26.547966>,  <40.669231, 32.736073, 26.920401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210663, 33.101315, 26.547966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386467, 32.963608, 26.879826>,  <41.491947, 32.880985, 27.078941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386467, 32.963608, 26.879826>,  <41.210663, 33.101315, 26.547966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386467, 32.963608, 26.879826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829125, -0.199802, -0.522140,
		0.345519, 0.917367, 0.197623,
		0.439509, -0.344264, 0.829647,
		41.518318, 32.860329, 27.128719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831455, 33.381557, 26.602482>,  <41.210663, 33.101315, 26.547966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831455, 33.381557, 26.602482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882370, 33.065746, 26.842630>,  <41.912918, 32.876259, 26.986719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882370, 33.065746, 26.842630>,  <41.831455, 33.381557, 26.602482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882370, 33.065746, 26.842630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894535, -0.170111, -0.413364,
		0.428491, 0.589673, 0.684603,
		0.127291, -0.789524, 0.600374,
		41.920559, 32.828888, 27.022743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570988, 33.472649, 26.808744>,  <41.831455, 33.381557, 26.602482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570988, 33.472649, 26.808744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443550, 33.099487, 26.875910>,  <42.367088, 32.875591, 26.916208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443550, 33.099487, 26.875910>,  <42.570988, 33.472649, 26.808744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443550, 33.099487, 26.875910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833073, -0.360086, -0.419912,
		0.452199, 0.006102, 0.891896,
		-0.318597, -0.932899, 0.167914,
		42.347969, 32.819618, 26.926285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187973, 33.172302, 27.073275>,  <42.570988, 33.472649, 26.808744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187973, 33.172302, 27.073275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957977, 32.885040, 26.916492>,  <42.819981, 32.712681, 26.822422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957977, 32.885040, 26.916492>,  <43.187973, 33.172302, 27.073275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957977, 32.885040, 26.916492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741231, -0.254451, -0.621153,
		0.346353, -0.647689, 0.678630,
		-0.574992, -0.718160, -0.391957,
		42.785480, 32.669594, 26.798904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.519493, 28.907362, 24.214598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739262, 29.220644, 24.331026>,  <36.871124, 29.408613, 24.400883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.739262, 29.220644, 24.331026>,  <36.519493, 28.907362, 24.214598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739262, 29.220644, 24.331026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448228, -0.017714, 0.893743,
		0.705140, -0.621511, 0.341322,
		0.549425, 0.783205, 0.291070,
		36.904091, 29.455605, 24.418346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657299, 28.903255, 25.021603>,  <36.519493, 28.907362, 24.214598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657299, 28.903255, 25.021603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722900, 29.284586, 24.920197>,  <36.762260, 29.513384, 24.859354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722900, 29.284586, 24.920197>,  <36.657299, 28.903255, 25.021603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722900, 29.284586, 24.920197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431583, 0.300435, 0.850574,
		0.887040, -0.030085, 0.460712,
		0.164003, 0.953328, -0.253513,
		36.772102, 29.570585, 24.844143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867283, 29.200134, 25.691107>,  <36.657299, 28.903255, 25.021603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867283, 29.200134, 25.691107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757778, 29.492395, 25.440922>,  <36.692074, 29.667751, 25.290812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757778, 29.492395, 25.440922>,  <36.867283, 29.200134, 25.691107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757778, 29.492395, 25.440922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503916, 0.444940, 0.740336,
		0.819220, 0.517858, 0.246378,
		-0.273766, 0.730651, -0.625461,
		36.675648, 29.711592, 25.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014328, 29.818714, 26.048922>,  <36.867283, 29.200134, 25.691107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014328, 29.818714, 26.048922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744099, 29.913336, 25.769596>,  <36.581963, 29.970108, 25.602001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744099, 29.913336, 25.769596>,  <37.014328, 29.818714, 26.048922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744099, 29.913336, 25.769596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499467, 0.549860, 0.669467,
		0.542340, 0.801059, -0.253321,
		-0.675574, 0.236553, -0.698314,
		36.541428, 29.984303, 25.560102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880280, 30.524723, 26.145809>,  <37.014328, 29.818714, 26.048922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880280, 30.524723, 26.145809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.569462, 30.394550, 25.930296>,  <36.382969, 30.316446, 25.800987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.569462, 30.394550, 25.930296>,  <36.880280, 30.524723, 26.145809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569462, 30.394550, 25.930296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621443, 0.532660, 0.574528,
		0.100019, 0.781260, -0.616140,
		-0.777049, -0.325432, -0.538784,
		36.336346, 30.296921, 25.768661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407341, 31.074385, 26.264618>,  <36.880280, 30.524723, 26.145809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407341, 31.074385, 26.264618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188210, 30.787233, 26.092789>,  <36.056732, 30.614943, 25.989691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188210, 30.787233, 26.092789>,  <36.407341, 31.074385, 26.264618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188210, 30.787233, 26.092789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814970, 0.341959, 0.467855,
		-0.188966, 0.606395, -0.772384,
		-0.547829, -0.717878, -0.429575,
		36.023861, 30.571871, 25.963917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755081, 31.387859, 26.120554>,  <36.407341, 31.074385, 26.264618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755081, 31.387859, 26.120554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668312, 31.000698, 26.171324>,  <35.616249, 30.768402, 26.201786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668312, 31.000698, 26.171324>,  <35.755081, 31.387859, 26.120554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668312, 31.000698, 26.171324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828562, 0.251305, 0.500331,
		-0.516168, 0.003367, -0.856481,
		-0.216922, -0.967902, 0.126925,
		35.603237, 30.710327, 26.209402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006428, 31.284594, 25.939550>,  <35.755081, 31.387859, 26.120554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006428, 31.284594, 25.939550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099892, 30.953497, 26.143606>,  <35.155972, 30.754839, 26.266041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099892, 30.953497, 26.143606>,  <35.006428, 31.284594, 25.939550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099892, 30.953497, 26.143606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716439, 0.208143, 0.665877,
		-0.657358, -0.521073, -0.544394,
		0.233659, -0.827744, 0.510141,
		35.169991, 30.705173, 26.296648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319782, 30.965725, 26.256783>,  <35.006428, 31.284594, 25.939550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319782, 30.965725, 26.256783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635666, 30.824482, 26.457449>,  <34.825195, 30.739737, 26.577848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635666, 30.824482, 26.457449>,  <34.319782, 30.965725, 26.256783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635666, 30.824482, 26.457449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505746, 0.088138, 0.858168,
		-0.347241, -0.931422, -0.108979,
		0.789712, -0.353107, 0.501668,
		34.872578, 30.718550, 26.607950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034557, 30.346327, 26.692089>,  <34.319782, 30.965725, 26.256783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034557, 30.346327, 26.692089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366199, 30.480461, 26.871033>,  <34.565186, 30.560942, 26.978399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366199, 30.480461, 26.871033>,  <34.034557, 30.346327, 26.692089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366199, 30.480461, 26.871033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532860, 0.231744, 0.813852,
		0.169240, -0.913151, 0.370827,
		0.829107, 0.335335, 0.447362,
		34.614933, 30.581062, 27.005241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990021, 29.992182, 27.285114>,  <34.034557, 30.346327, 26.692089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990021, 29.992182, 27.285114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271114, 30.263205, 27.371902>,  <34.439770, 30.425817, 27.423975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271114, 30.263205, 27.371902>,  <33.990021, 29.992182, 27.285114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271114, 30.263205, 27.371902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472835, 0.216930, 0.854030,
		0.531588, -0.702750, 0.472818,
		0.702738, 0.677557, 0.216968,
		34.481937, 30.466471, 27.436993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228588, 29.826061, 27.905670>,  <33.990021, 29.992182, 27.285114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228588, 29.826061, 27.905670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312092, 30.212019, 27.841917>,  <34.362194, 30.443594, 27.803665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312092, 30.212019, 27.841917>,  <34.228588, 29.826061, 27.905670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312092, 30.212019, 27.841917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511540, 0.246636, 0.823102,
		0.833514, -0.090300, 0.545069,
		0.208760, 0.964892, -0.159382,
		34.374722, 30.501486, 27.794102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499779, 30.150307, 28.509731>,  <34.228588, 29.826061, 27.905670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499779, 30.150307, 28.509731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.391342, 30.486139, 28.321430>,  <34.326279, 30.687639, 28.208450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.391342, 30.486139, 28.321430>,  <34.499779, 30.150307, 28.509731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391342, 30.486139, 28.321430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441007, 0.326376, 0.836057,
		0.855582, 0.434256, 0.281783,
		-0.271096, 0.839583, -0.470751,
		34.310013, 30.738014, 28.180204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689510, 30.549786, 28.929480>,  <34.499779, 30.150307, 28.509731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689510, 30.549786, 28.929480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403774, 30.735922, 28.720417>,  <34.232330, 30.847603, 28.594978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.403774, 30.735922, 28.720417>,  <34.689510, 30.549786, 28.929480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403774, 30.735922, 28.720417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381732, 0.366849, 0.848352,
		0.586509, 0.805531, -0.084421,
		-0.714344, 0.465340, -0.522658,
		34.189472, 30.875525, 28.563620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428326, 30.850309, 29.095818>,  <34.689510, 30.549786, 28.929480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428326, 30.850309, 29.095818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701385, 30.714430, 29.354614>,  <35.865219, 30.632902, 29.509893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701385, 30.714430, 29.354614>,  <35.428326, 30.850309, 29.095818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701385, 30.714430, 29.354614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521299, -0.394079, -0.756934,
		0.512097, 0.853994, -0.091931,
		0.682645, -0.339700, 0.646993,
		35.906178, 30.612520, 29.548712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011662, 31.026829, 28.791937>,  <35.428326, 30.850309, 29.095818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011662, 31.026829, 28.791937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104431, 30.707760, 29.014622>,  <36.160091, 30.516319, 29.148233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.104431, 30.707760, 29.014622>,  <36.011662, 31.026829, 28.791937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104431, 30.707760, 29.014622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638105, -0.307207, -0.706007,
		0.734189, 0.518981, 0.437750,
		0.231924, -0.797673, 0.556713,
		36.174007, 30.468458, 29.181635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658978, 30.839399, 28.611212>,  <36.011662, 31.026829, 28.791937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658978, 30.839399, 28.611212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.575012, 30.515469, 28.830345>,  <36.524635, 30.321110, 28.961824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.575012, 30.515469, 28.830345>,  <36.658978, 30.839399, 28.611212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575012, 30.515469, 28.830345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604043, -0.548007, -0.578637,
		0.768811, 0.209454, 0.604201,
		-0.209909, -0.809825, 0.547833,
		36.512039, 30.272520, 28.994696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314915, 30.590099, 28.777563>,  <36.658978, 30.839399, 28.611212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314915, 30.590099, 28.777563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051056, 30.290470, 28.802069>,  <36.892742, 30.110693, 28.816772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051056, 30.290470, 28.802069>,  <37.314915, 30.590099, 28.777563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051056, 30.290470, 28.802069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644589, -0.605783, -0.466403,
		0.386484, -0.268170, 0.882448,
		-0.659647, -0.749074, 0.061266,
		36.853161, 30.065748, 28.820448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735390, 29.951725, 29.085110>,  <37.314915, 30.590099, 28.777563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735390, 29.951725, 29.085110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403599, 29.833202, 28.895723>,  <37.204525, 29.762089, 28.782091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403599, 29.833202, 28.895723>,  <37.735390, 29.951725, 29.085110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403599, 29.833202, 28.895723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519547, -0.720492, -0.459305,
		-0.205033, -0.626971, 0.751578,
		-0.829477, -0.296307, -0.473465,
		37.154755, 29.744310, 28.753683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686913, 29.192007, 29.155468>,  <37.735390, 29.951725, 29.085110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686913, 29.192007, 29.155468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475143, 29.298670, 28.833324>,  <37.348080, 29.362667, 28.640039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475143, 29.298670, 28.833324>,  <37.686913, 29.192007, 29.155468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475143, 29.298670, 28.833324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591766, -0.564145, -0.575806,
		-0.607882, -0.781430, 0.140875,
		-0.529426, 0.266657, -0.805358,
		37.316315, 29.378666, 28.591717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669449, 28.592789, 28.784945>,  <37.686913, 29.192007, 29.155468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669449, 28.592789, 28.784945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561333, 28.879921, 28.528301>,  <37.496464, 29.052200, 28.374315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561333, 28.879921, 28.528301>,  <37.669449, 28.592789, 28.784945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561333, 28.879921, 28.528301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558037, -0.426249, -0.711973,
		-0.784561, -0.550482, -0.285365,
		-0.270292, 0.717831, -0.641608,
		37.480244, 29.095270, 28.335819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401054, 28.232052, 28.215050>,  <37.669449, 28.592789, 28.784945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401054, 28.232052, 28.215050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.522007, 28.595879, 28.101030>,  <37.594578, 28.814175, 28.032618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.522007, 28.595879, 28.101030>,  <37.401054, 28.232052, 28.215050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522007, 28.595879, 28.101030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551090, -0.410826, -0.726306,
		-0.777730, 0.062535, -0.625480,
		0.302383, 0.909566, -0.285050,
		37.612720, 28.868748, 28.015516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335171, 28.207981, 27.506292>,  <37.401054, 28.232052, 28.215050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335171, 28.207981, 27.506292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607712, 28.494783, 27.565166>,  <37.771236, 28.666864, 27.600491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607712, 28.494783, 27.565166>,  <37.335171, 28.207981, 27.506292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607712, 28.494783, 27.565166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551869, -0.371126, -0.746797,
		-0.480835, 0.590057, -0.648561,
		0.681351, 0.717006, 0.147184,
		37.812119, 28.709885, 27.609322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509972, 28.380989, 26.804239>,  <37.335171, 28.207981, 27.506292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509972, 28.380989, 26.804239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.809509, 28.533249, 27.021252>,  <37.989231, 28.624605, 27.151459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.809509, 28.533249, 27.021252>,  <37.509972, 28.380989, 26.804239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809509, 28.533249, 27.021252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614763, -0.093145, -0.783193,
		-0.247589, 0.920016, -0.303761,
		0.748843, 0.380651, 0.542530,
		38.034161, 28.647444, 27.184011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816967, 28.972136, 26.470715>,  <37.509972, 28.380989, 26.804239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816967, 28.972136, 26.470715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108463, 28.864704, 26.722685>,  <38.283360, 28.800245, 26.873867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108463, 28.864704, 26.722685>,  <37.816967, 28.972136, 26.470715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108463, 28.864704, 26.722685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675025, 0.126936, -0.726793,
		0.115239, 0.954858, 0.273799,
		0.728740, -0.268577, 0.629925,
		38.327084, 28.784132, 26.911663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262615, 29.466223, 26.448792>,  <37.816967, 28.972136, 26.470715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262615, 29.466223, 26.448792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454849, 29.152096, 26.604900>,  <38.570190, 28.963619, 26.698566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454849, 29.152096, 26.604900>,  <38.262615, 29.466223, 26.448792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454849, 29.152096, 26.604900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745954, 0.132099, -0.652765,
		0.461074, 0.604835, 0.649296,
		0.480587, -0.785318, 0.390272,
		38.599026, 28.916500, 26.721981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928848, 29.682224, 26.470800>,  <38.262615, 29.466223, 26.448792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928848, 29.682224, 26.470800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.988449, 29.287977, 26.502687>,  <39.024208, 29.051428, 26.521820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.988449, 29.287977, 26.502687>,  <38.928848, 29.682224, 26.470800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988449, 29.287977, 26.502687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643079, 0.035342, -0.764984,
		0.751165, 0.165247, 0.639097,
		0.148998, -0.985619, 0.079719,
		39.033150, 28.992292, 26.526604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538315, 29.645599, 26.536903>,  <38.928848, 29.682224, 26.470800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538315, 29.645599, 26.536903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424679, 29.292608, 26.386955>,  <39.356499, 29.080814, 26.296986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424679, 29.292608, 26.386955>,  <39.538315, 29.645599, 26.536903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424679, 29.292608, 26.386955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553973, 0.168039, -0.815400,
		0.782564, -0.439316, 0.441130,
		-0.284091, -0.882476, -0.374870,
		39.339451, 29.027864, 26.274494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163265, 29.575239, 27.043804>,  <39.538315, 29.645599, 26.536903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163265, 29.575239, 27.043804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.531551, 29.629595, 27.190132>,  <40.752522, 29.662209, 27.277929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.531551, 29.629595, 27.190132>,  <40.163265, 29.575239, 27.043804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531551, 29.629595, 27.190132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389560, 0.375522, 0.840967,
		-0.023098, -0.916798, 0.398683,
		0.920711, 0.135886, 0.365821,
		40.807766, 29.670361, 27.299879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143932, 29.327253, 27.769665>,  <40.163265, 29.575239, 27.043804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143932, 29.327253, 27.769665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.452049, 29.579784, 27.733732>,  <40.636921, 29.731304, 27.712173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.452049, 29.579784, 27.733732>,  <40.143932, 29.327253, 27.769665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452049, 29.579784, 27.733732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280909, 0.462403, 0.840995,
		0.572484, -0.622579, 0.533533,
		0.770294, 0.631331, -0.089831,
		40.683136, 29.769184, 27.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492069, 29.383320, 28.497255>,  <40.143932, 29.327253, 27.769665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492069, 29.383320, 28.497255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637657, 29.708473, 28.315376>,  <40.725010, 29.903564, 28.206249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637657, 29.708473, 28.315376>,  <40.492069, 29.383320, 28.497255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637657, 29.708473, 28.315376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282127, 0.561464, 0.777922,
		0.887656, -0.154854, 0.433689,
		0.363965, 0.812883, -0.454698,
		40.746845, 29.952337, 28.178967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835220, 29.824978, 29.065990>,  <40.492069, 29.383320, 28.497255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835220, 29.824978, 29.065990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765430, 30.080509, 28.766268>,  <40.723557, 30.233828, 28.586435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765430, 30.080509, 28.766268>,  <40.835220, 29.824978, 29.065990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765430, 30.080509, 28.766268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262808, 0.703160, 0.660680,
		0.948943, 0.312192, 0.045209,
		-0.174470, 0.638829, -0.749305,
		40.713089, 30.272158, 28.541477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232071, 30.345781, 29.218924>,  <40.835220, 29.824978, 29.065990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232071, 30.345781, 29.218924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922951, 30.460073, 28.992245>,  <40.737480, 30.528648, 28.856237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922951, 30.460073, 28.992245>,  <41.232071, 30.345781, 29.218924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922951, 30.460073, 28.992245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362389, 0.534377, 0.763619,
		0.521017, 0.795487, -0.309420,
		-0.772797, 0.285728, -0.566696,
		40.691113, 30.545792, 28.822235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273571, 31.043480, 29.267546>,  <41.232071, 30.345781, 29.218924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273571, 31.043480, 29.267546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896206, 30.967958, 29.158489>,  <40.669788, 30.922646, 29.093056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896206, 30.967958, 29.158489>,  <41.273571, 31.043480, 29.267546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896206, 30.967958, 29.158489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327496, 0.400967, 0.855553,
		-0.052210, 0.896425, -0.440108,
		-0.943409, -0.188802, -0.272641,
		40.613182, 30.911318, 29.076696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825195, 31.673321, 29.464104>,  <41.273571, 31.043480, 29.267546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825195, 31.673321, 29.464104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592514, 31.349209, 29.435623>,  <40.452908, 31.154741, 29.418535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592514, 31.349209, 29.435623>,  <40.825195, 31.673321, 29.464104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592514, 31.349209, 29.435623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550876, 0.328039, 0.767416,
		-0.598467, 0.485627, -0.637184,
		-0.581699, -0.810282, -0.071200,
		40.418003, 31.106125, 29.414263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189857, 31.959154, 29.554838>,  <40.825195, 31.673321, 29.464104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189857, 31.959154, 29.554838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117260, 31.569723, 29.610270>,  <40.073700, 31.336063, 29.643528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117260, 31.569723, 29.610270>,  <40.189857, 31.959154, 29.554838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117260, 31.569723, 29.610270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702900, 0.226986, 0.674098,
		-0.687743, 0.024939, -0.725526,
		-0.181495, -0.973579, 0.138579,
		40.062813, 31.277649, 29.651844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498581, 31.923927, 29.653238>,  <40.189857, 31.959154, 29.554838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498581, 31.923927, 29.653238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609341, 31.575230, 29.814920>,  <39.675797, 31.366011, 29.911930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609341, 31.575230, 29.814920>,  <39.498581, 31.923927, 29.653238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609341, 31.575230, 29.814920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659366, 0.133610, 0.739855,
		-0.698972, -0.471389, -0.537803,
		0.276903, -0.871746, 0.404207,
		39.692413, 31.313705, 29.936182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833874, 31.605350, 29.793392>,  <39.498581, 31.923927, 29.653238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833874, 31.605350, 29.793392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133141, 31.472645, 30.023235>,  <39.312702, 31.393021, 30.161140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.133141, 31.472645, 30.023235>,  <38.833874, 31.605350, 29.793392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133141, 31.472645, 30.023235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560449, 0.147567, 0.814936,
		-0.355162, -0.931748, -0.075533,
		0.748169, -0.331767, 0.574607,
		39.357590, 31.373116, 30.195618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575535, 31.240858, 30.386488>,  <38.833874, 31.605350, 29.793392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575535, 31.240858, 30.386488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.934406, 31.256868, 30.562426>,  <39.149731, 31.266474, 30.667988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.934406, 31.256868, 30.562426>,  <38.575535, 31.240858, 30.386488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934406, 31.256868, 30.562426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438676, -0.034811, 0.897971,
		0.051257, -0.998592, -0.013671,
		0.897182, 0.040030, 0.439843,
		39.203560, 31.268875, 30.694378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617458, 30.729685, 30.717184>,  <38.575535, 31.240858, 30.386488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617458, 30.729685, 30.717184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864212, 30.988903, 30.895840>,  <39.012264, 31.144434, 31.003033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864212, 30.988903, 30.895840>,  <38.617458, 30.729685, 30.717184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864212, 30.988903, 30.895840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564799, -0.030721, 0.824656,
		0.548136, -0.760982, 0.347064,
		0.616886, 0.648045, 0.446641,
		39.049278, 31.183317, 31.029833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691227, 30.410076, 31.350630>,  <38.617458, 30.729685, 30.717184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691227, 30.410076, 31.350630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823711, 30.781609, 31.417044>,  <38.903202, 31.004528, 31.456892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823711, 30.781609, 31.417044>,  <38.691227, 30.410076, 31.350630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823711, 30.781609, 31.417044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510796, 0.028554, 0.859228,
		0.793338, -0.369396, 0.483902,
		0.331213, 0.928833, 0.166033,
		38.923077, 31.060259, 31.466854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039303, 30.438522, 32.061916>,  <38.691227, 30.410076, 31.350630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039303, 30.438522, 32.061916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936672, 30.813889, 31.969357>,  <38.875095, 31.039108, 31.913820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936672, 30.813889, 31.969357>,  <39.039303, 30.438522, 32.061916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936672, 30.813889, 31.969357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444860, 0.097887, 0.890234,
		0.858061, 0.331351, 0.392349,
		-0.256574, 0.938416, -0.231398,
		38.859699, 31.095413, 31.899937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.687832, 32.437763, 27.069536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.372360, 32.428642, 26.823782>,  <43.183079, 32.423168, 26.676329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.372360, 32.428642, 26.823782>,  <43.687832, 32.437763, 27.069536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372360, 32.428642, 26.823782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564285, -0.423572, -0.708639,
		-0.244079, -0.905575, 0.346927,
		-0.788675, -0.022802, -0.614388,
		43.135757, 32.421803, 26.639465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769901, 31.842031, 26.771727>,  <43.687832, 32.437763, 27.069536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769901, 31.842031, 26.771727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.534206, 32.038403, 26.515043>,  <43.392788, 32.156223, 26.361034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.534206, 32.038403, 26.515043>,  <43.769901, 31.842031, 26.771727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534206, 32.038403, 26.515043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373968, -0.538317, -0.755223,
		-0.716201, -0.684985, 0.133607,
		-0.589240, 0.490927, -0.641706,
		43.357433, 32.185680, 26.322531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602829, 31.251751, 26.291546>,  <43.769901, 31.842031, 26.771727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602829, 31.251751, 26.291546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.500908, 31.579229, 26.085707>,  <43.439754, 31.775717, 25.962204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.500908, 31.579229, 26.085707>,  <43.602829, 31.251751, 26.291546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500908, 31.579229, 26.085707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203588, -0.474817, -0.856213,
		-0.945318, -0.322933, -0.045691,
		-0.254805, 0.818696, -0.514598,
		43.424465, 31.824839, 25.931328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233673, 31.020180, 25.701918>,  <43.602829, 31.251751, 26.291546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233673, 31.020180, 25.701918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356865, 31.388706, 25.606989>,  <43.430782, 31.609823, 25.550032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356865, 31.388706, 25.606989>,  <43.233673, 31.020180, 25.701918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356865, 31.388706, 25.606989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144945, -0.291973, -0.945379,
		-0.940286, 0.256761, -0.223463,
		0.307981, 0.921317, -0.237322,
		43.449261, 31.665102, 25.535791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889065, 31.075340, 25.051582>,  <43.233673, 31.020180, 25.701918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889065, 31.075340, 25.051582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.191151, 31.335337, 25.085423>,  <43.372402, 31.491335, 25.105726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.191151, 31.335337, 25.085423>,  <42.889065, 31.075340, 25.051582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191151, 31.335337, 25.085423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342494, -0.281266, -0.896430,
		-0.558876, 0.705976, -0.435035,
		0.755219, 0.649991, 0.084600,
		43.417717, 31.530334, 25.110802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000717, 31.209747, 24.467070>,  <42.889065, 31.075340, 25.051582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000717, 31.209747, 24.467070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.345470, 31.366194, 24.596178>,  <43.552322, 31.460062, 24.673643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.345470, 31.366194, 24.596178>,  <43.000717, 31.209747, 24.467070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345470, 31.366194, 24.596178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475867, -0.403875, -0.781304,
		-0.175222, 0.826990, -0.534214,
		0.861886, 0.391116, 0.322770,
		43.604034, 31.483528, 24.693008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375057, 31.455332, 23.905703>,  <43.000717, 31.209747, 24.467070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375057, 31.455332, 23.905703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.669083, 31.454163, 24.176897>,  <43.845497, 31.453461, 24.339615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.669083, 31.454163, 24.176897>,  <43.375057, 31.455332, 23.905703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669083, 31.454163, 24.176897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655078, -0.254726, -0.711328,
		0.174779, 0.967009, -0.185328,
		0.735068, -0.002921, 0.677987,
		43.889603, 31.453287, 24.380293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809654, 32.003437, 23.670694>,  <43.375057, 31.455332, 23.905703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809654, 32.003437, 23.670694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.032661, 31.761253, 23.897884>,  <44.166466, 31.615944, 24.034199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.032661, 31.761253, 23.897884>,  <43.809654, 32.003437, 23.670694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032661, 31.761253, 23.897884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485783, -0.316872, -0.814621,
		0.673192, 0.730080, 0.117458,
		0.557519, -0.605455, 0.567976,
		44.199917, 31.579617, 24.068277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503277, 32.111942, 23.522839>,  <43.809654, 32.003437, 23.670694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503277, 32.111942, 23.522839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.512058, 31.748117, 23.688831>,  <44.517326, 31.529821, 23.788427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.512058, 31.748117, 23.688831>,  <44.503277, 32.111942, 23.522839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512058, 31.748117, 23.688831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633043, -0.308624, -0.709935,
		0.773806, 0.278283, 0.569020,
		0.021950, -0.909566, 0.414980,
		44.518642, 31.475248, 23.813326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188427, 32.044807, 23.491220>,  <44.503277, 32.111942, 23.522839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188427, 32.044807, 23.491220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.967697, 31.711954, 23.513254>,  <44.835258, 31.512241, 23.526474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.967697, 31.711954, 23.513254>,  <45.188427, 32.044807, 23.491220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967697, 31.711954, 23.513254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536813, -0.404980, -0.740150,
		0.638213, -0.378867, 0.670182,
		-0.551829, -0.832136, 0.055083,
		44.802147, 31.462313, 23.529779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700481, 31.523874, 23.322374>,  <45.188427, 32.044807, 23.491220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700481, 31.523874, 23.322374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.336788, 31.361864, 23.283897>,  <45.118572, 31.264658, 23.260811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.336788, 31.361864, 23.283897>,  <45.700481, 31.523874, 23.322374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336788, 31.361864, 23.283897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319588, -0.531058, -0.784755,
		0.266762, -0.744266, 0.612296,
		-0.909231, -0.405025, -0.096193,
		45.064018, 31.240356, 23.255039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888035, 30.854666, 23.158518>,  <45.700481, 31.523874, 23.322374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888035, 30.854666, 23.158518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.514565, 30.906162, 23.024845>,  <45.290482, 30.937059, 22.944641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.514565, 30.906162, 23.024845>,  <45.888035, 30.854666, 23.158518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514565, 30.906162, 23.024845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219711, -0.530982, -0.818404,
		-0.282806, -0.837546, 0.467479,
		-0.933675, 0.128739, -0.334183,
		45.234463, 30.944784, 22.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428055, 30.304516, 22.848366>,  <45.888035, 30.854666, 23.158518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428055, 30.304516, 22.848366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.364414, 30.657862, 22.672022>,  <45.326229, 30.869869, 22.566216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.364414, 30.657862, 22.672022>,  <45.428055, 30.304516, 22.848366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364414, 30.657862, 22.672022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345192, -0.368588, -0.863125,
		-0.924949, -0.289503, -0.246287,
		-0.159099, 0.883363, -0.440859,
		45.316685, 30.922871, 22.539764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075008, 29.626389, 23.054646>,  <45.428055, 30.304516, 22.848366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075008, 29.626389, 23.054646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.834572, 29.392296, 22.836948>,  <44.690311, 29.251841, 22.706331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.834572, 29.392296, 22.836948>,  <45.075008, 29.626389, 23.054646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834572, 29.392296, 22.836948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599073, -0.120788, 0.791531,
		-0.528965, 0.801821, -0.277991,
		-0.601089, -0.585229, -0.544242,
		44.654243, 29.216726, 22.673676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269848, 29.835293, 23.053507>,  <45.075008, 29.626389, 23.054646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269848, 29.835293, 23.053507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.268867, 29.442255, 22.979204>,  <44.268280, 29.206432, 22.934622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.268867, 29.442255, 22.979204>,  <44.269848, 29.835293, 23.053507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268867, 29.442255, 22.979204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658739, -0.138170, 0.739576,
		-0.752368, 0.124182, -0.646933,
		-0.002455, -0.982592, -0.185758,
		44.268131, 29.147478, 22.923477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594864, 29.562830, 22.848680>,  <44.269848, 29.835293, 23.053507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594864, 29.562830, 22.848680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.812580, 29.257111, 22.987009>,  <43.943211, 29.073679, 23.070005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.812580, 29.257111, 22.987009>,  <43.594864, 29.562830, 22.848680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812580, 29.257111, 22.987009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719388, -0.213193, 0.661081,
		-0.431538, -0.608601, -0.665868,
		0.544294, -0.764299, 0.345820,
		43.975868, 29.027821, 23.090755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048199, 29.288828, 23.211443>,  <43.594864, 29.562830, 22.848680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048199, 29.288828, 23.211443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.372299, 29.084984, 23.327230>,  <43.566757, 28.962677, 23.396704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.372299, 29.084984, 23.327230>,  <43.048199, 29.288828, 23.211443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372299, 29.084984, 23.327230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466294, -0.261315, 0.845153,
		-0.355059, -0.819762, -0.449359,
		0.810249, -0.509613, 0.289468,
		43.615376, 28.932100, 23.414070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837215, 28.661652, 23.493855>,  <43.048199, 29.288828, 23.211443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837215, 28.661652, 23.493855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193729, 28.732294, 23.660910>,  <43.407639, 28.774679, 23.761143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193729, 28.732294, 23.660910>,  <42.837215, 28.661652, 23.493855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193729, 28.732294, 23.660910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373769, -0.235316, 0.897175,
		0.256726, -0.955738, -0.143723,
		0.891285, 0.176609, 0.417637,
		43.461113, 28.785276, 23.786201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867481, 28.125652, 24.120653>,  <42.837215, 28.661652, 23.493855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867481, 28.125652, 24.120653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143349, 28.409975, 24.175962>,  <43.308868, 28.580568, 24.209148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.143349, 28.409975, 24.175962>,  <42.867481, 28.125652, 24.120653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.143349, 28.409975, 24.175962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276290, 0.081793, 0.957587,
		0.669348, -0.698617, 0.252798,
		0.689664, 0.710805, 0.138273,
		43.350246, 28.623217, 24.217443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032440, 28.050110, 24.787643>,  <42.867481, 28.125652, 24.120653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032440, 28.050110, 24.787643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168129, 28.422430, 24.733173>,  <43.249542, 28.645823, 24.700491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168129, 28.422430, 24.733173>,  <43.032440, 28.050110, 24.787643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168129, 28.422430, 24.733173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371313, 0.265488, 0.889743,
		0.864324, -0.251255, 0.435677,
		0.339220, 0.930799, -0.136174,
		43.269894, 28.701670, 24.692322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230904, 28.246878, 25.416571>,  <43.032440, 28.050110, 24.787643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230904, 28.246878, 25.416571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.207333, 28.598480, 25.227306>,  <43.193192, 28.809441, 25.113749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.207333, 28.598480, 25.227306>,  <43.230904, 28.246878, 25.416571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207333, 28.598480, 25.227306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177451, 0.457211, 0.871476,
		0.982364, 0.135313, 0.129040,
		-0.058924, 0.879005, -0.473159,
		43.189655, 28.862181, 25.085360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606743, 28.710459, 25.734270>,  <43.230904, 28.246878, 25.416571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606743, 28.710459, 25.734270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.307343, 28.920010, 25.571642>,  <43.127701, 29.045740, 25.474066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.307343, 28.920010, 25.571642>,  <43.606743, 28.710459, 25.734270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307343, 28.920010, 25.571642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282489, 0.302795, 0.910228,
		0.599956, 0.796158, -0.078652,
		-0.748500, 0.523878, -0.406570,
		43.082794, 29.077173, 25.449671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645844, 29.311598, 26.137297>,  <43.606743, 28.710459, 25.734270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645844, 29.311598, 26.137297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.290718, 29.313517, 25.953228>,  <43.077641, 29.314669, 25.842787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.290718, 29.313517, 25.953228>,  <43.645844, 29.311598, 26.137297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290718, 29.313517, 25.953228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438952, 0.291481, 0.849917,
		0.138210, 0.956564, -0.256676,
		-0.887817, 0.004799, -0.460172,
		43.024372, 29.314957, 25.815176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145416, 29.662512, 26.506538>,  <43.645844, 29.311598, 26.137297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145416, 29.662512, 26.506538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858482, 29.521633, 26.266077>,  <42.686321, 29.437105, 26.121799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858482, 29.521633, 26.266077>,  <43.145416, 29.662512, 26.506538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858482, 29.521633, 26.266077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694432, 0.291438, 0.657896,
		-0.056509, 0.889394, -0.453635,
		-0.717335, -0.352197, -0.601155,
		42.643280, 29.415974, 26.085730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571766, 30.123447, 26.429258>,  <43.145416, 29.662512, 26.506538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571766, 30.123447, 26.429258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.364120, 29.795650, 26.332134>,  <42.239532, 29.598972, 26.273861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.364120, 29.795650, 26.332134>,  <42.571766, 30.123447, 26.429258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364120, 29.795650, 26.332134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814028, 0.387442, 0.432720,
		-0.260536, 0.422284, -0.868215,
		-0.519114, -0.819491, -0.242809,
		42.208385, 29.549803, 26.259293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940025, 30.351776, 26.240812>,  <42.571766, 30.123447, 26.429258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940025, 30.351776, 26.240812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.875267, 29.971283, 26.345840>,  <41.836411, 29.742987, 26.408857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.875267, 29.971283, 26.345840>,  <41.940025, 30.351776, 26.240812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875267, 29.971283, 26.345840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769538, 0.288264, 0.569837,
		-0.617738, -0.109803, -0.778680,
		-0.161896, -0.951234, 0.262569,
		41.826698, 29.685913, 26.424612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197449, 30.215773, 26.172653>,  <41.940025, 30.351776, 26.240812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197449, 30.215773, 26.172653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.311199, 29.918957, 26.415474>,  <41.379448, 29.740868, 26.561167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.311199, 29.918957, 26.415474>,  <41.197449, 30.215773, 26.172653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311199, 29.918957, 26.415474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768911, 0.201675, 0.606715,
		-0.572633, -0.639302, -0.513210,
		0.284373, -0.742038, 0.607052,
		41.396511, 29.696346, 26.597589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510845, 29.905928, 26.441563>,  <41.197449, 30.215773, 26.172653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510845, 29.905928, 26.441563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787029, 29.775434, 26.699814>,  <40.952740, 29.697138, 26.854765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787029, 29.775434, 26.699814>,  <40.510845, 29.905928, 26.441563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787029, 29.775434, 26.699814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554691, 0.334110, 0.762030,
		-0.464310, -0.884275, 0.049731,
		0.690460, -0.326232, 0.645630,
		40.994167, 29.677565, 26.893503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188961, 29.254837, 26.307669>,  <40.510845, 29.905928, 26.441563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188961, 29.254837, 26.307669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899441, 29.032522, 26.144100>,  <39.725727, 28.899134, 26.045959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899441, 29.032522, 26.144100>,  <40.188961, 29.254837, 26.307669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899441, 29.032522, 26.144100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410374, 0.129692, -0.902648,
		0.554713, -0.821146, 0.134210,
		-0.723800, -0.555787, -0.408919,
		39.682301, 28.865786, 26.021425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463284, 28.720373, 25.872202>,  <40.188961, 29.254837, 26.307669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463284, 28.720373, 25.872202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.104195, 28.766052, 25.702002>,  <39.888741, 28.793461, 25.599882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.104195, 28.766052, 25.702002>,  <40.463284, 28.720373, 25.872202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104195, 28.766052, 25.702002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418585, -0.080122, -0.904636,
		-0.137398, -0.990222, 0.024126,
		-0.897724, 0.114197, -0.425501,
		39.834877, 28.800312, 25.574352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543591, 28.205013, 25.312206>,  <40.463284, 28.720373, 25.872202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543591, 28.205013, 25.312206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.242226, 28.460852, 25.251165>,  <40.061409, 28.614355, 25.214540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.242226, 28.460852, 25.251165>,  <40.543591, 28.205013, 25.312206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242226, 28.460852, 25.251165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215677, 0.021133, -0.976236,
		-0.621173, -0.768419, -0.153869,
		-0.753410, 0.639598, -0.152603,
		40.016201, 28.652731, 25.205385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193890, 27.950212, 24.659977>,  <40.543591, 28.205013, 25.312206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193890, 27.950212, 24.659977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.068569, 28.325983, 24.715578>,  <39.993378, 28.551445, 24.748938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.068569, 28.325983, 24.715578>,  <40.193890, 27.950212, 24.659977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068569, 28.325983, 24.715578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132741, 0.101612, -0.985928,
		-0.940332, -0.327339, 0.092866,
		-0.313296, 0.939427, 0.139001,
		39.974579, 28.607811, 24.757278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551094, 27.964954, 24.318153>,  <40.193890, 27.950212, 24.659977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551094, 27.964954, 24.318153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.738712, 28.315386, 24.362839>,  <39.851284, 28.525644, 24.389650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.738712, 28.315386, 24.362839>,  <39.551094, 27.964954, 24.318153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738712, 28.315386, 24.362839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004480, 0.124129, -0.992256,
		-0.883162, 0.465915, 0.054297,
		0.469047, 0.876079, 0.111713,
		39.879425, 28.578209, 24.396353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302479, 28.407652, 23.720165>,  <39.551094, 27.964954, 24.318153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302479, 28.407652, 23.720165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636402, 28.562418, 23.876829>,  <39.836754, 28.655277, 23.970827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636402, 28.562418, 23.876829>,  <39.302479, 28.407652, 23.720165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636402, 28.562418, 23.876829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343344, 0.190224, -0.919744,
		-0.430367, 0.902281, 0.025955,
		0.834805, 0.386916, 0.391659,
		39.886845, 28.678493, 23.994328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355545, 29.142139, 23.350048>,  <39.302479, 28.407652, 23.720165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355545, 29.142139, 23.350048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.708817, 29.026783, 23.498011>,  <39.920780, 28.957569, 23.586788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.708817, 29.026783, 23.498011>,  <39.355545, 29.142139, 23.350048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708817, 29.026783, 23.498011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417525, 0.124050, -0.900158,
		0.213711, 0.949443, 0.229969,
		0.883176, -0.288391, 0.369906,
		39.973770, 28.940266, 23.608982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687046, 29.786007, 23.117901>,  <39.355545, 29.142139, 23.350048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687046, 29.786007, 23.117901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.402962, 29.812643, 22.837566>,  <39.232513, 29.828625, 22.669365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.402962, 29.812643, 22.837566>,  <39.687046, 29.786007, 23.117901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402962, 29.812643, 22.837566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701870, 0.010283, 0.712231,
		0.054635, 0.997728, 0.039435,
		-0.710207, 0.066591, -0.700837,
		39.189899, 29.832621, 22.627316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180031, 30.172951, 23.360859>,  <39.687046, 29.786007, 23.117901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180031, 30.172951, 23.360859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.969364, 30.002050, 23.066900>,  <38.842964, 29.899509, 22.890524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.969364, 30.002050, 23.066900>,  <39.180031, 30.172951, 23.360859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969364, 30.002050, 23.066900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837331, 0.111638, 0.535176,
		-0.146613, 0.897213, -0.416548,
		-0.526669, -0.427253, -0.734898,
		38.811363, 29.873875, 22.846432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676479, 30.637951, 23.313898>,  <39.180031, 30.172951, 23.360859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676479, 30.637951, 23.313898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.534252, 30.306828, 23.140320>,  <38.448917, 30.108154, 23.036173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.534252, 30.306828, 23.140320>,  <38.676479, 30.637951, 23.313898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534252, 30.306828, 23.140320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814922, 0.047224, 0.577644,
		-0.457686, 0.559021, -0.691389,
		-0.355565, -0.827808, -0.433945,
		38.427582, 30.058485, 23.010136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019314, 30.790102, 23.283243>,  <38.676479, 30.637951, 23.313898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019314, 30.790102, 23.283243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066616, 30.392952, 23.289148>,  <38.094997, 30.154663, 23.292690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.066616, 30.392952, 23.289148>,  <38.019314, 30.790102, 23.283243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066616, 30.392952, 23.289148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725565, -0.076248, 0.683916,
		-0.677917, -0.091586, -0.729411,
		0.118254, -0.992874, 0.014762,
		38.102093, 30.095089, 23.293577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318573, 30.514471, 23.175732>,  <38.019314, 30.790102, 23.283243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318573, 30.514471, 23.175732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.539936, 30.225653, 23.341808>,  <37.672756, 30.052361, 23.441456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.539936, 30.225653, 23.341808>,  <37.318573, 30.514471, 23.175732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539936, 30.225653, 23.341808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772531, -0.258637, 0.579916,
		-0.311341, -0.641682, -0.700936,
		0.553410, -0.722046, 0.415195,
		37.705959, 30.009039, 23.466366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821247, 29.915661, 23.212393>,  <37.318573, 30.514471, 23.175732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821247, 29.915661, 23.212393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115604, 29.809917, 23.461737>,  <37.292217, 29.746471, 23.611343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115604, 29.809917, 23.461737>,  <36.821247, 29.915661, 23.212393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115604, 29.809917, 23.461737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671355, -0.165234, 0.722482,
		-0.087991, -0.950165, -0.299071,
		0.735894, -0.264355, 0.623359,
		37.336372, 29.730610, 23.648745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638943, 29.218439, 23.552383>,  <36.821247, 29.915661, 23.212393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638943, 29.218439, 23.552383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913429, 29.386354, 23.789999>,  <37.078121, 29.487104, 23.932568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913429, 29.386354, 23.789999>,  <36.638943, 29.218439, 23.552383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913429, 29.386354, 23.789999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582641, -0.171701, 0.794386,
		0.435473, -0.891232, 0.126763,
		0.686216, 0.419791, 0.594039,
		37.119293, 29.512291, 23.968210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.992165, 31.191813, 21.828005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.354023, 31.251162, 21.987804>,  <42.571140, 31.286770, 22.083683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.354023, 31.251162, 21.987804>,  <41.992165, 31.191813, 21.828005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354023, 31.251162, 21.987804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287929, 0.903910, 0.316298,
		-0.314180, -0.401165, 0.860440,
		0.904648, 0.148371, 0.399498,
		42.625416, 31.295673, 22.107655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802956, 31.149849, 22.500683>,  <41.992165, 31.191813, 21.828005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802956, 31.149849, 22.500683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.145061, 31.353291, 22.461000>,  <42.350327, 31.475355, 22.437191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.145061, 31.353291, 22.461000>,  <41.802956, 31.149849, 22.500683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145061, 31.353291, 22.461000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371998, 0.735903, 0.565743,
		0.360746, -0.446956, 0.818592,
		0.855266, 0.508604, -0.099207,
		42.401642, 31.505873, 22.431238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036007, 31.292770, 23.129177>,  <41.802956, 31.149849, 22.500683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036007, 31.292770, 23.129177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.230431, 31.568150, 22.913851>,  <42.347084, 31.733377, 22.784655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.230431, 31.568150, 22.913851>,  <42.036007, 31.292770, 23.129177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230431, 31.568150, 22.913851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316279, 0.712795, 0.626012,
		0.814685, -0.134023, 0.564204,
		0.486062, 0.688449, -0.538314,
		42.376247, 31.774685, 22.752356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255924, 31.738270, 23.606476>,  <42.036007, 31.292770, 23.129177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255924, 31.738270, 23.606476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.325249, 31.975643, 23.292076>,  <42.366844, 32.118069, 23.103436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.325249, 31.975643, 23.292076>,  <42.255924, 31.738270, 23.606476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325249, 31.975643, 23.292076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372965, 0.778186, 0.505296,
		0.911515, 0.205575, 0.356202,
		0.173315, 0.593436, -0.786000,
		42.377243, 32.153675, 23.056276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597275, 32.241749, 23.844603>,  <42.255924, 31.738270, 23.606476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597275, 32.241749, 23.844603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387032, 32.369843, 23.529341>,  <42.260887, 32.446701, 23.340183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387032, 32.369843, 23.529341>,  <42.597275, 32.241749, 23.844603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387032, 32.369843, 23.529341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459069, 0.673218, 0.579683,
		0.716235, 0.666502, -0.206838,
		-0.525607, 0.320237, -0.788153,
		42.229351, 32.465912, 23.292894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716091, 32.924732, 23.832132>,  <42.597275, 32.241749, 23.844603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716091, 32.924732, 23.832132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.373447, 32.850784, 23.639448>,  <42.167862, 32.806416, 23.523838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.373447, 32.850784, 23.639448>,  <42.716091, 32.924732, 23.832132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373447, 32.850784, 23.639448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407552, 0.814979, 0.411959,
		0.316423, 0.549209, -0.773464,
		-0.856608, -0.184873, -0.481709,
		42.116467, 32.795322, 23.494936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453373, 33.561062, 23.843805>,  <42.716091, 32.924732, 23.832132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453373, 33.561062, 23.843805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.144691, 33.322746, 23.754797>,  <41.959484, 33.179756, 23.701391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.144691, 33.322746, 23.754797>,  <42.453373, 33.561062, 23.843805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144691, 33.322746, 23.754797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623470, 0.639617, 0.449639,
		-0.125560, 0.485722, -0.865048,
		-0.771700, -0.595788, -0.222523,
		41.913181, 33.144009, 23.688040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010151, 34.053596, 23.881172>,  <42.453373, 33.561062, 23.843805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010151, 34.053596, 23.881172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.773808, 33.731342, 23.864075>,  <41.632000, 33.537991, 23.853815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.773808, 33.731342, 23.864075>,  <42.010151, 34.053596, 23.881172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773808, 33.731342, 23.864075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734564, 0.515314, 0.441437,
		-0.333613, 0.292227, -0.896273,
		-0.590862, -0.805640, -0.042745,
		41.596550, 33.489651, 23.851252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355377, 34.177498, 23.464359>,  <42.010151, 34.053596, 23.881172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355377, 34.177498, 23.464359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.269333, 33.873798, 23.710051>,  <41.217705, 33.691578, 23.857466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.269333, 33.873798, 23.710051>,  <41.355377, 34.177498, 23.464359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269333, 33.873798, 23.710051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663320, 0.575198, 0.478699,
		-0.716753, -0.304457, -0.627353,
		-0.215109, -0.759245, 0.614227,
		41.204800, 33.646027, 23.894320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617935, 34.170811, 23.373369>,  <41.355377, 34.177498, 23.464359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617935, 34.170811, 23.373369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.706974, 33.975727, 23.711031>,  <40.760395, 33.858677, 23.913628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.706974, 33.975727, 23.711031>,  <40.617935, 34.170811, 23.373369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706974, 33.975727, 23.711031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784619, 0.424306, 0.452036,
		-0.578640, -0.762960, -0.288215,
		0.222594, -0.487706, 0.844154,
		40.773754, 33.829414, 23.964277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060856, 34.202621, 23.708916>,  <40.617935, 34.170811, 23.373369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060856, 34.202621, 23.708916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.291599, 34.093037, 24.016729>,  <40.430046, 34.027287, 24.201418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.291599, 34.093037, 24.016729>,  <40.060856, 34.202621, 23.708916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291599, 34.093037, 24.016729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661328, 0.396327, 0.636843,
		-0.479460, -0.876281, 0.047443,
		0.576856, -0.273966, 0.769532,
		40.464657, 34.010849, 24.247589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652355, 33.854404, 24.219431>,  <40.060856, 34.202621, 23.708916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652355, 33.854404, 24.219431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.977123, 34.003887, 24.398817>,  <40.171986, 34.093578, 24.506449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.977123, 34.003887, 24.398817>,  <39.652355, 33.854404, 24.219431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977123, 34.003887, 24.398817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580544, 0.436329, 0.687449,
		0.061224, -0.818512, 0.571218,
		0.811924, 0.373706, 0.448468,
		40.220699, 34.115997, 24.533358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081211, 33.648396, 23.985806>,  <39.652355, 33.854404, 24.219431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081211, 33.648396, 23.985806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.695507, 33.671749, 23.882423>,  <38.464085, 33.685760, 23.820395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.695507, 33.671749, 23.882423>,  <39.081211, 33.648396, 23.985806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695507, 33.671749, 23.882423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247382, -0.151051, -0.957071,
		-0.094917, -0.986800, 0.131208,
		-0.964258, 0.058384, -0.258454,
		38.406231, 33.689266, 23.804888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849297, 32.975510, 23.746592>,  <39.081211, 33.648396, 23.985806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849297, 32.975510, 23.746592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.621712, 33.266193, 23.592617>,  <38.485161, 33.440601, 23.500233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.621712, 33.266193, 23.592617>,  <38.849297, 32.975510, 23.746592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621712, 33.266193, 23.592617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242420, -0.299075, -0.922923,
		-0.785820, -0.618427, -0.006006,
		-0.568964, 0.726707, -0.384938,
		38.451023, 33.484207, 23.477135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452599, 32.702179, 23.170042>,  <38.849297, 32.975510, 23.746592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452599, 32.702179, 23.170042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462048, 33.099163, 23.121925>,  <38.467716, 33.337353, 23.093056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.462048, 33.099163, 23.121925>,  <38.452599, 32.702179, 23.170042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462048, 33.099163, 23.121925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126086, -0.122321, -0.984449,
		-0.991738, 0.008086, -0.128024,
		0.023621, 0.992458, -0.120290,
		38.469135, 33.396900, 23.085838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073082, 32.786926, 22.506165>,  <38.452599, 32.702179, 23.170042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073082, 32.786926, 22.506165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288521, 33.115372, 22.581734>,  <38.417786, 33.312439, 22.627075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288521, 33.115372, 22.581734>,  <38.073082, 32.786926, 22.506165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288521, 33.115372, 22.581734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234343, 0.069391, -0.969675,
		-0.809319, 0.566536, -0.155047,
		0.538596, 0.821110, 0.188923,
		38.450100, 33.361706, 22.638411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858559, 33.249500, 21.921545>,  <38.073082, 32.786926, 22.506165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858559, 33.249500, 21.921545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.220612, 33.349743, 22.058908>,  <38.437843, 33.409889, 22.141327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.220612, 33.349743, 22.058908>,  <37.858559, 33.249500, 21.921545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220612, 33.349743, 22.058908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322783, 0.120577, -0.938761,
		-0.276669, 0.960550, 0.028246,
		0.905133, 0.250609, 0.343409,
		38.492153, 33.424927, 22.161932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069466, 33.882462, 21.492605>,  <37.858559, 33.249500, 21.921545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069466, 33.882462, 21.492605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.416821, 33.758949, 21.647808>,  <38.625233, 33.684841, 21.740931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.416821, 33.758949, 21.647808>,  <38.069466, 33.882462, 21.492605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416821, 33.758949, 21.647808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453124, 0.176268, -0.873847,
		0.201435, 0.934657, 0.292986,
		0.868391, -0.308782, 0.388009,
		38.677338, 33.666313, 21.764212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664860, 34.270718, 21.137636>,  <38.069466, 33.882462, 21.492605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664860, 34.270718, 21.137636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.879028, 33.988457, 21.323271>,  <39.007530, 33.819099, 21.434652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.879028, 33.988457, 21.323271>,  <38.664860, 34.270718, 21.137636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879028, 33.988457, 21.323271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653909, -0.001418, -0.756572,
		0.534537, 0.708554, 0.460675,
		0.535419, -0.705656, 0.464088,
		39.039654, 33.776760, 21.462498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313324, 34.562923, 21.035582>,  <38.664860, 34.270718, 21.137636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313324, 34.562923, 21.035582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.343842, 34.169827, 21.102989>,  <39.362152, 33.933968, 21.143433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.343842, 34.169827, 21.102989>,  <39.313324, 34.562923, 21.035582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343842, 34.169827, 21.102989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671763, -0.074232, -0.737037,
		0.736826, 0.169438, 0.654506,
		0.076296, -0.982741, 0.168518,
		39.366730, 33.875004, 21.153545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040234, 34.367641, 20.997993>,  <39.313324, 34.562923, 21.035582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040234, 34.367641, 20.997993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882675, 34.001762, 20.961838>,  <39.788139, 33.782234, 20.940144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882675, 34.001762, 20.961838>,  <40.040234, 34.367641, 20.997993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882675, 34.001762, 20.961838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580793, -0.171465, -0.795789,
		0.712409, -0.365955, 0.598790,
		-0.393895, -0.914700, -0.090391,
		39.764507, 33.727352, 20.934721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574913, 33.959190, 20.953506>,  <40.040234, 34.367641, 20.997993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574913, 33.959190, 20.953506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290173, 33.731617, 20.788788>,  <40.119328, 33.595074, 20.689957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.290173, 33.731617, 20.788788>,  <40.574913, 33.959190, 20.953506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290173, 33.731617, 20.788788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678148, -0.404285, -0.613733,
		0.182691, -0.716147, 0.673615,
		-0.711856, -0.568935, -0.411795,
		40.076614, 33.560936, 20.665249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843548, 33.368759, 20.892914>,  <40.574913, 33.959190, 20.953506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843548, 33.368759, 20.892914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535202, 33.310410, 20.644886>,  <40.350193, 33.275402, 20.496069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535202, 33.310410, 20.644886>,  <40.843548, 33.368759, 20.892914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535202, 33.310410, 20.644886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559835, -0.619536, -0.550237,
		-0.303893, -0.771296, 0.559242,
		-0.770866, -0.145870, -0.620071,
		40.303944, 33.266647, 20.458864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881256, 32.621651, 20.704430>,  <40.843548, 33.368759, 20.892914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881256, 32.621651, 20.704430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660469, 32.802143, 20.423937>,  <40.527996, 32.910439, 20.255640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660469, 32.802143, 20.423937>,  <40.881256, 32.621651, 20.704430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660469, 32.802143, 20.423937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474616, -0.521434, -0.709117,
		-0.685620, -0.724224, 0.073653,
		-0.551965, 0.451227, -0.701234,
		40.494881, 32.937511, 20.213566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661991, 32.147320, 20.244503>,  <40.881256, 32.621651, 20.704430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661991, 32.147320, 20.244503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657555, 32.469158, 20.007017>,  <40.654892, 32.662262, 19.864527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657555, 32.469158, 20.007017>,  <40.661991, 32.147320, 20.244503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657555, 32.469158, 20.007017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500256, -0.509640, -0.700008,
		-0.865807, -0.304772, -0.396854,
		-0.011091, 0.804600, -0.593713,
		40.654228, 32.710537, 19.828903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820366, 31.470110, 20.531532>,  <40.661991, 32.147320, 20.244503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820366, 31.470110, 20.531532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.999439, 31.760342, 20.740574>,  <41.106884, 31.934481, 20.865999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.999439, 31.760342, 20.740574>,  <40.820366, 31.470110, 20.531532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999439, 31.760342, 20.740574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641984, 0.146021, -0.752685,
		-0.622444, 0.672466, -0.400440,
		0.447683, 0.725580, 0.522603,
		41.133743, 31.978016, 20.897354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143478, 31.513971, 20.274246>,  <40.820366, 31.470110, 20.531532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143478, 31.513971, 20.274246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391933, 31.207996, 20.342443>,  <40.541004, 31.024412, 20.383362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.391933, 31.207996, 20.342443>,  <40.143478, 31.513971, 20.274246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391933, 31.207996, 20.342443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450917, -0.170891, 0.876054,
		-0.640990, -0.621023, -0.451068,
		0.621132, -0.764936, 0.170491,
		40.578274, 30.978516, 20.393591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751366, 30.961390, 20.410032>,  <40.143478, 31.513971, 20.274246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751366, 30.961390, 20.410032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.084003, 30.805836, 20.568640>,  <40.283585, 30.712503, 20.663803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.084003, 30.805836, 20.568640>,  <39.751366, 30.961390, 20.410032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084003, 30.805836, 20.568640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541473, -0.408886, 0.734588,
		-0.123537, -0.825581, -0.550595,
		0.831592, -0.388881, 0.396518,
		40.333481, 30.689171, 20.687595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617367, 30.279902, 20.410234>,  <39.751366, 30.961390, 20.410032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617367, 30.279902, 20.410234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905216, 30.339237, 20.681568>,  <40.077927, 30.374838, 20.844368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905216, 30.339237, 20.681568>,  <39.617367, 30.279902, 20.410234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905216, 30.339237, 20.681568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509960, -0.550114, 0.661298,
		0.471258, -0.821809, -0.320228,
		0.719622, 0.148339, 0.678336,
		40.121101, 30.383739, 20.885069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752369, 29.688349, 20.712700>,  <39.617367, 30.279902, 20.410234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752369, 29.688349, 20.712700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862682, 29.961367, 20.983425>,  <39.928871, 30.125177, 21.145861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.862682, 29.961367, 20.983425>,  <39.752369, 29.688349, 20.712700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862682, 29.961367, 20.983425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498275, -0.500617, 0.707887,
		0.821989, -0.532464, 0.202031,
		0.275784, 0.682543, 0.676815,
		39.945419, 30.166130, 21.186470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873989, 29.289145, 21.275978>,  <39.752369, 29.688349, 20.712700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873989, 29.289145, 21.275978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818314, 29.654799, 21.428288>,  <39.784908, 29.874191, 21.519672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818314, 29.654799, 21.428288>,  <39.873989, 29.289145, 21.275978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818314, 29.654799, 21.428288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579795, -0.386945, 0.717015,
		0.802785, -0.120969, 0.583869,
		-0.139188, 0.914133, 0.380772,
		39.776558, 29.929039, 21.542519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934490, 29.131634, 21.990580>,  <39.873989, 29.289145, 21.275978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934490, 29.131634, 21.990580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748402, 29.482212, 21.940924>,  <39.636749, 29.692558, 21.911131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748402, 29.482212, 21.940924>,  <39.934490, 29.131634, 21.990580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748402, 29.482212, 21.940924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562649, -0.184521, 0.805840,
		0.683367, 0.444744, 0.578975,
		-0.465226, 0.876445, -0.124139,
		39.608833, 29.745146, 21.903683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931110, 29.358229, 22.613222>,  <39.934490, 29.131634, 21.990580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931110, 29.358229, 22.613222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635239, 29.547510, 22.421827>,  <39.457714, 29.661079, 22.306992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635239, 29.547510, 22.421827>,  <39.931110, 29.358229, 22.613222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635239, 29.547510, 22.421827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605550, -0.157858, 0.779994,
		0.293562, 0.866695, 0.403312,
		-0.739683, 0.473202, -0.478486,
		39.413334, 29.689470, 22.278282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430782, 29.778797, 22.972567>,  <39.931110, 29.358229, 22.613222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430782, 29.778797, 22.972567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511803, 29.427013, 23.144855>,  <40.560417, 29.215942, 23.248228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.511803, 29.427013, 23.144855>,  <40.430782, 29.778797, 22.972567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511803, 29.427013, 23.144855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713424, -0.168771, -0.680104,
		0.670818, 0.445045, 0.593243,
		0.202555, -0.879461, 0.430721,
		40.572571, 29.163176, 23.274071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079998, 29.673359, 22.979259>,  <40.430782, 29.778797, 22.972567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079998, 29.673359, 22.979259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.993210, 29.289351, 23.050003>,  <40.941135, 29.058945, 23.092449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.993210, 29.289351, 23.050003>,  <41.079998, 29.673359, 22.979259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993210, 29.289351, 23.050003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788116, -0.279183, -0.548571,
		0.576017, 0.020360, 0.817184,
		-0.216975, -0.960022, 0.176860,
		40.928116, 29.001345, 23.103062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618473, 29.324743, 23.334074>,  <41.079998, 29.673359, 22.979259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618473, 29.324743, 23.334074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.403072, 29.047710, 23.142097>,  <41.273830, 28.881491, 23.026911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.403072, 29.047710, 23.142097>,  <41.618473, 29.324743, 23.334074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403072, 29.047710, 23.142097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810601, -0.270265, -0.519503,
		0.230086, -0.668797, 0.706945,
		-0.538504, -0.692581, -0.479943,
		41.241520, 28.839935, 22.998114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019386, 28.738501, 23.354488>,  <41.618473, 29.324743, 23.334074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019386, 28.738501, 23.354488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.777420, 28.687502, 23.040081>,  <41.632240, 28.656902, 22.851437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.777420, 28.687502, 23.040081>,  <42.019386, 28.738501, 23.354488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777420, 28.687502, 23.040081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789810, -0.221750, -0.571863,
		-0.101389, -0.966733, 0.234838,
		-0.604914, -0.127497, -0.786018,
		41.595947, 28.649254, 22.804276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314041, 28.222275, 23.014437>,  <42.019386, 28.738501, 23.354488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314041, 28.222275, 23.014437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.061581, 28.360195, 22.736513>,  <41.910103, 28.442947, 22.569759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.061581, 28.360195, 22.736513>,  <42.314041, 28.222275, 23.014437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061581, 28.360195, 22.736513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635149, -0.284437, -0.718110,
		-0.445233, -0.894544, -0.039476,
		-0.631152, 0.344800, -0.694809,
		41.872234, 28.463634, 22.528070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217724, 27.693005, 22.530949>,  <42.314041, 28.222275, 23.014437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217724, 27.693005, 22.530949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.114983, 28.027594, 22.337313>,  <42.053337, 28.228346, 22.221132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.114983, 28.027594, 22.337313>,  <42.217724, 27.693005, 22.530949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114983, 28.027594, 22.337313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554183, -0.282885, -0.782852,
		-0.791775, -0.469352, -0.390898,
		-0.256854, 0.836472, -0.484088,
		42.037926, 28.278536, 22.192087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071205, 27.427420, 21.861540>,  <42.217724, 27.693005, 22.530949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071205, 27.427420, 21.861540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.133488, 27.814901, 21.784220>,  <42.170856, 28.047390, 21.737827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.133488, 27.814901, 21.784220>,  <42.071205, 27.427420, 21.861540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133488, 27.814901, 21.784220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521360, -0.246802, -0.816867,
		-0.839011, 0.026412, -0.543473,
		0.155705, 0.968706, -0.193300,
		42.180199, 28.105513, 21.726231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790810, 27.573286, 21.128357>,  <42.071205, 27.427420, 21.861540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790810, 27.573286, 21.128357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057022, 27.862379, 21.202890>,  <42.216751, 28.035835, 21.247610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057022, 27.862379, 21.202890>,  <41.790810, 27.573286, 21.128357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057022, 27.862379, 21.202890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352241, -0.084048, -0.932128,
		-0.658019, 0.685997, -0.310513,
		0.665535, 0.722733, 0.186331,
		42.256683, 28.079199, 21.258789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770374, 28.164705, 20.741251>,  <41.790810, 27.573286, 21.128357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770374, 28.164705, 20.741251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.155350, 28.110628, 20.835426>,  <42.386337, 28.078182, 20.891932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.155350, 28.110628, 20.835426>,  <41.770374, 28.164705, 20.741251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155350, 28.110628, 20.835426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219091, -0.125385, -0.967614,
		0.160337, 0.982853, -0.091056,
		0.962440, -0.135195, 0.235439,
		42.444080, 28.070070, 20.906057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.651443, 32.444771, 33.806152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020489, 32.579205, 33.881866>,  <34.241917, 32.659866, 33.927296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020489, 32.579205, 33.881866>,  <33.651443, 32.444771, 33.806152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020489, 32.579205, 33.881866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293433, -0.293047, -0.909956,
		-0.250354, 0.895082, -0.368988,
		0.922616, 0.336084, 0.189281,
		34.297272, 32.680031, 33.938652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783676, 32.847012, 33.224777>,  <33.651443, 32.444771, 33.806152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783676, 32.847012, 33.224777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134266, 32.745197, 33.388241>,  <34.344620, 32.684109, 33.486317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134266, 32.745197, 33.388241>,  <33.783676, 32.847012, 33.224777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134266, 32.745197, 33.388241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315872, -0.336556, -0.887105,
		0.363335, 0.906610, -0.214583,
		0.876478, -0.254536, 0.408655,
		34.397209, 32.668835, 33.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323715, 33.087608, 32.759338>,  <33.783676, 32.847012, 33.224777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323715, 33.087608, 32.759338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514137, 32.814957, 32.981602>,  <34.628391, 32.651363, 33.114960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514137, 32.814957, 32.981602>,  <34.323715, 33.087608, 32.759338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514137, 32.814957, 32.981602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407742, -0.388745, -0.826211,
		0.779179, 0.619884, 0.092866,
		0.476054, -0.681632, 0.555654,
		34.656952, 32.610466, 33.148296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973312, 33.065315, 32.470142>,  <34.323715, 33.087608, 32.759338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973312, 33.065315, 32.470142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978146, 32.706364, 32.646576>,  <34.981045, 32.490993, 32.752438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978146, 32.706364, 32.646576>,  <34.973312, 33.065315, 32.470142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978146, 32.706364, 32.646576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431793, -0.393187, -0.811762,
		0.901892, 0.200271, 0.382731,
		0.012088, -0.897382, 0.441088,
		34.981773, 32.437149, 32.778904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612946, 32.739769, 32.360226>,  <34.973312, 33.065315, 32.470142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612946, 32.739769, 32.360226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380306, 32.431461, 32.464275>,  <35.240723, 32.246479, 32.526703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380306, 32.431461, 32.464275>,  <35.612946, 32.739769, 32.360226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380306, 32.431461, 32.464275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430125, -0.562785, -0.705879,
		0.690459, -0.298655, 0.658841,
		-0.581601, -0.770765, 0.260121,
		35.205826, 32.200233, 32.542313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015438, 32.128345, 32.419052>,  <35.612946, 32.739769, 32.360226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015438, 32.128345, 32.419052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643936, 31.991455, 32.362061>,  <35.421036, 31.909321, 32.327866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643936, 31.991455, 32.362061>,  <36.015438, 32.128345, 32.419052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643936, 31.991455, 32.362061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344405, -0.654420, -0.673142,
		0.137130, -0.674251, 0.725659,
		-0.928752, -0.342228, -0.142475,
		35.365311, 31.888786, 32.319317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128578, 31.417377, 32.323219>,  <36.015438, 32.128345, 32.419052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128578, 31.417377, 32.323219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766525, 31.467308, 32.160667>,  <35.549294, 31.497267, 32.063137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766525, 31.467308, 32.160667>,  <36.128578, 31.417377, 32.323219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766525, 31.467308, 32.160667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256597, -0.601739, -0.756352,
		-0.338947, -0.788878, 0.512627,
		-0.905137, 0.124824, -0.406381,
		35.494984, 31.504755, 32.038754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946121, 30.718193, 32.116684>,  <36.128578, 31.417377, 32.323219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946121, 30.718193, 32.116684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731083, 30.979507, 31.903439>,  <35.602058, 31.136295, 31.775492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731083, 30.979507, 31.903439>,  <35.946121, 30.718193, 32.116684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731083, 30.979507, 31.903439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284280, -0.454807, -0.844000,
		-0.793834, -0.605286, 0.058788,
		-0.537598, 0.653284, -0.533112,
		35.569805, 31.175493, 31.743505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519604, 30.307707, 31.635033>,  <35.946121, 30.718193, 32.116684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519604, 30.307707, 31.635033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526627, 30.676270, 31.479752>,  <35.530842, 30.897408, 31.386583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526627, 30.676270, 31.479752>,  <35.519604, 30.307707, 31.635033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526627, 30.676270, 31.479752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185142, -0.384544, -0.904349,
		-0.982555, -0.055996, -0.177342,
		0.017556, 0.921407, -0.388203,
		35.531895, 30.952692, 31.363291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127983, 30.209393, 30.989668>,  <35.519604, 30.307707, 31.635033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127983, 30.209393, 30.989668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366455, 30.525072, 30.930704>,  <35.509541, 30.714479, 30.895327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366455, 30.525072, 30.930704>,  <35.127983, 30.209393, 30.989668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366455, 30.525072, 30.930704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102122, -0.256661, -0.961091,
		-0.796328, 0.557932, -0.233612,
		0.596182, 0.789200, -0.147409,
		35.545311, 30.761833, 30.886482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993690, 30.244553, 30.313307>,  <35.127983, 30.209393, 30.989668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993690, 30.244553, 30.313307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294300, 30.506701, 30.343502>,  <35.474667, 30.663990, 30.361618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294300, 30.506701, 30.343502>,  <34.993690, 30.244553, 30.313307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294300, 30.506701, 30.343502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352648, -0.302388, -0.885551,
		-0.557539, 0.692133, -0.458368,
		0.751525, 0.655372, 0.075486,
		35.519756, 30.703312, 30.366148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002583, 30.608183, 29.690657>,  <34.993690, 30.244553, 30.313307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002583, 30.608183, 29.690657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372784, 30.641420, 29.838463>,  <35.594906, 30.661364, 29.927147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372784, 30.641420, 29.838463>,  <35.002583, 30.608183, 29.690657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372784, 30.641420, 29.838463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374551, -0.345582, -0.860398,
		0.056204, 0.934702, -0.350959,
		0.925501, 0.083094, 0.369517,
		35.650433, 30.666349, 29.949318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604870, 31.176060, 29.313528>,  <35.002583, 30.608183, 29.690657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604870, 31.176060, 29.313528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269516, 31.175268, 29.095497>,  <34.068306, 31.174793, 28.964678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269516, 31.175268, 29.095497>,  <34.604870, 31.176060, 29.313528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269516, 31.175268, 29.095497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472765, 0.500372, 0.725342,
		0.271308, 0.865808, -0.420439,
		-0.838383, -0.001978, -0.545079,
		34.018002, 31.174675, 28.931974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404160, 31.823942, 29.376852>,  <34.604870, 31.176060, 29.313528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404160, 31.823942, 29.376852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076218, 31.634398, 29.248297>,  <33.879452, 31.520670, 29.171164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076218, 31.634398, 29.248297>,  <34.404160, 31.823942, 29.376852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076218, 31.634398, 29.248297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528261, 0.409506, 0.743805,
		-0.220852, 0.779589, -0.586059,
		-0.819857, -0.473862, -0.321386,
		33.830261, 31.492239, 29.151880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954594, 32.316067, 29.293261>,  <34.404160, 31.823942, 29.376852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954594, 32.316067, 29.293261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741543, 31.981602, 29.345619>,  <33.613712, 31.780922, 29.377035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741543, 31.981602, 29.345619>,  <33.954594, 32.316067, 29.293261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741543, 31.981602, 29.345619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540933, 0.455277, 0.707188,
		-0.650919, 0.305864, -0.694804,
		-0.532631, -0.836164, 0.130896,
		33.581753, 31.730753, 29.384888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298317, 32.550079, 29.567453>,  <33.954594, 32.316067, 29.293261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298317, 32.550079, 29.567453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286182, 32.166111, 29.678904>,  <33.278900, 31.935730, 29.745773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286182, 32.166111, 29.678904>,  <33.298317, 32.550079, 29.567453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286182, 32.166111, 29.678904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444754, 0.262600, 0.856291,
		-0.895139, -0.097942, -0.434895,
		-0.030336, -0.959921, 0.278624,
		33.277081, 31.878134, 29.762491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667610, 32.459827, 29.933601>,  <33.298317, 32.550079, 29.567453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667610, 32.459827, 29.933601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841801, 32.124878, 30.065763>,  <32.946316, 31.923908, 30.145060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841801, 32.124878, 30.065763>,  <32.667610, 32.459827, 29.933601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841801, 32.124878, 30.065763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295136, 0.213939, 0.931195,
		-0.850446, -0.503024, -0.153975,
		0.435473, -0.837375, 0.330404,
		32.972443, 31.873665, 30.164885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153202, 32.103172, 30.319023>,  <32.667610, 32.459827, 29.933601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153202, 32.103172, 30.319023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518639, 31.977726, 30.422554>,  <32.737900, 31.902458, 30.484673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518639, 31.977726, 30.422554>,  <32.153202, 32.103172, 30.319023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518639, 31.977726, 30.422554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245085, 0.083217, 0.965923,
		-0.324470, -0.945895, -0.000836,
		0.913593, -0.313618, 0.258826,
		32.792717, 31.883640, 30.500202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970457, 31.620098, 30.722878>,  <32.153202, 32.103172, 30.319023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970457, 31.620098, 30.722878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352974, 31.660139, 30.832779>,  <32.582485, 31.684164, 30.898720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352974, 31.660139, 30.832779>,  <31.970457, 31.620098, 30.722878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352974, 31.660139, 30.832779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279440, 0.036009, 0.959488,
		0.086152, -0.994326, 0.062407,
		0.956291, 0.100100, 0.274752,
		32.639862, 31.690170, 30.915205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061966, 31.022457, 31.039139>,  <31.970457, 31.620098, 30.722878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061966, 31.022457, 31.039139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320499, 31.299217, 31.167845>,  <32.475620, 31.465273, 31.245068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320499, 31.299217, 31.167845>,  <32.061966, 31.022457, 31.039139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320499, 31.299217, 31.167845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416148, -0.033828, 0.908668,
		0.639591, -0.721201, 0.266068,
		0.646332, 0.691899, 0.321762,
		32.514400, 31.506786, 31.264374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249294, 30.833012, 31.715303>,  <32.061966, 31.022457, 31.039139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249294, 30.833012, 31.715303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361507, 31.216148, 31.690527>,  <32.428837, 31.446032, 31.675661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361507, 31.216148, 31.690527>,  <32.249294, 30.833012, 31.715303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361507, 31.216148, 31.690527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413063, 0.178725, 0.892993,
		0.866418, -0.224927, 0.445788,
		0.280532, 0.957844, -0.061941,
		32.445667, 31.503502, 31.671946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260723, 31.018526, 32.360397>,  <32.249294, 30.833012, 31.715303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260723, 31.018526, 32.360397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341263, 31.384607, 32.220764>,  <32.389587, 31.604256, 32.136986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341263, 31.384607, 32.220764>,  <32.260723, 31.018526, 32.360397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341263, 31.384607, 32.220764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224635, 0.390029, 0.892982,
		0.953414, -0.101385, 0.284119,
		0.201350, 0.915204, -0.349084,
		32.401669, 31.659168, 32.116039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616661, 31.362514, 32.907471>,  <32.260723, 31.018526, 32.360397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616661, 31.362514, 32.907471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425236, 31.634912, 32.685760>,  <32.310379, 31.798351, 32.552734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425236, 31.634912, 32.685760>,  <32.616661, 31.362514, 32.907471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425236, 31.634912, 32.685760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388821, 0.401633, 0.829162,
		0.787269, 0.612323, 0.072577,
		-0.478566, 0.680993, -0.554277,
		32.281666, 31.839211, 32.519478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893330, 32.137413, 33.047962>,  <32.616661, 31.362514, 32.907471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893330, 32.137413, 33.047962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517807, 32.125916, 32.910664>,  <32.292496, 32.119019, 32.828285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517807, 32.125916, 32.910664>,  <32.893330, 32.137413, 33.047962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517807, 32.125916, 32.910664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285432, 0.622719, 0.728526,
		0.192805, 0.781917, -0.592816,
		-0.938805, -0.028745, -0.343248,
		32.236164, 32.117290, 32.807690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654305, 32.780186, 33.273548>,  <32.893330, 32.137413, 33.047962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654305, 32.780186, 33.273548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321453, 32.587959, 33.162830>,  <32.121742, 32.472622, 33.096397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321453, 32.587959, 33.162830>,  <32.654305, 32.780186, 33.273548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321453, 32.587959, 33.162830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517682, 0.494069, 0.698499,
		-0.198921, 0.724533, -0.659911,
		-0.832127, -0.480570, -0.276797,
		32.071815, 32.443787, 33.079792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129509, 33.250290, 33.123978>,  <32.654305, 32.780186, 33.273548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129509, 33.250290, 33.123978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947527, 32.900600, 33.191795>,  <31.838337, 32.690788, 33.232487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947527, 32.900600, 33.191795>,  <32.129509, 33.250290, 33.123978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947527, 32.900600, 33.191795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506937, 0.410781, 0.757808,
		-0.732138, 0.258826, -0.630066,
		-0.454959, -0.874224, 0.169540,
		31.811039, 32.638332, 33.242657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459900, 33.938290, 32.946175>,  <32.129509, 33.250290, 33.123978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459900, 33.938290, 32.946175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434090, 34.329487, 33.025528>,  <32.418602, 34.564205, 33.073139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434090, 34.329487, 33.025528>,  <32.459900, 33.938290, 32.946175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434090, 34.329487, 33.025528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490087, 0.204231, -0.847410,
		-0.869282, 0.042548, -0.492482,
		-0.064524, 0.977998, 0.198387,
		32.414734, 34.622887, 33.085045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248413, 34.305679, 32.331287>,  <32.459900, 33.938290, 32.946175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248413, 34.305679, 32.331287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480209, 34.540173, 32.557747>,  <32.619286, 34.680870, 32.693623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480209, 34.540173, 32.557747>,  <32.248413, 34.305679, 32.331287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480209, 34.540173, 32.557747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496226, 0.297257, -0.815719,
		-0.646492, 0.753638, -0.118647,
		0.579489, 0.586232, 0.566149,
		32.654057, 34.716042, 32.727592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299614, 34.971519, 31.929047>,  <32.248413, 34.305679, 32.331287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299614, 34.971519, 31.929047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609291, 34.857658, 32.155178>,  <32.795097, 34.789341, 32.290855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609291, 34.857658, 32.155178>,  <32.299614, 34.971519, 31.929047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609291, 34.857658, 32.155178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607681, 0.084452, -0.789678,
		0.177038, 0.954905, 0.238358,
		0.774197, -0.284648, 0.565327,
		32.841549, 34.772263, 32.324776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855579, 35.470329, 31.856897>,  <32.299614, 34.971519, 31.929047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855579, 35.470329, 31.856897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033009, 35.135414, 31.984768>,  <33.139465, 34.934464, 32.061489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033009, 35.135414, 31.984768>,  <32.855579, 35.470329, 31.856897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033009, 35.135414, 31.984768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704106, 0.104880, -0.702307,
		0.554505, 0.536610, 0.636061,
		0.443575, -0.837287, 0.319674,
		33.166080, 34.884228, 32.080669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499496, 35.632164, 31.894384>,  <32.855579, 35.470329, 31.856897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499496, 35.632164, 31.894384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496773, 35.232708, 31.873716>,  <33.495136, 34.993034, 31.861317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496773, 35.232708, 31.873716>,  <33.499496, 35.632164, 31.894384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496773, 35.232708, 31.873716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837099, 0.022570, -0.546585,
		0.547009, -0.046974, 0.835808,
		-0.006811, -0.998641, -0.051668,
		33.494728, 34.933117, 31.858215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149441, 35.474518, 31.813202>,  <33.499496, 35.632164, 31.894384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149441, 35.474518, 31.813202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971237, 35.128319, 31.721600>,  <33.864315, 34.920601, 31.666637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971237, 35.128319, 31.721600>,  <34.149441, 35.474518, 31.813202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971237, 35.128319, 31.721600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759719, -0.230141, -0.608162,
		0.473657, -0.444921, 0.760062,
		-0.445506, -0.865494, -0.229007,
		33.837585, 34.868671, 31.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806488, 35.156265, 31.734272>,  <34.149441, 35.474518, 31.813202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806488, 35.156265, 31.734272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500332, 34.955059, 31.573698>,  <34.316639, 34.834335, 31.477354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500332, 34.955059, 31.573698>,  <34.806488, 35.156265, 31.734272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500332, 34.955059, 31.573698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628970, -0.452577, -0.632116,
		0.136286, -0.736306, 0.662781,
		-0.765391, -0.503018, -0.401435,
		34.270714, 34.804153, 31.453268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972649, 34.356815, 31.783415>,  <34.806488, 35.156265, 31.734272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972649, 34.356815, 31.783415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747948, 34.437885, 31.462578>,  <34.613125, 34.486526, 31.270075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747948, 34.437885, 31.462578>,  <34.972649, 34.356815, 31.783415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747948, 34.437885, 31.462578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699576, -0.401161, -0.591323,
		-0.441618, -0.893303, 0.083563,
		-0.561753, 0.202680, -0.802094,
		34.579422, 34.498688, 31.221951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156605, 33.851616, 31.400887>,  <34.972649, 34.356815, 31.783415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156605, 33.851616, 31.400887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959347, 34.085766, 31.143471>,  <34.840992, 34.226254, 30.989021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959347, 34.085766, 31.143471>,  <35.156605, 33.851616, 31.400887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959347, 34.085766, 31.143471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591404, -0.316931, -0.741482,
		-0.638001, -0.746253, -0.189897,
		-0.493149, 0.585372, -0.643539,
		34.811401, 34.261379, 30.950409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082600, 33.449303, 30.739082>,  <35.156605, 33.851616, 31.400887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082600, 33.449303, 30.739082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021835, 33.831608, 30.638338>,  <34.985378, 34.060993, 30.577892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021835, 33.831608, 30.638338>,  <35.082600, 33.449303, 30.739082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021835, 33.831608, 30.638338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433644, -0.164534, -0.885935,
		-0.888187, -0.243798, -0.389469,
		-0.151908, 0.955767, -0.251859,
		34.976261, 34.118340, 30.562780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472481, 33.495876, 30.195728>,  <35.082600, 33.449303, 30.739082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472481, 33.495876, 30.195728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705704, 33.820526, 30.181236>,  <34.845638, 34.015316, 30.172541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705704, 33.820526, 30.181236>,  <34.472481, 33.495876, 30.195728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705704, 33.820526, 30.181236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165428, -0.162262, -0.972782,
		-0.795414, 0.561190, -0.228873,
		0.583053, 0.811626, -0.036229,
		34.880619, 34.064014, 30.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368549, 33.626717, 29.460445>,  <34.472481, 33.495876, 30.195728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368549, 33.626717, 29.460445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667213, 33.878292, 29.547098>,  <34.846413, 34.029236, 29.599091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667213, 33.878292, 29.547098>,  <34.368549, 33.626717, 29.460445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667213, 33.878292, 29.547098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289598, -0.014158, -0.957044,
		-0.598854, 0.777327, -0.192710,
		0.746664, 0.628938, 0.216633,
		34.891212, 34.066975, 29.612089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401798, 34.172054, 28.957150>,  <34.368549, 33.626717, 29.460445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401798, 34.172054, 28.957150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777267, 34.189201, 29.094004>,  <35.002548, 34.199490, 29.176117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777267, 34.189201, 29.094004>,  <34.401798, 34.172054, 28.957150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777267, 34.189201, 29.094004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343220, -0.020956, -0.939021,
		-0.033084, 0.998861, -0.034385,
		0.938672, 0.042868, 0.342135,
		35.058868, 34.202061, 29.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759266, 34.690178, 28.634155>,  <34.401798, 34.172054, 28.957150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759266, 34.690178, 28.634155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008106, 34.408455, 28.770939>,  <35.157410, 34.239422, 28.853008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008106, 34.408455, 28.770939>,  <34.759266, 34.690178, 28.634155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008106, 34.408455, 28.770939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477361, -0.004984, -0.878693,
		0.620578, 0.709874, 0.333110,
		0.622101, -0.704311, 0.341959,
		35.194736, 34.197163, 28.873526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427917, 34.908112, 28.415489>,  <34.759266, 34.690178, 28.634155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427917, 34.908112, 28.415489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489410, 34.526066, 28.516779>,  <35.526306, 34.296837, 28.577553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489410, 34.526066, 28.516779>,  <35.427917, 34.908112, 28.415489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489410, 34.526066, 28.516779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562688, -0.126038, -0.817005,
		0.812249, 0.268089, 0.518054,
		0.153735, -0.955114, 0.253224,
		35.535530, 34.239532, 28.592747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184879, 34.834465, 28.455355>,  <35.427917, 34.908112, 28.415489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184879, 34.834465, 28.455355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019482, 34.476017, 28.390867>,  <35.920242, 34.260948, 28.352175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019482, 34.476017, 28.390867>,  <36.184879, 34.834465, 28.455355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019482, 34.476017, 28.390867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558483, -0.109776, -0.822220,
		0.719111, -0.430019, 0.545860,
		-0.413493, -0.896121, -0.161217,
		35.895435, 34.207180, 28.342503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757053, 34.506378, 28.287317>,  <36.184879, 34.834465, 28.455355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757053, 34.506378, 28.287317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470684, 34.271328, 28.136509>,  <36.298862, 34.130299, 28.046024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470684, 34.271328, 28.136509>,  <36.757053, 34.506378, 28.287317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470684, 34.271328, 28.136509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614498, -0.274006, -0.739806,
		0.331424, -0.761325, 0.557263,
		-0.715926, -0.587627, -0.377020,
		36.255905, 34.095039, 28.023403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131283, 34.004627, 28.059284>,  <36.757053, 34.506378, 28.287317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131283, 34.004627, 28.059284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790333, 33.938530, 27.860828>,  <36.585762, 33.898872, 27.741755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790333, 33.938530, 27.860828>,  <37.131283, 34.004627, 28.059284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790333, 33.938530, 27.860828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520339, -0.362371, -0.773262,
		-0.052013, -0.917269, 0.394857,
		-0.852374, -0.165240, -0.496139,
		36.534622, 33.888958, 27.711987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169655, 33.268742, 27.795841>,  <37.131283, 34.004627, 28.059284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169655, 33.268742, 27.795841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911247, 33.462780, 27.560101>,  <36.756203, 33.579205, 27.418655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911247, 33.462780, 27.560101>,  <37.169655, 33.268742, 27.795841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911247, 33.462780, 27.560101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444282, -0.388873, -0.807088,
		-0.620702, -0.783234, 0.035698,
		-0.646021, 0.485101, -0.589351,
		36.717442, 33.608311, 27.383295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126553, 32.851303, 27.106020>,  <37.169655, 33.268742, 27.795841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126553, 32.851303, 27.106020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965725, 33.206978, 27.018665>,  <36.869228, 33.420383, 26.966251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965725, 33.206978, 27.018665>,  <37.126553, 32.851303, 27.106020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965725, 33.206978, 27.018665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269512, -0.113017, -0.956342,
		-0.875046, -0.443372, -0.194206,
		-0.402067, 0.889184, -0.218389,
		36.845104, 33.473732, 26.953148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750866, 32.774746, 26.495571>,  <37.126553, 32.851303, 27.106020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750866, 32.774746, 26.495571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850792, 33.158993, 26.544250>,  <36.910748, 33.389542, 26.573458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850792, 33.158993, 26.544250>,  <36.750866, 32.774746, 26.495571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850792, 33.158993, 26.544250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358886, 0.024879, -0.933050,
		-0.899330, 0.276763, -0.338537,
		0.249811, 0.960616, 0.121700,
		36.925735, 33.447178, 26.580761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571533, 33.023045, 25.872452>,  <36.750866, 32.774746, 26.495571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571533, 33.023045, 25.872452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810471, 33.307938, 26.019918>,  <36.953831, 33.478874, 26.108398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810471, 33.307938, 26.019918>,  <36.571533, 33.023045, 25.872452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810471, 33.307938, 26.019918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350531, 0.181595, -0.918777,
		-0.721327, 0.678052, -0.141184,
		0.597340, 0.712228, 0.368667,
		36.989674, 33.521606, 26.130518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374531, 33.537510, 25.531372>,  <36.571533, 33.023045, 25.872452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374531, 33.537510, 25.531372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749321, 33.607319, 25.652443>,  <36.974194, 33.649204, 25.725086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749321, 33.607319, 25.652443>,  <36.374531, 33.537510, 25.531372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749321, 33.607319, 25.652443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266241, 0.204334, -0.942000,
		-0.226252, 0.963217, 0.144990,
		0.936977, 0.174527, 0.302679,
		37.030415, 33.659676, 25.743246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451714, 34.108681, 25.201248>,  <36.374531, 33.537510, 25.531372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451714, 34.108681, 25.201248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814610, 33.979813, 25.309418>,  <37.032345, 33.902493, 25.374319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814610, 33.979813, 25.309418>,  <36.451714, 34.108681, 25.201248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814610, 33.979813, 25.309418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362126, 0.271179, -0.891811,
		0.213979, 0.907011, 0.362689,
		0.907236, -0.322168, 0.270426,
		37.086781, 33.883163, 25.390545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971249, 34.695831, 25.098459>,  <36.451714, 34.108681, 25.201248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971249, 34.695831, 25.098459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182362, 34.357178, 25.125742>,  <37.309029, 34.153984, 25.142113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182362, 34.357178, 25.125742>,  <36.971249, 34.695831, 25.098459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182362, 34.357178, 25.125742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436485, 0.201456, -0.876868,
		0.728647, 0.492567, 0.475869,
		0.527783, -0.846636, 0.068208,
		37.340698, 34.103188, 25.146204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673878, 34.857754, 24.738369>,  <36.971249, 34.695831, 25.098459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673878, 34.857754, 24.738369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612286, 34.462551, 24.733870>,  <37.575333, 34.225430, 24.731171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612286, 34.462551, 24.733870>,  <37.673878, 34.857754, 24.738369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612286, 34.462551, 24.733870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474908, -0.064019, -0.877704,
		0.866460, -0.140488, 0.479072,
		-0.153976, -0.988011, -0.011249,
		37.566093, 34.166149, 24.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326183, 34.590122, 24.669594>,  <37.673878, 34.857754, 24.738369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326183, 34.590122, 24.669594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071045, 34.305336, 24.552114>,  <37.917961, 34.134464, 24.481627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.071045, 34.305336, 24.552114>,  <38.326183, 34.590122, 24.669594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071045, 34.305336, 24.552114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518891, -0.115471, -0.847006,
		0.569124, -0.692658, 0.443084,
		-0.637848, -0.711964, -0.293697,
		37.879692, 34.091747, 24.464006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853920, 34.103226, 24.524258>,  <38.326183, 34.590122, 24.669594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853920, 34.103226, 24.524258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509403, 34.000233, 24.349039>,  <38.302692, 33.938438, 24.243908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.509403, 34.000233, 24.349039>,  <38.853920, 34.103226, 24.524258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509403, 34.000233, 24.349039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488248, -0.180679, -0.853797,
		0.140688, -0.949242, 0.281330,
		-0.861290, -0.257478, -0.438046,
		38.251015, 33.922989, 24.217625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527020, 33.800964, 24.919760>,  <38.853920, 34.103226, 24.524258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527020, 33.800964, 24.919760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832840, 34.057411, 24.893127>,  <40.016331, 34.211281, 24.877148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832840, 34.057411, 24.893127>,  <39.527020, 33.800964, 24.919760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832840, 34.057411, 24.893127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417597, 0.571366, 0.706508,
		0.490998, -0.512355, 0.704566,
		0.764548, 0.641119, -0.066581,
		40.062202, 34.249748, 24.873152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847603, 33.828705, 25.556456>,  <39.527020, 33.800964, 24.919760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847603, 33.828705, 25.556456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.961140, 34.178932, 25.400093>,  <40.029263, 34.389069, 25.306276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.961140, 34.178932, 25.400093>,  <39.847603, 33.828705, 25.556456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961140, 34.178932, 25.400093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266722, 0.463678, 0.844904,
		0.921029, -0.135555, 0.365145,
		0.283840, 0.875573, -0.390905,
		40.046291, 34.441605, 25.282822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082607, 34.109474, 26.075260>,  <39.847603, 33.828705, 25.556456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082607, 34.109474, 26.075260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.037926, 34.431133, 25.841722>,  <40.011116, 34.624126, 25.701599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.037926, 34.431133, 25.841722>,  <40.082607, 34.109474, 26.075260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037926, 34.431133, 25.841722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277970, 0.538784, 0.795264,
		0.954073, 0.251123, 0.163346,
		-0.111701, 0.804145, -0.583844,
		40.004414, 34.672379, 25.666569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466518, 34.722916, 26.443890>,  <40.082607, 34.109474, 26.075260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466518, 34.722916, 26.443890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178360, 34.835846, 26.190489>,  <40.005466, 34.903603, 26.038448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178360, 34.835846, 26.190489>,  <40.466518, 34.722916, 26.443890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178360, 34.835846, 26.190489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473525, 0.467178, 0.746672,
		0.506762, 0.837877, -0.202865,
		-0.720393, 0.282323, -0.633504,
		39.962242, 34.920544, 26.000437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407974, 35.365108, 26.565935>,  <40.466518, 34.722916, 26.443890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407974, 35.365108, 26.565935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066376, 35.268513, 26.381598>,  <39.861416, 35.210556, 26.270994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066376, 35.268513, 26.381598>,  <40.407974, 35.365108, 26.565935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066376, 35.268513, 26.381598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520142, 0.416854, 0.745443,
		0.012087, 0.876308, -0.481600,
		-0.853994, -0.241490, -0.460843,
		39.810177, 35.196064, 26.243345>
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
